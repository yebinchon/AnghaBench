; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsWriteFile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsWriteFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.file_id_t = type { i64, i32, i32, i64, i32, i32, i64, i32, i32, i32 }
%struct.chain_t = type { i64, i32, i64 }
%struct.timestamp_t = type { i32 }
%struct.dentry_t = type { i32 }
%struct.entry_set_cache_t = type { i32 }
%struct.buffer_head = type { i64 }
%struct.fs_info_t = type { i32, i32, i64, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.super_block*, i32, %struct.chain_t*)*, i32 (%struct.dentry_t*)*, i32 (%struct.dentry_t*)*, i64 (%struct.dentry_t*)*, i32 (%struct.dentry_t*, i64)*, i32 (%struct.dentry_t*, i32)*, i32 (%struct.dentry_t*, i32)*, i32 (%struct.dentry_t*, i32)*, i32 (%struct.dentry_t*, i32, i32)* }
%struct.bd_info_t = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.bd_info_t, %struct.fs_info_t }

@FFS_INVALIDFID = common dso_local global i32 0, align 4
@FFS_ERROR = common dso_local global i32 0, align 4
@TYPE_FILE = common dso_local global i64 0, align 8
@FFS_PERMISSIONERR = common dso_local global i32 0, align 4
@FFS_SUCCESS = common dso_local global i32 0, align 4
@VOL_DIRTY = common dso_local global i32 0, align 4
@FFS_MEDIAERR = common dso_local global i32 0, align 4
@ATTR_ARCHIVE = common dso_local global i32 0, align 4
@EXFAT = common dso_local global i64 0, align 8
@ES_ALL_ENTRIES = common dso_local global i32 0, align 4
@TM_MODIFY = common dso_local global i32 0, align 4
@FFS_FULL = common dso_local global i32 0, align 4
@VOL_CLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file_id_t*, i8*, i32, i32*)* @ffsWriteFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffsWriteFile(%struct.inode* %0, %struct.file_id_t* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.file_id_t*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.chain_t, align 8
  %27 = alloca %struct.timestamp_t, align 4
  %28 = alloca %struct.dentry_t*, align 8
  %29 = alloca %struct.dentry_t*, align 8
  %30 = alloca %struct.entry_set_cache_t*, align 8
  %31 = alloca %struct.buffer_head*, align 8
  %32 = alloca %struct.super_block*, align 8
  %33 = alloca %struct.fs_info_t*, align 8
  %34 = alloca %struct.bd_info_t*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.file_id_t* %1, %struct.file_id_t** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i64 0, i64* %23, align 8
  store %struct.entry_set_cache_t* null, %struct.entry_set_cache_t** %30, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %31, align 8
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load %struct.super_block*, %struct.super_block** %36, align 8
  store %struct.super_block* %37, %struct.super_block** %32, align 8
  %38 = load %struct.super_block*, %struct.super_block** %32, align 8
  %39 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store %struct.fs_info_t* %40, %struct.fs_info_t** %33, align 8
  %41 = load %struct.super_block*, %struct.super_block** %32, align 8
  %42 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store %struct.bd_info_t* %43, %struct.bd_info_t** %34, align 8
  %44 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %45 = icmp ne %struct.file_id_t* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %5
  %47 = load i32, i32* @FFS_INVALIDFID, align 4
  store i32 %47, i32* %6, align 4
  br label %642

48:                                               ; preds = %5
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @FFS_ERROR, align 4
  store i32 %52, i32* %6, align 4
  br label %642

53:                                               ; preds = %48
  %54 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %55 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %54, i32 0, i32 3
  %56 = call i32 @down(i32* %55)
  %57 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %58 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TYPE_FILE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @FFS_PERMISSIONERR, align 4
  store i32 %63, i32* %19, align 4
  br label %637

64:                                               ; preds = %53
  %65 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %66 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %69 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %74 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %77 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %72, %64
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i32*, i32** %11, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32*, i32** %11, align 8
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i32, i32* @FFS_SUCCESS, align 4
  store i32 %87, i32* %19, align 4
  br label %637

88:                                               ; preds = %78
  %89 = load %struct.super_block*, %struct.super_block** %32, align 8
  %90 = load i32, i32* @VOL_DIRTY, align 4
  %91 = call i32 @fs_set_vol_flags(%struct.super_block* %89, i32 %90)
  %92 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %93 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  store i32 0, i32* %16, align 4
  br label %107

97:                                               ; preds = %88
  %98 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %99 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, 1
  %102 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %103 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = ashr i32 %101, %104
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %97, %96
  store i32 0, i32* %25, align 4
  br label %108

108:                                              ; preds = %455, %107
  %109 = load i32, i32* %10, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %456

111:                                              ; preds = %108
  %112 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %113 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %116 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = ashr i32 %114, %117
  store i32 %118, i32* %15, align 4
  %119 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %120 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %21, align 8
  store i64 %121, i64* %20, align 8
  %122 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %123 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 3
  br i1 %125, label %126, label %151

126:                                              ; preds = %111
  %127 = load i32, i32* %15, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %150

129:                                              ; preds = %126
  %130 = load i64, i64* %20, align 8
  %131 = call i64 @CLUSTER_32(i32 -1)
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %150

133:                                              ; preds = %129
  %134 = load i32, i32* %15, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %21, align 8
  %138 = add nsw i64 %137, %136
  store i64 %138, i64* %21, align 8
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* %16, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %133
  %143 = call i64 @CLUSTER_32(i32 -1)
  store i64 %143, i64* %20, align 8
  br label %149

144:                                              ; preds = %133
  %145 = load i32, i32* %15, align 4
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* %20, align 8
  %148 = add nsw i64 %147, %146
  store i64 %148, i64* %20, align 8
  br label %149

149:                                              ; preds = %144, %142
  br label %150

150:                                              ; preds = %149, %129, %126
  br label %196

151:                                              ; preds = %111
  %152 = load i32, i32* %15, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %174

154:                                              ; preds = %151
  %155 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %156 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %154
  %160 = load i32, i32* %15, align 4
  %161 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %162 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = icmp sge i32 %160, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %159
  %166 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %167 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %15, align 4
  %170 = sub nsw i32 %169, %168
  store i32 %170, i32* %15, align 4
  %171 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %172 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %171, i32 0, i32 6
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %20, align 8
  br label %174

174:                                              ; preds = %165, %159, %154, %151
  br label %175

175:                                              ; preds = %192, %174
  %176 = load i32, i32* %15, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load i64, i64* %20, align 8
  %180 = call i64 @CLUSTER_32(i32 -1)
  %181 = icmp ne i64 %179, %180
  br label %182

182:                                              ; preds = %178, %175
  %183 = phi i1 [ false, %175 ], [ %181, %178 ]
  br i1 %183, label %184, label %195

184:                                              ; preds = %182
  %185 = load i64, i64* %20, align 8
  store i64 %185, i64* %21, align 8
  %186 = load %struct.super_block*, %struct.super_block** %32, align 8
  %187 = load i64, i64* %20, align 8
  %188 = call i32 @FAT_read(%struct.super_block* %186, i64 %187, i64* %20)
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %191, i32* %19, align 4
  br label %637

192:                                              ; preds = %184
  %193 = load i32, i32* %15, align 4
  %194 = add nsw i32 %193, -1
  store i32 %194, i32* %15, align 4
  br label %175

195:                                              ; preds = %182
  br label %196

196:                                              ; preds = %195, %150
  %197 = load i64, i64* %20, align 8
  %198 = call i64 @CLUSTER_32(i32 -1)
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %289

200:                                              ; preds = %196
  %201 = load i32, i32* %10, align 4
  %202 = sub nsw i32 %201, 1
  %203 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %204 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = ashr i32 %202, %205
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %17, align 4
  %208 = load i64, i64* %21, align 8
  %209 = call i64 @CLUSTER_32(i32 -1)
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %200
  %212 = call i64 @CLUSTER_32(i32 -1)
  br label %216

213:                                              ; preds = %200
  %214 = load i64, i64* %21, align 8
  %215 = add nsw i64 %214, 1
  br label %216

216:                                              ; preds = %213, %211
  %217 = phi i64 [ %212, %211 ], [ %215, %213 ]
  %218 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %26, i32 0, i32 0
  store i64 %217, i64* %218, align 8
  %219 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %26, i32 0, i32 2
  store i64 0, i64* %219, align 8
  %220 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %221 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %26, i32 0, i32 1
  store i32 %222, i32* %223, align 8
  %224 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %225 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %224, i32 0, i32 5
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 0
  %228 = load i32 (%struct.super_block*, i32, %struct.chain_t*)*, i32 (%struct.super_block*, i32, %struct.chain_t*)** %227, align 8
  %229 = load %struct.super_block*, %struct.super_block** %32, align 8
  %230 = load i32, i32* %17, align 4
  %231 = call i32 %228(%struct.super_block* %229, i32 %230, %struct.chain_t* %26)
  store i32 %231, i32* %18, align 4
  %232 = load i32, i32* %18, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %216
  br label %456

235:                                              ; preds = %216
  %236 = load i32, i32* %18, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %239, i32* %19, align 4
  br label %637

240:                                              ; preds = %235
  %241 = load i64, i64* %21, align 8
  %242 = call i64 @CLUSTER_32(i32 -1)
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %256

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %26, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %248, label %251

248:                                              ; preds = %244
  %249 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %250 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %249, i32 0, i32 4
  store i32 1, i32* %250, align 8
  br label %251

251:                                              ; preds = %248, %244
  %252 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %26, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %255 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %254, i32 0, i32 3
  store i64 %253, i64* %255, align 8
  store i32 1, i32* %12, align 4
  br label %283

256:                                              ; preds = %240
  %257 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %26, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %260 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = icmp ne i32 %258, %261
  br i1 %262, label %263, label %272

263:                                              ; preds = %256
  %264 = load %struct.super_block*, %struct.super_block** %32, align 8
  %265 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %266 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = load i32, i32* %16, align 4
  %269 = call i32 @exfat_chain_cont_cluster(%struct.super_block* %264, i64 %267, i32 %268)
  %270 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %271 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %270, i32 0, i32 4
  store i32 1, i32* %271, align 8
  store i32 1, i32* %12, align 4
  br label %272

272:                                              ; preds = %263, %256
  %273 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %26, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %276, label %282

276:                                              ; preds = %272
  %277 = load %struct.super_block*, %struct.super_block** %32, align 8
  %278 = load i64, i64* %21, align 8
  %279 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %26, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = call i32 @FAT_write(%struct.super_block* %277, i64 %278, i64 %280)
  br label %282

282:                                              ; preds = %276, %272
  br label %283

283:                                              ; preds = %282, %251
  %284 = load i32, i32* %18, align 4
  %285 = load i32, i32* %16, align 4
  %286 = add nsw i32 %285, %284
  store i32 %286, i32* %16, align 4
  %287 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %26, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  store i64 %288, i64* %20, align 8
  br label %289

289:                                              ; preds = %283, %196
  %290 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %291 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %294 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = ashr i32 %292, %295
  %297 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %298 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %297, i32 0, i32 5
  store i32 %296, i32* %298, align 4
  %299 = load i64, i64* %20, align 8
  %300 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %301 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %300, i32 0, i32 6
  store i64 %299, i64* %301, align 8
  %302 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %303 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %306 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = sub nsw i32 %307, 1
  %309 = and i32 %304, %308
  store i32 %309, i32* %13, align 4
  %310 = load i32, i32* %13, align 4
  %311 = load %struct.bd_info_t*, %struct.bd_info_t** %34, align 8
  %312 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = ashr i32 %310, %313
  store i32 %314, i32* %14, align 4
  %315 = load %struct.bd_info_t*, %struct.bd_info_t** %34, align 8
  %316 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %13, align 4
  %319 = and i32 %318, %317
  store i32 %319, i32* %13, align 4
  %320 = load i64, i64* %20, align 8
  %321 = call i64 @START_SECTOR(i64 %320)
  %322 = load i32, i32* %14, align 4
  %323 = sext i32 %322 to i64
  %324 = add nsw i64 %321, %323
  store i64 %324, i64* %22, align 8
  %325 = load %struct.bd_info_t*, %struct.bd_info_t** %34, align 8
  %326 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* %13, align 4
  %329 = sub nsw i32 %327, %328
  store i32 %329, i32* %24, align 4
  %330 = load i32, i32* %24, align 4
  %331 = load i32, i32* %10, align 4
  %332 = icmp sgt i32 %330, %331
  br i1 %332, label %333, label %335

333:                                              ; preds = %289
  %334 = load i32, i32* %10, align 4
  store i32 %334, i32* %24, align 4
  br label %335

335:                                              ; preds = %333, %289
  %336 = load i32, i32* %13, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %372

338:                                              ; preds = %335
  %339 = load i32, i32* %24, align 4
  %340 = load %struct.bd_info_t*, %struct.bd_info_t** %34, align 8
  %341 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 4
  %343 = icmp eq i32 %339, %342
  br i1 %343, label %344, label %372

344:                                              ; preds = %338
  %345 = load %struct.super_block*, %struct.super_block** %32, align 8
  %346 = load i64, i64* %22, align 8
  %347 = call i32 @sector_read(%struct.super_block* %345, i64 %346, %struct.buffer_head** %31, i32 0)
  %348 = load i32, i32* @FFS_SUCCESS, align 4
  %349 = icmp ne i32 %347, %348
  br i1 %349, label %350, label %351

350:                                              ; preds = %344
  br label %617

351:                                              ; preds = %344
  %352 = load %struct.buffer_head*, %struct.buffer_head** %31, align 8
  %353 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = inttoptr i64 %354 to i8*
  %356 = load i8*, i8** %9, align 8
  %357 = load i32, i32* %25, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8, i8* %356, i64 %358
  %360 = load i32, i32* %24, align 4
  %361 = call i32 @memcpy(i8* %355, i8* %359, i32 %360)
  %362 = load %struct.super_block*, %struct.super_block** %32, align 8
  %363 = load i64, i64* %22, align 8
  %364 = load %struct.buffer_head*, %struct.buffer_head** %31, align 8
  %365 = call i32 @sector_write(%struct.super_block* %362, i64 %363, %struct.buffer_head* %364, i32 0)
  %366 = load i32, i32* @FFS_SUCCESS, align 4
  %367 = icmp ne i32 %365, %366
  br i1 %367, label %368, label %371

368:                                              ; preds = %351
  %369 = load %struct.buffer_head*, %struct.buffer_head** %31, align 8
  %370 = call i32 @brelse(%struct.buffer_head* %369)
  br label %617

371:                                              ; preds = %351
  br label %425

372:                                              ; preds = %338, %335
  %373 = load i32, i32* %13, align 4
  %374 = icmp sgt i32 %373, 0
  br i1 %374, label %385, label %375

375:                                              ; preds = %372
  %376 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %377 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* %24, align 4
  %380 = add nsw i32 %378, %379
  %381 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %382 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 4
  %384 = icmp slt i32 %380, %383
  br i1 %384, label %385, label %393

385:                                              ; preds = %375, %372
  %386 = load %struct.super_block*, %struct.super_block** %32, align 8
  %387 = load i64, i64* %22, align 8
  %388 = call i32 @sector_read(%struct.super_block* %386, i64 %387, %struct.buffer_head** %31, i32 1)
  %389 = load i32, i32* @FFS_SUCCESS, align 4
  %390 = icmp ne i32 %388, %389
  br i1 %390, label %391, label %392

391:                                              ; preds = %385
  br label %617

392:                                              ; preds = %385
  br label %401

393:                                              ; preds = %375
  %394 = load %struct.super_block*, %struct.super_block** %32, align 8
  %395 = load i64, i64* %22, align 8
  %396 = call i32 @sector_read(%struct.super_block* %394, i64 %395, %struct.buffer_head** %31, i32 0)
  %397 = load i32, i32* @FFS_SUCCESS, align 4
  %398 = icmp ne i32 %396, %397
  br i1 %398, label %399, label %400

399:                                              ; preds = %393
  br label %617

400:                                              ; preds = %393
  br label %401

401:                                              ; preds = %400, %392
  %402 = load %struct.buffer_head*, %struct.buffer_head** %31, align 8
  %403 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = inttoptr i64 %404 to i8*
  %406 = load i32, i32* %13, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i8, i8* %405, i64 %407
  %409 = load i8*, i8** %9, align 8
  %410 = load i32, i32* %25, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i8, i8* %409, i64 %411
  %413 = load i32, i32* %24, align 4
  %414 = call i32 @memcpy(i8* %408, i8* %412, i32 %413)
  %415 = load %struct.super_block*, %struct.super_block** %32, align 8
  %416 = load i64, i64* %22, align 8
  %417 = load %struct.buffer_head*, %struct.buffer_head** %31, align 8
  %418 = call i32 @sector_write(%struct.super_block* %415, i64 %416, %struct.buffer_head* %417, i32 0)
  %419 = load i32, i32* @FFS_SUCCESS, align 4
  %420 = icmp ne i32 %418, %419
  br i1 %420, label %421, label %424

421:                                              ; preds = %401
  %422 = load %struct.buffer_head*, %struct.buffer_head** %31, align 8
  %423 = call i32 @brelse(%struct.buffer_head* %422)
  br label %617

424:                                              ; preds = %401
  br label %425

425:                                              ; preds = %424, %371
  %426 = load i32, i32* %24, align 4
  %427 = load i32, i32* %10, align 4
  %428 = sub nsw i32 %427, %426
  store i32 %428, i32* %10, align 4
  %429 = load i32, i32* %24, align 4
  %430 = load i32, i32* %25, align 4
  %431 = add nsw i32 %430, %429
  store i32 %431, i32* %25, align 4
  %432 = load i32, i32* %24, align 4
  %433 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %434 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 8
  %436 = add nsw i32 %435, %432
  store i32 %436, i32* %434, align 8
  %437 = load i32, i32* @ATTR_ARCHIVE, align 4
  %438 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %439 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %438, i32 0, i32 7
  %440 = load i32, i32* %439, align 8
  %441 = or i32 %440, %437
  store i32 %441, i32* %439, align 8
  %442 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %443 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %442, i32 0, i32 2
  %444 = load i32, i32* %443, align 4
  %445 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %446 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 8
  %448 = icmp slt i32 %444, %447
  br i1 %448, label %449, label %455

449:                                              ; preds = %425
  %450 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %451 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 8
  %453 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %454 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %453, i32 0, i32 2
  store i32 %452, i32* %454, align 4
  store i32 1, i32* %12, align 4
  br label %455

455:                                              ; preds = %449, %425
  br label %108

456:                                              ; preds = %234, %108
  %457 = load %struct.buffer_head*, %struct.buffer_head** %31, align 8
  %458 = call i32 @brelse(%struct.buffer_head* %457)
  %459 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %460 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %459, i32 0, i32 2
  %461 = load i64, i64* %460, align 8
  %462 = load i64, i64* @EXFAT, align 8
  %463 = icmp eq i64 %461, %462
  br i1 %463, label %464, label %479

464:                                              ; preds = %456
  %465 = load %struct.super_block*, %struct.super_block** %32, align 8
  %466 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %467 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %466, i32 0, i32 9
  %468 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %469 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %468, i32 0, i32 8
  %470 = load i32, i32* %469, align 4
  %471 = load i32, i32* @ES_ALL_ENTRIES, align 4
  %472 = call %struct.entry_set_cache_t* @get_entry_set_in_dir(%struct.super_block* %465, i32* %467, i32 %470, i32 %471, %struct.dentry_t** %28)
  store %struct.entry_set_cache_t* %472, %struct.entry_set_cache_t** %30, align 8
  %473 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %30, align 8
  %474 = icmp ne %struct.entry_set_cache_t* %473, null
  br i1 %474, label %476, label %475

475:                                              ; preds = %464
  br label %617

476:                                              ; preds = %464
  %477 = load %struct.dentry_t*, %struct.dentry_t** %28, align 8
  %478 = getelementptr inbounds %struct.dentry_t, %struct.dentry_t* %477, i64 1
  store %struct.dentry_t* %478, %struct.dentry_t** %29, align 8
  br label %492

479:                                              ; preds = %456
  %480 = load %struct.super_block*, %struct.super_block** %32, align 8
  %481 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %482 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %481, i32 0, i32 9
  %483 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %484 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %483, i32 0, i32 8
  %485 = load i32, i32* %484, align 4
  %486 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %480, i32* %482, i32 %485, i64* %23)
  store %struct.dentry_t* %486, %struct.dentry_t** %28, align 8
  %487 = load %struct.dentry_t*, %struct.dentry_t** %28, align 8
  %488 = icmp ne %struct.dentry_t* %487, null
  br i1 %488, label %490, label %489

