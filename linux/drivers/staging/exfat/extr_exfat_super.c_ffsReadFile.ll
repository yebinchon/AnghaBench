; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsReadFile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsReadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.file_id_t = type { i64, i32, i32, i32, i64, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.fs_info_t = type { i32, i32, i32, i64 }
%struct.bd_info_t = type { i64, i64, i64 }
%struct.TYPE_2__ = type { %struct.bd_info_t, %struct.fs_info_t }

@FFS_INVALIDFID = common dso_local global i32 0, align 4
@FFS_ERROR = common dso_local global i32 0, align 4
@TYPE_FILE = common dso_local global i64 0, align 8
@FFS_PERMISSIONERR = common dso_local global i32 0, align 4
@FFS_EOF = common dso_local global i32 0, align 4
@FFS_MEDIAERR = common dso_local global i32 0, align 4
@FFS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file_id_t*, i8*, i64, i64*)* @ffsReadFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffsReadFile(%struct.inode* %0, %struct.file_id_t* %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.file_id_t*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.buffer_head*, align 8
  %21 = alloca %struct.super_block*, align 8
  %22 = alloca %struct.fs_info_t*, align 8
  %23 = alloca %struct.bd_info_t*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.file_id_t* %1, %struct.file_id_t** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %16, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %20, align 8
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load %struct.super_block*, %struct.super_block** %25, align 8
  store %struct.super_block* %26, %struct.super_block** %21, align 8
  %27 = load %struct.super_block*, %struct.super_block** %21, align 8
  %28 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store %struct.fs_info_t* %29, %struct.fs_info_t** %22, align 8
  %30 = load %struct.super_block*, %struct.super_block** %21, align 8
  %31 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.bd_info_t* %32, %struct.bd_info_t** %23, align 8
  %33 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %34 = icmp ne %struct.file_id_t* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %5
  %36 = load i32, i32* @FFS_INVALIDFID, align 4
  store i32 %36, i32* %6, align 4
  br label %289

37:                                               ; preds = %5
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @FFS_ERROR, align 4
  store i32 %41, i32* %6, align 4
  br label %289

42:                                               ; preds = %37
  %43 = load %struct.fs_info_t*, %struct.fs_info_t** %22, align 8
  %44 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %43, i32 0, i32 2
  %45 = call i32 @down(i32* %44)
  %46 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %47 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TYPE_FILE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @FFS_PERMISSIONERR, align 4
  store i32 %52, i32* %16, align 4
  br label %284

53:                                               ; preds = %42
  %54 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %55 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %58 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %56, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %63 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %66 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %61, %53
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %70 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %73 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %71, %74
  %76 = sext i32 %75 to i64
  %77 = icmp sgt i64 %68, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %67
  %79 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %80 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %83 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %81, %84
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %10, align 8
  br label %87

87:                                               ; preds = %78, %67
  %88 = load i64, i64* %10, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i64*, i64** %11, align 8
  %92 = icmp ne i64* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i64*, i64** %11, align 8
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %93, %90
  %96 = load i32, i32* @FFS_EOF, align 4
  store i32 %96, i32* %16, align 4
  br label %284

97:                                               ; preds = %87
  store i64 0, i64* %19, align 8
  br label %98

98:                                               ; preds = %253, %97
  %99 = load i64, i64* %10, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %267

101:                                              ; preds = %98
  %102 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %103 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.fs_info_t*, %struct.fs_info_t** %22, align 8
  %106 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = ashr i32 %104, %107
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %14, align 8
  %110 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %111 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %15, align 4
  %113 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %114 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 3
  br i1 %116, label %117, label %123

117:                                              ; preds = %101
  %118 = load i64, i64* %14, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %15, align 4
  br label %161

123:                                              ; preds = %101
  %124 = load i64, i64* %14, align 8
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %123
  %127 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %128 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %126
  %132 = load i64, i64* %14, align 8
  %133 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %134 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = icmp sge i64 %132, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %139 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %14, align 8
  %142 = sub nsw i64 %141, %140
  store i64 %142, i64* %14, align 8
  %143 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %144 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %15, align 4
  br label %146

146:                                              ; preds = %137, %131, %126, %123
  br label %147

147:                                              ; preds = %157, %146
  %148 = load i64, i64* %14, align 8
  %149 = icmp sgt i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = load %struct.super_block*, %struct.super_block** %21, align 8
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @FAT_read(%struct.super_block* %151, i32 %152, i32* %15)
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %156, i32* %6, align 4
  br label %289

157:                                              ; preds = %150
  %158 = load i64, i64* %14, align 8
  %159 = add nsw i64 %158, -1
  store i64 %159, i64* %14, align 8
  br label %147

160:                                              ; preds = %147
  br label %161

161:                                              ; preds = %160, %117
  %162 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %163 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.fs_info_t*, %struct.fs_info_t** %22, align 8
  %166 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = ashr i32 %164, %167
  %169 = sext i32 %168 to i64
  %170 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %171 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %170, i32 0, i32 4
  store i64 %169, i64* %171, align 8
  %172 = load i32, i32* %15, align 4
  %173 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %174 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 8
  %175 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %176 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.fs_info_t*, %struct.fs_info_t** %22, align 8
  %179 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %180, 1
  %182 = and i32 %177, %181
  %183 = sext i32 %182 to i64
  store i64 %183, i64* %12, align 8
  %184 = load i64, i64* %12, align 8
  %185 = load %struct.bd_info_t*, %struct.bd_info_t** %23, align 8
  %186 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = ashr i64 %184, %187
  store i64 %188, i64* %13, align 8
  %189 = load %struct.bd_info_t*, %struct.bd_info_t** %23, align 8
  %190 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %12, align 8
  %193 = and i64 %192, %191
  store i64 %193, i64* %12, align 8
  %194 = load i32, i32* %15, align 4
  %195 = call i64 @START_SECTOR(i32 %194)
  %196 = load i64, i64* %13, align 8
  %197 = add nsw i64 %195, %196
  store i64 %197, i64* %17, align 8
  %198 = load %struct.bd_info_t*, %struct.bd_info_t** %23, align 8
  %199 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %12, align 8
  %202 = sub nsw i64 %200, %201
  store i64 %202, i64* %18, align 8
  %203 = load i64, i64* %18, align 8
  %204 = load i64, i64* %10, align 8
  %205 = icmp sgt i64 %203, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %161
  %207 = load i64, i64* %10, align 8
  store i64 %207, i64* %18, align 8
  br label %208

208:                                              ; preds = %206, %161
  %209 = load i64, i64* %12, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %234

211:                                              ; preds = %208
  %212 = load i64, i64* %18, align 8
  %213 = load %struct.bd_info_t*, %struct.bd_info_t** %23, align 8
  %214 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = icmp eq i64 %212, %215
  br i1 %216, label %217, label %234

217:                                              ; preds = %211
  %218 = load %struct.super_block*, %struct.super_block** %21, align 8
  %219 = load i64, i64* %17, align 8
  %220 = call i64 @sector_read(%struct.super_block* %218, i64 %219, %struct.buffer_head** %20, i32 1)
  %221 = load i64, i64* @FFS_SUCCESS, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  br label %270

224:                                              ; preds = %217
  %225 = load i8*, i8** %9, align 8
  %226 = load i64, i64* %19, align 8
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  %228 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %229 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = inttoptr i64 %230 to i8*
  %232 = load i64, i64* %18, align 8
  %233 = call i32 @memcpy(i8* %227, i8* %231, i64 %232)
  br label %253

234:                                              ; preds = %211, %208
  %235 = load %struct.super_block*, %struct.super_block** %21, align 8
  %236 = load i64, i64* %17, align 8
  %237 = call i64 @sector_read(%struct.super_block* %235, i64 %236, %struct.buffer_head** %20, i32 1)
  %238 = load i64, i64* @FFS_SUCCESS, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  br label %270

241:                                              ; preds = %234
  %242 = load i8*, i8** %9, align 8
  %243 = load i64, i64* %19, align 8
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  %245 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %246 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = inttoptr i64 %247 to i8*
  %249 = load i64, i64* %12, align 8
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  %251 = load i64, i64* %18, align 8
  %252 = call i32 @memcpy(i8* %244, i8* %250, i64 %251)
  br label %253

253:                                              ; preds = %241, %224
  %254 = load i64, i64* %18, align 8
  %255 = load i64, i64* %10, align 8
  %256 = sub nsw i64 %255, %254
  store i64 %256, i64* %10, align 8
  %257 = load i64, i64* %18, align 8
  %258 = load i64, i64* %19, align 8
  %259 = add nsw i64 %258, %257
  store i64 %259, i64* %19, align 8
  %260 = load i64, i64* %18, align 8
  %261 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %262 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = sext i32 %263 to i64
  %265 = add nsw i64 %264, %260
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %262, align 8
  br label %98

267:                                              ; preds = %98
  %268 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %269 = call i32 @brelse(%struct.buffer_head* %268)
  br label %270

270:                                              ; preds = %267, %240, %223
  %271 = load i64*, i64** %11, align 8
  %272 = icmp ne i64* %271, null
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load i64, i64* %19, align 8
  %275 = load i64*, i64** %11, align 8
  store i64 %274, i64* %275, align 8
  br label %276

276:                                              ; preds = %273, %270
  %277 = load %struct.fs_info_t*, %struct.fs_info_t** %22, align 8
  %278 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %277, i32 0, i32 3
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %276
  %282 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %282, i32* %16, align 4
  br label %283

283:                                              ; preds = %281, %276
  br label %284

284:                                              ; preds = %283, %95, %51
  %285 = load %struct.fs_info_t*, %struct.fs_info_t** %22, align 8
  %286 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %285, i32 0, i32 2
  %287 = call i32 @up(i32* %286)
  %288 = load i32, i32* %16, align 4
  store i32 %288, i32* %6, align 4
  br label %289

289:                                              ; preds = %284, %155, %40, %35
  %290 = load i32, i32* %6, align 4
  ret i32 %290
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @FAT_read(%struct.super_block*, i32, i32*) #1

declare dso_local i64 @START_SECTOR(i32) #1

declare dso_local i64 @sector_read(%struct.super_block*, i64, %struct.buffer_head**, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
