/****** Object:  Table [dbo].[cmsContent]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContent](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[contentType] [int] NOT NULL,
 CONSTRAINT [PK_cmsContent] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsContent] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsContentType]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[alias] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[icon] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[thumbnail] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[description] [nvarchar](1500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[isContainer] [bit] NOT NULL,
	[allowAtRoot] [bit] NOT NULL,
 CONSTRAINT [PK_cmsContentType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsContentType] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsContentType2ContentType]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentType2ContentType](
	[parentContentTypeId] [int] NOT NULL,
	[childContentTypeId] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentType2ContentType] PRIMARY KEY CLUSTERED 
(
	[parentContentTypeId] ASC,
	[childContentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsContentType2ContentType] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsContentTypeAllowedContentType]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentTypeAllowedContentType](
	[Id] [int] NOT NULL,
	[AllowedId] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentTypeAllowedContentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[AllowedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsContentTypeAllowedContentType] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsContentVersion]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentVersion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ContentId] [int] NOT NULL,
	[VersionId] [uniqueidentifier] NOT NULL,
	[VersionDate] [datetime] NOT NULL,
	[LanguageLocale] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_cmsContentVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsContentVersion] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsContentXml]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentXml](
	[nodeId] [int] NOT NULL,
	[xml] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_cmsContentXml] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsContentXml] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsDataType]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDataType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[controlId] [uniqueidentifier] NOT NULL,
	[dbType] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_cmsDataType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsDataType] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsDataTypePreValues]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDataTypePreValues](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[datatypeNodeId] [int] NOT NULL,
	[value] [nvarchar](2500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sortorder] [int] NOT NULL,
	[alias] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_cmsDataTypePreValues] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsDataTypePreValues] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsDictionary]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDictionary](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[id] [uniqueidentifier] NOT NULL,
	[parent] [uniqueidentifier] NOT NULL,
	[key] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_cmsDictionary] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsDictionary] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsDocument]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDocument](
	[nodeId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[documentUser] [int] NOT NULL,
	[versionId] [uniqueidentifier] NOT NULL,
	[text] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[releaseDate] [datetime] NULL,
	[expireDate] [datetime] NULL,
	[updateDate] [datetime] NOT NULL,
	[templateId] [int] NULL,
	[alias] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[newest] [bit] NOT NULL,
 CONSTRAINT [PK_cmsDocument] PRIMARY KEY CLUSTERED 
(
	[versionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsDocument] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsDocumentType]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDocumentType](
	[contentTypeNodeId] [int] NOT NULL,
	[templateNodeId] [int] NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_cmsDocumentType] PRIMARY KEY CLUSTERED 
(
	[contentTypeNodeId] ASC,
	[templateNodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsDocumentType] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsLanguageText]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsLanguageText](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[languageId] [int] NOT NULL,
	[UniqueId] [uniqueidentifier] NOT NULL,
	[value] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_cmsLanguageText] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsLanguageText] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsMacro]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMacro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[macroUseInEditor] [bit] NOT NULL,
	[macroRefreshRate] [int] NOT NULL,
	[macroAlias] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[macroName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[macroScriptType] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[macroScriptAssembly] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[macroXSLT] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[macroCacheByPage] [bit] NOT NULL,
	[macroCachePersonalized] [bit] NOT NULL,
	[macroDontRender] [bit] NOT NULL,
	[macroPython] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_cmsMacro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsMacro] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsMacroProperty]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMacroProperty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[macroPropertyHidden] [bit] NOT NULL,
	[macroPropertyType] [int] NOT NULL,
	[macro] [int] NOT NULL,
	[macroPropertySortOrder] [int] NOT NULL,
	[macroPropertyAlias] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[macroPropertyName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_cmsMacroProperty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsMacroProperty] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsMacroPropertyType]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMacroPropertyType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[macroPropertyTypeAlias] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[macroPropertyTypeRenderAssembly] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[macroPropertyTypeRenderType] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[macroPropertyTypeBaseType] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_cmsMacroPropertyType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsMacroPropertyType] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsMember]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember](
	[nodeId] [int] NOT NULL,
	[Email] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LoginName] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Password] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_cmsMember] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsMember] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsMember2MemberGroup]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember2MemberGroup](
	[Member] [int] NOT NULL,
	[MemberGroup] [int] NOT NULL,
 CONSTRAINT [PK_cmsMember2MemberGroup] PRIMARY KEY CLUSTERED 
(
	[Member] ASC,
	[MemberGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsMember2MemberGroup] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsMemberType]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMemberType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[NodeId] [int] NOT NULL,
	[propertytypeId] [int] NOT NULL,
	[memberCanEdit] [bit] NOT NULL,
	[viewOnProfile] [bit] NOT NULL,
 CONSTRAINT [PK_cmsMemberType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsMemberType] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsPreviewXml]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPreviewXml](
	[nodeId] [int] NOT NULL,
	[versionId] [uniqueidentifier] NOT NULL,
	[timestamp] [datetime] NOT NULL,
	[xml] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_cmsPreviewXml] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[versionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsPreviewXml] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsPropertyData]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contentNodeId] [int] NOT NULL,
	[versionId] [uniqueidentifier] NULL,
	[propertytypeid] [int] NOT NULL,
	[dataInt] [int] NULL,
	[dataDate] [datetime] NULL,
	[dataNvarchar] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[dataNtext] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_cmsPropertyData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsPropertyData] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsPropertyType]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataTypeId] [int] NOT NULL,
	[contentTypeId] [int] NOT NULL,
	[propertyTypeGroupId] [int] NULL,
	[Alias] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Name] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[helpText] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sortOrder] [int] NOT NULL,
	[mandatory] [bit] NOT NULL,
	[validationRegExp] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_cmsPropertyType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsPropertyType] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsPropertyTypeGroup]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyTypeGroup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentGroupId] [int] NULL,
	[contenttypeNodeId] [int] NOT NULL,
	[text] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[sortorder] [int] NOT NULL,
 CONSTRAINT [PK_cmsPropertyTypeGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsPropertyTypeGroup] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsStylesheet]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsStylesheet](
	[nodeId] [int] NOT NULL,
	[filename] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[content] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_cmsStylesheet] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsStylesheet] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsStylesheetProperty]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsStylesheetProperty](
	[nodeId] [int] NOT NULL,
	[stylesheetPropertyEditor] [bit] NULL,
	[stylesheetPropertyAlias] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[stylesheetPropertyValue] [nvarchar](400) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_cmsStylesheetProperty] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsStylesheetProperty] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsTagRelationship]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTagRelationship](
	[nodeId] [int] NOT NULL,
	[tagId] [int] NOT NULL,
 CONSTRAINT [PK_cmsTagRelationship] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[tagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsTagRelationship] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsTags]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tag] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ParentId] [int] NULL,
	[group] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_cmsTags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsTags] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsTask]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTask](
	[closed] [bit] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[taskTypeId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[parentUserId] [int] NOT NULL,
	[userId] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[Comment] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_cmsTask] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsTask] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsTaskType]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTaskType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[alias] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_cmsTaskType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsTaskType] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[cmsTemplate]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTemplate](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[master] [int] NULL,
	[alias] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[design] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_cmsTemplate] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[cmsTemplate] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[umbracoDomains]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDomains](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domainDefaultLanguage] [int] NULL,
	[domainRootStructureID] [int] NULL,
	[domainName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_umbracoDomains] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[umbracoDomains] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[umbracoLanguage]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLanguage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[languageISOCode] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[languageCultureName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_umbracoLanguage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[umbracoLanguage] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[umbracoLog]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[NodeId] [int] NOT NULL,
	[Datestamp] [datetime] NOT NULL,
	[logHeader] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[logComment] [nvarchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_umbracoLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[umbracoLog] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[umbracoNode]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoNode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trashed] [bit] NOT NULL,
	[parentID] [int] NOT NULL,
	[nodeUser] [int] NULL,
	[level] [int] NOT NULL,
	[path] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[sortOrder] [int] NOT NULL,
	[uniqueID] [uniqueidentifier] NULL,
	[text] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[nodeObjectType] [uniqueidentifier] NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_structure] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[umbracoNode] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[umbracoRelation]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[childId] [int] NOT NULL,
	[relType] [int] NOT NULL,
	[datetime] [datetime] NOT NULL,
	[comment] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_umbracoRelation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[umbracoRelation] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[umbracoRelationType]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelationType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dual] [bit] NOT NULL,
	[parentObjectType] [uniqueidentifier] NOT NULL,
	[childObjectType] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[alias] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_umbracoRelationType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[umbracoRelationType] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[umbracoServer]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoServer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[computerName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[registeredDate] [datetime] NOT NULL,
	[lastNotifiedDate] [datetime] NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoServer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[umbracoServer] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[umbracoUser]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userDisabled] [bit] NOT NULL,
	[userNoConsole] [bit] NOT NULL,
	[userType] [int] NOT NULL,
	[startStructureID] [int] NOT NULL,
	[startMediaID] [int] NULL,
	[userName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[userLogin] [nvarchar](125) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[userPassword] [nvarchar](125) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[userEmail] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[userDefaultPermissions] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[userLanguage] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[defaultToLiveEditing] [bit] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[umbracoUser] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[umbracoUser2app]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2app](
	[user] [int] NOT NULL,
	[app] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_user2app] PRIMARY KEY CLUSTERED 
(
	[user] ASC,
	[app] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[umbracoUser2app] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[umbracoUser2NodeNotify]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2NodeNotify](
	[userId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[action] [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_umbracoUser2NodeNotify] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[nodeId] ASC,
	[action] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[umbracoUser2NodeNotify] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[umbracoUser2NodePermission]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2NodePermission](
	[userId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[permission] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_umbracoUser2NodePermission] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[nodeId] ASC,
	[permission] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[umbracoUser2NodePermission] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[umbracoUserLogins]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserLogins](
	[contextID] [uniqueidentifier] NOT NULL,
	[userID] [int] NOT NULL,
	[timeout] [bigint] NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[umbracoUserLogins] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[umbracoUserType]    Script Date: 2/3/2014 10:35:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userTypeAlias] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[userTypeName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[userTypeDefaultPermissions] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_umbracoUserType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[umbracoUserType] TO  SCHEMA OWNER 
GO
/****** Object:  Index [umbracoUserLogins_Index]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE CLUSTERED INDEX [umbracoUserLogins_Index] ON [dbo].[umbracoUserLogins]
(
	[contextID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cmsContentType] ON 

GO
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (532, 1031, N'Folder', N'folder.gif', N'folder.png', NULL, 1, 1)
GO
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (533, 1032, N'Image', N'mediaPhoto.gif', N'mediaPhoto.png', NULL, 0, 0)
GO
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (534, 1033, N'File', N'mediaFile.gif', N'mediaFile.png', NULL, 0, 0)
GO
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (701, 1247, N'FirstLevelDT', N'doc4.gif', N'doc.png', N'Decription of FirsteLevelDT', 0, 0)
GO
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (712, 1281, N'SecondLevelDT1', N'doc4.gif', N'folder.png', N'Decription of SecondLevelDT1', 0, 0)
GO
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (718, 1326, N'AdminMemberType', N'doc5.gif', N'developer.png', N'Member type that describes administrators', 0, 0)
GO
SET IDENTITY_INSERT [dbo].[cmsContentType] OFF
GO
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1031, 0)
GO
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1032, 0)
GO
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1033, 0)
GO
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1247, 1247, 0)
GO
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1247, 1281, 0)
GO
SET IDENTITY_INSERT [dbo].[cmsDataType] ON 

GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (1, -49, N'38b352c1-e9f8-4fd8-9324-9a2eab06d97a', N'Integer')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (2, -51, N'1413afcb-d19a-4173-8e9a-68288d2a73b8', N'Integer')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (3, -87, N'5e9b75ae-face-41c8-b47e-5f4b0fd82f83', N'Ntext')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (4, -88, N'ec15c1e5-9d90-422a-aa52-4f7622c63bea', N'Nvarchar')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (5, -89, N'67db8357-ef57-493e-91ac-936d305e0f2a', N'Ntext')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (6, -90, N'5032a6e6-69e3-491d-bb28-cd31cd11086c', N'Nvarchar')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (7, -92, N'6c738306-4c17-4d88-b9bd-6546f3771597', N'Nvarchar')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (8, -36, N'b6fb1622-afa5-4bbf-a3cc-d9672a442222', N'Date')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (9, -37, N'f8d60f68-ec59-4974-b43b-c46eb5677985', N'Nvarchar')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (10, -38, N'cccd4ae9-f399-4ed2-8038-2e88d19e810c', N'Nvarchar')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (11, -39, N'928639ed-9c73-4028-920c-1e55dbb68783', N'Nvarchar')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (12, -40, N'a52c7c1c-c330-476e-8605-d63d3b84b6a6', N'Nvarchar')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (13, -41, N'23e93522-3200-44e2-9f29-e61a6fcbb79a', N'Date')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (14, -42, N'a74ea9c9-8e18-4d2a-8cf6-73c6206c5da6', N'Integer')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (15, -43, N'b4471851-82b6-4c75-afa4-39fa9c6a75e9', N'Nvarchar')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (16, 1034, N'158aa029-24ed-4948-939e-c3da209e5fba', N'Integer')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (17, 1035, N'ead69342-f06d-4253-83ac-28000225583b', N'Integer')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (18, 1036, N'39f533e4-0551-4505-a64b-e0425c5ce775', N'Integer')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (19, 1038, N'60b7dabf-99cd-41eb-b8e9-4d2e669bbde9', N'Ntext')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (20, 1039, N'cdbf0b5d-5cb2-445f-bc12-fcaaec07cf2c', N'Ntext')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (21, 1040, N'71b8ad1a-8dc2-425c-b6b8-faa158075e63', N'Ntext')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (22, 1041, N'4023e540-92f5-11dd-ad8b-0800200c9a66', N'Ntext')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (23, 1042, N'474fcff8-9d2d-11de-abc6-ad7a56d89593', N'Ntext')
GO
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [controlId], [dbType]) VALUES (24, 1043, N'7a2d436c-34c2-410f-898f-4a23b3d79f54', N'Ntext')
GO
SET IDENTITY_INSERT [dbo].[cmsDataType] OFF
GO
SET IDENTITY_INSERT [dbo].[cmsDataTypePreValues] ON 

GO
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (3, -87, N',code,undo,redo,cut,copy,mcepasteword,stylepicker,bold,italic,bullist,numlist,outdent,indent,mcelink,unlink,mceinsertanchor,mceimage,umbracomacro,mceinserttable,umbracoembed,mcecharmap,|1|1,2,3,|0|500,400|1049,|true|', 0, N'')
GO
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (4, 1041, N'default', 0, N'group')
GO
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (7, -89, N'', 0, N'')
GO
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (8, -88, N'', 0, N'')
GO
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (9, 1038, N'', 0, N'')
GO
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (10, 1034, N'', 0, N'')
GO
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (11, -36, N'', 0, N'')
GO
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (12, -41, N'', 0, N'')
GO
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (13, -38, N'', 0, N'')
GO
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (14, -92, N'', 0, N'')
GO
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (15, 1036, N'', 0, N'')
GO
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (17, -51, N'', 0, N'')
GO
SET IDENTITY_INSERT [dbo].[cmsDataTypePreValues] OFF
GO
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1247, 1145, 0)
GO
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1247, 1146, 1)
GO
SET IDENTITY_INSERT [dbo].[cmsMacro] ON 

GO
INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (5, 1, 33, N'FirstLevel', N'FirstLevelMacro', N'/usercontrols/FirstLevel.ascx', NULL, NULL, 1, 1, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[cmsMacro] OFF
GO
SET IDENTITY_INSERT [dbo].[cmsMacroPropertyType] ON 

GO
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (3, N'mediaCurrent', N'umbraco.macroRenderings', N'media', N'Int32')
GO
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (4, N'contentSubs', N'umbraco.macroRenderings', N'content', N'Int32')
GO
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (5, N'contentRandom', N'umbraco.macroRenderings', N'content', N'Int32')
GO
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (6, N'contentPicker', N'umbraco.macroRenderings', N'content', N'Int32')
GO
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (13, N'number', N'umbraco.macroRenderings', N'numeric', N'Int32')
GO
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (14, N'bool', N'umbraco.macroRenderings', N'yesNo', N'Boolean')
GO
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (16, N'text', N'umbraco.macroRenderings', N'text', N'String')
GO
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (17, N'contentTree', N'umbraco.macroRenderings', N'content', N'Int32')
GO
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (18, N'contentType', N'umbraco.macroRenderings', N'contentTypeSingle', N'Int32')
GO
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (19, N'contentTypeMultiple', N'umbraco.macroRenderings', N'contentTypeMultiple', N'Int32')
GO
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (20, N'contentAll', N'umbraco.macroRenderings', N'content', N'Int32')
GO
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (21, N'tabPicker', N'umbraco.macroRenderings', N'tabPicker', N'String')
GO
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (22, N'tabPickerMultiple', N'umbraco.macroRenderings', N'tabPickerMultiple', N'String')
GO
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (23, N'propertyTypePicker', N'umbraco.macroRenderings', N'propertyTypePicker', N'String')
GO
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (24, N'propertyTypePickerMultiple', N'umbraco.macroRenderings', N'propertyTypePickerMultiple', N'String')
GO
INSERT [dbo].[cmsMacroPropertyType] ([id], [macroPropertyTypeAlias], [macroPropertyTypeRenderAssembly], [macroPropertyTypeRenderType], [macroPropertyTypeBaseType]) VALUES (25, N'textMultiLine', N'umbraco.macroRenderings', N'textMultiple', N'String')
GO
SET IDENTITY_INSERT [dbo].[cmsMacroPropertyType] OFF
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyType] ON 

GO
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (6, -90, 1032, 3, N'umbracoFile', N'Upload image', NULL, 0, 0, NULL, NULL)
GO
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (7, -92, 1032, 3, N'umbracoWidth', N'Width', NULL, 0, 0, NULL, NULL)
GO
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (8, -92, 1032, 3, N'umbracoHeight', N'Height', NULL, 0, 0, NULL, NULL)
GO
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (9, -92, 1032, 3, N'umbracoBytes', N'Size', NULL, 0, 0, NULL, NULL)
GO
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (10, -92, 1032, 3, N'umbracoExtension', N'Type', NULL, 0, 0, NULL, NULL)
GO
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (24, -90, 1033, 4, N'umbracoFile', N'Upload file', NULL, 0, 0, NULL, NULL)
GO
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (25, -92, 1033, 4, N'umbracoExtension', N'Type', NULL, 0, 0, NULL, NULL)
GO
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (26, -92, 1033, 4, N'umbracoBytes', N'Size', NULL, 0, 0, NULL, NULL)
GO
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (27, -38, 1031, 5, N'contents', N'Contents:', NULL, 0, 0, NULL, NULL)
GO
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (670, -88, 1281, NULL, N'property4', N'Property 4', NULL, 3, 0, N'', N'opis')
GO
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (671, -88, 1281, 211, N'property1', N'Property 1', NULL, 0, 1, N'', N'')
GO
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (672, -88, 1281, 212, N'prop2', N'Property 2', NULL, 1, 0, N'', N'')
GO
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (673, -88, 1281, 212, N'property3', N'Property 3', NULL, 2, 0, N'', N'')
GO
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (680, -88, 1326, 216, N'property1', N'Property 1b', NULL, 0, 1, N'', N'')
GO
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (681, -88, 1326, 216, N'property2', N'Property 2', NULL, 1, 1, N'', N'')
GO
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [helpText], [sortOrder], [mandatory], [validationRegExp], [Description]) VALUES (682, -88, 1326, 216, N'prop3', N'Prop3', NULL, 2, 1, N'', N'')
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyType] OFF
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] ON 

GO
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (3, NULL, 1032, N'Image', 1)
GO
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (4, NULL, 1033, N'File', 1)
GO
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (5, NULL, 1031, N'Contents', 1)
GO
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (211, NULL, 1281, N'Settings', 6)
GO
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (212, NULL, 1281, N'Content', 5)
GO
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [parentGroupId], [contenttypeNodeId], [text], [sortorder]) VALUES (216, NULL, 1326, N'Settings', 1)
GO
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] OFF
GO
SET IDENTITY_INSERT [dbo].[cmsTaskType] ON 

GO
INSERT [dbo].[cmsTaskType] ([id], [alias]) VALUES (1, N'toTranslate')
GO
SET IDENTITY_INSERT [dbo].[cmsTaskType] OFF
GO
SET IDENTITY_INSERT [dbo].[cmsTemplate] ON 

GO
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (28, 1145, NULL, N'FirstLevel', N'<%@ Master Language="C#" AutoEventWireup="true" CodeBehind="FirstLevel.master.cs" Inherits="Vega.Test.Web.Masterpages.FirstLevel" MasterPageFile="~/umbraco/masterpages/default.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderDefault" runat="server">
    
</asp:Content>')
GO
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (29, 1146, 1145, N'SecondLevel1', N' ')
GO
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (30, 1147, 1145, N'SecondLevel2', N' ')
GO
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (31, 1148, 1145, N'SecondLevel3', N' ')
GO
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (32, 1149, 1146, N'ThirdLevel11', N' ')
GO
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (33, 1150, 1146, N'ThirdLevel12', N' ')
GO
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [master], [alias], [design]) VALUES (34, 1151, 1147, N'ThirdLevel21', N' ')
GO
SET IDENTITY_INSERT [dbo].[cmsTemplate] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoLanguage] ON 

GO
INSERT [dbo].[umbracoLanguage] ([id], [languageISOCode], [languageCultureName]) VALUES (1, N'en-US', N'en-US')
GO
SET IDENTITY_INSERT [dbo].[umbracoLanguage] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoLog] ON 

GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1, 0, 1044, CAST(0x0000A28A0106FB03 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2, 0, 1044, CAST(0x0000A28A0106FB33 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (3, 0, -1, CAST(0x0000A28A01071589 AS DateTime), N'Delete', N'Delete Content of Type 1044 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (4, 0, 1044, CAST(0x0000A28A01071595 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (5, 0, 1045, CAST(0x0000A28A01078F16 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (6, 0, 1045, CAST(0x0000A28A01078F56 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (7, 0, -1, CAST(0x0000A28A0107CBB0 AS DateTime), N'Delete', N'Delete Content of Type 1045 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (8, 0, 1045, CAST(0x0000A28A0107CBBC AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (9, 0, 1046, CAST(0x0000A28A0108D016 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (10, 0, 1046, CAST(0x0000A28A0108D03A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (11, 0, 1047, CAST(0x0000A28A01092F1B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (12, 0, 1046, CAST(0x0000A28A0109375E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (13, 0, -1, CAST(0x0000A28A01093FC2 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (14, 0, 1046, CAST(0x0000A28A01093FC7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (15, 0, -1, CAST(0x0000A28A01094EA1 AS DateTime), N'Delete', N'Delete Content of Type 1047 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (16, 0, 1047, CAST(0x0000A28A01094EAD AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (17, 0, -1, CAST(0x0000A28A01095192 AS DateTime), N'Delete', N'Delete Content of Type 1046 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (18, 0, 1046, CAST(0x0000A28A01095195 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (19, 0, 1048, CAST(0x0000A28A010A43C9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (20, 0, 1048, CAST(0x0000A28A010A43F5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (21, 0, -1, CAST(0x0000A28A010B4F28 AS DateTime), N'Delete', N'Delete Content of Type 1048 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (22, 0, 1048, CAST(0x0000A28A010B4F35 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (23, 0, 1049, CAST(0x0000A28A010D2464 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (24, 0, 1049, CAST(0x0000A28A010D2491 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (25, 0, 1049, CAST(0x0000A28A010DB26C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (26, 0, 1049, CAST(0x0000A28A010DB279 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (27, 0, -1, CAST(0x0000A28A010DC040 AS DateTime), N'Delete', N'Delete Content of Type 1049 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (28, 0, 1049, CAST(0x0000A28A010DC04A AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (29, 0, 1050, CAST(0x0000A28A010E1F76 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (30, 0, 1050, CAST(0x0000A28A010E1F9A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (31, 0, 1050, CAST(0x0000A28A01102C86 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (32, 0, 1050, CAST(0x0000A28A01102C9F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (33, 0, -1, CAST(0x0000A28A01107470 AS DateTime), N'Delete', N'Delete Content of Type 1050 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (34, 0, 1050, CAST(0x0000A28A0110747D AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (35, 0, 1051, CAST(0x0000A28A0111519E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (36, 0, 1051, CAST(0x0000A28A011151C4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (37, 0, 1051, CAST(0x0000A28A011151CF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (38, 0, 1052, CAST(0x0000A28A011182CE AS DateTime), N'New', N'Content ''1'' was created with Id 1052')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (39, 0, 1052, CAST(0x0000A28A011182FE AS DateTime), N'Save', N'Save Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (40, 0, 1052, CAST(0x0000A28A011183CC AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (41, 0, 1052, CAST(0x0000A28A01118A40 AS DateTime), N'Publish', N'Save and Publish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (42, 0, 1052, CAST(0x0000A28A0111916D AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (43, 0, 1052, CAST(0x0000A28A01119BC7 AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (44, 0, 1052, CAST(0x0000A28A011252B2 AS DateTime), N'UnPublish', N'UnPublish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (45, 0, 1052, CAST(0x0000A28A011252C6 AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (46, 0, 1052, CAST(0x0000A28A011252C6 AS DateTime), N'Delete', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (47, 0, 1052, CAST(0x0000A28A01126404 AS DateTime), N'Delete', N'Delete Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (48, 0, -1, CAST(0x0000A28A01126405 AS DateTime), N'Delete', N'Delete Content of Type 1051 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (49, 0, 1051, CAST(0x0000A28A01126410 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (50, 0, 1053, CAST(0x0000A28A01128881 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (51, 0, 1053, CAST(0x0000A28A0112889E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (52, 0, 1053, CAST(0x0000A28A011288A8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (53, 0, 1054, CAST(0x0000A28A011299A5 AS DateTime), N'New', N'Content ''1'' was created with Id 1054')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (54, 0, 1054, CAST(0x0000A28A011299CF AS DateTime), N'Save', N'Save Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (55, 0, 1054, CAST(0x0000A28A01129A6C AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (56, 0, 1053, CAST(0x0000A28A0116C786 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (57, 0, 1053, CAST(0x0000A28A0116C78C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (58, 0, 1053, CAST(0x0000A28A0116C796 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (59, 0, 1053, CAST(0x0000A28A0116F654 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (60, 0, 1053, CAST(0x0000A28A0116F65A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (61, 0, 1053, CAST(0x0000A28A0116F664 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (62, 0, 1054, CAST(0x0000A28A011728FA AS DateTime), N'UnPublish', N'UnPublish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (63, 0, 1054, CAST(0x0000A28A01172936 AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (64, 0, 1054, CAST(0x0000A28A01172938 AS DateTime), N'Delete', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (65, 0, 1054, CAST(0x0000A28A01172D04 AS DateTime), N'Delete', N'Delete Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (66, 0, -1, CAST(0x0000A28A01172D04 AS DateTime), N'Delete', N'Delete Content of Type 1053 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (67, 0, 1053, CAST(0x0000A28A01172D0C AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (68, 0, 1055, CAST(0x0000A28B00934862 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (69, 0, 1055, CAST(0x0000A28B00934888 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (70, 0, 1055, CAST(0x0000A28B00934893 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (71, 0, -1, CAST(0x0000A28B00935DCB AS DateTime), N'Delete', N'Delete Content of Type 1055 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (72, 0, 1055, CAST(0x0000A28B00935DD6 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (73, 0, 1056, CAST(0x0000A28B009370C7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (74, 0, 1056, CAST(0x0000A28B009370EB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (75, 0, 1056, CAST(0x0000A28B009370F6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (76, 0, 1056, CAST(0x0000A28B0093C465 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (77, 0, 1056, CAST(0x0000A28B0093C46B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (78, 0, 1056, CAST(0x0000A28B0093C475 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (79, 0, -1, CAST(0x0000A28B0093E5C8 AS DateTime), N'Delete', N'Delete Content of Type 1056 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (80, 0, 1056, CAST(0x0000A28B0093E5D5 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (81, 0, 1057, CAST(0x0000A28B0096EB7E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (82, 0, 1057, CAST(0x0000A28B0096EB9B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (83, 0, 1057, CAST(0x0000A28B0096EBAD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (84, 0, -1, CAST(0x0000A28B00972375 AS DateTime), N'Delete', N'Delete Content of Type 1057 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (85, 0, 1057, CAST(0x0000A28B00972384 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (86, 0, 1058, CAST(0x0000A28B00973A54 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (87, 0, 1058, CAST(0x0000A28B00973B75 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (88, 0, 1058, CAST(0x0000A28B00973FD7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (89, 0, 1058, CAST(0x0000A28B00977BC7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (90, 0, 1058, CAST(0x0000A28B00977BCD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (91, 0, 1058, CAST(0x0000A28B00977BD8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (92, 0, -1, CAST(0x0000A28B0097988B AS DateTime), N'Delete', N'Delete Content of Type 1058 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (93, 0, 1058, CAST(0x0000A28B00979896 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (94, 0, 1059, CAST(0x0000A28B00989CFB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (95, 0, 1059, CAST(0x0000A28B0098A384 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (96, 0, -1, CAST(0x0000A28B0098FADD AS DateTime), N'Delete', N'Delete Content of Type 1059 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (97, 0, 1059, CAST(0x0000A28B0098FAE9 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (98, 0, 1060, CAST(0x0000A28B00999B18 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (99, 0, 1060, CAST(0x0000A28B0099AB70 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (100, 0, 1060, CAST(0x0000A28B0099AB75 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (101, 0, 1060, CAST(0x0000A28B0099AB7F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (102, 0, -1, CAST(0x0000A28B0099BCBC AS DateTime), N'Delete', N'Delete Content of Type 1060 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (103, 0, 1060, CAST(0x0000A28B0099BCC5 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (104, 0, 1061, CAST(0x0000A28B0099C9AC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (105, 0, 1061, CAST(0x0000A28B0099C9C5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (106, 0, 1061, CAST(0x0000A28B0099C9D0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (107, 0, -1, CAST(0x0000A28B0099D0C0 AS DateTime), N'Delete', N'Delete Content of Type 1061 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (108, 0, 1061, CAST(0x0000A28B0099D0C3 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (109, 0, 1062, CAST(0x0000A28B0099EBFE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (110, 0, 1062, CAST(0x0000A28B00A26505 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (111, 0, 1062, CAST(0x0000A28B00A2650B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (112, 0, 1062, CAST(0x0000A28B00A26516 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (113, 0, -1, CAST(0x0000A28B00A265E9 AS DateTime), N'Delete', N'Delete Content of Type 1062 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (114, 0, 1062, CAST(0x0000A28B00A265F4 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (115, 0, 1063, CAST(0x0000A28B00A26F45 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (116, 0, 1063, CAST(0x0000A28B00A26F5C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (117, 0, 1063, CAST(0x0000A28B00A26F66 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (118, 0, 1063, CAST(0x0000A28B00AF2B62 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (119, 0, 1063, CAST(0x0000A28B00AF7240 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (120, 0, 1063, CAST(0x0000A28B00AF85DF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (121, 0, -1, CAST(0x0000A28B00B2C50A AS DateTime), N'Delete', N'Delete Content of Type 1063 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (122, 0, 1063, CAST(0x0000A28B00B2C517 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (123, 0, 1064, CAST(0x0000A28B00B2DC50 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (124, 0, 1064, CAST(0x0000A28B00B2DC70 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (125, 0, 1064, CAST(0x0000A28B00B2DC7B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (126, 0, -1, CAST(0x0000A28B00B3376A AS DateTime), N'Delete', N'Delete Content of Type 1064 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (127, 0, 1064, CAST(0x0000A28B00B33777 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (128, 0, 1065, CAST(0x0000A28B00B3BED4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (129, 0, 1065, CAST(0x0000A28B00B3BF02 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (130, 0, 1065, CAST(0x0000A28B00B3BF14 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (131, 0, 1065, CAST(0x0000A28B00B3EF2E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (132, 0, 1065, CAST(0x0000A28B00B3F062 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (133, 0, -1, CAST(0x0000A28B00B5DDD7 AS DateTime), N'Delete', N'Delete Content of Type 1065 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (134, 0, 1065, CAST(0x0000A28B00B5DDE4 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (135, 0, 1066, CAST(0x0000A28B00B5EC2D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (136, 0, 1066, CAST(0x0000A28B00B5EC51 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (137, 0, 1066, CAST(0x0000A28B00B5EC5C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (138, 0, 1066, CAST(0x0000A28B00B64055 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (139, 0, 1066, CAST(0x0000A28B00B64061 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (140, 0, 1066, CAST(0x0000A28B00B673DE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (141, 0, 1066, CAST(0x0000A28B00B6AF1D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (142, 0, 1066, CAST(0x0000A28B00B6AF27 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (143, 0, 1066, CAST(0x0000A28B00B71CF5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (144, 0, 1066, CAST(0x0000A28B00B71D02 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (145, 0, 1066, CAST(0x0000A28B00B7344D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (146, 0, 1066, CAST(0x0000A28B00B9AD40 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (147, 0, 1066, CAST(0x0000A28B00B9CCA9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (148, 0, 1066, CAST(0x0000A28B00B9E7C0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (149, 0, 1066, CAST(0x0000A28B00BAA34D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (150, 0, 1066, CAST(0x0000A28B00BAB579 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (151, 0, 1066, CAST(0x0000A28B00BAE99B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (152, 0, 1066, CAST(0x0000A28B00BB011B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (153, 0, 1066, CAST(0x0000A28B00BB241F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (154, 0, 1066, CAST(0x0000A28B00BB242D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (155, 0, 1066, CAST(0x0000A28B00BB2FF0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (156, 0, 1066, CAST(0x0000A28B00BB2FFD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (157, 0, 1066, CAST(0x0000A28B00BBB61C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (158, 0, 1066, CAST(0x0000A28B00BBB629 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (159, 0, 1066, CAST(0x0000A28B00BC7261 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (160, 0, 1066, CAST(0x0000A28B00BC896E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (161, 0, 1066, CAST(0x0000A28B00BD942C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (162, 0, 1066, CAST(0x0000A28B00BD9699 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (163, 0, 1066, CAST(0x0000A28B00BE9341 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (164, 0, 1066, CAST(0x0000A28B00BE934F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (165, 0, 1066, CAST(0x0000A28B00BEA7E6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (166, 0, -1, CAST(0x0000A28B00CDF578 AS DateTime), N'Delete', N'Delete Content of Type 1066 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (167, 0, 1066, CAST(0x0000A28B00CDF5A1 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (168, 0, 1067, CAST(0x0000A28B00CE4BFA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (169, 0, -1, CAST(0x0000A28B00CE6C7B AS DateTime), N'Delete', N'Delete Content of Type 1067 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (170, 0, 1067, CAST(0x0000A28B00CE6C86 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (171, 0, 1068, CAST(0x0000A28B00CF396F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (172, 0, -1, CAST(0x0000A28B00CF7E70 AS DateTime), N'Delete', N'Delete Content of Type 1068 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (173, 0, 1068, CAST(0x0000A28B00CF7E93 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (174, 0, 1069, CAST(0x0000A28B00CF8F23 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (175, 0, 1069, CAST(0x0000A28B00CF9EF2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (176, 0, -1, CAST(0x0000A28B00CFB033 AS DateTime), N'Delete', N'Delete Content of Type 1069 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (177, 0, 1069, CAST(0x0000A28B00CFB037 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (178, 0, 1070, CAST(0x0000A28B00CFC6C4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (179, 0, 1070, CAST(0x0000A28B00CFCB58 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (180, 0, -1, CAST(0x0000A28B00D0ED4B AS DateTime), N'Delete', N'Delete Content of Type 1070 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (181, 0, 1070, CAST(0x0000A28B00D0ED6C AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (182, 0, 1071, CAST(0x0000A28B00D107F7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (183, 0, -1, CAST(0x0000A28B00D15340 AS DateTime), N'Delete', N'Delete Content of Type 1071 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (184, 0, 1071, CAST(0x0000A28B00D1535F AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (185, 0, 1072, CAST(0x0000A28B00D1744F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (186, 0, 1072, CAST(0x0000A28B00D177CF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (187, 0, -1, CAST(0x0000A28B00D5DDC4 AS DateTime), N'Delete', N'Delete Content of Type 1072 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (188, 0, 1072, CAST(0x0000A28B00D5DDE7 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (189, 0, 1073, CAST(0x0000A28B00D60BD5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (190, 0, 1073, CAST(0x0000A28B00D61C1E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (191, 0, -1, CAST(0x0000A28B00D8AB6E AS DateTime), N'Delete', N'Delete Content of Type 1073 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (192, 0, 1073, CAST(0x0000A28B00D8AB97 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (193, 0, 1074, CAST(0x0000A28B00D8CDBF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (194, 0, -1, CAST(0x0000A28B00D8FAEA AS DateTime), N'Delete', N'Delete Content of Type 1074 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (195, 0, 1074, CAST(0x0000A28B00D8FAF4 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (196, 0, 1075, CAST(0x0000A28B00D91C08 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (197, 0, 1075, CAST(0x0000A28B00D9206B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (198, 0, -1, CAST(0x0000A28B00DB1556 AS DateTime), N'Delete', N'Delete Content of Type 1075 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (199, 0, 1075, CAST(0x0000A28B00DB1561 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (200, 0, 1076, CAST(0x0000A28B00DB4AA4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (201, 0, 1076, CAST(0x0000A28B00DB4AC3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (202, 0, -1, CAST(0x0000A28B00DB80FF AS DateTime), N'Delete', N'Delete Content of Type 1076 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (203, 0, 1076, CAST(0x0000A28B00DB810C AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (204, 0, 1077, CAST(0x0000A28B00DBD9E6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (205, 0, 1077, CAST(0x0000A28B00DBE08F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (206, 0, -1, CAST(0x0000A28B00DC0AC4 AS DateTime), N'Delete', N'Delete Content of Type 1077 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (207, 0, 1077, CAST(0x0000A28B00DC0ACE AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (208, 0, 1078, CAST(0x0000A28B00DC540A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (209, 0, -1, CAST(0x0000A28B00DF26E6 AS DateTime), N'Delete', N'Delete Content of Type 1078 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (210, 0, 1078, CAST(0x0000A28B00DF26F2 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (211, 0, 1079, CAST(0x0000A28B00DF3557 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (212, 0, 1079, CAST(0x0000A28B00DF367B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (213, 0, -1, CAST(0x0000A28B00E0B9BF AS DateTime), N'Delete', N'Delete Content of Type 1079 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (214, 0, 1079, CAST(0x0000A28B00E0B9E7 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (215, 0, 1080, CAST(0x0000A28B00E12CB4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (216, 0, 1080, CAST(0x0000A28B00E12D89 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (217, 0, -1, CAST(0x0000A28B00E1D540 AS DateTime), N'Delete', N'Delete Content of Type 1080 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (218, 0, 1080, CAST(0x0000A28B00E1D54C AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (219, 0, 1081, CAST(0x0000A28B00E37323 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (220, 0, 1081, CAST(0x0000A28B00E373CD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (221, 0, 1081, CAST(0x0000A28B00E37451 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (222, 0, 1081, CAST(0x0000A28B00E374E4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (223, 0, 1081, CAST(0x0000A28B00E3756E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (224, 0, 1081, CAST(0x0000A28B00E375FE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (225, 0, 1081, CAST(0x0000A28B00E37689 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (226, 0, 1081, CAST(0x0000A28B00E37719 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (227, 0, 1081, CAST(0x0000A28B00E377B1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (228, 0, 1081, CAST(0x0000A28B00E37848 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (229, 0, 1081, CAST(0x0000A28B00E3784E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (230, 0, -1, CAST(0x0000A28B00E40503 AS DateTime), N'Delete', N'Delete Content of Type 1081 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (231, 0, 1081, CAST(0x0000A28B00E4052B AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (232, 0, 1082, CAST(0x0000A28B00E438EA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (233, 0, 1082, CAST(0x0000A28B00E4396D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (234, 0, 1082, CAST(0x0000A28B00E439EA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (235, 0, 1082, CAST(0x0000A28B00E43A59 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (236, 0, 1082, CAST(0x0000A28B00E43AC8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (237, 0, 1082, CAST(0x0000A28B00E43B1D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (238, 0, 1082, CAST(0x0000A28B00E43B82 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (239, 0, 1082, CAST(0x0000A28B00E43BCD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (240, 0, 1082, CAST(0x0000A28B00E43C2A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (241, 0, 1082, CAST(0x0000A28B00E43C73 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (242, 0, 1082, CAST(0x0000A28B00E43C79 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (243, 0, 1083, CAST(0x0000A28B00E43CEF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (244, 0, 1083, CAST(0x0000A28B00E43D99 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (245, 0, 1083, CAST(0x0000A28B00E43E1A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (246, 0, 1083, CAST(0x0000A28B00E43E86 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (247, 0, 1083, CAST(0x0000A28B00E43EF4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (248, 0, 1083, CAST(0x0000A28B00E43F48 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (249, 0, 1083, CAST(0x0000A28B00E43FA5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (250, 0, 1083, CAST(0x0000A28B00E44000 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (251, 0, 1083, CAST(0x0000A28B00E44058 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (252, 0, 1083, CAST(0x0000A28B00E440AD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (253, 0, 1083, CAST(0x0000A28B00E440B2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (254, 0, 1084, CAST(0x0000A28B00E4410C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (255, 0, 1084, CAST(0x0000A28B00E4415C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (256, 0, 1084, CAST(0x0000A28B00E441AB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (257, 0, 1084, CAST(0x0000A28B00E441FA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (258, 0, 1084, CAST(0x0000A28B00E44247 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (259, 0, 1084, CAST(0x0000A28B00E44295 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (260, 0, 1084, CAST(0x0000A28B00E442E4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (261, 0, 1084, CAST(0x0000A28B00E44330 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (262, 0, 1084, CAST(0x0000A28B00E4437C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (263, 0, 1084, CAST(0x0000A28B00E443BC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (264, 0, 1084, CAST(0x0000A28B00E443C0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (265, 0, -1, CAST(0x0000A28B00E465ED AS DateTime), N'Delete', N'Delete Content of Type 1082 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (266, 0, 1082, CAST(0x0000A28B00E465F8 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (267, 0, -1, CAST(0x0000A28B00E468B2 AS DateTime), N'Delete', N'Delete Content of Type 1083 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (268, 0, 1083, CAST(0x0000A28B00E468B4 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (269, 0, -1, CAST(0x0000A28B00E46B54 AS DateTime), N'Delete', N'Delete Content of Type 1084 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (270, 0, 1084, CAST(0x0000A28B00E46B56 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (271, 0, 1085, CAST(0x0000A28B00E48E89 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (272, 0, 1085, CAST(0x0000A28B00E48EB1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (273, 0, 1085, CAST(0x0000A28B00E48EB5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (274, 0, 1085, CAST(0x0000A28B00E48EB8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (275, 0, 1085, CAST(0x0000A28B00E48EBC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (276, 0, 1085, CAST(0x0000A28B00E48EC0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (277, 0, 1085, CAST(0x0000A28B00E48EC3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (278, 0, 1085, CAST(0x0000A28B00E48EC7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (279, 0, 1085, CAST(0x0000A28B00E48ECB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (280, 0, 1085, CAST(0x0000A28B00E48ECF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (281, 0, 1085, CAST(0x0000A28B00E48ED2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (282, 0, 1086, CAST(0x0000A28B00E48EDD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (283, 0, 1086, CAST(0x0000A28B00E48EE5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (284, 0, 1086, CAST(0x0000A28B00E48EE9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (285, 0, 1086, CAST(0x0000A28B00E48EED AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (286, 0, 1086, CAST(0x0000A28B00E48EF0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (287, 0, 1086, CAST(0x0000A28B00E48EF4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (288, 0, 1086, CAST(0x0000A28B00E48EF8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (289, 0, 1086, CAST(0x0000A28B00E48EFC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (290, 0, 1086, CAST(0x0000A28B00E48F00 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (291, 0, 1086, CAST(0x0000A28B00E48F04 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (292, 0, 1086, CAST(0x0000A28B00E48F07 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (293, 0, 1087, CAST(0x0000A28B00E48F13 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (294, 0, 1087, CAST(0x0000A28B00E48F1B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (295, 0, 1087, CAST(0x0000A28B00E48F1F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (296, 0, 1087, CAST(0x0000A28B00E48F24 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (297, 0, 1087, CAST(0x0000A28B00E48F29 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (298, 0, 1087, CAST(0x0000A28B00E48F2D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (299, 0, 1087, CAST(0x0000A28B00E48F31 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (300, 0, 1087, CAST(0x0000A28B00E48F35 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (301, 0, 1087, CAST(0x0000A28B00E48F38 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (302, 0, 1087, CAST(0x0000A28B00E48F3D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (303, 0, 1087, CAST(0x0000A28B00E48F40 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (304, 0, 1085, CAST(0x0000A28B00E49B51 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (305, 0, 1085, CAST(0x0000A28B00E49B58 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (306, 0, 1085, CAST(0x0000A28B00E49B5B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (307, 0, 1085, CAST(0x0000A28B00E49B5F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (308, 0, 1085, CAST(0x0000A28B00E49B63 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (309, 0, 1085, CAST(0x0000A28B00E49B66 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (310, 0, 1085, CAST(0x0000A28B00E49B69 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (311, 0, 1085, CAST(0x0000A28B00E49B6D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (312, 0, 1085, CAST(0x0000A28B00E49B70 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (313, 0, 1085, CAST(0x0000A28B00E49B74 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (314, 0, 1085, CAST(0x0000A28B00E49B77 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (315, 0, 1086, CAST(0x0000A28B00E49B86 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (316, 0, 1086, CAST(0x0000A28B00E49B8A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (317, 0, 1086, CAST(0x0000A28B00E49B8E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (318, 0, 1086, CAST(0x0000A28B00E49B92 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (319, 0, 1086, CAST(0x0000A28B00E49B96 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (320, 0, 1086, CAST(0x0000A28B00E49B99 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (321, 0, 1086, CAST(0x0000A28B00E49B9D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (322, 0, 1086, CAST(0x0000A28B00E49BA0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (323, 0, 1086, CAST(0x0000A28B00E49BA4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (324, 0, 1086, CAST(0x0000A28B00E49BA7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (325, 0, 1086, CAST(0x0000A28B00E49BAA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (326, 0, 1087, CAST(0x0000A28B00E49BB9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (327, 0, 1087, CAST(0x0000A28B00E49BBD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (328, 0, 1087, CAST(0x0000A28B00E49BC1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (329, 0, 1087, CAST(0x0000A28B00E49BC4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (330, 0, 1087, CAST(0x0000A28B00E49BC8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (331, 0, 1087, CAST(0x0000A28B00E49BCB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (332, 0, 1087, CAST(0x0000A28B00E49BCF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (333, 0, 1087, CAST(0x0000A28B00E49BD2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (334, 0, 1087, CAST(0x0000A28B00E49BD6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (335, 0, 1087, CAST(0x0000A28B00E49BD9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (336, 0, 1087, CAST(0x0000A28B00E49BDD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (337, 0, -1, CAST(0x0000A28B00E4EDB6 AS DateTime), N'Delete', N'Delete Content of Type 1085 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (338, 0, 1085, CAST(0x0000A28B00E4EDC3 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (339, 0, -1, CAST(0x0000A28B00E4F04F AS DateTime), N'Delete', N'Delete Content of Type 1086 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (340, 0, 1086, CAST(0x0000A28B00E4F053 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (341, 0, -1, CAST(0x0000A28B00E4F2EA AS DateTime), N'Delete', N'Delete Content of Type 1087 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (342, 0, 1087, CAST(0x0000A28B00E4F2EE AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (343, 0, 1088, CAST(0x0000A28B00E50101 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (344, 0, 1088, CAST(0x0000A28B00E5012C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (345, 0, 1088, CAST(0x0000A28B00E50130 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (346, 0, 1088, CAST(0x0000A28B00E50134 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (347, 0, 1088, CAST(0x0000A28B00E50138 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (348, 0, 1088, CAST(0x0000A28B00E5013C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (349, 0, 1088, CAST(0x0000A28B00E5013F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (350, 0, 1088, CAST(0x0000A28B00E50143 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (351, 0, 1088, CAST(0x0000A28B00E50147 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (352, 0, 1088, CAST(0x0000A28B00E5014C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (353, 0, 1088, CAST(0x0000A28B00E5014F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (354, 0, 1089, CAST(0x0000A28B00E5015B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (355, 0, 1089, CAST(0x0000A28B00E50164 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (356, 0, 1089, CAST(0x0000A28B00E50167 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (357, 0, 1089, CAST(0x0000A28B00E5016C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (358, 0, 1089, CAST(0x0000A28B00E5016F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (359, 0, 1089, CAST(0x0000A28B00E50173 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (360, 0, 1089, CAST(0x0000A28B00E50177 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (361, 0, 1089, CAST(0x0000A28B00E5017B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (362, 0, 1089, CAST(0x0000A28B00E50180 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (363, 0, 1089, CAST(0x0000A28B00E50186 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (364, 0, 1089, CAST(0x0000A28B00E5018A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (365, 0, 1090, CAST(0x0000A28B00E50196 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (366, 0, 1090, CAST(0x0000A28B00E5019F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (367, 0, 1090, CAST(0x0000A28B00E501A3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (368, 0, 1090, CAST(0x0000A28B00E501A7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (369, 0, 1090, CAST(0x0000A28B00E501AB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (370, 0, 1090, CAST(0x0000A28B00E501AF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (371, 0, 1090, CAST(0x0000A28B00E501B3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (372, 0, 1090, CAST(0x0000A28B00E501B7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (373, 0, 1090, CAST(0x0000A28B00E501BB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (374, 0, 1090, CAST(0x0000A28B00E501BF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (375, 0, 1090, CAST(0x0000A28B00E501C3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (376, 0, 1091, CAST(0x0000A28B00E501D0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (377, 0, 1091, CAST(0x0000A28B00E501D8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (378, 0, 1091, CAST(0x0000A28B00E501DC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (379, 0, 1091, CAST(0x0000A28B00E501DF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (380, 0, 1091, CAST(0x0000A28B00E501E4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (381, 0, 1091, CAST(0x0000A28B00E501E8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (382, 0, 1091, CAST(0x0000A28B00E501EC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (383, 0, 1091, CAST(0x0000A28B00E501F0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (384, 0, 1091, CAST(0x0000A28B00E501F4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (385, 0, 1091, CAST(0x0000A28B00E501F8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (386, 0, 1091, CAST(0x0000A28B00E501FC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (387, 0, 1092, CAST(0x0000A28B00E50208 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (388, 0, 1092, CAST(0x0000A28B00E50211 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (389, 0, 1092, CAST(0x0000A28B00E50215 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (390, 0, 1092, CAST(0x0000A28B00E50219 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (391, 0, 1092, CAST(0x0000A28B00E5021D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (392, 0, 1092, CAST(0x0000A28B00E50221 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (393, 0, 1092, CAST(0x0000A28B00E50225 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (394, 0, 1092, CAST(0x0000A28B00E50229 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (395, 0, 1092, CAST(0x0000A28B00E5022E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (396, 0, 1092, CAST(0x0000A28B00E50232 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (397, 0, 1092, CAST(0x0000A28B00E50235 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (398, 0, 1093, CAST(0x0000A28B00E5024E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (399, 0, 1093, CAST(0x0000A28B00E50256 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (400, 0, 1093, CAST(0x0000A28B00E5025A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (401, 0, 1093, CAST(0x0000A28B00E5025E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (402, 0, 1093, CAST(0x0000A28B00E50262 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (403, 0, 1093, CAST(0x0000A28B00E50266 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (404, 0, 1093, CAST(0x0000A28B00E50269 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (405, 0, 1093, CAST(0x0000A28B00E5026D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (406, 0, 1093, CAST(0x0000A28B00E50272 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (407, 0, 1093, CAST(0x0000A28B00E50276 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (408, 0, 1093, CAST(0x0000A28B00E5027A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (409, 0, 1094, CAST(0x0000A28B00E50286 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (410, 0, 1094, CAST(0x0000A28B00E5028F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (411, 0, 1094, CAST(0x0000A28B00E50293 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (412, 0, 1094, CAST(0x0000A28B00E50298 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (413, 0, 1094, CAST(0x0000A28B00E5029C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (414, 0, 1094, CAST(0x0000A28B00E502A0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (415, 0, 1094, CAST(0x0000A28B00E502A3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (416, 0, 1094, CAST(0x0000A28B00E502A7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (417, 0, 1094, CAST(0x0000A28B00E502AB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (418, 0, 1094, CAST(0x0000A28B00E502B0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (419, 0, 1094, CAST(0x0000A28B00E502B3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (420, 0, 1095, CAST(0x0000A28B00E502BF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (421, 0, 1095, CAST(0x0000A28B00E502C8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (422, 0, 1095, CAST(0x0000A28B00E502CC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (423, 0, 1095, CAST(0x0000A28B00E502D0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (424, 0, 1095, CAST(0x0000A28B00E502D4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (425, 0, 1095, CAST(0x0000A28B00E502D8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (426, 0, 1095, CAST(0x0000A28B00E502DC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (427, 0, 1095, CAST(0x0000A28B00E502E0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (428, 0, 1095, CAST(0x0000A28B00E502E4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (429, 0, 1095, CAST(0x0000A28B00E502E8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (430, 0, 1095, CAST(0x0000A28B00E502EB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (431, 0, -1, CAST(0x0000A28B00E50F66 AS DateTime), N'Delete', N'Delete Content of Type 1088 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (432, 0, 1088, CAST(0x0000A28B00E50F6D AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (433, 0, -1, CAST(0x0000A28B00E511BF AS DateTime), N'Delete', N'Delete Content of Type 1089 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (434, 0, 1089, CAST(0x0000A28B00E511C2 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (435, 0, -1, CAST(0x0000A28B00E51408 AS DateTime), N'Delete', N'Delete Content of Type 1090 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (436, 0, 1090, CAST(0x0000A28B00E5140B AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (437, 0, -1, CAST(0x0000A28B00E5181A AS DateTime), N'Delete', N'Delete Content of Type 1091 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (438, 0, 1091, CAST(0x0000A28B00E5181C AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (439, 0, -1, CAST(0x0000A28B00E51A6A AS DateTime), N'Delete', N'Delete Content of Type 1092 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (440, 0, 1092, CAST(0x0000A28B00E51A6D AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (441, 0, -1, CAST(0x0000A28B00E51CC1 AS DateTime), N'Delete', N'Delete Content of Type 1093 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (442, 0, 1093, CAST(0x0000A28B00E51CC3 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (443, 0, -1, CAST(0x0000A28B00E51F20 AS DateTime), N'Delete', N'Delete Content of Type 1094 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (444, 0, 1094, CAST(0x0000A28B00E51F23 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (445, 0, -1, CAST(0x0000A28B00E52146 AS DateTime), N'Delete', N'Delete Content of Type 1095 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (446, 0, 1095, CAST(0x0000A28B00E52153 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (447, 0, 1096, CAST(0x0000A28B00E53367 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (448, 0, 1096, CAST(0x0000A28B00E53386 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (449, 0, 1096, CAST(0x0000A28B00E5338A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (450, 0, 1096, CAST(0x0000A28B00E5338E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (451, 0, 1096, CAST(0x0000A28B00E53392 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (452, 0, 1096, CAST(0x0000A28B00E53396 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (453, 0, 1096, CAST(0x0000A28B00E5339A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (454, 0, 1096, CAST(0x0000A28B00E5339E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (455, 0, 1096, CAST(0x0000A28B00E533A2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (456, 0, 1096, CAST(0x0000A28B00E533A6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (457, 0, 1096, CAST(0x0000A28B00E533A9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (458, 0, 1097, CAST(0x0000A28B00E533B6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (459, 0, 1097, CAST(0x0000A28B00E533BE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (460, 0, 1097, CAST(0x0000A28B00E533C2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (461, 0, 1097, CAST(0x0000A28B00E533C6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (462, 0, 1097, CAST(0x0000A28B00E533CB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (463, 0, 1097, CAST(0x0000A28B00E533D0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (464, 0, 1097, CAST(0x0000A28B00E533D5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (465, 0, 1097, CAST(0x0000A28B00E533D9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (466, 0, 1097, CAST(0x0000A28B00E533DD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (467, 0, 1097, CAST(0x0000A28B00E533E1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (468, 0, 1097, CAST(0x0000A28B00E533E4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (469, 0, 1098, CAST(0x0000A28B00E533F1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (470, 0, 1098, CAST(0x0000A28B00E533F9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (471, 0, 1098, CAST(0x0000A28B00E533FD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (472, 0, 1098, CAST(0x0000A28B00E53400 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (473, 0, 1098, CAST(0x0000A28B00E53404 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (474, 0, 1098, CAST(0x0000A28B00E53408 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (475, 0, 1098, CAST(0x0000A28B00E5340C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (476, 0, 1098, CAST(0x0000A28B00E53410 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (477, 0, 1098, CAST(0x0000A28B00E53414 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (478, 0, 1098, CAST(0x0000A28B00E53418 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (479, 0, 1098, CAST(0x0000A28B00E5341B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (480, 0, 1099, CAST(0x0000A28B00E53427 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (481, 0, 1099, CAST(0x0000A28B00E53430 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (482, 0, 1099, CAST(0x0000A28B00E53433 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (483, 0, 1099, CAST(0x0000A28B00E53437 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (484, 0, 1099, CAST(0x0000A28B00E5343B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (485, 0, 1099, CAST(0x0000A28B00E5343E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (486, 0, 1099, CAST(0x0000A28B00E53442 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (487, 0, 1099, CAST(0x0000A28B00E53448 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (488, 0, 1099, CAST(0x0000A28B00E5344C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (489, 0, 1099, CAST(0x0000A28B00E53450 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (490, 0, 1099, CAST(0x0000A28B00E53453 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (491, 0, 1100, CAST(0x0000A28B00E5345F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (492, 0, 1100, CAST(0x0000A28B00E53468 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (493, 0, 1100, CAST(0x0000A28B00E5346B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (494, 0, 1100, CAST(0x0000A28B00E5346F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (495, 0, 1100, CAST(0x0000A28B00E53473 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (496, 0, 1100, CAST(0x0000A28B00E53476 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (497, 0, 1100, CAST(0x0000A28B00E5347A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (498, 0, 1100, CAST(0x0000A28B00E5347E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (499, 0, 1100, CAST(0x0000A28B00E53483 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (500, 0, 1100, CAST(0x0000A28B00E53487 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (501, 0, 1100, CAST(0x0000A28B00E5348A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (502, 0, 1101, CAST(0x0000A28B00E53497 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (503, 0, 1101, CAST(0x0000A28B00E534A0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (504, 0, 1101, CAST(0x0000A28B00E534A4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (505, 0, 1101, CAST(0x0000A28B00E534A7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (506, 0, 1101, CAST(0x0000A28B00E534AB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (507, 0, 1101, CAST(0x0000A28B00E534AF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (508, 0, 1101, CAST(0x0000A28B00E534B3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (509, 0, 1101, CAST(0x0000A28B00E534B7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (510, 0, 1101, CAST(0x0000A28B00E534BB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (511, 0, 1101, CAST(0x0000A28B00E534C0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (512, 0, 1101, CAST(0x0000A28B00E534C4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (513, 0, 1102, CAST(0x0000A28B00E534D0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (514, 0, 1102, CAST(0x0000A28B00E534D8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (515, 0, 1102, CAST(0x0000A28B00E534DC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (516, 0, 1102, CAST(0x0000A28B00E534E0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (517, 0, 1102, CAST(0x0000A28B00E534E4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (518, 0, 1102, CAST(0x0000A28B00E534E8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (519, 0, 1102, CAST(0x0000A28B00E534EB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (520, 0, 1102, CAST(0x0000A28B00E534EF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (521, 0, 1102, CAST(0x0000A28B00E534F3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (522, 0, 1102, CAST(0x0000A28B00E534F7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (523, 0, 1102, CAST(0x0000A28B00E534FB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (524, 0, 1103, CAST(0x0000A28B00E53506 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (525, 0, 1103, CAST(0x0000A28B00E5350F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (526, 0, 1103, CAST(0x0000A28B00E53512 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (527, 0, 1103, CAST(0x0000A28B00E53516 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (528, 0, 1103, CAST(0x0000A28B00E5351A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (529, 0, 1103, CAST(0x0000A28B00E5351E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (530, 0, 1103, CAST(0x0000A28B00E53522 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (531, 0, 1103, CAST(0x0000A28B00E53526 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (532, 0, 1103, CAST(0x0000A28B00E5352A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (533, 0, 1103, CAST(0x0000A28B00E5352E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (534, 0, 1103, CAST(0x0000A28B00E53532 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (535, 0, -1, CAST(0x0000A28B00E53C7E AS DateTime), N'Delete', N'Delete Content of Type 1096 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (536, 0, 1096, CAST(0x0000A28B00E53C89 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (537, 0, -1, CAST(0x0000A28B00E53E9B AS DateTime), N'Delete', N'Delete Content of Type 1097 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (538, 0, 1097, CAST(0x0000A28B00E53E9E AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (539, 0, -1, CAST(0x0000A28B00E54084 AS DateTime), N'Delete', N'Delete Content of Type 1098 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (540, 0, 1098, CAST(0x0000A28B00E54087 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (541, 0, 1104, CAST(0x0000A28B00E5470D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (542, 0, 1104, CAST(0x0000A28B00E54729 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (543, 0, 1104, CAST(0x0000A28B00E5472D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (544, 0, 1104, CAST(0x0000A28B00E54731 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (545, 0, 1104, CAST(0x0000A28B00E54735 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (546, 0, 1104, CAST(0x0000A28B00E54738 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (547, 0, 1104, CAST(0x0000A28B00E5473C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (548, 0, 1104, CAST(0x0000A28B00E54740 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (549, 0, 1104, CAST(0x0000A28B00E54744 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (550, 0, 1104, CAST(0x0000A28B00E54748 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (551, 0, 1104, CAST(0x0000A28B00E5474C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (552, 0, 1105, CAST(0x0000A28B00E54756 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (553, 0, 1105, CAST(0x0000A28B00E5475F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (554, 0, 1105, CAST(0x0000A28B00E54762 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (555, 0, 1105, CAST(0x0000A28B00E54766 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (556, 0, 1105, CAST(0x0000A28B00E5476A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (557, 0, 1105, CAST(0x0000A28B00E5476E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (558, 0, 1105, CAST(0x0000A28B00E54771 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (559, 0, 1105, CAST(0x0000A28B00E54775 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (560, 0, 1105, CAST(0x0000A28B00E5477B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (561, 0, 1105, CAST(0x0000A28B00E54781 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (562, 0, 1105, CAST(0x0000A28B00E54784 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (563, 0, 1106, CAST(0x0000A28B00E5478F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (564, 0, 1106, CAST(0x0000A28B00E54797 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (565, 0, 1106, CAST(0x0000A28B00E5479A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (566, 0, 1106, CAST(0x0000A28B00E5479E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (567, 0, 1106, CAST(0x0000A28B00E547A1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (568, 0, 1106, CAST(0x0000A28B00E547A5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (569, 0, 1106, CAST(0x0000A28B00E547A9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (570, 0, 1106, CAST(0x0000A28B00E547AD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (571, 0, 1106, CAST(0x0000A28B00E547B2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (572, 0, 1106, CAST(0x0000A28B00E547B8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (573, 0, 1106, CAST(0x0000A28B00E547BB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (574, 0, 1099, CAST(0x0000A28B00E547CE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (575, 0, 1099, CAST(0x0000A28B00E547D2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (576, 0, 1099, CAST(0x0000A28B00E547D6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (577, 0, 1099, CAST(0x0000A28B00E547DA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (578, 0, 1099, CAST(0x0000A28B00E547DE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (579, 0, 1099, CAST(0x0000A28B00E547E2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (580, 0, 1099, CAST(0x0000A28B00E547E6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (581, 0, 1099, CAST(0x0000A28B00E547EA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (582, 0, 1099, CAST(0x0000A28B00E547EF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (583, 0, 1099, CAST(0x0000A28B00E547F2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (584, 0, 1099, CAST(0x0000A28B00E547F7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (585, 0, 1100, CAST(0x0000A28B00E5480C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (586, 0, 1100, CAST(0x0000A28B00E54810 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (587, 0, 1100, CAST(0x0000A28B00E54815 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (588, 0, 1100, CAST(0x0000A28B00E5481A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (589, 0, 1100, CAST(0x0000A28B00E5481E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (590, 0, 1100, CAST(0x0000A28B00E54822 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (591, 0, 1100, CAST(0x0000A28B00E54826 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (592, 0, 1100, CAST(0x0000A28B00E5482A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (593, 0, 1100, CAST(0x0000A28B00E5482D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (594, 0, 1100, CAST(0x0000A28B00E54832 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (595, 0, 1100, CAST(0x0000A28B00E54836 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (596, 0, 1101, CAST(0x0000A28B00E54847 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (597, 0, 1101, CAST(0x0000A28B00E5484B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (598, 0, 1101, CAST(0x0000A28B00E5484F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (599, 0, 1101, CAST(0x0000A28B00E54853 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (600, 0, 1101, CAST(0x0000A28B00E54857 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (601, 0, 1101, CAST(0x0000A28B00E5485A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (602, 0, 1101, CAST(0x0000A28B00E5485D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (603, 0, 1101, CAST(0x0000A28B00E54861 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (604, 0, 1101, CAST(0x0000A28B00E54865 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (605, 0, 1101, CAST(0x0000A28B00E54868 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (606, 0, 1101, CAST(0x0000A28B00E5486C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (607, 0, 1102, CAST(0x0000A28B00E5487E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (608, 0, 1102, CAST(0x0000A28B00E54882 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (609, 0, 1102, CAST(0x0000A28B00E54886 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (610, 0, 1102, CAST(0x0000A28B00E5488A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (611, 0, 1102, CAST(0x0000A28B00E5488E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (612, 0, 1102, CAST(0x0000A28B00E54892 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (613, 0, 1102, CAST(0x0000A28B00E54896 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (614, 0, 1102, CAST(0x0000A28B00E54899 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (615, 0, 1102, CAST(0x0000A28B00E5489D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (616, 0, 1102, CAST(0x0000A28B00E548A1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (617, 0, 1102, CAST(0x0000A28B00E548A6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (618, 0, 1103, CAST(0x0000A28B00E548BA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (619, 0, 1103, CAST(0x0000A28B00E548BD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (620, 0, 1103, CAST(0x0000A28B00E548C1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (621, 0, 1103, CAST(0x0000A28B00E548C4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (622, 0, 1103, CAST(0x0000A28B00E548C8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (623, 0, 1103, CAST(0x0000A28B00E548CC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (624, 0, 1103, CAST(0x0000A28B00E548CF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (625, 0, 1103, CAST(0x0000A28B00E548D3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (626, 0, 1103, CAST(0x0000A28B00E548D6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (627, 0, 1103, CAST(0x0000A28B00E548DA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (628, 0, 1103, CAST(0x0000A28B00E548DD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (629, 0, -1, CAST(0x0000A28B00E54D26 AS DateTime), N'Delete', N'Delete Content of Type 1104 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (630, 0, 1104, CAST(0x0000A28B00E54D2C AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (631, 0, -1, CAST(0x0000A28B00E54F97 AS DateTime), N'Delete', N'Delete Content of Type 1105 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (632, 0, 1105, CAST(0x0000A28B00E54F9D AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (633, 0, -1, CAST(0x0000A28B00E551FD AS DateTime), N'Delete', N'Delete Content of Type 1106 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (634, 0, 1106, CAST(0x0000A28B00E55201 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (635, 0, -1, CAST(0x0000A28B00E55464 AS DateTime), N'Delete', N'Delete Content of Type 1099 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (636, 0, 1099, CAST(0x0000A28B00E55466 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (637, 0, -1, CAST(0x0000A28B00E556F8 AS DateTime), N'Delete', N'Delete Content of Type 1100 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (638, 0, 1100, CAST(0x0000A28B00E556FA AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (639, 0, -1, CAST(0x0000A28B00E558E9 AS DateTime), N'Delete', N'Delete Content of Type 1101 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (640, 0, 1101, CAST(0x0000A28B00E558EC AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (641, 0, -1, CAST(0x0000A28B00E55AFC AS DateTime), N'Delete', N'Delete Content of Type 1102 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (642, 0, 1102, CAST(0x0000A28B00E55AFF AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (643, 0, -1, CAST(0x0000A28B00E55D20 AS DateTime), N'Delete', N'Delete Content of Type 1103 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (644, 0, 1103, CAST(0x0000A28B00E55D23 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (645, 0, 1107, CAST(0x0000A28B00E5CC5A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (646, 0, 1108, CAST(0x0000A28B00E5CC6A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (647, 0, 1109, CAST(0x0000A28B00E5CC79 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (648, 0, 1110, CAST(0x0000A28B00E5CC88 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (649, 0, 1111, CAST(0x0000A28B00E5CC98 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (650, 0, 1112, CAST(0x0000A28B00E5CCA7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (651, 0, 1113, CAST(0x0000A28B00E5CCB7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (652, 0, 1114, CAST(0x0000A28B00E5CCC6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (653, 0, 1107, CAST(0x0000A28B00E66496 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (654, 0, 1108, CAST(0x0000A28B00E664AA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (655, 0, 1109, CAST(0x0000A28B00E664BC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (656, 0, 1110, CAST(0x0000A28B00E664CF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (657, 0, 1111, CAST(0x0000A28B00E664E2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (658, 0, 1112, CAST(0x0000A28B00E664F5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (659, 0, 1113, CAST(0x0000A28B00E66507 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (660, 0, 1114, CAST(0x0000A28B00E6651A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (661, 0, -1, CAST(0x0000A28B00E71BDB AS DateTime), N'Delete', N'Delete Content of Type 1107 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (662, 0, 1107, CAST(0x0000A28B00E71BE9 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (663, 0, 1115, CAST(0x0000A28B00E723EF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (664, 0, 1108, CAST(0x0000A28B00E7241F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (665, 0, 1109, CAST(0x0000A28B00E72430 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (666, 0, 1110, CAST(0x0000A28B00E72448 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (667, 0, 1111, CAST(0x0000A28B00E7245E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (668, 0, 1112, CAST(0x0000A28B00E7246F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (669, 0, 1113, CAST(0x0000A28B00E72480 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (670, 0, 1114, CAST(0x0000A28B00E72491 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (671, 0, 1115, CAST(0x0000A28B00E7432E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (672, 0, 1115, CAST(0x0000A28B00E74335 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (673, 0, 1115, CAST(0x0000A28B00E74339 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (674, 0, 1115, CAST(0x0000A28B00E7433C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (675, 0, 1115, CAST(0x0000A28B00E74340 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (676, 0, 1115, CAST(0x0000A28B00E74345 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (677, 0, 1115, CAST(0x0000A28B00E7434A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (678, 0, 1115, CAST(0x0000A28B00E7434E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (679, 0, 1115, CAST(0x0000A28B00E74352 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (680, 0, 1115, CAST(0x0000A28B00E74355 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (681, 0, 1115, CAST(0x0000A28B00E7435A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (682, 0, 1108, CAST(0x0000A28B00E7436C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (683, 0, 1108, CAST(0x0000A28B00E74370 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (684, 0, 1108, CAST(0x0000A28B00E74374 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (685, 0, 1108, CAST(0x0000A28B00E74378 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (686, 0, 1108, CAST(0x0000A28B00E7437C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (687, 0, 1108, CAST(0x0000A28B00E74380 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (688, 0, 1108, CAST(0x0000A28B00E74383 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (689, 0, 1108, CAST(0x0000A28B00E74387 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (690, 0, 1108, CAST(0x0000A28B00E7438B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (691, 0, 1108, CAST(0x0000A28B00E7438F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (692, 0, 1108, CAST(0x0000A28B00E74392 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (693, 0, 1109, CAST(0x0000A28B00E743A4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (694, 0, 1109, CAST(0x0000A28B00E743A8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (695, 0, 1109, CAST(0x0000A28B00E743AC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (696, 0, 1109, CAST(0x0000A28B00E743B0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (697, 0, 1109, CAST(0x0000A28B00E743B4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (698, 0, 1109, CAST(0x0000A28B00E743B8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (699, 0, 1109, CAST(0x0000A28B00E743BC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (700, 0, 1109, CAST(0x0000A28B00E743C0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (701, 0, 1109, CAST(0x0000A28B00E743C4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (702, 0, 1109, CAST(0x0000A28B00E743C7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (703, 0, 1109, CAST(0x0000A28B00E743CB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (704, 0, 1110, CAST(0x0000A28B00E743DE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (705, 0, 1110, CAST(0x0000A28B00E743E2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (706, 0, 1110, CAST(0x0000A28B00E743E6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (707, 0, 1110, CAST(0x0000A28B00E743E9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (708, 0, 1110, CAST(0x0000A28B00E743ED AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (709, 0, 1110, CAST(0x0000A28B00E743F1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (710, 0, 1110, CAST(0x0000A28B00E743F5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (711, 0, 1110, CAST(0x0000A28B00E743F9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (712, 0, 1110, CAST(0x0000A28B00E743FD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (713, 0, 1110, CAST(0x0000A28B00E74401 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (714, 0, 1110, CAST(0x0000A28B00E74404 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (715, 0, 1111, CAST(0x0000A28B00E74417 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (716, 0, 1111, CAST(0x0000A28B00E7441B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (717, 0, 1111, CAST(0x0000A28B00E7441F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (718, 0, 1111, CAST(0x0000A28B00E74422 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (719, 0, 1111, CAST(0x0000A28B00E74426 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (720, 0, 1111, CAST(0x0000A28B00E7442A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (721, 0, 1111, CAST(0x0000A28B00E7442E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (722, 0, 1111, CAST(0x0000A28B00E74432 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (723, 0, 1111, CAST(0x0000A28B00E74436 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (724, 0, 1111, CAST(0x0000A28B00E74439 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (725, 0, 1111, CAST(0x0000A28B00E7443D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (726, 0, 1112, CAST(0x0000A28B00E74450 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (727, 0, 1112, CAST(0x0000A28B00E74455 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (728, 0, 1112, CAST(0x0000A28B00E74459 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (729, 0, 1112, CAST(0x0000A28B00E7445D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (730, 0, 1112, CAST(0x0000A28B00E74460 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (731, 0, 1112, CAST(0x0000A28B00E74464 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (732, 0, 1112, CAST(0x0000A28B00E74468 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (733, 0, 1112, CAST(0x0000A28B00E7446B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (734, 0, 1112, CAST(0x0000A28B00E7446F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (735, 0, 1112, CAST(0x0000A28B00E74473 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (736, 0, 1112, CAST(0x0000A28B00E74477 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (737, 0, 1113, CAST(0x0000A28B00E7448F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (738, 0, 1113, CAST(0x0000A28B00E74493 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (739, 0, 1113, CAST(0x0000A28B00E74497 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (740, 0, 1113, CAST(0x0000A28B00E7449A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (741, 0, 1113, CAST(0x0000A28B00E7449E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (742, 0, 1113, CAST(0x0000A28B00E744A1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (743, 0, 1113, CAST(0x0000A28B00E744A6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (744, 0, 1113, CAST(0x0000A28B00E744A9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (745, 0, 1113, CAST(0x0000A28B00E744AD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (746, 0, 1113, CAST(0x0000A28B00E744B0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (747, 0, 1113, CAST(0x0000A28B00E744B4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (748, 0, 1114, CAST(0x0000A28B00E744CA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (749, 0, 1114, CAST(0x0000A28B00E744CD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (750, 0, 1114, CAST(0x0000A28B00E744D1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (751, 0, 1114, CAST(0x0000A28B00E744D5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (752, 0, 1114, CAST(0x0000A28B00E744D9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (753, 0, 1114, CAST(0x0000A28B00E744DC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (754, 0, 1114, CAST(0x0000A28B00E744E1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (755, 0, 1114, CAST(0x0000A28B00E744E5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (756, 0, 1114, CAST(0x0000A28B00E744E8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (757, 0, 1114, CAST(0x0000A28B00E744EC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (758, 0, 1114, CAST(0x0000A28B00E744F0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (759, 0, 1115, CAST(0x0000A28B00E76377 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (760, 0, 1115, CAST(0x0000A28B00E76382 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (761, 0, 1115, CAST(0x0000A28B00E76385 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (762, 0, 1115, CAST(0x0000A28B00E76389 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (763, 0, 1115, CAST(0x0000A28B00E7638D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (764, 0, 1115, CAST(0x0000A28B00E76391 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (765, 0, 1115, CAST(0x0000A28B00E76395 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (766, 0, 1115, CAST(0x0000A28B00E76398 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (767, 0, 1115, CAST(0x0000A28B00E7639C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (768, 0, 1115, CAST(0x0000A28B00E763A0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (769, 0, 1115, CAST(0x0000A28B00E763AD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (770, 0, 1115, CAST(0x0000A28B00E763B1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (771, 0, 1108, CAST(0x0000A28B00E763C0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (772, 0, 1108, CAST(0x0000A28B00E763C4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (773, 0, 1108, CAST(0x0000A28B00E763C8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (774, 0, 1108, CAST(0x0000A28B00E763CB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (775, 0, 1108, CAST(0x0000A28B00E763D0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (776, 0, 1108, CAST(0x0000A28B00E763D4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (777, 0, 1108, CAST(0x0000A28B00E763DA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (778, 0, 1108, CAST(0x0000A28B00E763DE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (779, 0, 1108, CAST(0x0000A28B00E763E1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (780, 0, 1108, CAST(0x0000A28B00E763E5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (781, 0, 1108, CAST(0x0000A28B00E763E9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (782, 0, 1109, CAST(0x0000A28B00E763F9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (783, 0, 1109, CAST(0x0000A28B00E763FD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (784, 0, 1109, CAST(0x0000A28B00E76401 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (785, 0, 1109, CAST(0x0000A28B00E76404 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (786, 0, 1109, CAST(0x0000A28B00E76408 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (787, 0, 1109, CAST(0x0000A28B00E7640C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (788, 0, 1109, CAST(0x0000A28B00E76410 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (789, 0, 1109, CAST(0x0000A28B00E76413 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (790, 0, 1109, CAST(0x0000A28B00E76417 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (791, 0, 1109, CAST(0x0000A28B00E7641A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (792, 0, 1109, CAST(0x0000A28B00E7641E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (793, 0, 1110, CAST(0x0000A28B00E7642E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (794, 0, 1110, CAST(0x0000A28B00E76432 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (795, 0, 1110, CAST(0x0000A28B00E76436 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (796, 0, 1110, CAST(0x0000A28B00E7643A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (797, 0, 1110, CAST(0x0000A28B00E7643E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (798, 0, 1110, CAST(0x0000A28B00E76441 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (799, 0, 1110, CAST(0x0000A28B00E76445 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (800, 0, 1110, CAST(0x0000A28B00E7644A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (801, 0, 1110, CAST(0x0000A28B00E7644E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (802, 0, 1110, CAST(0x0000A28B00E76451 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (803, 0, 1110, CAST(0x0000A28B00E76455 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (804, 0, 1111, CAST(0x0000A28B00E76465 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (805, 0, 1111, CAST(0x0000A28B00E76469 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (806, 0, 1111, CAST(0x0000A28B00E7646D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (807, 0, 1111, CAST(0x0000A28B00E76471 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (808, 0, 1111, CAST(0x0000A28B00E76474 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (809, 0, 1111, CAST(0x0000A28B00E76478 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (810, 0, 1111, CAST(0x0000A28B00E7647C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (811, 0, 1111, CAST(0x0000A28B00E7647F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (812, 0, 1111, CAST(0x0000A28B00E76483 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (813, 0, 1111, CAST(0x0000A28B00E76487 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (814, 0, 1111, CAST(0x0000A28B00E7648B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (815, 0, 1112, CAST(0x0000A28B00E7649A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (816, 0, 1112, CAST(0x0000A28B00E7649E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (817, 0, 1112, CAST(0x0000A28B00E764A2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (818, 0, 1112, CAST(0x0000A28B00E764A6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (819, 0, 1112, CAST(0x0000A28B00E764A9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (820, 0, 1112, CAST(0x0000A28B00E764AD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (821, 0, 1112, CAST(0x0000A28B00E764B0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (822, 0, 1112, CAST(0x0000A28B00E764B4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (823, 0, 1112, CAST(0x0000A28B00E764B8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (824, 0, 1112, CAST(0x0000A28B00E764BB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (825, 0, 1112, CAST(0x0000A28B00E764C0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (826, 0, 1113, CAST(0x0000A28B00E764D0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (827, 0, 1113, CAST(0x0000A28B00E764D6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (828, 0, 1113, CAST(0x0000A28B00E764DA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (829, 0, 1113, CAST(0x0000A28B00E764E6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (830, 0, 1113, CAST(0x0000A28B00E764EB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (831, 0, 1113, CAST(0x0000A28B00E764EF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (832, 0, 1113, CAST(0x0000A28B00E764F2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (833, 0, 1113, CAST(0x0000A28B00E764F5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (834, 0, 1113, CAST(0x0000A28B00E764F9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (835, 0, 1113, CAST(0x0000A28B00E764FD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (836, 0, 1113, CAST(0x0000A28B00E76501 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (837, 0, 1114, CAST(0x0000A28B00E76515 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (838, 0, 1114, CAST(0x0000A28B00E76519 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (839, 0, 1114, CAST(0x0000A28B00E7651D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (840, 0, 1114, CAST(0x0000A28B00E76521 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (841, 0, 1114, CAST(0x0000A28B00E76524 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (842, 0, 1114, CAST(0x0000A28B00E76528 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (843, 0, 1114, CAST(0x0000A28B00E7652B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (844, 0, 1114, CAST(0x0000A28B00E7652F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (845, 0, 1114, CAST(0x0000A28B00E76533 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (846, 0, 1114, CAST(0x0000A28B00E76536 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (847, 0, 1114, CAST(0x0000A28B00E7653B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (848, 0, 1115, CAST(0x0000A28F00CE884B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (849, 0, 1115, CAST(0x0000A28F00CE8861 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (850, 0, 1115, CAST(0x0000A28F00CE8868 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (851, 0, 1115, CAST(0x0000A28F00CE886B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (852, 0, 1115, CAST(0x0000A28F00CE887C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (853, 0, 1115, CAST(0x0000A28F00CE8891 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (854, 0, 1115, CAST(0x0000A28F00CE88A1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (855, 0, 1115, CAST(0x0000A28F00CE88AC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (856, 0, 1115, CAST(0x0000A28F00CE88B0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (857, 0, 1115, CAST(0x0000A28F00CE88B3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (858, 0, 1115, CAST(0x0000A28F00CE88B7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (859, 0, 1115, CAST(0x0000A28F00CE88C9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (860, 0, 1108, CAST(0x0000A28F00CE88F8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (861, 0, 1108, CAST(0x0000A28F00CE88FD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (862, 0, 1108, CAST(0x0000A28F00CE8901 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (863, 0, 1108, CAST(0x0000A28F00CE890F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (864, 0, 1108, CAST(0x0000A28F00CE8922 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (865, 0, 1108, CAST(0x0000A28F00CE8934 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (866, 0, 1108, CAST(0x0000A28F00CE893F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (867, 0, 1108, CAST(0x0000A28F00CE8943 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (868, 0, 1108, CAST(0x0000A28F00CE8947 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (869, 0, 1108, CAST(0x0000A28F00CE894A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (870, 0, 1108, CAST(0x0000A28F00CE8952 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (871, 0, 1109, CAST(0x0000A28F00CE8974 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (872, 0, 1109, CAST(0x0000A28F00CE8983 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (873, 0, 1109, CAST(0x0000A28F00CE898C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (874, 0, 1109, CAST(0x0000A28F00CE8990 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (875, 0, 1109, CAST(0x0000A28F00CE8995 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (876, 0, 1109, CAST(0x0000A28F00CE89A4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (877, 0, 1109, CAST(0x0000A28F00CE89B5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (878, 0, 1109, CAST(0x0000A28F00CE89C8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (879, 0, 1109, CAST(0x0000A28F00CE89D5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (880, 0, 1109, CAST(0x0000A28F00CE89D9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (881, 0, 1109, CAST(0x0000A28F00CE89DC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (882, 0, 1110, CAST(0x0000A28F00CE89FC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (883, 0, 1110, CAST(0x0000A28F00CE8A10 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (884, 0, 1110, CAST(0x0000A28F00CE8A1E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (885, 0, 1110, CAST(0x0000A28F00CE8A24 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (886, 0, 1110, CAST(0x0000A28F00CE8A28 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (887, 0, 1110, CAST(0x0000A28F00CE8A2C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (888, 0, 1110, CAST(0x0000A28F00CE8A33 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (889, 0, 1110, CAST(0x0000A28F00CE8A55 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (890, 0, 1110, CAST(0x0000A28F00CE8A6B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (891, 0, 1110, CAST(0x0000A28F00CE8A72 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (892, 0, 1110, CAST(0x0000A28F00CE8A76 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (893, 0, 1111, CAST(0x0000A28F00CE8AA0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (894, 0, 1111, CAST(0x0000A28F00CE8AB6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (895, 0, 1111, CAST(0x0000A28F00CE8ABD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (896, 0, 1111, CAST(0x0000A28F00CE8AC1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (897, 0, 1111, CAST(0x0000A28F00CE8AC8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (898, 0, 1111, CAST(0x0000A28F00CE8AE3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (899, 0, 1111, CAST(0x0000A28F00CE8AFA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (900, 0, 1111, CAST(0x0000A28F00CE8B09 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (901, 0, 1111, CAST(0x0000A28F00CE8B13 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (902, 0, 1111, CAST(0x0000A28F00CE8B2D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (903, 0, 1111, CAST(0x0000A28F00CE8B45 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (904, 0, 1112, CAST(0x0000A28F00CE8B69 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (905, 0, 1112, CAST(0x0000A28F00CE8B82 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (906, 0, 1112, CAST(0x0000A28F00CE8B98 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (907, 0, 1112, CAST(0x0000A28F00CE8B9F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (908, 0, 1112, CAST(0x0000A28F00CE8BA3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (909, 0, 1112, CAST(0x0000A28F00CE8BAC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (910, 0, 1112, CAST(0x0000A28F00CE8BC5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (911, 0, 1112, CAST(0x0000A28F00CE8BDD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (912, 0, 1112, CAST(0x0000A28F00CE8BEA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (913, 0, 1112, CAST(0x0000A28F00CE8BED AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (914, 0, 1112, CAST(0x0000A28F00CE8BF4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (915, 0, 1113, CAST(0x0000A28F00CE8C13 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (916, 0, 1113, CAST(0x0000A28F00CE8C23 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (917, 0, 1113, CAST(0x0000A28F00CE8C2E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (918, 0, 1113, CAST(0x0000A28F00CE8C32 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (919, 0, 1113, CAST(0x0000A28F00CE8C35 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (920, 0, 1113, CAST(0x0000A28F00CE8C39 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (921, 0, 1113, CAST(0x0000A28F00CE8C42 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (922, 0, 1113, CAST(0x0000A28F00CE8C54 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (923, 0, 1113, CAST(0x0000A28F00CE8C66 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (924, 0, 1113, CAST(0x0000A28F00CE8C74 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (925, 0, 1113, CAST(0x0000A28F00CE8C7B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (926, 0, 1114, CAST(0x0000A28F00CE8C98 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (927, 0, 1114, CAST(0x0000A28F00CE8CA9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (928, 0, 1114, CAST(0x0000A28F00CE8CB9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (929, 0, 1114, CAST(0x0000A28F00CE8CC5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (930, 0, 1114, CAST(0x0000A28F00CE8CC8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (931, 0, 1114, CAST(0x0000A28F00CE8CCC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (932, 0, 1114, CAST(0x0000A28F00CE8CD0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (933, 0, 1114, CAST(0x0000A28F00CE8CD3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (934, 0, 1114, CAST(0x0000A28F00CE8CD7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (935, 0, 1114, CAST(0x0000A28F00CE8CDB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (936, 0, 1114, CAST(0x0000A28F00CE8CDE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (937, 0, -1, CAST(0x0000A28F00D0712C AS DateTime), N'Delete', N'Delete Content of Type 1115 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (938, 0, 1115, CAST(0x0000A28F00D07139 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (939, 0, -1, CAST(0x0000A28F00D07730 AS DateTime), N'Delete', N'Delete Content of Type 1108 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (940, 0, 1108, CAST(0x0000A28F00D07734 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (941, 0, -1, CAST(0x0000A28F00D0795B AS DateTime), N'Delete', N'Delete Content of Type 1109 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (942, 0, 1109, CAST(0x0000A28F00D0795F AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (943, 0, -1, CAST(0x0000A28F00D07BFC AS DateTime), N'Delete', N'Delete Content of Type 1110 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (944, 0, 1110, CAST(0x0000A28F00D07C00 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (945, 0, -1, CAST(0x0000A28F00D07E5C AS DateTime), N'Delete', N'Delete Content of Type 1111 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (946, 0, 1111, CAST(0x0000A28F00D07E61 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (947, 0, -1, CAST(0x0000A28F00D08082 AS DateTime), N'Delete', N'Delete Content of Type 1112 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (948, 0, 1112, CAST(0x0000A28F00D08086 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (949, 0, -1, CAST(0x0000A28F00D082F6 AS DateTime), N'Delete', N'Delete Content of Type 1113 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (950, 0, 1113, CAST(0x0000A28F00D082FA AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (951, 0, -1, CAST(0x0000A28F00D08E1A AS DateTime), N'Delete', N'Delete Content of Type 1114 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (952, 0, 1114, CAST(0x0000A28F00D08E1E AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (953, 0, 1119, CAST(0x0000A28F00E74351 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (954, 0, -1, CAST(0x0000A29000B0E0F7 AS DateTime), N'Delete', N'Delete Content of Type 1119 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (955, 0, 1119, CAST(0x0000A29000B0E11C AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (956, 0, 1152, CAST(0x0000A29000B995BB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (957, 0, 1153, CAST(0x0000A29000B99C91 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (958, 0, 1153, CAST(0x0000A29000B99CAA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (959, 0, 1153, CAST(0x0000A29000B99CAF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (960, 0, 1153, CAST(0x0000A29000B99CB4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (961, 0, 1153, CAST(0x0000A29000B99CB8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (962, 0, -1, CAST(0x0000A29000BA8897 AS DateTime), N'Delete', N'Delete Content of Type 1152 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (963, 0, -1, CAST(0x0000A29000BA9586 AS DateTime), N'Delete', N'Delete Content of Type 1153 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (964, 0, 1153, CAST(0x0000A29000BA9591 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (965, 0, -1, CAST(0x0000A29000BA9875 AS DateTime), N'Delete', N'Delete Content of Type 1152 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (966, 0, 1152, CAST(0x0000A29000BA987F AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (967, 0, 1154, CAST(0x0000A29000BABC43 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (968, 0, 1155, CAST(0x0000A29000BAC0A9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (969, 0, 1155, CAST(0x0000A29000BAC0BF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (970, 0, 1155, CAST(0x0000A29000BAC0C4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (971, 0, 1155, CAST(0x0000A29000BAC0C9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (972, 0, 1155, CAST(0x0000A29000BAC0CD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (973, 0, 1154, CAST(0x0000A29000BAC0DC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (974, 0, 1155, CAST(0x0000A29000BAC0E5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (975, 0, 1154, CAST(0x0000A29000D1AB6F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (976, 0, 1155, CAST(0x0000A29000D1AD1B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (977, 0, 1155, CAST(0x0000A29000D1AD21 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (978, 0, 1155, CAST(0x0000A29000D1AD26 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (979, 0, 1155, CAST(0x0000A29000D1AD2B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (980, 0, 1155, CAST(0x0000A29000D1AD2F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (981, 0, 1154, CAST(0x0000A29000D1AD3F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (982, 0, 1155, CAST(0x0000A29000D1AD48 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (983, 0, 1154, CAST(0x0000A29000D1BA95 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (984, 0, 1154, CAST(0x0000A29000D1DE3A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (985, 0, 1155, CAST(0x0000A29000D1DF03 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (986, 0, 1155, CAST(0x0000A29000D1DF07 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (987, 0, 1155, CAST(0x0000A29000D1DF0C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (988, 0, 1155, CAST(0x0000A29000D1DF11 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (989, 0, 1155, CAST(0x0000A29000D1DF16 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (990, 0, 1154, CAST(0x0000A29000D1DF25 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (991, 0, 1155, CAST(0x0000A29000D1DF2D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (992, 0, 1154, CAST(0x0000A29000D1F5C3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (993, 0, 1154, CAST(0x0000A29000D220D7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (994, 0, 1155, CAST(0x0000A29000D2250D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (995, 0, 1155, CAST(0x0000A29000D22516 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (996, 0, 1155, CAST(0x0000A29000D2251B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (997, 0, 1155, CAST(0x0000A29000D22520 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (998, 0, 1155, CAST(0x0000A29000D22524 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (999, 0, 1154, CAST(0x0000A29000D22535 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1000, 0, 1155, CAST(0x0000A29000D2253D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1001, 0, 1154, CAST(0x0000A29000D2575D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1002, 0, 1155, CAST(0x0000A29000D26276 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1003, 0, 1155, CAST(0x0000A29000D26283 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1004, 0, 1155, CAST(0x0000A29000D2628F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1005, 0, 1155, CAST(0x0000A29000D2629B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1006, 0, 1155, CAST(0x0000A29000D262A5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1007, 0, 1154, CAST(0x0000A29000D2632D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1008, 0, 1155, CAST(0x0000A29000D26338 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1009, 0, 1154, CAST(0x0000A29000D26857 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1010, 0, 1155, CAST(0x0000A29000D269D5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1011, 0, 1155, CAST(0x0000A29000D269DA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1012, 0, 1155, CAST(0x0000A29000D269DF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1013, 0, 1155, CAST(0x0000A29000D269E3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1014, 0, 1155, CAST(0x0000A29000D269E8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1015, 0, 1154, CAST(0x0000A29000D269FA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1016, 0, 1155, CAST(0x0000A29000D26A02 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1017, 0, 1154, CAST(0x0000A29000D27064 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1018, 0, 1154, CAST(0x0000A29000D290F8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1019, 0, 1155, CAST(0x0000A29000D29B4F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1020, 0, 1155, CAST(0x0000A29000D29B53 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1021, 0, 1155, CAST(0x0000A29000D29B58 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1022, 0, 1155, CAST(0x0000A29000D29B5C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1023, 0, 1155, CAST(0x0000A29000D29B61 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1024, 0, 1154, CAST(0x0000A29000D29B70 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1025, 0, 1155, CAST(0x0000A29000D29B79 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1026, 0, 1154, CAST(0x0000A29000D31F33 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1027, 0, 1155, CAST(0x0000A29000D31F4B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1028, 0, 1155, CAST(0x0000A29000D31F50 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1029, 0, 1155, CAST(0x0000A29000D31F55 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1030, 0, 1155, CAST(0x0000A29000D31F5A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1031, 0, 1155, CAST(0x0000A29000D31F5F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1032, 0, 1154, CAST(0x0000A29000D31F6E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1033, 0, 1155, CAST(0x0000A29000D31F77 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1034, 0, 1154, CAST(0x0000A29000D3531B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1035, 0, 1155, CAST(0x0000A29000D35331 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1036, 0, 1155, CAST(0x0000A29000D35336 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1037, 0, 1155, CAST(0x0000A29000D3533B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1038, 0, 1155, CAST(0x0000A29000D35340 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1039, 0, 1155, CAST(0x0000A29000D35345 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1040, 0, 1154, CAST(0x0000A29000D35354 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1041, 0, 1155, CAST(0x0000A29000D3535D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1042, 0, 1154, CAST(0x0000A29000D36915 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1043, 0, 1155, CAST(0x0000A29000D3692D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1044, 0, 1155, CAST(0x0000A29000D36932 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1045, 0, 1155, CAST(0x0000A29000D36937 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1046, 0, 1155, CAST(0x0000A29000D3693C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1047, 0, 1155, CAST(0x0000A29000D36940 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1048, 0, 1154, CAST(0x0000A29000D3694F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1049, 0, 1155, CAST(0x0000A29000D36958 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1050, 0, 1154, CAST(0x0000A29000D3738D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1051, 0, 1154, CAST(0x0000A29000D38285 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1052, 0, 1155, CAST(0x0000A29000D3829B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1053, 0, 1155, CAST(0x0000A29000D382A0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1054, 0, 1155, CAST(0x0000A29000D382A5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1055, 0, 1155, CAST(0x0000A29000D382AA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1056, 0, 1155, CAST(0x0000A29000D382AF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1057, 0, 1154, CAST(0x0000A29000D382BE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1058, 0, 1155, CAST(0x0000A29000D382C8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1059, 0, 1154, CAST(0x0000A29000D56660 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1060, 0, 1155, CAST(0x0000A29000D5D2A8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1061, 0, 1155, CAST(0x0000A29000D5D2AE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1062, 0, 1155, CAST(0x0000A29000D5D2B3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1063, 0, 1155, CAST(0x0000A29000D5D2B8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1064, 0, 1155, CAST(0x0000A29000D5D2BD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1065, 0, 1154, CAST(0x0000A29000D5D2CF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1066, 0, 1155, CAST(0x0000A29000D5D2D8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1067, 0, 1154, CAST(0x0000A29000D981C1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1068, 0, 1155, CAST(0x0000A29000D981DA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1069, 0, 1155, CAST(0x0000A29000D981DF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1070, 0, 1155, CAST(0x0000A29000D981E5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1071, 0, 1155, CAST(0x0000A29000D981EC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1072, 0, 1155, CAST(0x0000A29000D981F4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1073, 0, 1154, CAST(0x0000A29000D98204 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1074, 0, 1155, CAST(0x0000A29000D9820D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1075, 0, -1, CAST(0x0000A29000D9AB16 AS DateTime), N'Delete', N'Delete Content of Type 1155 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1076, 0, 1155, CAST(0x0000A29000D9AB21 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1077, 0, 1154, CAST(0x0000A29000DA12AC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1078, 0, 1156, CAST(0x0000A29000DAA943 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1079, 0, 1156, CAST(0x0000A29000DAA957 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1080, 0, 1156, CAST(0x0000A29000DAA95C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1081, 0, 1156, CAST(0x0000A29000DAA961 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1082, 0, 1156, CAST(0x0000A29000DAAF6F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1083, 0, 1154, CAST(0x0000A29000DAF62E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1084, 0, 1156, CAST(0x0000A29000DAF63A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1085, 0, 1154, CAST(0x0000A29000DC70B0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1086, 0, 1156, CAST(0x0000A29000DC70C8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1087, 0, 1156, CAST(0x0000A29000DC70CD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1088, 0, 1156, CAST(0x0000A29000DC70D1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1089, 0, 1156, CAST(0x0000A29000DC70D6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1090, 0, 1156, CAST(0x0000A29000DC70DB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1091, 0, 1154, CAST(0x0000A29000DC70EB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1092, 0, 1156, CAST(0x0000A29000DC70F6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1093, 0, 1154, CAST(0x0000A29000DC9384 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1094, 0, 1156, CAST(0x0000A29000DC9399 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1095, 0, 1156, CAST(0x0000A29000DC939E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1096, 0, 1156, CAST(0x0000A29000DC93A4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1097, 0, 1156, CAST(0x0000A29000DC93A8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1098, 0, 1156, CAST(0x0000A29000DC93B7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1099, 0, 1156, CAST(0x0000A29000DC93BC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1100, 0, 1154, CAST(0x0000A29000DC93CB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1101, 0, 1156, CAST(0x0000A29000DC93D4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1102, 0, -1, CAST(0x0000A29000DCAC91 AS DateTime), N'Delete', N'Delete Content of Type 1156 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1103, 0, 1156, CAST(0x0000A29000DCAC9C AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1104, 0, 1154, CAST(0x0000A29000DCB73D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1105, 0, 1157, CAST(0x0000A29000DCB774 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1106, 0, 1157, CAST(0x0000A29000DCB795 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1107, 0, 1157, CAST(0x0000A29000DCB7AC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1108, 0, 1157, CAST(0x0000A29000DCB7BC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1109, 0, 1157, CAST(0x0000A29000DCB7C1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1110, 0, 1154, CAST(0x0000A29000DCB7EB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1111, 0, 1157, CAST(0x0000A29000DCB801 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1112, 0, 1154, CAST(0x0000A29000DCB9C9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1113, 0, 1157, CAST(0x0000A29000DCB9F4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1114, 0, 1157, CAST(0x0000A29000DCBA07 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1115, 0, 1157, CAST(0x0000A29000DCBA0F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1116, 0, 1157, CAST(0x0000A29000DCBA14 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1117, 0, 1157, CAST(0x0000A29000DCBA25 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1118, 0, 1154, CAST(0x0000A29000DCBA4D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1119, 0, 1157, CAST(0x0000A29000DCBA5F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1120, 0, -1, CAST(0x0000A29000DCCB4D AS DateTime), N'Delete', N'Delete Content of Type 1157 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1121, 0, 1157, CAST(0x0000A29000DCCB5A AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1122, 0, -1, CAST(0x0000A29000DCCDC6 AS DateTime), N'Delete', N'Delete Content of Type 1154 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1123, 0, 1154, CAST(0x0000A29000DCCDC9 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1124, 0, 1158, CAST(0x0000A29000DCD58A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1125, 0, 1159, CAST(0x0000A29000DCD5C5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1126, 0, 1159, CAST(0x0000A29000DCD5E1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1127, 0, 1159, CAST(0x0000A29000DCD5E6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1128, 0, 1159, CAST(0x0000A29000DCD5EC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1129, 0, 1159, CAST(0x0000A29000DCD5F1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1130, 0, 1158, CAST(0x0000A29000DCD601 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1131, 0, 1159, CAST(0x0000A29000DCD60A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1132, 0, 1158, CAST(0x0000A29000E2DA6D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1133, 0, 1159, CAST(0x0000A29000E3046C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1134, 0, 1159, CAST(0x0000A29000E30471 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1135, 0, 1159, CAST(0x0000A29000E30476 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1136, 0, 1159, CAST(0x0000A29000E3047C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1137, 0, 1159, CAST(0x0000A29000E30521 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1138, 0, 1158, CAST(0x0000A29000E308CD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1139, 0, 1159, CAST(0x0000A29000E308D7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1140, 0, -1, CAST(0x0000A29000E31969 AS DateTime), N'Delete', N'Delete Content of Type 1159 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1141, 0, 1159, CAST(0x0000A29000E31974 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1142, 0, -1, CAST(0x0000A29000E31C71 AS DateTime), N'Delete', N'Delete Content of Type 1158 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1143, 0, 1158, CAST(0x0000A29000E31C74 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1144, 0, 1160, CAST(0x0000A29000E33C61 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1145, 0, 1161, CAST(0x0000A29000E34FE1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1146, 0, 1161, CAST(0x0000A29000E34FFF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1147, 0, 1161, CAST(0x0000A29000E35002 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1148, 0, 1161, CAST(0x0000A29000E35006 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1149, 0, 1161, CAST(0x0000A29000E350E2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1150, 0, 1160, CAST(0x0000A29000E35A03 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1151, 0, 1161, CAST(0x0000A29000E35A0C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1152, 0, 1160, CAST(0x0000A29000E51037 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1153, 0, 1161, CAST(0x0000A29000E5140C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1154, 0, 1161, CAST(0x0000A29000E51410 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1155, 0, 1161, CAST(0x0000A29000E51413 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1156, 0, 1161, CAST(0x0000A29000E51416 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1157, 0, 1161, CAST(0x0000A29000E514C1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1158, 0, 1160, CAST(0x0000A29000E515A0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1159, 0, 1161, CAST(0x0000A29000E515A7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1160, 0, 1160, CAST(0x0000A29000E678B7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1161, 0, 1161, CAST(0x0000A29000E6EC5A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1162, 0, 1161, CAST(0x0000A29000E6EC61 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1163, 0, 1161, CAST(0x0000A29000E6EC65 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1164, 0, 1161, CAST(0x0000A29000E6EC68 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1165, 0, 1161, CAST(0x0000A29000E6EC6C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1166, 0, 1160, CAST(0x0000A29000E6EC7F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1167, 0, 1161, CAST(0x0000A29000E6EC87 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1168, 0, 1160, CAST(0x0000A29000E8C070 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1169, 0, 1161, CAST(0x0000A29000E8C085 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1170, 0, 1161, CAST(0x0000A29000E8C088 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1171, 0, 1161, CAST(0x0000A29000E8C08C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1172, 0, 1161, CAST(0x0000A29000E8C090 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1173, 0, 1161, CAST(0x0000A29000E8C093 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1174, 0, 1160, CAST(0x0000A29000E8C0A5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1175, 0, 1161, CAST(0x0000A29000E8C0AC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1176, 0, 1160, CAST(0x0000A29000E92F14 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1177, 0, 1161, CAST(0x0000A29000E92F29 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1178, 0, 1161, CAST(0x0000A29000E92F2D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1179, 0, 1161, CAST(0x0000A29000E92F30 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1180, 0, 1161, CAST(0x0000A29000E92F33 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1181, 0, 1161, CAST(0x0000A29000E92F36 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1182, 0, 1160, CAST(0x0000A29000E92F45 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1183, 0, 1161, CAST(0x0000A29000E92F4D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1184, 0, 1160, CAST(0x0000A29000E978FC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1185, 0, 1161, CAST(0x0000A29000E988E7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1186, 0, 1161, CAST(0x0000A29000E988EB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1187, 0, 1161, CAST(0x0000A29000E988EF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1188, 0, 1161, CAST(0x0000A29000E988F3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1189, 0, 1161, CAST(0x0000A29000E988F6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1190, 0, 1160, CAST(0x0000A29000E9890D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1191, 0, 1161, CAST(0x0000A29000E98916 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1192, 0, -1, CAST(0x0000A29000E99392 AS DateTime), N'Delete', N'Delete Content of Type 1161 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1193, 0, 1161, CAST(0x0000A29000E9939C AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1194, 0, -1, CAST(0x0000A29000E9968A AS DateTime), N'Delete', N'Delete Content of Type 1160 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1195, 0, 1160, CAST(0x0000A29000E9968C AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1196, 0, 1162, CAST(0x0000A29000EA064B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1197, 0, 1163, CAST(0x0000A29000EA0671 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1198, 0, 1163, CAST(0x0000A29000EA0699 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1199, 0, 1163, CAST(0x0000A29000EA069D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1200, 0, 1163, CAST(0x0000A29000EA06A1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1201, 0, 1163, CAST(0x0000A29000EA06A4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1202, 0, 1162, CAST(0x0000A29000EA06BF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1203, 0, 1163, CAST(0x0000A29000EA06C7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1204, 0, 1162, CAST(0x0000A29000EAD559 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1205, 0, 1163, CAST(0x0000A29000EAD5E6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1206, 0, 1163, CAST(0x0000A29000EAD5EA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1207, 0, 1163, CAST(0x0000A29000EAD5EE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1208, 0, 1163, CAST(0x0000A29000EAD5F1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1209, 0, 1163, CAST(0x0000A29000EAD5F5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1210, 0, 1162, CAST(0x0000A29000EAD60C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1211, 0, 1163, CAST(0x0000A29000EAD616 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1212, 0, -1, CAST(0x0000A29000EAE345 AS DateTime), N'Delete', N'Delete Content of Type 1163 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1213, 0, 1163, CAST(0x0000A29000EAE34E AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1214, 0, -1, CAST(0x0000A29000EAE8DC AS DateTime), N'Delete', N'Delete Content of Type 1162 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1215, 0, 1162, CAST(0x0000A29000EAE8E7 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1216, 0, 1164, CAST(0x0000A29000EB780E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1217, 0, 1165, CAST(0x0000A29000EB782C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1218, 0, 1165, CAST(0x0000A29000EB7846 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1219, 0, 1165, CAST(0x0000A29000EB7849 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1220, 0, 1165, CAST(0x0000A29000EB784D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1221, 0, 1165, CAST(0x0000A29000EB784F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1222, 0, 1164, CAST(0x0000A29000EB7865 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1223, 0, 1165, CAST(0x0000A29000EB786D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1224, 0, 1164, CAST(0x0000A29000ED13DB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1225, 0, 1165, CAST(0x0000A29000ED1482 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1226, 0, 1165, CAST(0x0000A29000ED1486 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1227, 0, 1165, CAST(0x0000A29000ED148A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1228, 0, 1165, CAST(0x0000A29000ED148E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1229, 0, 1165, CAST(0x0000A29000ED1491 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1230, 0, 1164, CAST(0x0000A29000ED14A7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1231, 0, 1165, CAST(0x0000A29000ED14AE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1232, 0, -1, CAST(0x0000A29000ED2109 AS DateTime), N'Delete', N'Delete Content of Type 1165 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1233, 0, 1165, CAST(0x0000A29000ED2112 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1234, 0, -1, CAST(0x0000A29000ED248F AS DateTime), N'Delete', N'Delete Content of Type 1164 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1235, 0, 1164, CAST(0x0000A29000ED2492 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1236, 0, 1166, CAST(0x0000A29000ED3D0F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1237, 0, 1167, CAST(0x0000A29000ED4855 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1238, 0, 1167, CAST(0x0000A29000ED4870 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1239, 0, 1167, CAST(0x0000A29000ED4874 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1240, 0, 1167, CAST(0x0000A29000ED4878 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1241, 0, 1167, CAST(0x0000A29000ED487B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1242, 0, 1166, CAST(0x0000A29000ED4892 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1243, 0, 1167, CAST(0x0000A29000ED489A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1244, 0, 1166, CAST(0x0000A29000EE3D23 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1245, 0, 1167, CAST(0x0000A29000EE3D38 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1246, 0, 1167, CAST(0x0000A29000EE3D3B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1247, 0, 1167, CAST(0x0000A29000EE3D3E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1248, 0, 1167, CAST(0x0000A29000EE3D41 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1249, 0, 1167, CAST(0x0000A29000EE3D44 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1250, 0, 1166, CAST(0x0000A29000EE3D56 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1251, 0, 1167, CAST(0x0000A29000EE3D5D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1252, 0, 1166, CAST(0x0000A29000EF478E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1253, 0, 1167, CAST(0x0000A29000EF47A3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1254, 0, 1167, CAST(0x0000A29000EF47A7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1255, 0, 1167, CAST(0x0000A29000EF47AA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1256, 0, 1167, CAST(0x0000A29000EF47AD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1257, 0, 1167, CAST(0x0000A29000EF47B1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1258, 0, 1166, CAST(0x0000A29000EF47C0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1259, 0, 1167, CAST(0x0000A29000EF47C7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1260, 0, 1166, CAST(0x0000A29000EFE52E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1261, 0, 1167, CAST(0x0000A29000F0CDD0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1262, 0, 1167, CAST(0x0000A29000F0CDD7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1263, 0, 1167, CAST(0x0000A29000F0CDDB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1264, 0, 1167, CAST(0x0000A29000F0CDDE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1265, 0, 1167, CAST(0x0000A29000F0CDE1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1266, 0, 1166, CAST(0x0000A29000F0CDF4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1267, 0, 1167, CAST(0x0000A29000F0CDFB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1268, 0, 1166, CAST(0x0000A29000F0FBE5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1269, 0, -1, CAST(0x0000A29000F11E92 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1270, 0, 1167, CAST(0x0000A29000F11E94 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1271, 0, 1167, CAST(0x0000A29000F11E9A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1272, 0, 1167, CAST(0x0000A29000F11E9E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1273, 0, 1167, CAST(0x0000A29000F11EA3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1274, 0, 1166, CAST(0x0000A29000F11EBE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1275, 0, 1167, CAST(0x0000A29000F11EC5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1276, 0, 1166, CAST(0x0000A29000F13F36 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1277, 0, 1167, CAST(0x0000A29000F13FAE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1278, 0, 1167, CAST(0x0000A29000F13FB1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1279, 0, 1167, CAST(0x0000A29000F13FB5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1280, 0, 1167, CAST(0x0000A29000F13FB8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1281, 0, 1167, CAST(0x0000A29000F13FBB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1282, 0, 1166, CAST(0x0000A29000F13FD5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1283, 0, 1167, CAST(0x0000A29000F13FEB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1284, 0, 1166, CAST(0x0000A29000F1E204 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1285, 0, 1167, CAST(0x0000A29000F2AB75 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1286, 0, 1167, CAST(0x0000A29000F2AB7E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1287, 0, 1167, CAST(0x0000A29000F2AB82 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1288, 0, 1167, CAST(0x0000A29000F2AB86 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1289, 0, 1167, CAST(0x0000A29000F2AB8A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1290, 0, 1166, CAST(0x0000A29000F2AB9E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1291, 0, 1167, CAST(0x0000A29000F2ABA5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1292, 0, -1, CAST(0x0000A29000F2B2B6 AS DateTime), N'Delete', N'Delete Content of Type 1167 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1293, 0, 1167, CAST(0x0000A29000F2B2C0 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1294, 0, 1166, CAST(0x0000A29000F2C446 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1295, 0, 1166, CAST(0x0000A29000F4F46D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1296, 0, 1168, CAST(0x0000A29000F4F738 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1297, 0, 1168, CAST(0x0000A29000F4F85E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1298, 0, 1168, CAST(0x0000A29000F4F96C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1299, 0, 1168, CAST(0x0000A29000F4F9E8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1300, 0, 1168, CAST(0x0000A29000F4F9EF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1301, 0, 1166, CAST(0x0000A29000F4F9FF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1302, 0, 1168, CAST(0x0000A29000F4FA07 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1303, 0, 1168, CAST(0x0000A29000F53F21 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1304, 0, 1166, CAST(0x0000A29000F5B139 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1305, 0, 1168, CAST(0x0000A29000F5B150 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1306, 0, 1166, CAST(0x0000A29000F5B160 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1307, 0, 1168, CAST(0x0000A29000F5B167 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1308, 0, -1, CAST(0x0000A29000F608A3 AS DateTime), N'Delete', N'Delete Content of Type 1168 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1309, 0, 1168, CAST(0x0000A29000F608B0 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1310, 0, -1, CAST(0x0000A29000F60B3F AS DateTime), N'Delete', N'Delete Content of Type 1166 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1311, 0, 1166, CAST(0x0000A29000F60B41 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1312, 0, 1169, CAST(0x0000A29000F61ABE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1313, 0, 1170, CAST(0x0000A29000F61AE5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1314, 0, 1169, CAST(0x0000A29000F61B19 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1315, 0, 1170, CAST(0x0000A29000F61B23 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1316, 0, 1169, CAST(0x0000A29000F63F8C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1317, 0, 1170, CAST(0x0000A29000F63FA3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1318, 0, 1169, CAST(0x0000A29000F63FB2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1319, 0, 1170, CAST(0x0000A29000F63FB9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1320, 0, 1169, CAST(0x0000A29000F6DC72 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1321, 0, 1170, CAST(0x0000A29000F6DC89 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1322, 0, 1169, CAST(0x0000A29000F6DC98 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1323, 0, 1170, CAST(0x0000A29000F6DCAA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1324, 0, 1169, CAST(0x0000A29000F6F856 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1325, 0, 1170, CAST(0x0000A29000F6F879 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1326, 0, 1169, CAST(0x0000A29000F6F898 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1327, 0, 1170, CAST(0x0000A29000F6F8A5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1328, 0, 1169, CAST(0x0000A29000F729E3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1329, 0, 1170, CAST(0x0000A29000F729F9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1330, 0, 1169, CAST(0x0000A29000F72A09 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1331, 0, 1170, CAST(0x0000A29000F72A10 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1332, 0, 1169, CAST(0x0000A29000F72A1E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1333, 0, -1, CAST(0x0000A29000F735EC AS DateTime), N'Delete', N'Delete Content of Type 1170 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1334, 0, 1170, CAST(0x0000A29000F735F7 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1335, 0, -1, CAST(0x0000A29000F73958 AS DateTime), N'Delete', N'Delete Content of Type 1169 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1336, 0, 1169, CAST(0x0000A29000F7395B AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1337, 0, 1171, CAST(0x0000A29000F74CE4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1338, 0, 1172, CAST(0x0000A29000F74D0B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1339, 0, 1171, CAST(0x0000A29000F74D3E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1340, 0, 1172, CAST(0x0000A29000F74D47 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1341, 0, 1171, CAST(0x0000A29000F74D54 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1342, 0, 1171, CAST(0x0000A29000F77D62 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1343, 0, 1172, CAST(0x0000A29000F77D75 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1344, 0, 1171, CAST(0x0000A29000F77D84 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1345, 0, 1172, CAST(0x0000A29000F77D8C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1346, 0, 1171, CAST(0x0000A29000F80A08 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1347, 0, 1172, CAST(0x0000A29000F80A29 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1348, 0, 1171, CAST(0x0000A29000F80A37 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1349, 0, 1172, CAST(0x0000A29000F80A3E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1350, 0, -1, CAST(0x0000A29000F8E5EE AS DateTime), N'Delete', N'Delete Content of Type 1171 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1351, 0, -1, CAST(0x0000A29000F8F2F4 AS DateTime), N'Delete', N'Delete Content of Type 1171 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1352, 0, 1171, CAST(0x0000A29000FA5FE2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1353, 0, 1173, CAST(0x0000A29000FA6008 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1354, 0, 1171, CAST(0x0000A29000FA601F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1355, 0, 1173, CAST(0x0000A29000FA6028 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1356, 0, -1, CAST(0x0000A29000FA6A78 AS DateTime), N'Delete', N'Delete Content of Type 1173 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1357, 0, 1173, CAST(0x0000A29000FA6A82 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1358, 0, -1, CAST(0x0000A29000FA6CF8 AS DateTime), N'Delete', N'Delete Content of Type 1172 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1359, 0, 1172, CAST(0x0000A29000FA6CFA AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1360, 0, -1, CAST(0x0000A29000FA703F AS DateTime), N'Delete', N'Delete Content of Type 1171 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1361, 0, 1171, CAST(0x0000A29000FA7042 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1362, 0, 1174, CAST(0x0000A29000FB2B70 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1363, 0, 1175, CAST(0x0000A29000FB2B95 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1364, 0, 1174, CAST(0x0000A29000FB2BC6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1365, 0, 1175, CAST(0x0000A29000FB2BCE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1366, 0, 1174, CAST(0x0000A29000FB567B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1367, 0, 1175, CAST(0x0000A29000FB568D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1368, 0, 1174, CAST(0x0000A29000FB569E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1369, 0, 1175, CAST(0x0000A29000FB56A6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1370, 0, -1, CAST(0x0000A29000FB628E AS DateTime), N'Delete', N'Delete Content of Type 1175 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1371, 0, 1175, CAST(0x0000A29000FB6293 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1372, 0, -1, CAST(0x0000A29000FB6530 AS DateTime), N'Delete', N'Delete Content of Type 1174 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1373, 0, 1174, CAST(0x0000A29000FB6532 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1374, 0, 1176, CAST(0x0000A29000FB74FB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1375, 0, 1177, CAST(0x0000A29000FB751F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1376, 0, 1176, CAST(0x0000A29000FB7551 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1377, 0, 1177, CAST(0x0000A29000FB7559 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1378, 0, 1176, CAST(0x0000A29000FCD4CC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1379, 0, 1177, CAST(0x0000A29000FCD4E0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1380, 0, 1176, CAST(0x0000A29000FCD4F1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1381, 0, 1177, CAST(0x0000A29000FCD4F9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1382, 0, 1176, CAST(0x0000A29000FD04FA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1383, 0, 1177, CAST(0x0000A29000FD050D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1384, 0, 1176, CAST(0x0000A29000FD051E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1385, 0, 1177, CAST(0x0000A29000FD0526 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1386, 0, 1176, CAST(0x0000A29000FD0534 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1387, 0, 1176, CAST(0x0000A29000FD3FE1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1388, 0, 1177, CAST(0x0000A29000FD3FF3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1389, 0, 1176, CAST(0x0000A29000FD44D4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1390, 0, 1177, CAST(0x0000A29000FD44DC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1391, 0, 1176, CAST(0x0000A29000FD44EA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1392, 0, -1, CAST(0x0000A29000FD497D AS DateTime), N'Delete', N'Delete Content of Type 1177 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1393, 0, 1177, CAST(0x0000A29000FD4981 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1394, 0, -1, CAST(0x0000A29000FD4D00 AS DateTime), N'Delete', N'Delete Content of Type 1176 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1395, 0, 1176, CAST(0x0000A29000FD4D03 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1396, 0, 1178, CAST(0x0000A29000FD56D2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1397, 0, 1179, CAST(0x0000A29000FD56F4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1398, 0, 1178, CAST(0x0000A29000FE30F9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1399, 0, 1179, CAST(0x0000A29000FE3102 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1400, 0, 1178, CAST(0x0000A29000FE3111 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1401, 0, -1, CAST(0x0000A29000FE5C21 AS DateTime), N'Delete', N'Delete Content of Type 1179 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1402, 0, 1179, CAST(0x0000A29000FE5C25 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1403, 0, -1, CAST(0x0000A29000FE5F26 AS DateTime), N'Delete', N'Delete Content of Type 1178 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1404, 0, 1178, CAST(0x0000A29000FE5F2A AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1405, 0, 1180, CAST(0x0000A29000FE65F9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1406, 0, 1181, CAST(0x0000A29000FE661E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1407, 0, 1180, CAST(0x0000A29000FE6651 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1408, 0, 1180, CAST(0x0000A29000FE6665 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1409, 0, 1180, CAST(0x0000A29000FE718A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1410, 0, 1181, CAST(0x0000A29000FE719D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1411, 0, 1180, CAST(0x0000A29000FE71AE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1412, 0, 1180, CAST(0x0000A29000FE71C0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1413, 0, 1180, CAST(0x0000A29000FE9497 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1414, 0, 1181, CAST(0x0000A29000FE94A8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1415, 0, 1180, CAST(0x0000A29000FFA265 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1416, 0, -1, CAST(0x0000A29000FFC460 AS DateTime), N'Delete', N'Delete Content of Type 1181 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1417, 0, 1181, CAST(0x0000A29000FFC464 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1418, 0, -1, CAST(0x0000A29000FFC77C AS DateTime), N'Delete', N'Delete Content of Type 1180 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1419, 0, 1180, CAST(0x0000A29000FFC77F AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1420, 0, 1182, CAST(0x0000A29000FFD1B1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1421, 0, 1183, CAST(0x0000A29000FFD1D4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1422, 0, 1182, CAST(0x0000A29000FFDF0C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1423, 0, -1, CAST(0x0000A29000FFF5C0 AS DateTime), N'Delete', N'Delete Content of Type 1183 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1424, 0, 1183, CAST(0x0000A29000FFF5C4 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1425, 0, -1, CAST(0x0000A29000FFF922 AS DateTime), N'Delete', N'Delete Content of Type 1182 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1426, 0, 1182, CAST(0x0000A29000FFF924 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1427, 0, 1184, CAST(0x0000A29001000D49 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1428, 0, 1185, CAST(0x0000A29001000D62 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1429, 0, 1184, CAST(0x0000A29001001A52 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1430, 0, 1184, CAST(0x0000A29001003F7E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1431, 0, 1184, CAST(0x0000A2900100482C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1432, 0, 1185, CAST(0x0000A2900100483D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1433, 0, 1184, CAST(0x0000A29001004FCF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1434, 0, 1184, CAST(0x0000A29001006B56 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1435, 0, 1185, CAST(0x0000A29001006B65 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1436, 0, 1184, CAST(0x0000A290010075D2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1437, 0, 1184, CAST(0x0000A2900100B335 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1438, 0, 1185, CAST(0x0000A2900100B34A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1439, 0, 1184, CAST(0x0000A2900100B362 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1440, 0, 1184, CAST(0x0000A2900103724F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1441, 0, 1185, CAST(0x0000A29001037262 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1442, 0, 1184, CAST(0x0000A2900103C45E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1443, 0, 1185, CAST(0x0000A2900103C472 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1444, 0, 1184, CAST(0x0000A29001045106 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1445, 0, 1185, CAST(0x0000A29001045119 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1446, 0, 1184, CAST(0x0000A29001045134 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1447, 0, -1, CAST(0x0000A2900104598B AS DateTime), N'Delete', N'Delete Content of Type 1185 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1448, 0, 1185, CAST(0x0000A29001045992 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1449, 0, -1, CAST(0x0000A29001045B9C AS DateTime), N'Delete', N'Delete Content of Type 1184 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1450, 0, 1184, CAST(0x0000A29001045B9F AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1451, 0, 1186, CAST(0x0000A29001046C33 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1452, 0, 1187, CAST(0x0000A29001046C59 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1453, 0, 1186, CAST(0x0000A29001046C97 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1454, 0, 1186, CAST(0x0000A29001068139 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1455, 0, 1187, CAST(0x0000A2900106814C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1456, 0, 1186, CAST(0x0000A29001068167 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1457, 0, -1, CAST(0x0000A2900106A99C AS DateTime), N'Delete', N'Delete Content of Type 1187 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1458, 0, 1187, CAST(0x0000A2900106A9A1 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1459, 0, -1, CAST(0x0000A2900106ACA0 AS DateTime), N'Delete', N'Delete Content of Type 1186 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1460, 0, 1186, CAST(0x0000A2900106ACA5 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1461, 0, 1188, CAST(0x0000A2900106B27F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1462, 0, 1189, CAST(0x0000A2900106B2A1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1463, 0, 1188, CAST(0x0000A29001079DE9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1464, 0, 1188, CAST(0x0000A2900107B40A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1465, 0, 1189, CAST(0x0000A2900107B41B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1466, 0, 1188, CAST(0x0000A2900107C83E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1467, 0, 1188, CAST(0x0000A2900108C35C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1468, 0, 1189, CAST(0x0000A2900108C36E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1469, 0, 1188, CAST(0x0000A2900108C387 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1470, 0, -1, CAST(0x0000A2900108CA85 AS DateTime), N'Delete', N'Delete Content of Type 1189 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1471, 0, 1189, CAST(0x0000A2900108CA8A AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1472, 0, -1, CAST(0x0000A2900108CDAC AS DateTime), N'Delete', N'Delete Content of Type 1188 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1473, 0, 1188, CAST(0x0000A2900108CDAF AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1474, 0, 1190, CAST(0x0000A2900108E604 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1475, 0, 1191, CAST(0x0000A2900108E626 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1476, 0, -1, CAST(0x0000A290010A1F35 AS DateTime), N'Delete', N'Delete Content of Type 1191 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1477, 0, 1191, CAST(0x0000A290010A1F3B AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1478, 0, -1, CAST(0x0000A290010A2281 AS DateTime), N'Delete', N'Delete Content of Type 1190 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1479, 0, 1190, CAST(0x0000A290010A2285 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1480, 0, 1192, CAST(0x0000A290010A6FAF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1481, 0, 1193, CAST(0x0000A290010A6FD6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1482, 0, 1192, CAST(0x0000A290010A7FF0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1483, 0, -1, CAST(0x0000A290010A8F0D AS DateTime), N'Delete', N'Delete Content of Type 1193 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1484, 0, 1193, CAST(0x0000A290010A8F11 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1485, 0, -1, CAST(0x0000A290010A922E AS DateTime), N'Delete', N'Delete Content of Type 1192 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1486, 0, 1192, CAST(0x0000A290010A9232 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1487, 0, 1194, CAST(0x0000A290010AA95D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1488, 0, 1195, CAST(0x0000A290010AA981 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1489, 0, 1194, CAST(0x0000A290010AE429 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1490, 0, 1195, CAST(0x0000A290010AE43C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1491, 0, 1194, CAST(0x0000A290010AFBA4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1492, 0, 1195, CAST(0x0000A290010AFBB6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1493, 0, -1, CAST(0x0000A290010B0743 AS DateTime), N'Delete', N'Delete Content of Type 1195 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1494, 0, 1195, CAST(0x0000A290010B0747 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1495, 0, -1, CAST(0x0000A290010B0A64 AS DateTime), N'Delete', N'Delete Content of Type 1194 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1496, 0, 1194, CAST(0x0000A290010B0A66 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1497, 0, 1196, CAST(0x0000A290010B1207 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1498, 0, 1197, CAST(0x0000A290010B122D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1499, 0, 1196, CAST(0x0000A290010B2E99 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1500, 0, 1197, CAST(0x0000A290010B2EAD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1501, 0, 1196, CAST(0x0000A290010B2EC8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1502, 0, 1196, CAST(0x0000A290010B88DC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1503, 0, 1197, CAST(0x0000A290010B88F2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1504, 0, 1196, CAST(0x0000A290010B890B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1505, 0, -1, CAST(0x0000A290010B8FB7 AS DateTime), N'Delete', N'Delete Content of Type 1197 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1506, 0, 1197, CAST(0x0000A290010B8FBC AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1507, 0, -1, CAST(0x0000A290010B9291 AS DateTime), N'Delete', N'Delete Content of Type 1196 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1508, 0, 1196, CAST(0x0000A290010B9293 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1509, 0, 1198, CAST(0x0000A290010B9E6E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1510, 0, 1199, CAST(0x0000A290010B9E93 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1511, 0, 1198, CAST(0x0000A290010B9ECF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1512, 0, 1198, CAST(0x0000A290010C77A3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1513, 0, 1199, CAST(0x0000A290010C77B7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1514, 0, 1198, CAST(0x0000A290010C77D3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1515, 0, 1198, CAST(0x0000A290010C96AE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1516, 0, 1198, CAST(0x0000A290010CA154 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1517, 0, 1199, CAST(0x0000A290010CA167 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1518, 0, 1198, CAST(0x0000A290010CA181 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1519, 0, -1, CAST(0x0000A290010CC099 AS DateTime), N'Delete', N'Delete Content of Type 1199 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1520, 0, 1199, CAST(0x0000A290010CC09E AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1521, 0, -1, CAST(0x0000A290010CC3EE AS DateTime), N'Delete', N'Delete Content of Type 1198 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1522, 0, 1198, CAST(0x0000A290010CC3F1 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1523, 0, 1200, CAST(0x0000A290010CCC84 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1524, 0, 1201, CAST(0x0000A290010CCCA0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1525, 0, 1200, CAST(0x0000A290010CCCD0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1526, 0, 1201, CAST(0x0000A290010CEEC4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1527, 0, 1201, CAST(0x0000A290010CF7E2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1528, 0, 1200, CAST(0x0000A290010D0241 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1529, 0, 1201, CAST(0x0000A290010D0254 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1530, 0, 1200, CAST(0x0000A290010D026D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1531, 0, 1200, CAST(0x0000A290010D5361 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1532, 0, 1201, CAST(0x0000A290010D5378 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1533, 0, 1200, CAST(0x0000A290010D5391 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1534, 0, 1200, CAST(0x0000A290010D6245 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1535, 0, 1201, CAST(0x0000A290010D625A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1536, 0, 1200, CAST(0x0000A290010D6272 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1537, 0, -1, CAST(0x0000A290010D6C6D AS DateTime), N'Delete', N'Delete Content of Type 1201 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1538, 0, 1201, CAST(0x0000A290010D6C72 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1539, 0, -1, CAST(0x0000A290010D7138 AS DateTime), N'Delete', N'Delete Content of Type 1200 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1540, 0, 1200, CAST(0x0000A290010D7140 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1541, 0, 1202, CAST(0x0000A290010D7A9F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1542, 0, 1203, CAST(0x0000A290010D7AC5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1543, 0, 1202, CAST(0x0000A290010D7B01 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1544, 0, 1203, CAST(0x0000A290010D98F8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1545, 0, 1203, CAST(0x0000A290010D9E01 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1546, 0, 1202, CAST(0x0000A290010DA4E8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1547, 0, 1203, CAST(0x0000A290010DA4FF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1548, 0, 1202, CAST(0x0000A290010DA519 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1549, 0, 1203, CAST(0x0000A290010DBCDD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1550, 0, 1202, CAST(0x0000A290010DC784 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1551, 0, 1203, CAST(0x0000A290010DC794 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1552, 0, 1202, CAST(0x0000A290010DC7B0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1553, 0, 1203, CAST(0x0000A290010DDF17 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1554, 0, 1202, CAST(0x0000A290010DE6ED AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1555, 0, 1203, CAST(0x0000A290010DE702 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1556, 0, 1202, CAST(0x0000A290010DE71B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1557, 0, -1, CAST(0x0000A290010FA5AB AS DateTime), N'Delete', N'Delete Content of Type 1203 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1558, 0, 1203, CAST(0x0000A290010FA5B2 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1559, 0, 1202, CAST(0x0000A290010FC01B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1560, 0, 1204, CAST(0x0000A290010FC042 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1561, 0, 1202, CAST(0x0000A290010FC062 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1562, 0, -1, CAST(0x0000A290010FC0BD AS DateTime), N'Delete', N'Delete Content of Type 1202 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1563, 0, -1, CAST(0x0000A290010FCB25 AS DateTime), N'Delete', N'Delete Content of Type 1204 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1564, 0, 1204, CAST(0x0000A290010FCB28 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1565, 0, -1, CAST(0x0000A290010FCE05 AS DateTime), N'Delete', N'Delete Content of Type 1202 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1566, 0, 1202, CAST(0x0000A290010FCE09 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1567, 0, 1205, CAST(0x0000A29100FE7D3A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1568, 0, 1206, CAST(0x0000A29100FE7D63 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1569, 0, 1205, CAST(0x0000A29100FE7DA7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1570, 0, 1206, CAST(0x0000A29101014D07 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1571, 0, 1206, CAST(0x0000A29101022DB6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1572, 0, 1206, CAST(0x0000A29101029392 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1573, 0, 1206, CAST(0x0000A29101038E80 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1574, 0, 1206, CAST(0x0000A2910106710F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1575, 0, -1, CAST(0x0000A29101068E91 AS DateTime), N'Delete', N'Delete Content of Type 1206 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1576, 0, 1206, CAST(0x0000A29101068E9B AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1577, 0, -1, CAST(0x0000A291010691EE AS DateTime), N'Delete', N'Delete Content of Type 1205 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1578, 0, 1205, CAST(0x0000A291010691F1 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1579, 0, 1207, CAST(0x0000A2910106B348 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1580, 0, 1208, CAST(0x0000A2910106B36B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1581, 0, 1207, CAST(0x0000A2910106B3A7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1582, 0, -1, CAST(0x0000A2910107304F AS DateTime), N'Delete', N'Delete Content of Type 1208 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1583, 0, 1208, CAST(0x0000A29101073054 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1584, 0, 1207, CAST(0x0000A2910107FFF4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1585, 0, 1209, CAST(0x0000A2910108001C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1586, 0, 1207, CAST(0x0000A2910108003C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1587, 0, 1207, CAST(0x0000A29101080AC1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1588, 0, 1209, CAST(0x0000A29101080AD4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1589, 0, 1207, CAST(0x0000A29101080AED AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1590, 0, 1207, CAST(0x0000A29101081B21 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1591, 0, 1209, CAST(0x0000A291010991A0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1592, 0, 1207, CAST(0x0000A291010991BC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1593, 0, -1, CAST(0x0000A2910109ADDD AS DateTime), N'Delete', N'Delete Content of Type 1209 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1594, 0, 1209, CAST(0x0000A2910109ADE4 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1595, 0, 1207, CAST(0x0000A2910109C6BF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1596, 0, 1210, CAST(0x0000A291010A4766 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1597, 0, 1207, CAST(0x0000A291010A4785 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1598, 0, -1, CAST(0x0000A291010A4F07 AS DateTime), N'Delete', N'Delete Content of Type 1210 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1599, 0, 1210, CAST(0x0000A291010A4F0A AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1600, 0, 1207, CAST(0x0000A291010A5A9F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1601, 0, 1211, CAST(0x0000A291010A70B6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1602, 0, 1207, CAST(0x0000A291010A70E3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1603, 0, 1207, CAST(0x0000A291010AFD9F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1604, 0, 1211, CAST(0x0000A291010B0108 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1605, 0, 1207, CAST(0x0000A291010B0123 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1606, 0, -1, CAST(0x0000A291010B09AD AS DateTime), N'Delete', N'Delete Content of Type 1211 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1607, 0, 1211, CAST(0x0000A291010B09D6 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1608, 0, 1207, CAST(0x0000A291010B23C0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1609, 0, 1212, CAST(0x0000A291010B4069 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1610, 0, 1207, CAST(0x0000A291010B4089 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1611, 0, -1, CAST(0x0000A291010B8F51 AS DateTime), N'Delete', N'Delete Content of Type 1212 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1612, 0, 1212, CAST(0x0000A291010B8F55 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1613, 0, 1207, CAST(0x0000A291010BADC8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1614, 0, 1213, CAST(0x0000A291010C33F4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1615, 0, 1207, CAST(0x0000A291010C3414 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1616, 0, -1, CAST(0x0000A291010CC43D AS DateTime), N'Delete', N'Delete Content of Type 1213 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1617, 0, 1213, CAST(0x0000A291010CC441 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1618, 0, 1207, CAST(0x0000A291010CCE3B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1619, 0, 1214, CAST(0x0000A291010CCE66 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1620, 0, 1207, CAST(0x0000A291010CCE88 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1621, 0, 1214, CAST(0x0000A291010CE07E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1622, 0, 1207, CAST(0x0000A291010CF2FD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1623, 0, 1214, CAST(0x0000A291010CF311 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1624, 0, 1207, CAST(0x0000A291010CF32B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1625, 0, 1214, CAST(0x0000A291010D0A4A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1626, 0, 1207, CAST(0x0000A291010D1C3D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1627, 0, 1214, CAST(0x0000A291010D1C54 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1628, 0, 1207, CAST(0x0000A291010D1C6D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1629, 0, 1214, CAST(0x0000A291010D29CB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1630, 0, 1214, CAST(0x0000A291010D2DBE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1631, 0, 1207, CAST(0x0000A291010D3A90 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1632, 0, 1214, CAST(0x0000A291010D3AA6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1633, 0, 1207, CAST(0x0000A291010D3AC0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1634, 0, 1214, CAST(0x0000A291010D46D4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1635, 0, 1207, CAST(0x0000A291010D5889 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1636, 0, 1214, CAST(0x0000A291010D589F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1637, 0, 1207, CAST(0x0000A291010D58B9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1638, 0, 1214, CAST(0x0000A291010D6C75 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1639, 0, 1207, CAST(0x0000A291010D704A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1640, 0, 1207, CAST(0x0000A291010D8221 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1641, 0, 1214, CAST(0x0000A291010D8235 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1642, 0, 1207, CAST(0x0000A291010D824E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1643, 0, 1214, CAST(0x0000A291010D91D8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1644, 0, 1207, CAST(0x0000A291010DA54E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1645, 0, 1214, CAST(0x0000A291010DA561 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1646, 0, 1207, CAST(0x0000A291010DA57B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1647, 0, 1207, CAST(0x0000A291010DBCA5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1648, 0, 1214, CAST(0x0000A291010DBCB7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1649, 0, 1207, CAST(0x0000A291010DBCCF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1650, 0, -1, CAST(0x0000A291010DC374 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1651, 0, 1214, CAST(0x0000A291010DC375 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1652, 0, 1214, CAST(0x0000A291010DC611 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1653, 0, 1207, CAST(0x0000A291010DD540 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1654, 0, 1214, CAST(0x0000A291010DD55D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1655, 0, 1207, CAST(0x0000A291010DD578 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1656, 0, -1, CAST(0x0000A291010EB5E1 AS DateTime), N'Delete', N'Delete Content of Type 1214 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1657, 0, 1214, CAST(0x0000A291010EB5E5 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1658, 0, 1207, CAST(0x0000A291010EC0A7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1659, 0, 1215, CAST(0x0000A291010EDB30 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1660, 0, 1207, CAST(0x0000A291010EDB4F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1661, 0, 1207, CAST(0x0000A291010F06CE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1662, 0, 1215, CAST(0x0000A291010F06E0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1663, 0, 1207, CAST(0x0000A291010F06F8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1664, 0, -1, CAST(0x0000A291010F1DC8 AS DateTime), N'Delete', N'Delete Content of Type 1215 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1665, 0, 1215, CAST(0x0000A291010F1DCD AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1666, 0, 1207, CAST(0x0000A291010F2CCD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1667, 0, 1216, CAST(0x0000A291010F5270 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1668, 0, 1207, CAST(0x0000A291010F528F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1669, 0, 1216, CAST(0x0000A291010F65AB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1670, 0, 1207, CAST(0x0000A291010F7A76 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1671, 0, 1216, CAST(0x0000A291010F7A86 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1672, 0, 1207, CAST(0x0000A291010F7A9C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1673, 0, 1207, CAST(0x0000A291010FB73C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1674, 0, 1216, CAST(0x0000A291010FB74F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1675, 0, 1207, CAST(0x0000A291010FB769 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1676, 0, -1, CAST(0x0000A291010FE7AC AS DateTime), N'Delete', N'Delete Content of Type 1216 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1677, 0, 1216, CAST(0x0000A291010FE7B0 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1678, 0, 1207, CAST(0x0000A29101100995 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1679, 0, 1217, CAST(0x0000A291011009BC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1680, 0, 1207, CAST(0x0000A291011009DC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1681, 0, 1207, CAST(0x0000A29101103731 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1682, 0, 1217, CAST(0x0000A2910110B239 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1683, 0, 1207, CAST(0x0000A2910110B253 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1684, 0, 1217, CAST(0x0000A2910110BCC4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1685, 0, 1207, CAST(0x0000A2910110CF1F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1686, 0, 1217, CAST(0x0000A29101112539 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1687, 0, 1207, CAST(0x0000A29101112555 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1688, 0, 1207, CAST(0x0000A29101154E1E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1689, 0, 1217, CAST(0x0000A29101155450 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1690, 0, 1207, CAST(0x0000A2910115547A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1691, 0, -1, CAST(0x0000A29101155B1A AS DateTime), N'Delete', N'Delete Content of Type 1217 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1692, 0, 1217, CAST(0x0000A29101155B1F AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1693, 0, 1207, CAST(0x0000A29101157C46 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1694, 0, 1218, CAST(0x0000A29101158406 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1695, 0, 1207, CAST(0x0000A29101158425 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1696, 0, 1218, CAST(0x0000A291011598FD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1697, 0, 1207, CAST(0x0000A29101159FDE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1698, 0, 1218, CAST(0x0000A2910115D910 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1699, 0, 1207, CAST(0x0000A2910115D92A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1700, 0, 1207, CAST(0x0000A2910116743C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1701, 0, 1218, CAST(0x0000A2910116744F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1702, 0, 1207, CAST(0x0000A29101167467 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1703, 0, 1207, CAST(0x0000A29101169638 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1704, 0, 1218, CAST(0x0000A2910116A1F4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1705, 0, 1207, CAST(0x0000A2910116A212 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1706, 0, 1207, CAST(0x0000A2910116E9B7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1707, 0, 1218, CAST(0x0000A2910116F5E0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1708, 0, 1207, CAST(0x0000A2910116F5FA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1709, 0, 1207, CAST(0x0000A2910117300F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1710, 0, 1218, CAST(0x0000A2910117329D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1711, 0, 1207, CAST(0x0000A291011732B7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1712, 0, -1, CAST(0x0000A2920092DF36 AS DateTime), N'Delete', N'Delete Content of Type 1218 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1713, 0, 1218, CAST(0x0000A2920092DF3C AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1714, 0, -1, CAST(0x0000A2920092E2F6 AS DateTime), N'Delete', N'Delete Content of Type 1207 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1715, 0, 1207, CAST(0x0000A2920092E2F8 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1716, 0, 1219, CAST(0x0000A292009477BC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1717, 0, 1220, CAST(0x0000A292009477E1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1718, 0, 1219, CAST(0x0000A2920094781E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1719, 0, 1219, CAST(0x0000A292009C8216 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1720, 0, 1220, CAST(0x0000A292009C822A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1721, 0, 1219, CAST(0x0000A292009C8243 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1722, 0, 1219, CAST(0x0000A292009CB7C3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1723, 0, 1220, CAST(0x0000A292009CB7D2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1724, 0, 1219, CAST(0x0000A292009CB7EC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1725, 0, 1221, CAST(0x0000A292009CE61A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1726, 0, 1219, CAST(0x0000A292009D13E8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1727, 0, 1220, CAST(0x0000A292009D13F9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1728, 0, 1219, CAST(0x0000A292009D1412 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1729, 0, 1219, CAST(0x0000A292009DABCC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1730, 0, 1220, CAST(0x0000A292009DABDA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1731, 0, 1219, CAST(0x0000A292009DABF5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1732, 0, 1220, CAST(0x0000A29200A0FB33 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1733, 0, 1220, CAST(0x0000A29200A10D41 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1734, 0, -1, CAST(0x0000A29200A13181 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1735, 0, 1220, CAST(0x0000A29200A13194 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1736, 0, -1, CAST(0x0000A29200A14B31 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1737, 0, 1220, CAST(0x0000A29200A14B43 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1738, 0, 1220, CAST(0x0000A29200A15FD0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1739, 0, 1220, CAST(0x0000A29200A18956 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1740, 0, 1220, CAST(0x0000A29200A294EB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1741, 0, 1220, CAST(0x0000A29200A2A549 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1742, 0, 1220, CAST(0x0000A29200A37BD1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1743, 0, 1220, CAST(0x0000A29200A38DB2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1744, 0, 1220, CAST(0x0000A29200A3B4CE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1745, 0, 1220, CAST(0x0000A29200A3C8A0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1746, 0, 1220, CAST(0x0000A29200A3E2A5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1747, 0, 1220, CAST(0x0000A29200A3F9E1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1748, 0, 1220, CAST(0x0000A29200A41027 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1749, 0, 1220, CAST(0x0000A29200A424E1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1750, 0, 1220, CAST(0x0000A29200A43B70 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1751, 0, -1, CAST(0x0000A29200A4690C AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1752, 0, 1220, CAST(0x0000A29200A4691D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1753, 0, 1220, CAST(0x0000A29200A46DD1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1754, 0, -1, CAST(0x0000A29200A491C4 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1755, 0, 1220, CAST(0x0000A29200A491D1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1756, 0, -1, CAST(0x0000A29200A4B0B0 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1757, 0, 1220, CAST(0x0000A29200A4B0BE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1758, 0, 1220, CAST(0x0000A29200A4C2CF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1759, 0, 1220, CAST(0x0000A29200A4D963 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1760, 0, 1220, CAST(0x0000A29200A5103C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1761, 0, 1220, CAST(0x0000A29200A52909 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1762, 0, 1220, CAST(0x0000A29200A551EC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1763, 0, 1220, CAST(0x0000A29200A56583 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1764, 0, 1220, CAST(0x0000A29200A57D8E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1765, 0, 1220, CAST(0x0000A29200A5B07F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1766, 0, 1220, CAST(0x0000A29200A61D48 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1767, 0, 1220, CAST(0x0000A29200A64044 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1768, 0, 1219, CAST(0x0000A29200A6A1D4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1769, 0, 1219, CAST(0x0000A29200A6BCD7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1770, 0, 1219, CAST(0x0000A29200A6D0D1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1771, 0, 1219, CAST(0x0000A29200A6E5DA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1772, 0, 1219, CAST(0x0000A29200A6F144 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1773, 0, 1219, CAST(0x0000A29200A70390 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1774, 0, 1219, CAST(0x0000A29200A712F3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1775, 0, 1219, CAST(0x0000A29200A71F9D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1776, 0, 1220, CAST(0x0000A29200A72FF0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1777, 0, 1220, CAST(0x0000A29200A732B5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1778, 0, 1220, CAST(0x0000A29200A74A52 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1779, 0, 1220, CAST(0x0000A29200B63F91 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1780, 0, 1220, CAST(0x0000A29200B65BD0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1781, 0, 1220, CAST(0x0000A29200B66EE7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1782, 0, 1220, CAST(0x0000A29200B685BE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1783, 0, 1220, CAST(0x0000A29200B69D5E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1784, 0, 1220, CAST(0x0000A29200B6B9E3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1785, 0, 1220, CAST(0x0000A29200B6CA19 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1786, 0, 1219, CAST(0x0000A29200B7F417 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1787, 0, 1220, CAST(0x0000A29200B7F424 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1788, 0, 1222, CAST(0x0000A29200B7F431 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1789, 0, 1219, CAST(0x0000A29200B7F44B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1790, 0, -1, CAST(0x0000A29200B96AAA AS DateTime), N'Delete', N'Delete Content of Type 1222 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1791, 0, 1222, CAST(0x0000A29200B96AC8 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1792, 0, 1223, CAST(0x0000A29200B996D2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1793, 0, 1220, CAST(0x0000A29200B9A864 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1794, 0, 1220, CAST(0x0000A29200B9C403 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1795, 0, 1219, CAST(0x0000A29200B9C6D5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1796, 0, 1220, CAST(0x0000A29200B9E197 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1797, 0, 1219, CAST(0x0000A29200BA0D2E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1798, 0, 1220, CAST(0x0000A29200BA5D1D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1799, 0, -1, CAST(0x0000A29200BA81A8 AS DateTime), N'Delete', N'Delete Content of Type 1223 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1800, 0, 1223, CAST(0x0000A29200BA81AE AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1801, 0, -1, CAST(0x0000A29200BA8454 AS DateTime), N'Delete', N'Delete Content of Type 1220 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1802, 0, 1220, CAST(0x0000A29200BA8458 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1803, 0, -1, CAST(0x0000A29200BA8759 AS DateTime), N'Delete', N'Delete Content of Type 1219 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1804, 0, 1219, CAST(0x0000A29200BA875C AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1805, 0, 1224, CAST(0x0000A29200BA9527 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1806, 0, 1225, CAST(0x0000A29200BA9651 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1807, 0, 1226, CAST(0x0000A29200BA9752 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1808, 0, 1224, CAST(0x0000A29200BA9783 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1809, 0, -1, CAST(0x0000A29200BB159E AS DateTime), N'Delete', N'Delete Content of Type 1225 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1810, 0, 1225, CAST(0x0000A29200BB15A2 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1811, 0, -1, CAST(0x0000A29200BB1950 AS DateTime), N'Delete', N'Delete Content of Type 1224 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1812, 0, 1224, CAST(0x0000A29200BB1953 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1813, 0, 1227, CAST(0x0000A29200BB2AE4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1814, 0, 1228, CAST(0x0000A29200BB2B04 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1815, 0, 1227, CAST(0x0000A29200BB4822 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1816, 0, 1228, CAST(0x0000A29200BB51FF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1817, 0, 1228, CAST(0x0000A29200BB6116 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1818, 0, 1227, CAST(0x0000A29200BB6149 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1819, 0, 1228, CAST(0x0000A29200BB6E5B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1820, 0, 1228, CAST(0x0000A29200BB76FF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1821, 0, 1227, CAST(0x0000A29200BB772C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1822, 0, -1, CAST(0x0000A29200BB9467 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1823, 0, 1228, CAST(0x0000A29200BB9469 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1824, 0, 1228, CAST(0x0000A29200BB9654 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1825, 0, 1228, CAST(0x0000A29200BBA0CB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1826, 0, 1227, CAST(0x0000A29200BBA0F8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1827, 0, 1228, CAST(0x0000A29200BBAB3C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1828, 0, 1228, CAST(0x0000A29200BBB3DA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1829, 0, 1227, CAST(0x0000A29200BBB406 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1830, 0, 1228, CAST(0x0000A29200BBBA76 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1831, 0, 1228, CAST(0x0000A29200BBC7FF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1832, 0, 1227, CAST(0x0000A29200BBC824 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1833, 0, 1228, CAST(0x0000A29200BBD202 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1834, 0, 1228, CAST(0x0000A29200BBD9B3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1835, 0, 1227, CAST(0x0000A29200BBD9DC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1836, 0, 1228, CAST(0x0000A29200BBE296 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1837, 0, 1228, CAST(0x0000A29200BBEA2F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1838, 0, 1227, CAST(0x0000A29200BBEA52 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1839, 0, -1, CAST(0x0000A29200BBF375 AS DateTime), N'Delete', N'Delete Content of Type 1228 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1840, 0, 1228, CAST(0x0000A29200BBF379 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1841, 0, 1229, CAST(0x0000A29200BC0466 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1842, 0, 1227, CAST(0x0000A29200BC0493 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1843, 0, -1, CAST(0x0000A29200BC38B2 AS DateTime), N'Delete', N'Delete Content of Type 1229 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1844, 0, 1229, CAST(0x0000A29200BC38B6 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1845, 0, 1230, CAST(0x0000A29200BC5823 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1846, 0, 1227, CAST(0x0000A29200BC585D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1847, 0, -1, CAST(0x0000A29200BC66EB AS DateTime), N'Delete', N'Delete Content of Type 1230 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1848, 0, 1230, CAST(0x0000A29200BC66F0 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1849, 0, 1231, CAST(0x0000A29200BCACFE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1850, 0, 1227, CAST(0x0000A29200BCAD37 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1851, 0, 1231, CAST(0x0000A29200BCBEA4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1852, 0, 1231, CAST(0x0000A29200BCEFB4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1853, 0, 1227, CAST(0x0000A29200BCEFDA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1854, 0, 1227, CAST(0x0000A29200BCFBE8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1855, 0, 1227, CAST(0x0000A29200BD054F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1856, 0, 1231, CAST(0x0000A29200BD08E6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1857, 0, 1227, CAST(0x0000A29200BD0907 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1858, 0, 1231, CAST(0x0000A29200BD6AB5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1859, 0, 1227, CAST(0x0000A29200BD6AD9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1860, 0, 1227, CAST(0x0000A29200BD8386 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1861, 0, 1227, CAST(0x0000A29200BDA4B9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1862, 0, 1231, CAST(0x0000A29200BDA54D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1863, 0, 1227, CAST(0x0000A29200BDA571 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1864, 0, 1231, CAST(0x0000A29200BDC893 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1865, 0, 1231, CAST(0x0000A29200BDD49D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1866, 0, 1231, CAST(0x0000A29200BE0401 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1867, 0, 1227, CAST(0x0000A29200BE0427 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1868, 0, 1231, CAST(0x0000A29200BE1096 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1869, 0, 1231, CAST(0x0000A29200BE42FD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1870, 0, 1227, CAST(0x0000A29200BE432E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1871, 0, 1231, CAST(0x0000A29200BE48B5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1872, 0, 1231, CAST(0x0000A29200BE632D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1873, 0, 1227, CAST(0x0000A29200BE6352 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1874, 0, 1231, CAST(0x0000A29200BEE1FB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1875, 0, 1231, CAST(0x0000A29200BF7320 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1876, 0, 1227, CAST(0x0000A29200BF734A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1877, 0, 1231, CAST(0x0000A29200BF93A1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1878, 0, 1227, CAST(0x0000A29200BF93CB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1879, 0, 1231, CAST(0x0000A29200C04DAA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1880, 0, 1227, CAST(0x0000A29200C04DD2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1881, 0, 1231, CAST(0x0000A29200C0B587 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1882, 0, 1227, CAST(0x0000A29200C0B5B1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1883, 0, 1227, CAST(0x0000A29200C0FE53 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1884, 0, 1231, CAST(0x0000A29200C10284 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1885, 0, 1231, CAST(0x0000A29200C1059C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1886, 0, 1227, CAST(0x0000A29200C10DB8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1887, 0, 1231, CAST(0x0000A29200C10DC9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1888, 0, 1227, CAST(0x0000A29200C10DEB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1889, 0, 1227, CAST(0x0000A29200C112DE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1890, 0, 1227, CAST(0x0000A29200C11CD9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1891, 0, 1227, CAST(0x0000A29200C13046 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1892, 0, 1231, CAST(0x0000A29200C136CE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1893, 0, -1, CAST(0x0000A29200C1542E AS DateTime), N'Delete', N'Delete Content of Type 1231 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1894, 0, 1231, CAST(0x0000A29200C1544C AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1895, 0, 1232, CAST(0x0000A29200C15DAB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1896, 0, 1227, CAST(0x0000A29200C15DE4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1897, 0, 1227, CAST(0x0000A29200C1D769 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1898, 0, -1, CAST(0x0000A29200C1EC2B AS DateTime), N'Delete', N'Delete Content of Type 1232 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1899, 0, 1232, CAST(0x0000A29200C1EC36 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1900, 0, 1233, CAST(0x0000A29200C1F8EB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1901, 0, 1227, CAST(0x0000A29200C1F91B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1902, 0, 1227, CAST(0x0000A29200C208C7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1903, 0, 1227, CAST(0x0000A29200C21A3E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1904, 0, -1, CAST(0x0000A29200C227AE AS DateTime), N'Delete', N'Delete Content of Type 1233 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1905, 0, 1233, CAST(0x0000A29200C227B8 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1906, 0, 1234, CAST(0x0000A29200C22F94 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1907, 0, 1227, CAST(0x0000A29200C22FC8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1908, 0, 1227, CAST(0x0000A29200C2D05E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1909, 0, -1, CAST(0x0000A29200C2E396 AS DateTime), N'Delete', N'Delete Content of Type 1234 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1910, 0, 1234, CAST(0x0000A29200C2E3B0 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1911, 0, 1235, CAST(0x0000A29200C2EAFB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1912, 0, -1, CAST(0x0000A29200C3391F AS DateTime), N'Delete', N'Delete Content of Type 1235 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1913, 0, 1235, CAST(0x0000A29200C3393A AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1914, 0, 1236, CAST(0x0000A29200C341C6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1915, 0, 1227, CAST(0x0000A29200C341EF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1916, 0, -1, CAST(0x0000A29200C36759 AS DateTime), N'Delete', N'Delete Content of Type 1236 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1917, 0, 1236, CAST(0x0000A29200C36775 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1918, 0, 1237, CAST(0x0000A29200C37102 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1919, 0, -1, CAST(0x0000A29200C3A7B5 AS DateTime), N'Delete', N'Delete Content of Type 1237 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1920, 0, 1237, CAST(0x0000A29200C3A7D1 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1921, 0, 1238, CAST(0x0000A29200C3B003 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1922, 0, 1227, CAST(0x0000A29200C3B035 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1923, 0, 1227, CAST(0x0000A29200D025A4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1924, 0, 1227, CAST(0x0000A29200D05FCC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1925, 0, 1227, CAST(0x0000A29200D06A91 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1926, 0, 1227, CAST(0x0000A29200D072CC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1927, 0, 1227, CAST(0x0000A29200D07F23 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1928, 0, 1227, CAST(0x0000A29200D08935 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1929, 0, 1227, CAST(0x0000A29200D0A5DF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1930, 0, 1227, CAST(0x0000A29200D0B6FD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1931, 0, 1227, CAST(0x0000A29200D0C012 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1932, 0, 1238, CAST(0x0000A29200D0D756 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1933, 0, 1227, CAST(0x0000A29200D0E6C9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1934, 0, 1227, CAST(0x0000A29200D0F769 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1935, 0, 1227, CAST(0x0000A29200D0FEB2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1936, 0, 1227, CAST(0x0000A29200D174FE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1937, 0, 1227, CAST(0x0000A29200D18953 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1938, 0, 1227, CAST(0x0000A29200D18D23 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1939, 0, 1227, CAST(0x0000A29200D19311 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1940, 0, 1227, CAST(0x0000A29200D1CB21 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1941, 0, 1227, CAST(0x0000A29200D24D72 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1942, 0, 1227, CAST(0x0000A29200D2C4B3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1943, 0, 1227, CAST(0x0000A29200D38978 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1944, 0, 1227, CAST(0x0000A29200D3B48A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1945, 0, 1227, CAST(0x0000A29200D3B504 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1946, 0, 1227, CAST(0x0000A29200D3B57F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1947, 0, 1227, CAST(0x0000A29200D3B5FA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1948, 0, 1227, CAST(0x0000A29200D3CDE8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1949, 0, 1227, CAST(0x0000A29200D3F531 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1950, 0, 1227, CAST(0x0000A29200D464E1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1951, 0, 1238, CAST(0x0000A29200D46F94 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1952, 0, 1226, CAST(0x0000A29200D47849 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1953, 0, 1227, CAST(0x0000A29200D49DE8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1954, 0, 1238, CAST(0x0000A29200D4A283 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1955, 0, 1226, CAST(0x0000A29200D4A3D3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1956, 0, 1227, CAST(0x0000A29200D4E365 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1957, 0, 1227, CAST(0x0000A29200D4E8A8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1958, 0, 1227, CAST(0x0000A29200D4EFC9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1959, 0, 1227, CAST(0x0000A29200D4F7D1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1960, 0, 1227, CAST(0x0000A29200D50992 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1961, 0, 1227, CAST(0x0000A29200D50DB4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1962, 0, 1227, CAST(0x0000A29200D51474 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1963, 0, 1227, CAST(0x0000A29200D51B12 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1964, 0, 1227, CAST(0x0000A29200D529BB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1965, 0, 1238, CAST(0x0000A29200D53390 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1966, 0, 1227, CAST(0x0000A29200D53B53 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1967, 0, 1238, CAST(0x0000A29200D53B61 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1968, 0, 1238, CAST(0x0000A29200D53ED1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1969, 0, 1227, CAST(0x0000A29200D54CE2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1970, 0, 1238, CAST(0x0000A29200D54CEB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1971, 0, 1238, CAST(0x0000A29200D5549F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1972, 0, 1227, CAST(0x0000A29200D5596C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1973, 0, -1, CAST(0x0000A29200D55CEB AS DateTime), N'Delete', N'Delete Content of Type 1238 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1974, 0, 1238, CAST(0x0000A29200D55CF4 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1975, 0, 1239, CAST(0x0000A29200D564C2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1976, 0, 1227, CAST(0x0000A29200D564EA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1977, 0, -1, CAST(0x0000A29200D572DB AS DateTime), N'Delete', N'Delete Content of Type 1239 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1978, 0, 1239, CAST(0x0000A29200D572DF AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1979, 0, -1, CAST(0x0000A29200D5763D AS DateTime), N'Delete', N'Delete Content of Type 1227 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1980, 0, 1227, CAST(0x0000A29200D5763F AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1981, 0, 1240, CAST(0x0000A29200D57D8F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1982, 0, 1241, CAST(0x0000A29200D57DA9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1983, 0, 1240, CAST(0x0000A29200D57DCE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1984, 0, 1240, CAST(0x0000A29200D5B2EC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1985, 0, -1, CAST(0x0000A29200D5BEDF AS DateTime), N'Delete', N'Delete Content of Type 1241 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1986, 0, 1241, CAST(0x0000A29200D5BEE4 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1987, 0, 1242, CAST(0x0000A29200D5C52D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1988, 0, 1240, CAST(0x0000A29200D5C556 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1989, 0, 1240, CAST(0x0000A29200D5C56E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1990, 0, 1240, CAST(0x0000A29200D5D2EB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1991, 0, 1240, CAST(0x0000A29200D5DB08 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1992, 0, 1240, CAST(0x0000A29200D5E768 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1993, 0, -1, CAST(0x0000A29200D5EA0D AS DateTime), N'Delete', N'Delete Content of Type 1242 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1994, 0, 1242, CAST(0x0000A29200D5EA12 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1995, 0, 1243, CAST(0x0000A29200D5F09A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1996, 0, 1240, CAST(0x0000A29200D5F0C6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1997, 0, 1240, CAST(0x0000A29200D5F0DC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1998, 0, 1240, CAST(0x0000A29200D653E3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1999, 0, 1240, CAST(0x0000A29200D67589 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2000, 0, 1240, CAST(0x0000A29200D7F9D5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2001, 0, 1240, CAST(0x0000A29200D7F9E3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2002, 0, 1240, CAST(0x0000A29200D800C3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2003, 0, 1240, CAST(0x0000A29200D800D3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2004, 0, 1240, CAST(0x0000A29200D807DC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2005, 0, 1240, CAST(0x0000A29200D80F54 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2006, 0, 1240, CAST(0x0000A29200D80F61 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2007, 0, 1243, CAST(0x0000A29200D825AC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2008, 0, 1240, CAST(0x0000A29200D82AE1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2009, 0, 1240, CAST(0x0000A29200D83193 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2010, 0, 1243, CAST(0x0000A29200D831A0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2011, 0, 1240, CAST(0x0000A29200D831A8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2012, 0, 1240, CAST(0x0000A29200D83A2B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2013, 0, 1240, CAST(0x0000A29200D840AE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2014, 0, 1240, CAST(0x0000A29200D840BB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2015, 0, 1240, CAST(0x0000A29200D8468D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2016, 0, -1, CAST(0x0000A29200D848C1 AS DateTime), N'Delete', N'Delete Content of Type 1243 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2017, 0, 1243, CAST(0x0000A29200D848C6 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2018, 0, 1244, CAST(0x0000A29200D84F25 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2019, 0, 1240, CAST(0x0000A29200D84F4D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2020, 0, 1240, CAST(0x0000A29200D84F5A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2021, 0, -1, CAST(0x0000A29200D85DB8 AS DateTime), N'Delete', N'Delete Content of Type 1244 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2022, 0, 1244, CAST(0x0000A29200D85DBE AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2023, 0, -1, CAST(0x0000A29200D86000 AS DateTime), N'Delete', N'Delete Content of Type 1240 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2024, 0, 1240, CAST(0x0000A29200D86003 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2025, 0, 1245, CAST(0x0000A29200D8677B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2026, 0, 1246, CAST(0x0000A29200D86794 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2027, 0, 1245, CAST(0x0000A29200D867BE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2028, 0, 1245, CAST(0x0000A29200D867D0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2029, 0, 1245, CAST(0x0000A29200D8CE47 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2030, 0, 1245, CAST(0x0000A29200D8D5AF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2031, 0, 1245, CAST(0x0000A29200D8DDEF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2032, 0, 1245, CAST(0x0000A29200D8E73C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2033, 0, 1246, CAST(0x0000A29200D8EDED AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2034, 0, 1245, CAST(0x0000A29200D8F3C4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2035, 0, 1246, CAST(0x0000A29200D8F3CE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2036, 0, -1, CAST(0x0000A29200D8FDE6 AS DateTime), N'Delete', N'Delete Content of Type 1246 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2037, 0, 1246, CAST(0x0000A29200D8FDEB AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2038, 0, -1, CAST(0x0000A29200D9003B AS DateTime), N'Delete', N'Delete Content of Type 1245 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2039, 0, 1245, CAST(0x0000A29200D9003D AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2040, 0, 1247, CAST(0x0000A29200D906A6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2041, 0, 1248, CAST(0x0000A29200D906C3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2042, 0, 1247, CAST(0x0000A29200D906EA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2043, 0, 1247, CAST(0x0000A29200D91DD3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2044, 0, 1247, CAST(0x0000A29200D91DE0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2045, 0, 1247, CAST(0x0000A29200D9AD4F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2046, 0, 1247, CAST(0x0000A29200D9AD5C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2047, 0, 1247, CAST(0x0000A29200D9B6FD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2048, 0, 1247, CAST(0x0000A29200D9BD7C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2049, 0, 1247, CAST(0x0000A29200D9BD8A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2050, 0, 1247, CAST(0x0000A29200D9E869 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2051, 0, 1247, CAST(0x0000A29200D9E87B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2052, 0, 1247, CAST(0x0000A29200DA8C7D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2053, 0, 1247, CAST(0x0000A29200DA8C8B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2054, 0, 1247, CAST(0x0000A29200DAAEB1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2055, 0, 1247, CAST(0x0000A29200DAAEC0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2056, 0, 1226, CAST(0x0000A29200DAD2D6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2057, 0, 1247, CAST(0x0000A29200DAD2ED AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2058, 0, 1247, CAST(0x0000A29200DAD2FB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2059, 0, -1, CAST(0x0000A29200DAE864 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2060, 0, 1226, CAST(0x0000A29200DAE875 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2061, 0, 1247, CAST(0x0000A29200DAE88C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2062, 0, 1247, CAST(0x0000A29200DAE89B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2063, 0, 1226, CAST(0x0000A29200DB067B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2064, 0, 1247, CAST(0x0000A29200DB0691 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2065, 0, 1247, CAST(0x0000A29200DB069E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2066, 0, -1, CAST(0x0000A29200DB192E AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2067, 0, 1226, CAST(0x0000A29200DB1940 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2068, 0, 1247, CAST(0x0000A29200DB1954 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2069, 0, 1247, CAST(0x0000A29200DB1960 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2070, 0, 1226, CAST(0x0000A29200DB308E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2071, 0, 1247, CAST(0x0000A29200DB30A4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2072, 0, 1247, CAST(0x0000A29200DB30B0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2073, 0, 1226, CAST(0x0000A29200DB48B5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2074, 0, 1247, CAST(0x0000A29200DB52CE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2075, 0, 1247, CAST(0x0000A29200DB52DC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2076, 0, 1247, CAST(0x0000A29200DB5584 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2077, 0, 1247, CAST(0x0000A29200DB5592 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2078, 0, -1, CAST(0x0000A29200DB685F AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2079, 0, 1226, CAST(0x0000A29200DB6860 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2080, 0, 1226, CAST(0x0000A29200DB6C6E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2081, 0, 1226, CAST(0x0000A29200DB7759 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2082, 0, 1247, CAST(0x0000A29200DB7770 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2083, 0, 1247, CAST(0x0000A29200DB777D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2084, 0, 1226, CAST(0x0000A29200DB8914 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2085, 0, 1226, CAST(0x0000A29200DB94C5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2086, 0, 1247, CAST(0x0000A29200DB94DC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2087, 0, 1247, CAST(0x0000A29200DB94E8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2088, 0, -1, CAST(0x0000A29200DC8081 AS DateTime), N'Delete', N'Delete Content of Type 1226 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2089, 0, 1226, CAST(0x0000A29200DC808A AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2090, 0, -1, CAST(0x0000A29200DC8440 AS DateTime), N'Delete', N'Delete Content of Type 1221 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2091, 0, 1221, CAST(0x0000A29200DC8446 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2092, 0, 1247, CAST(0x0000A29200DC92D5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2093, 0, 1247, CAST(0x0000A29200DC92E3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2094, 0, 1247, CAST(0x0000A2920106F11C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2095, 0, 1247, CAST(0x0000A29201077CBF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2096, 0, 1247, CAST(0x0000A2920107C308 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2097, 0, 1247, CAST(0x0000A2920107E62D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2098, 0, 1247, CAST(0x0000A2920107FD9B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2099, 0, 1247, CAST(0x0000A29201088A48 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2100, 0, 1247, CAST(0x0000A29201095D60 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2101, 0, 1247, CAST(0x0000A29201099826 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2102, 0, 1247, CAST(0x0000A2920109C65A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2103, 0, 1249, CAST(0x0000A2920109FA47 AS DateTime), N'New', N'Content ''aaa'' was created with Id 1249')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2104, 0, 1249, CAST(0x0000A2920109FA6C AS DateTime), N'Save', N'Save Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2105, 0, 1249, CAST(0x0000A2920109FB32 AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2106, 0, 1250, CAST(0x0000A292010A082A AS DateTime), N'New', N'Content ''bbb'' was created with Id 1250')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2107, 0, 1250, CAST(0x0000A292010A0846 AS DateTime), N'Save', N'Save Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2108, 0, 1250, CAST(0x0000A292010A08C9 AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2109, 0, 1250, CAST(0x0000A292010A18E8 AS DateTime), N'UnPublish', N'UnPublish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2110, 0, 1250, CAST(0x0000A292010A18F7 AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2111, 0, 1250, CAST(0x0000A292010A18FB AS DateTime), N'Delete', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2112, 0, 1251, CAST(0x0000A292010A52B2 AS DateTime), N'New', N'Content ''bbb'' was created with Id 1251')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2113, 0, 1251, CAST(0x0000A292010A52C8 AS DateTime), N'Save', N'Save Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2114, 0, 1251, CAST(0x0000A292010A5348 AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2115, 0, 1251, CAST(0x0000A292010A5692 AS DateTime), N'Publish', N'Save and Publish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2116, 0, 1251, CAST(0x0000A292010A5D15 AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2117, 0, 1251, CAST(0x0000A292010ADADD AS DateTime), N'UnPublish', N'UnPublish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2118, 0, 1251, CAST(0x0000A292010ADAE6 AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2119, 0, 1251, CAST(0x0000A292010ADAE6 AS DateTime), N'Delete', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2120, 0, 1249, CAST(0x0000A292010AE00C AS DateTime), N'UnPublish', N'UnPublish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2121, 0, 1249, CAST(0x0000A292010AE018 AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2122, 0, 1249, CAST(0x0000A292010AE017 AS DateTime), N'Delete', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2123, 0, 1247, CAST(0x0000A292010B0680 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2124, 0, 1252, CAST(0x0000A292010B224A AS DateTime), N'New', N'Content ''bbb'' was created with Id 1252')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2125, 0, 1252, CAST(0x0000A292010B2282 AS DateTime), N'Save', N'Save Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2126, 0, 1252, CAST(0x0000A292010B23C7 AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2127, 0, 1247, CAST(0x0000A292010B63A7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2128, 0, 1252, CAST(0x0000A292010C118C AS DateTime), N'UnPublish', N'UnPublish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2129, 0, 1252, CAST(0x0000A292010C11C6 AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2130, 0, 1252, CAST(0x0000A292010C11C7 AS DateTime), N'Delete', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2131, 0, 1247, CAST(0x0000A292010C1EA2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2132, 0, 1248, CAST(0x0000A29300913DE1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2133, 0, 1247, CAST(0x0000A29300913DF9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2134, 0, 1247, CAST(0x0000A29300914FB7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2135, 0, -1, CAST(0x0000A293009166D0 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2136, 0, 1248, CAST(0x0000A293009166E1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2137, 0, 1247, CAST(0x0000A293009166F7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2138, 0, 1247, CAST(0x0000A293009172F9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2139, 0, 1248, CAST(0x0000A2930091D8E4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2140, 0, 1247, CAST(0x0000A2930091D905 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2141, 0, 1253, CAST(0x0000A2930091E76A AS DateTime), N'New', N'Content ''vvv'' was created with Id 1253')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2142, 0, 1253, CAST(0x0000A2930091E79F AS DateTime), N'Save', N'Save Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2143, 0, 1253, CAST(0x0000A2930091E86D AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2144, 0, 1253, CAST(0x0000A2930091F4EB AS DateTime), N'Publish', N'Save and Publish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2145, 0, 1253, CAST(0x0000A29300920B34 AS DateTime), N'UnPublish', N'UnPublish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2146, 0, 1253, CAST(0x0000A29300920B46 AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2147, 0, 1253, CAST(0x0000A29300920B46 AS DateTime), N'Delete', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2148, 0, 1248, CAST(0x0000A29300922038 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2149, 0, 1247, CAST(0x0000A29300922051 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2150, 0, 1254, CAST(0x0000A29300923420 AS DateTime), N'New', N'Content ''aaaa'' was created with Id 1254')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2151, 0, 1254, CAST(0x0000A29300923457 AS DateTime), N'Save', N'Save Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2152, 0, 1254, CAST(0x0000A29300923524 AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2153, 0, 1254, CAST(0x0000A29300923C93 AS DateTime), N'Publish', N'Save and Publish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2154, 0, -1, CAST(0x0000A29300925DB6 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2155, 0, 1248, CAST(0x0000A29300925DC7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2156, 0, 1247, CAST(0x0000A29300925DDB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2157, 0, 1254, CAST(0x0000A293009266D5 AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2158, 0, 1254, CAST(0x0000A2930092674D AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2159, 0, 1248, CAST(0x0000A29300927247 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2160, 0, 1247, CAST(0x0000A2930092725F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2161, 0, 1254, CAST(0x0000A293009273B2 AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2162, 0, -1, CAST(0x0000A293009281F9 AS DateTime), N'Publish', N'RebuildXmlStructures completed, the xml has been regenerated in the database')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2163, 0, 1248, CAST(0x0000A29300928209 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2164, 0, 1247, CAST(0x0000A2930092821D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2165, 0, 1254, CAST(0x0000A2930092ABE8 AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2166, 0, 1254, CAST(0x0000A2930092B2C3 AS DateTime), N'UnPublish', N'UnPublish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2167, 0, 1254, CAST(0x0000A2930092B2D6 AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2168, 0, 1254, CAST(0x0000A2930092B2D5 AS DateTime), N'Delete', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2169, 0, 1247, CAST(0x0000A2930092BD03 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2170, 0, 1255, CAST(0x0000A2930092C44A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2171, 0, 1256, CAST(0x0000A2930092CD61 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2172, 0, 1256, CAST(0x0000A2930092D238 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2173, 0, 1247, CAST(0x0000A2930092F31C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2174, 0, -1, CAST(0x0000A2930093425B AS DateTime), N'Delete', N'Delete Content of Type 1255 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2175, 0, 1255, CAST(0x0000A29300934278 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2176, 0, -1, CAST(0x0000A29300934295 AS DateTime), N'Delete', N'Delete Content of Type 1256 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2177, 0, 1256, CAST(0x0000A2930093429A AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2178, 0, 1247, CAST(0x0000A293009342EB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2179, 0, 1257, CAST(0x0000A293009387B2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2180, 0, 1258, CAST(0x0000A2930093903C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2181, 0, 1247, CAST(0x0000A2930094286A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2182, 0, 1247, CAST(0x0000A29300942AA1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2183, 0, 1247, CAST(0x0000A29300946E23 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2184, 0, 1247, CAST(0x0000A29300949A75 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2185, 0, 1259, CAST(0x0000A2930094B0D6 AS DateTime), N'New', N'Content ''aaaa'' was created with Id 1259')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2186, 0, 1259, CAST(0x0000A2930094B0F3 AS DateTime), N'Save', N'Save Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2187, 0, 1259, CAST(0x0000A2930094B1AF AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2188, 0, 1259, CAST(0x0000A2930094B3E8 AS DateTime), N'Publish', N'Save and Publish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2189, 0, 1259, CAST(0x0000A2930094D97C AS DateTime), N'UnPublish', N'UnPublish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2190, 0, 1259, CAST(0x0000A2930094D98E AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2191, 0, 1259, CAST(0x0000A2930094D98E AS DateTime), N'Delete', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2192, 0, 1247, CAST(0x0000A2930094EF21 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2193, 0, 1247, CAST(0x0000A293009615C6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2194, 0, 1247, CAST(0x0000A29300961FCE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2195, 0, 1260, CAST(0x0000A29300962556 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2196, 0, 1254, CAST(0x0000A29300962B70 AS DateTime), N'Delete', N'Delete Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2197, 0, 1253, CAST(0x0000A29300962B7F AS DateTime), N'Delete', N'Delete Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2198, 0, 1252, CAST(0x0000A29300962B93 AS DateTime), N'Delete', N'Delete Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2199, 0, 1251, CAST(0x0000A29300962BA2 AS DateTime), N'Delete', N'Delete Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2200, 0, 1250, CAST(0x0000A29300962BB0 AS DateTime), N'Delete', N'Delete Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2201, 0, -1, CAST(0x0000A29300962BB1 AS DateTime), N'Delete', N'Delete Content of Type 1248 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2202, 0, 1248, CAST(0x0000A29300962BB4 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2203, 0, -1, CAST(0x0000A29300964AFD AS DateTime), N'Delete', N'Delete Content of Type 1260 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2204, 0, 1260, CAST(0x0000A29300964B1F AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2205, 0, 1261, CAST(0x0000A29300964BC7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2206, 0, 1247, CAST(0x0000A29300964BF3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2207, 0, 1247, CAST(0x0000A2930096BAB3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2208, 0, 1247, CAST(0x0000A29300983258 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2209, 0, 1247, CAST(0x0000A293009848BC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2210, 0, 1263, CAST(0x0000A293009875F9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2211, 0, 1263, CAST(0x0000A29300987B46 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2212, 0, 1247, CAST(0x0000A2930098DE42 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2213, 0, 1247, CAST(0x0000A29300991AFE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2214, 0, 1247, CAST(0x0000A29300995616 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2215, 0, 1247, CAST(0x0000A293009CDEA3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2216, 0, 1247, CAST(0x0000A293009CFD80 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2217, 0, 1247, CAST(0x0000A293009D30AF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2218, 0, 1247, CAST(0x0000A293009D977A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2219, 0, 1247, CAST(0x0000A293009DAEE1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2220, 0, -1, CAST(0x0000A293009DBF61 AS DateTime), N'Delete', N'Delete Content of Type 1258 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2221, 0, 1258, CAST(0x0000A293009DBF83 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2222, 0, -1, CAST(0x0000A293009DBF8E AS DateTime), N'Delete', N'Delete Content of Type 1263 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2223, 0, 1263, CAST(0x0000A293009DBF91 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2224, 0, 1259, CAST(0x0000A293009DBFF6 AS DateTime), N'Delete', N'Delete Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2225, 0, -1, CAST(0x0000A293009DBFF6 AS DateTime), N'Delete', N'Delete Content of Type 1257 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2226, 0, 1257, CAST(0x0000A293009DBFFA AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2227, 0, 1247, CAST(0x0000A293009DC091 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2228, 0, 1247, CAST(0x0000A293009DD1DE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2229, 0, 1247, CAST(0x0000A29300A40BA7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2230, 0, 1247, CAST(0x0000A29300ACBA82 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2231, 0, 1266, CAST(0x0000A29300ACCBFF AS DateTime), N'New', N'Content ''ddd'' was created with Id 1266')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2232, 0, 1266, CAST(0x0000A29300ACCC28 AS DateTime), N'Save', N'Save Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2233, 0, 1266, CAST(0x0000A29300ACCCF4 AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2234, 0, 1266, CAST(0x0000A29300ACD4F4 AS DateTime), N'Publish', N'Save and Publish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2235, 0, 1266, CAST(0x0000A29300ACD84C AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2236, 0, 1266, CAST(0x0000A29300ACE069 AS DateTime), N'UnPublish', N'UnPublish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2237, 0, 1266, CAST(0x0000A29300ACE07B AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2238, 0, 1266, CAST(0x0000A29300ACE07B AS DateTime), N'Delete', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2239, 0, 1247, CAST(0x0000A29300AD6505 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2240, 0, 1247, CAST(0x0000A29300ADBC13 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2241, 0, 1247, CAST(0x0000A29300AFA0C6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2242, 0, 1247, CAST(0x0000A29300B0A6C7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2243, 0, 1247, CAST(0x0000A29300B1350E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2244, 0, 1247, CAST(0x0000A29300B39841 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2245, 0, 1247, CAST(0x0000A29300B4A497 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2246, 0, 1247, CAST(0x0000A29300B4DFE0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2247, 0, 1247, CAST(0x0000A29300B53322 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2248, 0, 1247, CAST(0x0000A29300B56C3F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2249, 0, 1247, CAST(0x0000A29300B65E9E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2250, 0, 1247, CAST(0x0000A29300B6B4FB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2251, 0, 1247, CAST(0x0000A29300B73A1A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2252, 0, 1247, CAST(0x0000A29300B77605 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2253, 0, 1247, CAST(0x0000A29300B7B473 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2254, 0, 1247, CAST(0x0000A29300B82080 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2255, 0, 1247, CAST(0x0000A29300B8371B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2256, 0, 1247, CAST(0x0000A29300BA817C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2257, 0, 1247, CAST(0x0000A29300BA8D2C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2258, 0, 1247, CAST(0x0000A29300BB4711 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2259, 0, 1247, CAST(0x0000A29300BB69FB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2260, 0, 1247, CAST(0x0000A29300BB75F7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2261, 0, 1247, CAST(0x0000A29300BC5DE0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2262, 0, -1, CAST(0x0000A29300BCB56D AS DateTime), N'Delete', N'Delete Content of Type 1261 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2263, 0, 1261, CAST(0x0000A29300BCB575 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2264, 0, 1277, CAST(0x0000A29300BCBFA4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2265, 0, 1247, CAST(0x0000A29300BCBFD0 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2266, 0, -1, CAST(0x0000A29300BD352D AS DateTime), N'Delete', N'Delete Content of Type 1277 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2267, 0, 1277, CAST(0x0000A29300BD3533 AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2268, 0, 1278, CAST(0x0000A29300BD6634 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2269, 0, 1247, CAST(0x0000A29300BD665D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2270, 0, 1278, CAST(0x0000A29300BD7AFE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2271, 0, 1247, CAST(0x0000A29300BD7B14 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2272, 0, 1247, CAST(0x0000A29300BF4D50 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2273, 0, 1247, CAST(0x0000A29300CAC2E7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2274, 0, 1278, CAST(0x0000A29300CAFEEB AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2275, 0, 1247, CAST(0x0000A29300CAFF05 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2276, 0, 1247, CAST(0x0000A29300CB5EE4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2277, 0, 1247, CAST(0x0000A29300CB7DEA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2278, 0, 1278, CAST(0x0000A29300CBC259 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2279, 0, 1247, CAST(0x0000A29300CBC272 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2280, 0, 1278, CAST(0x0000A29300CBF37C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2281, 0, 1247, CAST(0x0000A29300CBF395 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2282, 0, 1278, CAST(0x0000A29300CC3A97 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2283, 0, 1247, CAST(0x0000A29300CC3AB1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2284, 0, 1278, CAST(0x0000A29300CC95B6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2285, 0, 1247, CAST(0x0000A29300CC95CF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2286, 0, 1278, CAST(0x0000A29300CD3C09 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2287, 0, 1247, CAST(0x0000A29300CD3C22 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2288, 0, 1247, CAST(0x0000A29300CD594B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2289, 0, -1, CAST(0x0000A29300CE7169 AS DateTime), N'Delete', N'Delete Content of Type 1278 performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2290, 0, 1278, CAST(0x0000A29300CE716D AS DateTime), N'Delete', N'Delete ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2291, 0, 1281, CAST(0x0000A29300CE7831 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2292, 0, 1247, CAST(0x0000A29300CE785B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2293, 0, 1281, CAST(0x0000A29300CECEFE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2294, 0, 1247, CAST(0x0000A29300CECF17 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2295, 0, 1281, CAST(0x0000A29300CEF08D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2296, 0, 1247, CAST(0x0000A29300CEF0A7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2297, 0, 1282, CAST(0x0000A29300CFADFB AS DateTime), N'New', N'Content ''aaa'' was created with Id 1282')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2298, 0, 1282, CAST(0x0000A29300CFAE30 AS DateTime), N'Save', N'Save Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2299, 0, 1282, CAST(0x0000A29300CFAF09 AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2300, 0, 1282, CAST(0x0000A29300CFB9F0 AS DateTime), N'Publish', N'Save and Publish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2301, 0, 1282, CAST(0x0000A29300CFD70A AS DateTime), N'UnPublish', N'UnPublish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2302, 0, 1282, CAST(0x0000A29300CFD71C AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2303, 0, 1282, CAST(0x0000A29300CFD71C AS DateTime), N'Delete', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2304, 0, 1283, CAST(0x0000A29300CFF1BA AS DateTime), N'New', N'Content ''aaa'' was created with Id 1283')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2305, 0, 1283, CAST(0x0000A29300CFF1BD AS DateTime), N'Save', N'Save Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2306, 0, 1283, CAST(0x0000A29300CFF20C AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2307, 0, 1283, CAST(0x0000A29300CFF76A AS DateTime), N'Publish', N'Save and Publish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2308, 0, 1284, CAST(0x0000A29300CFFFBB AS DateTime), N'New', N'Content ''bbb'' was created with Id 1284')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2309, 0, 1284, CAST(0x0000A29300CFFFC9 AS DateTime), N'Save', N'Save Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2310, 0, 1284, CAST(0x0000A29300D00022 AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2311, 0, 1284, CAST(0x0000A29300D009EF AS DateTime), N'Publish', N'Save and Publish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2312, 0, 1283, CAST(0x0000A29300D01D7B AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2313, 0, 1284, CAST(0x0000A29300D022F0 AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2314, 0, 1284, CAST(0x0000A29300D025EF AS DateTime), N'UnPublish', N'UnPublish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2315, 0, 1284, CAST(0x0000A29300D025FA AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2316, 0, 1284, CAST(0x0000A29300D025FA AS DateTime), N'Delete', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2317, 0, 1283, CAST(0x0000A29300D02796 AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2318, 0, 1247, CAST(0x0000A29300D054AE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2319, 0, 1283, CAST(0x0000A29300D055E5 AS DateTime), N'Open', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2320, 0, 1247, CAST(0x0000A29300D0A1F2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2321, 0, 1247, CAST(0x0000A29300D1762E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2322, 0, 1247, CAST(0x0000A29300D202BE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2323, 0, 1247, CAST(0x0000A29300D22F7C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2324, 0, 1247, CAST(0x0000A29300D2429E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2325, 0, 1283, CAST(0x0000A29300D26034 AS DateTime), N'UnPublish', N'UnPublish performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2326, 0, 1283, CAST(0x0000A29300D2605B AS DateTime), N'Move', N'Move Content to Recycle Bin performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2327, 0, 1283, CAST(0x0000A29300D2605D AS DateTime), N'Delete', N'')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2328, 0, 1247, CAST(0x0000A29300D343D8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2329, 0, 1247, CAST(0x0000A29300D3D821 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2330, 0, 1247, CAST(0x0000A29300D5009C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2331, 0, 1247, CAST(0x0000A29300D5BAD2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2332, 0, 1281, CAST(0x0000A29300D61F57 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2333, 0, 1281, CAST(0x0000A29300D621CD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2334, 0, 1281, CAST(0x0000A29300D7073B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2335, 0, 1247, CAST(0x0000A29300D70756 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2336, 0, 1281, CAST(0x0000A29300D7830E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2337, 0, 1281, CAST(0x0000A29300D7855D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2338, 0, 1281, CAST(0x0000A29300D7A54E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2339, 0, 1247, CAST(0x0000A29300D7A567 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2340, 0, 1281, CAST(0x0000A29300D81AA3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2341, 0, 1247, CAST(0x0000A29300D81ABE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2342, 0, 1247, CAST(0x0000A29300D85AF5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2343, 0, 1247, CAST(0x0000A29300D87409 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2344, 0, 1247, CAST(0x0000A29300D916C5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2345, 0, 1247, CAST(0x0000A29300D9EB87 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2346, 0, 1247, CAST(0x0000A29300DAE680 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2347, 0, 1247, CAST(0x0000A29300DB3189 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2348, 0, 1247, CAST(0x0000A29300DB5553 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2349, 0, 1247, CAST(0x0000A29300DB90E9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2350, 0, 1247, CAST(0x0000A29300DBA653 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2351, 0, 1247, CAST(0x0000A29300DBC545 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2352, 0, 1247, CAST(0x0000A29300DBE0EE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2353, 0, 1247, CAST(0x0000A29300DC061E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2354, 0, 1247, CAST(0x0000A29300DC34ED AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2355, 0, 1247, CAST(0x0000A29300DC587A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2356, 0, 1247, CAST(0x0000A29300DC94D6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2357, 0, 1247, CAST(0x0000A29300DCE3E7 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2358, 0, 1247, CAST(0x0000A29300DD0317 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2359, 0, 1247, CAST(0x0000A29300DD0DC6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2360, 0, 1247, CAST(0x0000A29300DD50BC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2361, 0, 1247, CAST(0x0000A29300DE869E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2362, 0, 1247, CAST(0x0000A29300DFB6ED AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2363, 0, 1247, CAST(0x0000A29300DFDB52 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2364, 0, 1247, CAST(0x0000A29300E08986 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2365, 0, 1247, CAST(0x0000A29300E0A59C AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2366, 0, 1247, CAST(0x0000A29300E0D981 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2367, 0, 1247, CAST(0x0000A29300E11FDF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2368, 0, 1247, CAST(0x0000A29300E16654 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2369, 0, 1247, CAST(0x0000A29300E1ACF2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2370, 0, 1247, CAST(0x0000A29300E23931 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2371, 0, 1247, CAST(0x0000A29300E5050F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2372, 0, 1247, CAST(0x0000A29300E5C054 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2373, 0, 1247, CAST(0x0000A29300E65497 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2374, 0, 1247, CAST(0x0000A29300E95B0D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2375, 0, 1247, CAST(0x0000A29300E979B8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2376, 0, 1247, CAST(0x0000A29300EA2759 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2377, 0, 1247, CAST(0x0000A29300EA44D3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2378, 0, 1247, CAST(0x0000A29300EA7373 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2379, 0, 1247, CAST(0x0000A29300EAAF6F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2380, 0, 1247, CAST(0x0000A29300EB71DE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2381, 0, 1247, CAST(0x0000A29300ECA329 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2382, 0, 1247, CAST(0x0000A29300ECED0D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2383, 0, 1247, CAST(0x0000A29300ED1418 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2384, 0, 1247, CAST(0x0000A29300ED4322 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2385, 0, 1247, CAST(0x0000A29300EDC90E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2386, 0, 1247, CAST(0x0000A29300EE5B7A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2387, 0, 1247, CAST(0x0000A29300EEF41F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2388, 0, 1247, CAST(0x0000A29300EF3CD8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2389, 0, 1247, CAST(0x0000A29300EF6839 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2390, 0, 1247, CAST(0x0000A29300EFB3A9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2391, 0, 1247, CAST(0x0000A29300F92F00 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2392, 0, 1247, CAST(0x0000A29300F95997 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2393, 0, 1247, CAST(0x0000A29300F97347 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2394, 0, 1247, CAST(0x0000A29300F97AD8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2395, 0, 1247, CAST(0x0000A29300F99E25 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2396, 0, 1247, CAST(0x0000A29300FA0D7F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2397, 0, 1247, CAST(0x0000A29300FA2FEC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2398, 0, 1247, CAST(0x0000A29300FDDD14 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2399, 0, 1247, CAST(0x0000A29300FE752F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2400, 0, 1247, CAST(0x0000A29300FE8CF5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2401, 0, 1247, CAST(0x0000A29300FF7613 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2402, 0, 1247, CAST(0x0000A29300FF8298 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2403, 0, 1247, CAST(0x0000A29600BAF30A AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2404, 0, 1247, CAST(0x0000A29600D5B3EA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2405, 0, 1247, CAST(0x0000A29600D686D1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2406, 0, 1247, CAST(0x0000A29600D6C15E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2407, 0, 1247, CAST(0x0000A29600FC79AC AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2408, 0, 1247, CAST(0x0000A29600FC8095 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2409, 0, 1247, CAST(0x0000A29601060874 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2410, 0, 1247, CAST(0x0000A296010641F4 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2411, 0, 1247, CAST(0x0000A29601064EBD AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2412, 0, 1247, CAST(0x0000A2960106E712 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2413, 0, 1247, CAST(0x0000A29601072D5B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2414, 0, 1247, CAST(0x0000A296010AAD1D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2415, 0, 1247, CAST(0x0000A296010B3BE9 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2416, 0, 1247, CAST(0x0000A296010B6EC5 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2417, 0, 1247, CAST(0x0000A296010BA381 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2418, 0, 1247, CAST(0x0000A296010BC544 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2419, 0, 1247, CAST(0x0000A296010E4019 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2420, 0, 1247, CAST(0x0000A296010E4BE1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2421, 0, 1247, CAST(0x0000A296010E52EF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2422, 0, 1247, CAST(0x0000A296010E8D58 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2423, 0, 1247, CAST(0x0000A296010E8DB3 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2424, 0, 1247, CAST(0x0000A296010EA845 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2425, 0, 1247, CAST(0x0000A296010F3DFF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2426, 0, 1247, CAST(0x0000A296010FF165 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2427, 0, 1247, CAST(0x0000A29601100516 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2428, 0, 1247, CAST(0x0000A296011033EF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2429, 0, 1247, CAST(0x0000A2960110C0E1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2430, 0, 1247, CAST(0x0000A2960110E44F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2431, 0, 1247, CAST(0x0000A2960110F0A2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2432, 0, 1247, CAST(0x0000A296011135C6 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2433, 0, 1247, CAST(0x0000A2960111AFEE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2434, 0, 1247, CAST(0x0000A29601140397 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2435, 0, 1247, CAST(0x0000A296011422B8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2436, 0, 1247, CAST(0x0000A2960114402F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2437, 0, 1247, CAST(0x0000A29601146C19 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2438, 0, 1247, CAST(0x0000A29601168A27 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2439, 0, 1247, CAST(0x0000A29A00E3ACBA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2440, 0, 1247, CAST(0x0000A29A00E3DBFE AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2441, 0, 1247, CAST(0x0000A29A00E3F2BF AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2442, 0, 1247, CAST(0x0000A29A00E416B8 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2443, 0, 1247, CAST(0x0000A29A00E4C95B AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2444, 0, 1247, CAST(0x0000A29A00E79CD1 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2445, 0, 1247, CAST(0x0000A29A00E83C34 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2446, 0, 1247, CAST(0x0000A29A00EA2FF2 AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2447, 0, 1247, CAST(0x0000A29A00EAC84F AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2448, 0, 1247, CAST(0x0000A29A00EB02EA AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2449, 0, 1247, CAST(0x0000A29D00A63E8E AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2450, 0, 1247, CAST(0x0000A2A400A7AB4D AS DateTime), N'Save', N'Save ContentType performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2451, 0, 1249, CAST(0x0000A2A400A7B812 AS DateTime), N'Delete', N'Delete Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2452, 0, 1283, CAST(0x0000A2A400A7BD28 AS DateTime), N'Delete', N'Delete Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2453, 0, 1284, CAST(0x0000A2A400A7C1C8 AS DateTime), N'Delete', N'Delete Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2454, 0, 1282, CAST(0x0000A2A400A7C5F4 AS DateTime), N'Delete', N'Delete Content performed by user')
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2455, 0, 1266, CAST(0x0000A2A400A7CA5A AS DateTime), N'Delete', N'Delete Content performed by user')
GO
SET IDENTITY_INSERT [dbo].[umbracoLog] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoNode] ON 

GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-92, 0, -1, 0, 1, N'-1,-92', 35, N'f0bc4bfb-b499-40d6-ba86-058885a5178c', N'Label', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB45 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-90, 0, -1, 0, 1, N'-1,-90', 34, N'84c6b441-31df-4ffe-b67e-67d5bc3ae65a', N'Upload', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB45 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-89, 0, -1, 0, 1, N'-1,-89', 33, N'c6bac0dd-4ab9-45b1-8e30-e4b619ee5da3', N'Textbox multiple', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB45 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-88, 0, -1, 0, 1, N'-1,-88', 32, N'0cc0eba1-9960-42c9-bf9b-60e150b429ae', N'Textstring', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB45 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-87, 0, -1, 0, 1, N'-1,-87', 4, N'ca90c950-0aff-4e72-b976-a30b1ac57dad', N'Richtext editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-51, 0, -1, 0, 1, N'-1,-51', 2, N'2e6d3631-066e-44b8-aec4-96f09099b2b5', N'Numeric', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-49, 0, -1, 0, 1, N'-1,-49', 2, N'92897bc6-a5f3-4ffe-ae27-f2e7e33dda49', N'True/false', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-43, 0, -1, 0, 1, N'-1,-43', 2, N'fbaf13a8-4036-41f2-93a3-974f678c312a', N'Checkbox list', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-42, 0, -1, 0, 1, N'-1,-42', 2, N'0b6a45e7-44ba-430d-9da5-4e46060b9e03', N'Dropdown', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-41, 0, -1, 0, 1, N'-1,-41', 2, N'5046194e-4237-453c-a547-15db3a07c4e1', N'Date Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-40, 0, -1, 0, 1, N'-1,-40', 2, N'bb5f57c9-ce2b-4bb9-b697-4caca783a805', N'Radiobox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-39, 0, -1, 0, 1, N'-1,-39', 2, N'f38f0ac7-1d27-439c-9f3f-089cd8825a53', N'Dropdown multiple', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-38, 0, -1, 0, 1, N'-1,-38', 2, N'fd9f1447-6c61-4a7c-9595-5aa39147d318', N'Folder Browser', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-37, 0, -1, 0, 1, N'-1,-37', 2, N'0225af17-b302-49cb-9176-b9f35cab9c17', N'Approved Color', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-36, 0, -1, 0, 1, N'-1,-36', 2, N'e4d66c0f-b935-4200-81f0-025f7256b89a', N'Date Picker with time', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-21, 0, -1, 0, 0, N'-1,-21', 0, N'bf7c7cbc-952f-4518-97a2-69e9c7b33842', N'Recycle Bin', N'cf3d8e34-1c1c-41e9-ae56-878b57b32113', CAST(0x0000A28A00D9BB45 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-20, 0, -1, 0, 0, N'-1,-20', 0, N'0f582a79-1e41-4cf0-bfa0-76340651891a', N'Recycle Bin', N'01bb7ff2-24dc-4c0c-95a2-c24ef72bbac8', CAST(0x0000A28A00D9BB45 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-1, 0, -1, 0, 0, N'-1', 0, N'916724a5-173d-4619-b97e-b9de133dd6f5', N'SYSTEM DATA: umbraco master root', N'ea7d8624-4cfe-4578-a871-24aa946bf34d', CAST(0x0000A28A00D9BB41 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1031, 0, -1, 0, 1, N'-1,1031', 2, N'f38bd2d7-65d0-48e6-95dc-87ce06ec2d3d', N'Folder', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1032, 0, -1, 0, 1, N'-1,1032', 2, N'cc07b313-0843-4aa8-bbda-871c8da728c8', N'Image', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1033, 0, -1, 0, 1, N'-1,1033', 2, N'4c52d8ab-54e6-40cd-999c-7a5f24903e4d', N'File', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1034, 0, -1, 0, 1, N'-1,1034', 2, N'a6857c73-d6e9-480c-b6e6-f15f6ad11125', N'Content Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1035, 0, -1, 0, 1, N'-1,1035', 2, N'93929b9a-93a2-4e2a-b239-d99334440a59', N'Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1036, 0, -1, 0, 1, N'-1,1036', 2, N'2b24165f-9782-4aa3-b459-1de4a4d21f60', N'Member Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1038, 0, -1, 0, 1, N'-1,1038', 2, N'1251c96c-185c-4e9b-93f4-b48205573cbd', N'Simple Editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1039, 0, -1, 0, 1, N'-1,1039', 2, N'06f349a9-c949-4b6a-8660-59c10451af42', N'Ultimate Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1040, 0, -1, 0, 1, N'-1,1040', 2, N'21e798da-e06e-4eda-a511-ed257f78d4fa', N'Related Links', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB46 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1041, 0, -1, 0, 1, N'-1,1041', 2, N'b6b73142-b9c1-4bf8-a16d-e1c23320b549', N'Tags', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB47 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1042, 0, -1, 0, 1, N'-1,1042', 2, N'0a452bd5-83f9-4bc3-8403-1286e13fb77e', N'Macro Container', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB47 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1043, 0, -1, 0, 1, N'-1,1043', 2, N'1df9f033-e6d4-451f-b8d2-e0cbc50a836f', N'Image Cropper', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A28A00D9BB47 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1145, 0, -1, 0, 1, N'-1,1145', 0, N'878b6769-284c-419d-9a6a-18d49629e279', N'FirstLevel', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A29000B0ABD0 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1146, 0, -1, 0, 1, N'-1,1146', 0, N'34e6962e-9716-47cc-aa8b-56605d0354e4', N'SecondLevel1', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A29000B0ABE2 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1147, 0, -1, 0, 1, N'-1,1147', 0, N'453d9bbb-e7d1-4551-ac8e-4bc1831e2e12', N'SecondLevel2', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A29000B0ABE7 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1148, 0, -1, 0, 1, N'-1,1148', 0, N'9d9aedf6-6e45-4e6c-a4be-1b21c3748d7a', N'SecondLevel3', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A29000B0ABEB AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1149, 0, -1, 0, 1, N'-1,1149', 0, N'baadfd1a-5b93-4427-99a7-534bee066104', N'ThirdLevel11', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A29000B0ABEF AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1150, 0, -1, 0, 1, N'-1,1150', 0, N'180b9149-87fb-4674-8def-4035bd2345ba', N'ThirdLevel12', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A29000B0ABF4 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1151, 0, -1, 0, 1, N'-1,1151', 0, N'5213bfc5-a136-4edd-9be2-7ec7b20711fd', N'ThirdLevel21', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A29000B0ABF8 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1247, 0, -1, 0, 1, N'-1,1247', 2, N'36d8e878-6a80-4664-b1a0-a71f19531229', N'FirstLevelDT', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A29200D90687 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1281, 0, 1247, 0, 2, N'-1,1247,1281', 5, N'58f6e7b9-f0c6-48e3-90a9-8683c6862195', N'SecondLevelDT1', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A29300CE7810 AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1326, 0, -1, 0, 1, N'-1,1326', 0, N'd2149d8d-9b45-4368-81bb-1198239d3cf9', N'Administrator', N'9b5416fb-e72f-45a9-a07b-5a9a2709ce43', CAST(0x0000A29600FC79BF AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[umbracoNode] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoRelationType] ON 

GO
INSERT [dbo].[umbracoRelationType] ([id], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (1, 1, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Document On Copy', N'relateDocumentOnCopy')
GO
SET IDENTITY_INSERT [dbo].[umbracoRelationType] OFF
GO
SET IDENTITY_INSERT [dbo].[umbracoUser] ON 

GO
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userDefaultPermissions], [userLanguage], [defaultToLiveEditing]) VALUES (0, 0, 0, 1, -1, -1, N'admin', N'admin', N'/7IIcyNxAts3fvQYe2PI3d19cDU=', N'admin@example.com', NULL, N'en', 0)
GO
SET IDENTITY_INSERT [dbo].[umbracoUser] OFF
GO
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'content')
GO
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'developer')
GO
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'media')
GO
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'member')
GO
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'settings')
GO
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'users')
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'c1f213ec-f7e0-4f73-a1fc-09a6e4301a12', 0, 635222695847105277)
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'32ffd3d0-fd57-4131-95f7-1adf55179882', 0, 635228685242957200)
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'52fa4de4-0407-40c7-8dc0-206767b33af3', 0, 635218503305245468)
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'349a967a-1411-4bd0-b2ac-228aa5a9fd53', 0, 635222910146223676)
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'319133b0-0ee4-4afe-8eab-24fae317cf07', 0, 635222042264569787)
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'4262aebc-2ee7-469f-956b-31385ddb87cb', 0, 635224434324130358)
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'cbef1c8b-00e7-497c-8dc1-3f7d89bf5832', 0, 635228034303841369)
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'cf75217e-b4d6-4947-841b-40c6983a7db1', 0, 635222685593850207)
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'6a21e342-5007-4f93-95c4-4687956ced3b', 0, 635225483901752776)
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'0b8d2974-4a3d-419f-9df2-474c891096c7', 0, 635231475860589911)
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'4bae1142-32e2-411a-8e42-77b3b0538934', 0, 635239964055677187)
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'75c7bcf6-4dee-47fd-acfa-989242ae3131', 0, 635217621068868912)
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'63048d32-386c-43f9-bb80-9b5717a5f951', 0, 635217621786424403)
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'ed24012f-7d5a-4300-abfd-9f1215900487', 0, 635221932400075434)
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'5973e298-372e-4b2a-93d0-a0abc3492d9a', 0, 635233920630501220)
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'edfe6bcc-3604-48ef-bb53-b915444e6d36', 0, 635224526429982053)
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'bcb0b121-9338-4079-a81b-bda3a3c4c07b', 0, 635228055617086990)
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'1685510f-e670-4882-9f38-d7e04c25f8a0', 0, 635224460981938163)
GO
INSERT [dbo].[umbracoUserLogins] ([contextID], [userID], [timeout]) VALUES (N'8cbea6cb-e50e-4f0e-9d5a-eab72918d3e3', 0, 635224438267267158)
GO
SET IDENTITY_INSERT [dbo].[umbracoUserType] ON 

GO
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (1, N'admin', N'Administrators', N'CADMOSKTPIURZ:5F')
GO
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (2, N'writer', N'Writer', N'CAH:F')
GO
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (3, N'editor', N'Editors', N'CADMOSKTPUZ:5F')
GO
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (4, N'translator', N'Translator', N'AF')
GO
SET IDENTITY_INSERT [dbo].[umbracoUserType] OFF
GO
/****** Object:  Index [IX_cmsContent]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsContent] ON [dbo].[cmsContent]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsContentType]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsContentType] ON [dbo].[cmsContentType]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_cmsContentType_icon]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_cmsContentType_icon] ON [dbo].[cmsContentType]
(
	[icon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsContentVersion_VersionId]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsContentVersion_VersionId] ON [dbo].[cmsContentVersion]
(
	[VersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsDataType_nodeId]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsDataType_nodeId] ON [dbo].[cmsDataType]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsDictionary_id]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsDictionary_id] ON [dbo].[cmsDictionary]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsDocument]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsDocument] ON [dbo].[cmsDocument]
(
	[nodeId] ASC,
	[versionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsPropertyData]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_cmsPropertyData] ON [dbo].[cmsPropertyData]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsPropertyData_1]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_cmsPropertyData_1] ON [dbo].[cmsPropertyData]
(
	[contentNodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsPropertyData_2]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_cmsPropertyData_2] ON [dbo].[cmsPropertyData]
(
	[versionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsPropertyData_3]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_cmsPropertyData_3] ON [dbo].[cmsPropertyData]
(
	[propertytypeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_cmsTaskType_alias]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_cmsTaskType_alias] ON [dbo].[cmsTaskType]
(
	[alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsTemplate_nodeId]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsTemplate_nodeId] ON [dbo].[cmsTemplate]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_umbracoLanguage_languageISOCode]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoLanguage_languageISOCode] ON [dbo].[umbracoLanguage]
(
	[languageISOCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoLog]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoLog] ON [dbo].[umbracoLog]
(
	[NodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNodeObjectType]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNodeObjectType] ON [dbo].[umbracoNode]
(
	[nodeObjectType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNodeParentId]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNodeParentId] ON [dbo].[umbracoNode]
(
	[parentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_computerName]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_computerName] ON [dbo].[umbracoServer]
(
	[computerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoServer_isActive]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoServer_isActive] ON [dbo].[umbracoServer]
(
	[isActive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_umbracoUser_userLogin]    Script Date: 2/3/2014 10:35:42 AM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoUser_userLogin] ON [dbo].[umbracoUser]
(
	[userLogin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_thumbnail]  DEFAULT ('folder.png') FOR [thumbnail]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_isContainer]  DEFAULT ('0') FOR [isContainer]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_allowAtRoot]  DEFAULT ('0') FOR [allowAtRoot]
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] ADD  CONSTRAINT [df_cmsContentTypeAllowedContentType_sortOrder]  DEFAULT ('0') FOR [SortOrder]
GO
ALTER TABLE [dbo].[cmsContentVersion] ADD  CONSTRAINT [DF_cmsContentVersion_VersionDate]  DEFAULT (getdate()) FOR [VersionDate]
GO
ALTER TABLE [dbo].[cmsDocument] ADD  CONSTRAINT [DF_cmsDocument_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[cmsDocument] ADD  CONSTRAINT [DF_cmsDocument_newest]  DEFAULT ('0') FOR [newest]
GO
ALTER TABLE [dbo].[cmsDocumentType] ADD  CONSTRAINT [DF_cmsDocumentType_IsDefault]  DEFAULT ('0') FOR [IsDefault]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroUseInEditor]  DEFAULT ('0') FOR [macroUseInEditor]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroRefreshRate]  DEFAULT ('0') FOR [macroRefreshRate]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCacheByPage]  DEFAULT ('1') FOR [macroCacheByPage]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCachePersonalized]  DEFAULT ('0') FOR [macroCachePersonalized]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroDontRender]  DEFAULT ('0') FOR [macroDontRender]
GO
ALTER TABLE [dbo].[cmsMacroProperty] ADD  CONSTRAINT [DF_cmsMacroProperty_macroPropertyHidden]  DEFAULT ('0') FOR [macroPropertyHidden]
GO
ALTER TABLE [dbo].[cmsMacroProperty] ADD  CONSTRAINT [DF_cmsMacroProperty_macroPropertySortOrder]  DEFAULT ('0') FOR [macroPropertySortOrder]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Email]  DEFAULT ('''') FOR [Email]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_LoginName]  DEFAULT ('''') FOR [LoginName]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Password]  DEFAULT ('''') FOR [Password]
GO
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_memberCanEdit]  DEFAULT ('0') FOR [memberCanEdit]
GO
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_viewOnProfile]  DEFAULT ('0') FOR [viewOnProfile]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_sortOrder]  DEFAULT ('0') FOR [sortOrder]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_mandatory]  DEFAULT ('0') FOR [mandatory]
GO
ALTER TABLE [dbo].[cmsTask] ADD  CONSTRAINT [DF_cmsTask_closed]  DEFAULT ('0') FOR [closed]
GO
ALTER TABLE [dbo].[cmsTask] ADD  CONSTRAINT [DF_cmsTask_DateTime]  DEFAULT (getdate()) FOR [DateTime]
GO
ALTER TABLE [dbo].[umbracoLog] ADD  CONSTRAINT [DF_umbracoLog_Datestamp]  DEFAULT (getdate()) FOR [Datestamp]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_trashed]  DEFAULT ('0') FOR [trashed]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoRelation] ADD  CONSTRAINT [DF_umbracoRelation_datetime]  DEFAULT (getdate()) FOR [datetime]
GO
ALTER TABLE [dbo].[umbracoServer] ADD  CONSTRAINT [DF_umbracoServer_registeredDate]  DEFAULT (getdate()) FOR [registeredDate]
GO
ALTER TABLE [dbo].[umbracoServer] ADD  CONSTRAINT [DF_umbracoServer_lastNotifiedDate]  DEFAULT (getdate()) FOR [lastNotifiedDate]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userDisabled]  DEFAULT ('0') FOR [userDisabled]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userNoConsole]  DEFAULT ('0') FOR [userNoConsole]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_defaultToLiveEditing]  DEFAULT ('0') FOR [defaultToLiveEditing]
GO
ALTER TABLE [dbo].[cmsContent]  WITH CHECK ADD  CONSTRAINT [FK_cmsContent_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContent] CHECK CONSTRAINT [FK_cmsContent_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType] CHECK CONSTRAINT [FK_cmsContentType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child] FOREIGN KEY([childContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child]
GO
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent] FOREIGN KEY([parentContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent]
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType] FOREIGN KEY([Id])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType]
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1] FOREIGN KEY([AllowedId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1]
GO
ALTER TABLE [dbo].[cmsContentVersion]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentVersion_cmsContent_nodeId] FOREIGN KEY([ContentId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentVersion] CHECK CONSTRAINT [FK_cmsContentVersion_cmsContent_nodeId]
GO
ALTER TABLE [dbo].[cmsContentXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentXml_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentXml] CHECK CONSTRAINT [FK_cmsContentXml_cmsContent_nodeId]
GO
ALTER TABLE [dbo].[cmsDataType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDataType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDataType] CHECK CONSTRAINT [FK_cmsDataType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsDataTypePreValues]  WITH CHECK ADD  CONSTRAINT [FK_cmsDataTypePreValues_cmsDataType_nodeId] FOREIGN KEY([datatypeNodeId])
REFERENCES [dbo].[cmsDataType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDataTypePreValues] CHECK CONSTRAINT [FK_cmsDataTypePreValues_cmsDataType_nodeId]
GO
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_cmsContent_nodeId]
GO
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_cmsTemplate_nodeId] FOREIGN KEY([templateId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_cmsTemplate_nodeId]
GO
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId] FOREIGN KEY([templateNodeId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId]
GO
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_umbracoNode_id] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsLanguageText]  WITH CHECK ADD  CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id] FOREIGN KEY([UniqueId])
REFERENCES [dbo].[cmsDictionary] ([id])
GO
ALTER TABLE [dbo].[cmsLanguageText] CHECK CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id]
GO
ALTER TABLE [dbo].[cmsMacroProperty]  WITH CHECK ADD  CONSTRAINT [FK_cmsMacroProperty_cmsMacro_id] FOREIGN KEY([macro])
REFERENCES [dbo].[cmsMacro] ([id])
GO
ALTER TABLE [dbo].[cmsMacroProperty] CHECK CONSTRAINT [FK_cmsMacroProperty_cmsMacro_id]
GO
ALTER TABLE [dbo].[cmsMacroProperty]  WITH CHECK ADD  CONSTRAINT [FK_cmsMacroProperty_cmsMacroPropertyType_id] FOREIGN KEY([macroPropertyType])
REFERENCES [dbo].[cmsMacroPropertyType] ([id])
GO
ALTER TABLE [dbo].[cmsMacroProperty] CHECK CONSTRAINT [FK_cmsMacroProperty_cmsMacroPropertyType_id]
GO
ALTER TABLE [dbo].[cmsMember]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember] CHECK CONSTRAINT [FK_cmsMember_cmsContent_nodeId]
GO
ALTER TABLE [dbo].[cmsMember]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMember] CHECK CONSTRAINT [FK_cmsMember_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId] FOREIGN KEY([Member])
REFERENCES [dbo].[cmsMember] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId]
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id] FOREIGN KEY([MemberGroup])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId] FOREIGN KEY([NodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_umbracoNode_id] FOREIGN KEY([NodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsPreviewXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsPreviewXml_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPreviewXml] CHECK CONSTRAINT [FK_cmsPreviewXml_cmsContent_nodeId]
GO
ALTER TABLE [dbo].[cmsPreviewXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsPreviewXml_cmsContentVersion_VersionId] FOREIGN KEY([versionId])
REFERENCES [dbo].[cmsContentVersion] ([VersionId])
GO
ALTER TABLE [dbo].[cmsPreviewXml] CHECK CONSTRAINT [FK_cmsPreviewXml_cmsContentVersion_VersionId]
GO
ALTER TABLE [dbo].[cmsPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyData_cmsPropertyType_id] FOREIGN KEY([propertytypeid])
REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyData] CHECK CONSTRAINT [FK_cmsPropertyData_cmsPropertyType_id]
GO
ALTER TABLE [dbo].[cmsPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyData_umbracoNode_id] FOREIGN KEY([contentNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyData] CHECK CONSTRAINT [FK_cmsPropertyData_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId] FOREIGN KEY([contentTypeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsDataType_nodeId] FOREIGN KEY([dataTypeId])
REFERENCES [dbo].[cmsDataType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsDataType_nodeId]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id] FOREIGN KEY([propertyTypeGroupId])
REFERENCES [dbo].[cmsPropertyTypeGroup] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id]
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId] FOREIGN KEY([contenttypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] CHECK CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyTypeGroup_cmsPropertyTypeGroup_id] FOREIGN KEY([parentGroupId])
REFERENCES [dbo].[cmsPropertyTypeGroup] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] CHECK CONSTRAINT [FK_cmsPropertyTypeGroup_cmsPropertyTypeGroup_id]
GO
ALTER TABLE [dbo].[cmsStylesheet]  WITH CHECK ADD  CONSTRAINT [FK_cmsStylesheet_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsStylesheet] CHECK CONSTRAINT [FK_cmsStylesheet_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsTags_id] FOREIGN KEY([tagId])
REFERENCES [dbo].[cmsTags] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsTags_id]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_cmsTaskType_id] FOREIGN KEY([taskTypeId])
REFERENCES [dbo].[cmsTaskType] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_cmsTaskType_id]
GO
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoUser] FOREIGN KEY([parentUserId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoUser]
GO
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoUser1] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoUser1]
GO
ALTER TABLE [dbo].[cmsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_cmsTemplate_cmsTemplate] FOREIGN KEY([master])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTemplate] CHECK CONSTRAINT [FK_cmsTemplate_cmsTemplate]
GO
ALTER TABLE [dbo].[cmsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_cmsTemplate_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTemplate] CHECK CONSTRAINT [FK_cmsTemplate_umbracoNode]
GO
ALTER TABLE [dbo].[umbracoDomains]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDomains_umbracoNode_id] FOREIGN KEY([domainRootStructureID])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDomains] CHECK CONSTRAINT [FK_umbracoDomains_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoNode_umbracoNode_id] FOREIGN KEY([parentID])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoNode] CHECK CONSTRAINT [FK_umbracoNode_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode] FOREIGN KEY([parentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode1] FOREIGN KEY([childId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode1]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id] FOREIGN KEY([relType])
REFERENCES [dbo].[umbracoRelationType] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id]
GO
ALTER TABLE [dbo].[umbracoUser]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser_umbracoUserType_id] FOREIGN KEY([userType])
REFERENCES [dbo].[umbracoUserType] ([id])
GO
ALTER TABLE [dbo].[umbracoUser] CHECK CONSTRAINT [FK_umbracoUser_umbracoUserType_id]
GO
ALTER TABLE [dbo].[umbracoUser2app]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2app_umbracoUser_id] FOREIGN KEY([user])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2app] CHECK CONSTRAINT [FK_umbracoUser2app_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUser2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodePermission_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodePermission] CHECK CONSTRAINT [FK_umbracoUser2NodePermission_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUser2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodePermission_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodePermission] CHECK CONSTRAINT [FK_umbracoUser2NodePermission_umbracoUser_id]
GO
