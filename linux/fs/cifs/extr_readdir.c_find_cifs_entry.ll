; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_readdir.c_find_cifs_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_readdir.c_find_cifs_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, %struct.cifs_tcon*, i32*, i32, %struct.TYPE_6__*)*, i32 (i8*, %struct.TCP_Server_Info*)*, i32 (i32, %struct.cifs_tcon*, i32*)*, i64 (%struct.cifsFileInfo*)*, i32 }
%struct.TYPE_6__ = type { i64, i32, i8*, i8*, i32, i64, i32, i64 }
%struct.cifsFileInfo = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.file = type { %struct.cifsFileInfo* }
%struct.cifs_sb_info = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"In fce \00", align 1
@FYI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"search backing up - close and restart search\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"freeing SMB ff cache buf on search rewind\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"error %d reinitiating a search on rewind\0A\00", align 1
@CIFS_SEARCH_CLOSE_AT_END = common dso_local global i32 0, align 4
@CIFS_SEARCH_RETURN_RESUME = common dso_local global i32 0, align 4
@CIFS_SEARCH_BACKUP_SEARCH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"calling findnext2\0A\00", align 1
@VFS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"ntwrk_buf_start is NULL during readdir\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"found entry - pos_in_buf %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"reached end of buf searching for pos in buf %d index to find %lld rc %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"index not in buffer - could not findnext into it\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"can not return entries pos_in_buf beyond last\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_tcon*, i64, %struct.file*, i8**, i32*)* @find_cifs_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_cifs_entry(i32 %0, %struct.cifs_tcon* %1, i64 %2, %struct.file* %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_tcon*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.cifsFileInfo*, align 8
  %20 = alloca %struct.cifs_sb_info*, align 8
  %21 = alloca %struct.TCP_Server_Info*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.file* %3, %struct.file** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %18, align 8
  %26 = load %struct.file*, %struct.file** %11, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %27, align 8
  store %struct.cifsFileInfo* %28, %struct.cifsFileInfo** %19, align 8
  %29 = load %struct.file*, %struct.file** %11, align 8
  %30 = call %struct.cifs_sb_info* @CIFS_FILE_SB(%struct.file* %29)
  store %struct.cifs_sb_info* %30, %struct.cifs_sb_info** %20, align 8
  %31 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %32 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %34, align 8
  store %struct.TCP_Server_Info* %35, %struct.TCP_Server_Info** %21, align 8
  %36 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %21, align 8
  %37 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %6
  %43 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %21, align 8
  %44 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32 (i32, %struct.cifs_tcon*, i32*, i32, %struct.TYPE_6__*)*, i32 (i32, %struct.cifs_tcon*, i32*, i32, %struct.TYPE_6__*)** %46, align 8
  %48 = icmp ne i32 (i32, %struct.cifs_tcon*, i32*, i32, %struct.TYPE_6__*)* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %42, %6
  %50 = load i32, i32* @ENOSYS, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %372

52:                                               ; preds = %42
  %53 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %54 = icmp eq %struct.cifsFileInfo* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load i8**, i8*** %12, align 8
  %57 = icmp eq i8** %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32*, i32** %13, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58, %55, %52
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %372