489:                                              ; preds = %479
  br label %617

490:                                              ; preds = %479
  %491 = load %struct.dentry_t*, %struct.dentry_t** %28, align 8
  store %struct.dentry_t* %491, %struct.dentry_t** %29, align 8
  br label %492

492:                                              ; preds = %490, %476
  %493 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %494 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %493, i32 0, i32 5
  %495 = load %struct.TYPE_3__*, %struct.TYPE_3__** %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %495, i32 0, i32 8
  %497 = load i32 (%struct.dentry_t*, i32, i32)*, i32 (%struct.dentry_t*, i32, i32)** %496, align 8
  %498 = load %struct.dentry_t*, %struct.dentry_t** %28, align 8
  %499 = call i32 @tm_current(%struct.timestamp_t* %27)
  %500 = load i32, i32* @TM_MODIFY, align 4
  %501 = call i32 %497(%struct.dentry_t* %498, i32 %499, i32 %500)
  %502 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %503 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %502, i32 0, i32 5
  %504 = load %struct.TYPE_3__*, %struct.TYPE_3__** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %504, i32 0, i32 7
  %506 = load i32 (%struct.dentry_t*, i32)*, i32 (%struct.dentry_t*, i32)** %505, align 8
  %507 = load %struct.dentry_t*, %struct.dentry_t** %28, align 8
  %508 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %509 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %508, i32 0, i32 7
  %510 = load i32, i32* %509, align 8
  %511 = call i32 %506(%struct.dentry_t* %507, i32 %510)
  %512 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %513 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %512, i32 0, i32 2
  %514 = load i64, i64* %513, align 8
  %515 = load i64, i64* @EXFAT, align 8
  %516 = icmp ne i64 %514, %515
  br i1 %516, label %517, label %521

