; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_v9fs.c_v9fs_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_v9fs.c_v9fs_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v9fs_session_info = type { i32, i32, i32, i8*, i64, i8*, i8*, i32, i32, i8*, i32, i8* }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@CACHE_NONE = common dso_local global i32 0, align 4
@P9_LOCK_TIMEOUT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"integer field, but no integer?\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"uid field, but not a uid?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"gid field, but not a gid?\0A\00", align 1
@CACHE_LOOSE = common dso_local global i32 0, align 4
@CACHE_FSCACHE = common dso_local global i32 0, align 4
@CACHE_MMAP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"problem allocating copy of cache arg\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"problem allocating copy of access arg\0A\00", align 1
@V9FS_ACCESS_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@V9FS_ACCESS_USER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@V9FS_ACCESS_ANY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@V9FS_ACCESS_CLIENT = common dso_local global i32 0, align 4
@V9FS_ACCESS_SINGLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"Unknown access argument %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Unknown uid %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"Not defined CONFIG_9P_FS_POSIX_ACL. Ignoring posixacl option\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"locktimeout must be a greater than zero integer.\0A\00", align 1
@HZ = common dso_local global i64 0, align 8
@V9FS_POSIX_ACL = common dso_local global i32 0, align 4
@p9_debug_level = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v9fs_session_info*, i8*)* @v9fs_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_parse_options(%struct.v9fs_session_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v9fs_session_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.v9fs_session_info* %0, %struct.v9fs_session_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = load i32, i32* @MAX_OPT_ARGS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %24 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %26 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* @CACHE_NONE, align 4
  %28 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %29 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* @P9_LOCK_TIMEOUT, align 8
  %31 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %32 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %31, i32 0, i32 4
  store i64 %30, i64* %32, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %336

36:                                               ; preds = %2
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kstrdup(i8* %37, i32 %38)
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %14, align 4
  br label %334

45:                                               ; preds = %36
  %46 = load i8*, i8** %7, align 8
  store i8* %46, i8** %6, align 8
  br label %47

47:                                               ; preds = %329, %328, %316, %309, %272, %105, %79, %54, %45
  %48 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %48, i8** %10, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %330

50:                                               ; preds = %47
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %47

55:                                               ; preds = %50
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* @tokens, align 4
  %58 = call i32 @match_token(i8* %56, i32 %57, i32* %22)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  switch i32 %59, label %328 [
    i32 137, label %60
    i32 135, label %74
    i32 136, label %100
    i32 141, label %126
    i32 128, label %140
    i32 129, label %157
    i32 131, label %174
    i32 139, label %177
    i32 134, label %181
    i32 132, label %185
    i32 138, label %189
    i32 140, label %190
    i32 142, label %214
    i32 130, label %301
    i32 133, label %304
  ]

60:                                               ; preds = %55
  %61 = getelementptr inbounds i32, i32* %22, i64 0
  %62 = call i32 @match_int(i32* %61, i32* %11)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %67 = call i32 @p9_debug(i32 %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %14, align 4
  br label %73

69:                                               ; preds = %60
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %72 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %65
  br label %329

74:                                               ; preds = %55
  %75 = getelementptr inbounds i32, i32* %22, i64 0
  %76 = call i32 @match_int(i32* %75, i32* %11)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %81 = call i32 @p9_debug(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* %17, align 4
  store i32 %82, i32* %14, align 4
  br label %47

83:                                               ; preds = %74
  %84 = call i32 (...) @current_user_ns()
  %85 = load i32, i32* %11, align 4
  %86 = call i8* @make_kuid(i32 %84, i32 %85)
  %87 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %88 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %87, i32 0, i32 11
  store i8* %86, i8** %88, align 8
  %89 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %90 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %89, i32 0, i32 11
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @uid_valid(i8* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %83
  %95 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %96 = call i32 @p9_debug(i32 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %94, %83
  br label %329

100:                                              ; preds = %55
  %101 = getelementptr inbounds i32, i32* %22, i64 0
  %102 = call i32 @match_int(i32* %101, i32* %11)
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %17, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %107 = call i32 @p9_debug(i32 %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32, i32* %17, align 4
  store i32 %108, i32* %14, align 4
  br label %47

109:                                              ; preds = %100
  %110 = call i32 (...) @current_user_ns()
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @make_kgid(i32 %110, i32 %111)
  %113 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %114 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %113, i32 0, i32 10
  store i32 %112, i32* %114, align 8
  %115 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %116 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %115, i32 0, i32 10
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @gid_valid(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %109
  %121 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %122 = call i32 @p9_debug(i32 %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %120, %109
  br label %329

126:                                              ; preds = %55
  %127 = getelementptr inbounds i32, i32* %22, i64 0
  %128 = call i32 @match_int(i32* %127, i32* %11)
  store i32 %128, i32* %17, align 4
  %129 = load i32, i32* %17, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %133 = call i32 @p9_debug(i32 %132, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %134 = load i32, i32* %17, align 4
  store i32 %134, i32* %14, align 4
  br label %139

135:                                              ; preds = %126
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %138 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %135, %131
  br label %329

140:                                              ; preds = %55
  %141 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %142 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %141, i32 0, i32 5
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @kfree(i8* %143)
  %145 = getelementptr inbounds i32, i32* %22, i64 0
  %146 = call i8* @match_strdup(i32* %145)
  %147 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %148 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %147, i32 0, i32 5
  store i8* %146, i8** %148, align 8
  %149 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %150 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %149, i32 0, i32 5
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %140
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %14, align 4
  br label %331

156:                                              ; preds = %140
  br label %329

157:                                              ; preds = %55
  %158 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %159 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %158, i32 0, i32 6
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @kfree(i8* %160)
  %162 = getelementptr inbounds i32, i32* %22, i64 0
  %163 = call i8* @match_strdup(i32* %162)
  %164 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %165 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %164, i32 0, i32 6
  store i8* %163, i8** %165, align 8
  %166 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %167 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %166, i32 0, i32 6
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %157
  %171 = load i32, i32* @ENOMEM, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %14, align 4
  br label %331

173:                                              ; preds = %157
  br label %329

174:                                              ; preds = %55
  %175 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %176 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %175, i32 0, i32 7
  store i32 1, i32* %176, align 8
  br label %329

177:                                              ; preds = %55
  %178 = load i32, i32* @CACHE_LOOSE, align 4
  %179 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %180 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  br label %329

181:                                              ; preds = %55
  %182 = load i32, i32* @CACHE_FSCACHE, align 4
  %183 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %184 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  br label %329

185:                                              ; preds = %55
  %186 = load i32, i32* @CACHE_MMAP, align 4
  %187 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %188 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  br label %329

189:                                              ; preds = %55
  br label %329

190:                                              ; preds = %55
  %191 = getelementptr inbounds i32, i32* %22, i64 0
  %192 = call i8* @match_strdup(i32* %191)
  store i8* %192, i8** %12, align 8
  %193 = load i8*, i8** %12, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %200, label %195

195:                                              ; preds = %190
  %196 = load i32, i32* @ENOMEM, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %14, align 4
  %198 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %199 = call i32 @p9_debug(i32 %198, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %331

200:                                              ; preds = %190
  %201 = load i8*, i8** %12, align 8
  %202 = call i32 @get_cache_mode(i8* %201)
  store i32 %202, i32* %17, align 4
  %203 = load i32, i32* %17, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = load i32, i32* %17, align 4
  store i32 %206, i32* %14, align 4
  br label %211

207:                                              ; preds = %200
  %208 = load i32, i32* %17, align 4
  %209 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %210 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 8
  br label %211

211:                                              ; preds = %207, %205
  %212 = load i8*, i8** %12, align 8
  %213 = call i32 @kfree(i8* %212)
  br label %329

214:                                              ; preds = %55
  %215 = getelementptr inbounds i32, i32* %22, i64 0
  %216 = call i8* @match_strdup(i32* %215)
  store i8* %216, i8** %12, align 8
  %217 = load i8*, i8** %12, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %224, label %219

219:                                              ; preds = %214
  %220 = load i32, i32* @ENOMEM, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %14, align 4
  %222 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %223 = call i32 @p9_debug(i32 %222, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %331

224:                                              ; preds = %214
  %225 = load i32, i32* @V9FS_ACCESS_MASK, align 4
  %226 = xor i32 %225, -1
  %227 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %228 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %227, i32 0, i32 8
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %229, %226
  store i32 %230, i32* %228, align 4
  %231 = load i8*, i8** %12, align 8
  %232 = call i32 @strcmp(i8* %231, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %224
  %235 = load i32, i32* @V9FS_ACCESS_USER, align 4
  %236 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %237 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %236, i32 0, i32 8
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 4
  br label %298

240:                                              ; preds = %224
  %241 = load i8*, i8** %12, align 8
  %242 = call i32 @strcmp(i8* %241, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %240
  %245 = load i32, i32* @V9FS_ACCESS_ANY, align 4
  %246 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %247 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %246, i32 0, i32 8
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 4
  br label %297

250:                                              ; preds = %240
  %251 = load i8*, i8** %12, align 8
  %252 = call i32 @strcmp(i8* %251, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %250
  %255 = load i32, i32* @V9FS_ACCESS_CLIENT, align 4
  %256 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %257 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %256, i32 0, i32 8
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 4
  br label %296

260:                                              ; preds = %250
  %261 = load i32, i32* @V9FS_ACCESS_SINGLE, align 4
  %262 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %263 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %262, i32 0, i32 8
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  %266 = load i8*, i8** %12, align 8
  %267 = call i32 @simple_strtoul(i8* %266, i8** %13, i32 10)
  store i32 %267, i32* %18, align 4
  %268 = load i8*, i8** %13, align 8
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %260
  %273 = load i32, i32* @EINVAL, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %14, align 4
  %275 = load i8*, i8** %12, align 8
  %276 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %275)
  %277 = load i8*, i8** %12, align 8
  %278 = call i32 @kfree(i8* %277)
  br label %47

279:                                              ; preds = %260
  %280 = call i32 (...) @current_user_ns()
  %281 = load i32, i32* %18, align 4
  %282 = call i8* @make_kuid(i32 %280, i32 %281)
  %283 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %284 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %283, i32 0, i32 9
  store i8* %282, i8** %284, align 8
  %285 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %286 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %285, i32 0, i32 9
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @uid_valid(i8* %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %295, label %290

290:                                              ; preds = %279
  %291 = load i32, i32* @EINVAL, align 4
  %292 = sub nsw i32 0, %291
  store i32 %292, i32* %14, align 4
  %293 = load i8*, i8** %12, align 8
  %294 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %293)
  br label %295

295:                                              ; preds = %290, %279
  br label %296

296:                                              ; preds = %295, %254
  br label %297

297:                                              ; preds = %296, %244
  br label %298

298:                                              ; preds = %297, %234
  %299 = load i8*, i8** %12, align 8
  %300 = call i32 @kfree(i8* %299)
  br label %329

301:                                              ; preds = %55
  %302 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %303 = call i32 @p9_debug(i32 %302, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0))
  br label %329

304:                                              ; preds = %55
  %305 = getelementptr inbounds i32, i32* %22, i64 0
  %306 = call i32 @match_int(i32* %305, i32* %11)
  store i32 %306, i32* %17, align 4
  %307 = load i32, i32* %17, align 4
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %304
  %310 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %311 = call i32 @p9_debug(i32 %310, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %312 = load i32, i32* %17, align 4
  store i32 %312, i32* %14, align 4
  br label %47

313:                                              ; preds = %304
  %314 = load i32, i32* %11, align 4
  %315 = icmp slt i32 %314, 1
  br i1 %315, label %316, label %321

316:                                              ; preds = %313
  %317 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %318 = call i32 @p9_debug(i32 %317, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0))
  %319 = load i32, i32* @EINVAL, align 4
  %320 = sub nsw i32 0, %319
  store i32 %320, i32* %14, align 4
  br label %47

321:                                              ; preds = %313
  %322 = load i32, i32* %11, align 4
  %323 = sext i32 %322 to i64
  %324 = load i64, i64* @HZ, align 8
  %325 = mul nsw i64 %323, %324
  %326 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %4, align 8
  %327 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %326, i32 0, i32 4
  store i64 %325, i64* %327, align 8
  br label %329

328:                                              ; preds = %55
  br label %47

329:                                              ; preds = %321, %301, %298, %211, %189, %185, %181, %177, %174, %173, %156, %139, %125, %99, %73
  br label %47

330:                                              ; preds = %47
  br label %331

331:                                              ; preds = %330, %219, %195, %170, %153
  %332 = load i8*, i8** %7, align 8
  %333 = call i32 @kfree(i8* %332)
  br label %334

334:                                              ; preds = %331, %42
  %335 = load i32, i32* %14, align 4
  store i32 %335, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %336

336:                                              ; preds = %334, %35
  %337 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %337)
  %338 = load i32, i32* %3, align 4
  ret i32 %338
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @p9_debug(i32, i8*) #2

declare dso_local i8* @make_kuid(i32, i32) #2

declare dso_local i32 @current_user_ns(...) #2

declare dso_local i32 @uid_valid(i8*) #2

declare dso_local i32 @make_kgid(i32, i32) #2

declare dso_local i32 @gid_valid(i32) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i8* @match_strdup(i32*) #2

declare dso_local i32 @get_cache_mode(i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #2

declare dso_local i32 @pr_info(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