64:                                               ; preds = %58
  %65 = load i8**, i8*** %12, align 8
  store i8* null, i8** %65, align 8
  %66 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %67 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %71 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %69, %74
  store i64 %75, i64* %17, align 8
  %76 = load %struct.file*, %struct.file** %11, align 8
  %77 = call i32 @dump_cifs_file_struct(%struct.file* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %78 = load i64, i64* %18, align 8
  %79 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %80 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %78, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %64
  %85 = load %struct.file*, %struct.file** %11, align 8
  %86 = call i64 @is_dir_changed(%struct.file* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84, %64
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %17, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %189

92:                                               ; preds = %88, %84
  %93 = load i32, i32* @FYI, align 4
  %94 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %93, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %95 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %96 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %95, i32 0, i32 3
  %97 = call i32 @spin_lock(i32* %96)
  %98 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %21, align 8
  %99 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  %102 = load i64 (%struct.cifsFileInfo*)*, i64 (%struct.cifsFileInfo*)** %101, align 8
  %103 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %104 = call i64 %102(%struct.cifsFileInfo* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %130

106:                                              ; preds = %92
  %107 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %108 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %110 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %109, i32 0, i32 3
  %111 = call i32 @spin_unlock(i32* %110)
  %112 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %21, align 8
  %113 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32 (i32, %struct.cifs_tcon*, i32*)*, i32 (i32, %struct.cifs_tcon*, i32*)** %115, align 8
  %117 = icmp ne i32 (i32, %struct.cifs_tcon*, i32*)* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %106
  %119 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %21, align 8
  %120 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %119, i32 0, i32 0
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i32 (i32, %struct.cifs_tcon*, i32*)*, i32 (i32, %struct.cifs_tcon*, i32*)** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %126 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %127 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %126, i32 0, i32 2
  %128 = call i32 %123(i32 %124, %struct.cifs_tcon* %125, i32* %127)
  br label %129

129:                                              ; preds = %118, %106
  br label %134

130:                                              ; preds = %92
  %131 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %132 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %131, i32 0, i32 3
  %133 = call i32 @spin_unlock(i32* %132)
  br label %134

134:                                              ; preds = %130, %129
  %135 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %136 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %164

140:                                              ; preds = %134
  %141 = load i32, i32* @FYI, align 4
  %142 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %141, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %143 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %144 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %140
  %149 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %150 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @cifs_small_buf_release(i8* %152)
  br label %160

154:                                              ; preds = %140
  %155 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %156 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @cifs_buf_release(i8* %158)
  br label %160

160:                                              ; preds = %154, %148
  %161 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %162 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  store i8* null, i8** %163, align 8
  br label %164

164:                                              ; preds = %160, %134
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.file*, %struct.file** %11, align 8
  %167 = call i32 @initiate_cifs_search(i32 %165, %struct.file* %166)
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %15, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %164
  %171 = load i32, i32* @FYI, align 4
  %172 = load i32, i32* %15, align 4
  %173 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %171, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %15, align 4
  store i32 %174, i32* %7, align 4
  br label %372

175:                                              ; preds = %164
  %176 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %177 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %175
  %182 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %183 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %187 = call i32 @cifs_save_resume_key(i64 %185, %struct.cifsFileInfo* %186)
  br label %188

188:                                              ; preds = %181, %175
  br label %189

189:                                              ; preds = %188, %88
  %190 = load i32, i32* @CIFS_SEARCH_CLOSE_AT_END, align 4
  %191 = load i32, i32* @CIFS_SEARCH_RETURN_RESUME, align 4
  %192 = or i32 %190, %191
  store i32 %192, i32* %14, align 4
  %193 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %20, align 8
  %194 = call i64 @backup_cred(%struct.cifs_sb_info* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %189
  %197 = load i32, i32* @CIFS_SEARCH_BACKUP_SEARCH, align 4
  %198 = load i32, i32* %14, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %14, align 4
  br label %200

200:                                              ; preds = %196, %189
  br label %201

201:                                              ; preds = %254, %200
  %202 = load i64, i64* %18, align 8
  %203 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %204 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp sge i64 %202, %206
  br i1 %207, label %208, label %218

208:                                              ; preds = %201
  %209 = load i32, i32* %15, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %213 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  %217 = xor i1 %216, true
  br label %218

218:                                              ; preds = %211, %208, %201
  %219 = phi i1 [ false, %208 ], [ false, %201 ], [ %217, %211 ]
  br i1 %219, label %220, label %255

220:                                              ; preds = %218
  %221 = load i32, i32* @FYI, align 4
  %222 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %221, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %223 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %21, align 8
  %224 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %223, i32 0, i32 0
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = load i32 (i32, %struct.cifs_tcon*, i32*, i32, %struct.TYPE_6__*)*, i32 (i32, %struct.cifs_tcon*, i32*, i32, %struct.TYPE_6__*)** %226, align 8
  %228 = load i32, i32* %8, align 4
  %229 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %230 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %231 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %230, i32 0, i32 2
  %232 = load i32, i32* %14, align 4
  %233 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %234 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %233, i32 0, i32 1
  %235 = call i32 %227(i32 %228, %struct.cifs_tcon* %229, i32* %231, i32 %232, %struct.TYPE_6__* %234)
  store i32 %235, i32* %15, align 4
  %236 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %237 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 5
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %220
  %242 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %243 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 5
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %247 = call i32 @cifs_save_resume_key(i64 %245, %struct.cifsFileInfo* %246)
  br label %248

248:                                              ; preds = %241, %220
  %249 = load i32, i32* %15, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load i32, i32* @ENOENT, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %7, align 4
  br label %372

254:                                              ; preds = %248
  br label %201

255:                                              ; preds = %218
  %256 = load i64, i64* %18, align 8
  %257 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %258 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp slt i64 %256, %260
  br i1 %261, label %262, label %348

262:                                              ; preds = %255
  %263 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %264 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 2
  %266 = load i8*, i8** %265, align 8
  %267 = icmp eq i8* %266, null
  br i1 %267, label %268, label %273

268:                                              ; preds = %262
  %269 = load i32, i32* @VFS, align 4
  %270 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %269, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %271 = load i32, i32* @EIO, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %7, align 4
  br label %372

273:                                              ; preds = %262
  %274 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %275 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 2
  %277 = load i8*, i8** %276, align 8
  %278 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %21, align 8
  %279 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %278, i32 0, i32 0
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 1
  %282 = load i32 (i8*, %struct.TCP_Server_Info*)*, i32 (i8*, %struct.TCP_Server_Info*)** %281, align 8
  %283 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %284 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 2
  %286 = load i8*, i8** %285, align 8
  %287 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %21, align 8
  %288 = call i32 %282(i8* %286, %struct.TCP_Server_Info* %287)
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %277, i64 %289
  store i8* %290, i8** %24, align 8
  %291 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %292 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 3
  %294 = load i8*, i8** %293, align 8
  store i8* %294, i8** %23, align 8
  %295 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %296 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %300 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = sext i32 %302 to i64
  %304 = sub nsw i64 %298, %303
  store i64 %304, i64* %17, align 8
  %305 = load i64, i64* %18, align 8
  %306 = load i64, i64* %17, align 8
  %307 = sub nsw i64 %305, %306
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %16, align 4
  %309 = load i32, i32* @FYI, align 4
  %310 = load i32, i32* %16, align 4
  %311 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %309, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %310)
  store i32 0, i32* %22, align 4
  br label %312

312:                                              ; preds = %329, %273
  %313 = load i32, i32* %22, align 4
  %314 = load i32, i32* %16, align 4
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %316, label %319

316:                                              ; preds = %312
  %317 = load i8*, i8** %23, align 8
  %318 = icmp ne i8* %317, null
  br label %319

319:                                              ; preds = %316, %312
  %320 = phi i1 [ false, %312 ], [ %318, %316 ]
  br i1 %320, label %321, label %332

321:                                              ; preds = %319
  %322 = load i8*, i8** %23, align 8
  %323 = load i8*, i8** %24, align 8
  %324 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %325 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 8
  %328 = call i8* @nxt_dir_entry(i8* %322, i8* %323, i32 %327)
  store i8* %328, i8** %23, align 8
  br label %329

329:                                              ; preds = %321
  %330 = load i32, i32* %22, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %22, align 4
  br label %312

332:                                              ; preds = %319
  %333 = load i8*, i8** %23, align 8
  %334 = icmp eq i8* %333, null
  br i1 %334, label %335, label %345

335:                                              ; preds = %332
  %336 = load i32, i32* %22, align 4
  %337 = load i32, i32* %16, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %345

339:                                              ; preds = %335
  %340 = load i32, i32* @VFS, align 4
  %341 = load i32, i32* %16, align 4
  %342 = load i64, i64* %18, align 8
  %343 = load i32, i32* %15, align 4
  %344 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %340, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0), i32 %341, i64 %342, i32 %343)
  br label %345

345:                                              ; preds = %339, %335, %332
  store i32 0, i32* %15, align 4
  %346 = load i8*, i8** %23, align 8
  %347 = load i8**, i8*** %12, align 8
  store i8* %346, i8** %347, align 8
  br label %351

348:                                              ; preds = %255
  %349 = load i32, i32* @FYI, align 4
  %350 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %349, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %372

351:                                              ; preds = %345
  %352 = load i32, i32* %16, align 4
  %353 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %354 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 8
  %357 = icmp sge i32 %352, %356
  br i1 %357, label %358, label %362

358:                                              ; preds = %351
  %359 = load i32, i32* @FYI, align 4
  %360 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %359, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0))
  %361 = load i32*, i32** %13, align 8
  store i32 0, i32* %361, align 4
  br label %370

362:                                              ; preds = %351
  %363 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %19, align 8
  %364 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* %16, align 4
  %368 = sub nsw i32 %366, %367
  %369 = load i32*, i32** %13, align 8
  store i32 %368, i32* %369, align 4
  br label %370

370:                                              ; preds = %362, %358
  %371 = load i32, i32* %15, align 4
  store i32 %371, i32* %7, align 4
  br label %372

372:                                              ; preds = %370, %348, %268, %251, %170, %61, %49
  %373 = load i32, i32* %7, align 4
  ret i32 %373
}

declare dso_local %struct.cifs_sb_info* @CIFS_FILE_SB(%struct.file*) #1

declare dso_local i32 @dump_cifs_file_struct(%struct.file*, i8*) #1

declare dso_local i64 @is_dir_changed(%struct.file*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cifs_small_buf_release(i8*) #1

declare dso_local i32 @cifs_buf_release(i8*) #1

declare dso_local i32 @initiate_cifs_search(i32, %struct.file*) #1

declare dso_local i32 @cifs_save_resume_key(i64, %struct.cifsFileInfo*) #1

declare dso_local i64 @backup_cred(%struct.cifs_sb_info*) #1

declare dso_local i8* @nxt_dir_entry(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