517:                                              ; preds = %492
  %518 = load %struct.super_block*, %struct.super_block** %32, align 8
  %519 = load i64, i64* %23, align 8
  %520 = call i32 @buf_modify(%struct.super_block* %518, i64 %519)
  br label %521

521:                                              ; preds = %517, %492
  %522 = load i32, i32* %12, align 4
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %604

524:                                              ; preds = %521
  %525 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %526 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %525, i32 0, i32 5
  %527 = load %struct.TYPE_3__*, %struct.TYPE_3__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %527, i32 0, i32 1
  %529 = load i32 (%struct.dentry_t*)*, i32 (%struct.dentry_t*)** %528, align 8
  %530 = load %struct.dentry_t*, %struct.dentry_t** %29, align 8
  %531 = call i32 %529(%struct.dentry_t* %530)
  %532 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %533 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %532, i32 0, i32 4
  %534 = load i32, i32* %533, align 8
  %535 = icmp ne i32 %531, %534
  br i1 %535, label %536, label %547

536:                                              ; preds = %524
  %537 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %538 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %537, i32 0, i32 5
  %539 = load %struct.TYPE_3__*, %struct.TYPE_3__** %538, align 8
  %540 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %539, i32 0, i32 6
  %541 = load i32 (%struct.dentry_t*, i32)*, i32 (%struct.dentry_t*, i32)** %540, align 8
  %542 = load %struct.dentry_t*, %struct.dentry_t** %29, align 8
  %543 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %544 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %543, i32 0, i32 4
  %545 = load i32, i32* %544, align 8
  %546 = call i32 %541(%struct.dentry_t* %542, i32 %545)
  br label %547

547:                                              ; preds = %536, %524
  %548 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %549 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %548, i32 0, i32 5
  %550 = load %struct.TYPE_3__*, %struct.TYPE_3__** %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %550, i32 0, i32 2
  %552 = load i32 (%struct.dentry_t*)*, i32 (%struct.dentry_t*)** %551, align 8
  %553 = load %struct.dentry_t*, %struct.dentry_t** %29, align 8
  %554 = call i32 %552(%struct.dentry_t* %553)
  %555 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %556 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %555, i32 0, i32 2
  %557 = load i32, i32* %556, align 4
  %558 = icmp ne i32 %554, %557
  br i1 %558, label %559, label %570

559:                                              ; preds = %547
  %560 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %561 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %560, i32 0, i32 5
  %562 = load %struct.TYPE_3__*, %struct.TYPE_3__** %561, align 8
  %563 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %562, i32 0, i32 5
  %564 = load i32 (%struct.dentry_t*, i32)*, i32 (%struct.dentry_t*, i32)** %563, align 8
  %565 = load %struct.dentry_t*, %struct.dentry_t** %29, align 8
  %566 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %567 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %566, i32 0, i32 2
  %568 = load i32, i32* %567, align 4
  %569 = call i32 %564(%struct.dentry_t* %565, i32 %568)
  br label %570

570:                                              ; preds = %559, %547
  %571 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %572 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %571, i32 0, i32 5
  %573 = load %struct.TYPE_3__*, %struct.TYPE_3__** %572, align 8
  %574 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %573, i32 0, i32 3
  %575 = load i64 (%struct.dentry_t*)*, i64 (%struct.dentry_t*)** %574, align 8
  %576 = load %struct.dentry_t*, %struct.dentry_t** %29, align 8
  %577 = call i64 %575(%struct.dentry_t* %576)
  %578 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %579 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %578, i32 0, i32 3
  %580 = load i64, i64* %579, align 8
  %581 = icmp ne i64 %577, %580
  br i1 %581, label %582, label %593

582:                                              ; preds = %570
  %583 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %584 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %583, i32 0, i32 5
  %585 = load %struct.TYPE_3__*, %struct.TYPE_3__** %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %585, i32 0, i32 4
  %587 = load i32 (%struct.dentry_t*, i64)*, i32 (%struct.dentry_t*, i64)** %586, align 8
  %588 = load %struct.dentry_t*, %struct.dentry_t** %29, align 8
  %589 = load %struct.file_id_t*, %struct.file_id_t** %8, align 8
  %590 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %589, i32 0, i32 3
  %591 = load i64, i64* %590, align 8
  %592 = call i32 %587(%struct.dentry_t* %588, i64 %591)
  br label %593

593:                                              ; preds = %582, %570
  %594 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %595 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %594, i32 0, i32 2
  %596 = load i64, i64* %595, align 8
  %597 = load i64, i64* @EXFAT, align 8
  %598 = icmp ne i64 %596, %597
  br i1 %598, label %599, label %603

599:                                              ; preds = %593
  %600 = load %struct.super_block*, %struct.super_block** %32, align 8
  %601 = load i64, i64* %23, align 8
  %602 = call i32 @buf_modify(%struct.super_block* %600, i64 %601)
  br label %603

603:                                              ; preds = %599, %593
  br label %604

604:                                              ; preds = %603, %521
  %605 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %606 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %605, i32 0, i32 2
  %607 = load i64, i64* %606, align 8
  %608 = load i64, i64* @EXFAT, align 8
  %609 = icmp eq i64 %607, %608
  br i1 %609, label %610, label %616

610:                                              ; preds = %604
  %611 = load %struct.super_block*, %struct.super_block** %32, align 8
  %612 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %30, align 8
  %613 = call i32 @update_dir_checksum_with_entry_set(%struct.super_block* %611, %struct.entry_set_cache_t* %612)
  %614 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %30, align 8
  %615 = call i32 @release_entry_set(%struct.entry_set_cache_t* %614)
  br label %616

616:                                              ; preds = %610, %604
  br label %617

617:                                              ; preds = %616, %489, %475, %421, %399, %391, %368, %350
  %618 = load i32*, i32** %11, align 8
  %619 = icmp ne i32* %618, null
  br i1 %619, label %620, label %623

620:                                              ; preds = %617
  %621 = load i32, i32* %25, align 4
  %622 = load i32*, i32** %11, align 8
  store i32 %621, i32* %622, align 4
  br label %623

623:                                              ; preds = %620, %617
  %624 = load i32, i32* %18, align 4
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %626, label %628

626:                                              ; preds = %623
  %627 = load i32, i32* @FFS_FULL, align 4
  store i32 %627, i32* %19, align 4
  br label %636

628:                                              ; preds = %623
  %629 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %630 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %629, i32 0, i32 4
  %631 = load i64, i64* %630, align 8
  %632 = icmp ne i64 %631, 0
  br i1 %632, label %633, label %635

633:                                              ; preds = %628
  %634 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %634, i32* %19, align 4
  br label %635

635:                                              ; preds = %633, %628
  br label %636

636:                                              ; preds = %635, %626
  br label %637

637:                                              ; preds = %636, %238, %190, %86, %62
  %638 = load %struct.fs_info_t*, %struct.fs_info_t** %33, align 8
  %639 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %638, i32 0, i32 3
  %640 = call i32 @up(i32* %639)
  %641 = load i32, i32* %19, align 4
  store i32 %641, i32* %6, align 4
  br label %642

642:                                              ; preds = %637, %51, %46
  %643 = load i32, i32* %6, align 4
  ret i32 %643
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @fs_set_vol_flags(%struct.super_block*, i32) #1

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local i32 @FAT_read(%struct.super_block*, i64, i64*) #1

declare dso_local i32 @exfat_chain_cont_cluster(%struct.super_block*, i64, i32) #1

declare dso_local i32 @FAT_write(%struct.super_block*, i64, i64) #1

declare dso_local i64 @START_SECTOR(i64) #1

declare dso_local i32 @sector_read(%struct.super_block*, i64, %struct.buffer_head**, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sector_write(%struct.super_block*, i64, %struct.buffer_head*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.entry_set_cache_t* @get_entry_set_in_dir(%struct.super_block*, i32*, i32, i32, %struct.dentry_t**) #1

declare dso_local %struct.dentry_t* @get_entry_in_dir(%struct.super_block*, i32*, i32, i64*) #1

declare dso_local i32 @tm_current(%struct.timestamp_t*) #1

declare dso_local i32 @buf_modify(%struct.super_block*, i64) #1

declare dso_local i32 @update_dir_checksum_with_entry_set(%struct.super_block*, %struct.entry_set_cache_t*) #1

declare dso_local i32 @release_entry_set(%struct.entry_set_cache_t*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
