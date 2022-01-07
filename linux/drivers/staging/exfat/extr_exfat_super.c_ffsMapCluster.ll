; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsMapCluster.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_ffsMapCluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.chain_t = type { i64, i32, i64 }
%struct.dentry_t = type { i32 }
%struct.entry_set_cache_t = type { i32 }
%struct.fs_info_t = type { i32, i64, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.super_block*, i32, %struct.chain_t*)*, i32 (%struct.dentry_t*)*, i64 (%struct.dentry_t*)*, i32 (%struct.dentry_t*, i64)*, i32 (%struct.dentry_t*, i32)* }
%struct.file_id_t = type { i32, i64, i32, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { %struct.fs_info_t }
%struct.TYPE_6__ = type { i32, %struct.file_id_t }

@FFS_SUCCESS = common dso_local global i32 0, align 4
@FFS_ERROR = common dso_local global i32 0, align 4
@FFS_MEDIAERR = common dso_local global i32 0, align 4
@VOL_DIRTY = common dso_local global i32 0, align 4
@FFS_FULL = common dso_local global i32 0, align 4
@EXFAT = common dso_local global i64 0, align 8
@ES_ALL_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64*)* @ffsMapCluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffsMapCluster(%struct.inode* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.chain_t, align 8
  %15 = alloca %struct.dentry_t*, align 8
  %16 = alloca %struct.entry_set_cache_t*, align 8
  %17 = alloca %struct.super_block*, align 8
  %18 = alloca %struct.fs_info_t*, align 8
  %19 = alloca %struct.file_id_t*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* @FFS_SUCCESS, align 4
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.entry_set_cache_t* null, %struct.entry_set_cache_t** %16, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  store %struct.super_block* %23, %struct.super_block** %17, align 8
  %24 = load %struct.super_block*, %struct.super_block** %17, align 8
  %25 = call %struct.TYPE_5__* @EXFAT_SB(%struct.super_block* %24)
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store %struct.fs_info_t* %26, %struct.fs_info_t** %18, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call %struct.TYPE_6__* @EXFAT_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store %struct.file_id_t* %29, %struct.file_id_t** %19, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @FFS_ERROR, align 4
  store i32 %33, i32* %4, align 4
  br label %392

34:                                               ; preds = %3
  %35 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %36 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %35, i32 0, i32 2
  %37 = call i32 @down(i32* %36)
  %38 = load i64, i64* %6, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %41 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %39, %42
  %44 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %45 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = call %struct.TYPE_6__* @EXFAT_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  store i64 0, i64* %8, align 8
  br label %64

52:                                               ; preds = %34
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = call %struct.TYPE_6__* @EXFAT_I(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %59 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = ashr i32 %57, %60
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %8, align 8
  br label %64

64:                                               ; preds = %52, %51
  %65 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %66 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %11, align 8
  %68 = load i64*, i64** %7, align 8
  store i64 %67, i64* %68, align 8
  %69 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %70 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %99

73:                                               ; preds = %64
  %74 = load i64, i64* %6, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %73
  %77 = load i64*, i64** %7, align 8
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @CLUSTER_32(i32 -1)
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %76
  %82 = load i64, i64* %6, align 8
  %83 = sub nsw i64 %82, 1
  %84 = load i64, i64* %11, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %11, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = call i64 @CLUSTER_32(i32 -1)
  %91 = load i64*, i64** %7, align 8
  store i64 %90, i64* %91, align 8
  br label %97

92:                                               ; preds = %81
  %93 = load i64, i64* %6, align 8
  %94 = load i64*, i64** %7, align 8
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %93
  store i64 %96, i64* %94, align 8
  br label %97

97:                                               ; preds = %92, %89
  br label %98

98:                                               ; preds = %97, %76, %73
  br label %149

99:                                               ; preds = %64
  %100 = load i64, i64* %6, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %99
  %103 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %104 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %102
  %108 = load i64, i64* %6, align 8
  %109 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %110 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp sge i64 %108, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %115 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %6, align 8
  %118 = sub nsw i64 %117, %116
  store i64 %118, i64* %6, align 8
  %119 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %120 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = load i64*, i64** %7, align 8
  store i64 %121, i64* %122, align 8
  br label %123

123:                                              ; preds = %113, %107, %102, %99
  br label %124

124:                                              ; preds = %145, %123
  %125 = load i64, i64* %6, align 8
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i64*, i64** %7, align 8
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @CLUSTER_32(i32 -1)
  %131 = icmp ne i64 %129, %130
  br label %132

132:                                              ; preds = %127, %124
  %133 = phi i1 [ false, %124 ], [ %131, %127 ]
  br i1 %133, label %134, label %148

134:                                              ; preds = %132
  %135 = load i64*, i64** %7, align 8
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %11, align 8
  %137 = load %struct.super_block*, %struct.super_block** %17, align 8
  %138 = load i64*, i64** %7, align 8
  %139 = load i64, i64* %138, align 8
  %140 = load i64*, i64** %7, align 8
  %141 = call i32 @FAT_read(%struct.super_block* %137, i64 %139, i64* %140)
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %145

143:                                              ; preds = %134
  %144 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %144, i32* %12, align 4
  br label %387

145:                                              ; preds = %134
  %146 = load i64, i64* %6, align 8
  %147 = add nsw i64 %146, -1
  store i64 %147, i64* %6, align 8
  br label %124

148:                                              ; preds = %132
  br label %149

149:                                              ; preds = %148, %98
  %150 = load i64*, i64** %7, align 8
  %151 = load i64, i64* %150, align 8
  %152 = call i64 @CLUSTER_32(i32 -1)
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %365

154:                                              ; preds = %149
  %155 = load %struct.super_block*, %struct.super_block** %17, align 8
  %156 = load i32, i32* @VOL_DIRTY, align 4
  %157 = call i32 @fs_set_vol_flags(%struct.super_block* %155, i32 %156)
  %158 = load i64, i64* %11, align 8
  %159 = call i64 @CLUSTER_32(i32 -1)
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = call i64 @CLUSTER_32(i32 -1)
  br label %166

163:                                              ; preds = %154
  %164 = load i64, i64* %11, align 8
  %165 = add nsw i64 %164, 1
  br label %166

166:                                              ; preds = %163, %161
  %167 = phi i64 [ %162, %161 ], [ %165, %163 ]
  %168 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 0
  store i64 %167, i64* %168, align 8
  %169 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 2
  store i64 0, i64* %169, align 8
  %170 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %171 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 1
  store i32 %172, i32* %173, align 8
  %174 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %175 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %174, i32 0, i32 4
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i64 (%struct.super_block*, i32, %struct.chain_t*)*, i64 (%struct.super_block*, i32, %struct.chain_t*)** %177, align 8
  %179 = load %struct.super_block*, %struct.super_block** %17, align 8
  %180 = call i64 %178(%struct.super_block* %179, i32 1, %struct.chain_t* %14)
  store i64 %180, i64* %9, align 8
  %181 = load i64, i64* %9, align 8
  %182 = icmp slt i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %166
  %184 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %184, i32* %12, align 4
  br label %387

185:                                              ; preds = %166
  %186 = load i64, i64* %9, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = load i32, i32* @FFS_FULL, align 4
  store i32 %189, i32* %12, align 4
  br label %387

190:                                              ; preds = %185
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %11, align 8
  %193 = call i64 @CLUSTER_32(i32 -1)
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %207

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %201 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %200, i32 0, i32 2
  store i32 1, i32* %201, align 8
  br label %202

202:                                              ; preds = %199, %195
  %203 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %206 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %205, i32 0, i32 1
  store i64 %204, i64* %206, align 8
  store i32 1, i32* %10, align 4
  br label %234

207:                                              ; preds = %191
  %208 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %211 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %209, %212
  br i1 %213, label %214, label %223

214:                                              ; preds = %207
  %215 = load %struct.super_block*, %struct.super_block** %17, align 8
  %216 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %217 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* %8, align 8
  %220 = call i32 @exfat_chain_cont_cluster(%struct.super_block* %215, i64 %218, i64 %219)
  %221 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %222 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %221, i32 0, i32 2
  store i32 1, i32* %222, align 8
  store i32 1, i32* %10, align 4
  br label %223

223:                                              ; preds = %214, %207
  %224 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %227, label %233

227:                                              ; preds = %223
  %228 = load %struct.super_block*, %struct.super_block** %17, align 8
  %229 = load i64, i64* %11, align 8
  %230 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @FAT_write(%struct.super_block* %228, i64 %229, i64 %231)
  br label %233

233:                                              ; preds = %227, %223
  br label %234

234:                                              ; preds = %233, %202
  %235 = load i64, i64* %9, align 8
  %236 = load i64, i64* %8, align 8
  %237 = add nsw i64 %236, %235
  store i64 %237, i64* %8, align 8
  %238 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64*, i64** %7, align 8
  store i64 %239, i64* %240, align 8
  %241 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %242 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @EXFAT, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %262

246:                                              ; preds = %234
  %247 = load %struct.super_block*, %struct.super_block** %17, align 8
  %248 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %249 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %248, i32 0, i32 6
  %250 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %251 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @ES_ALL_ENTRIES, align 4
  %254 = call %struct.entry_set_cache_t* @get_entry_set_in_dir(%struct.super_block* %247, i32* %249, i32 %252, i32 %253, %struct.dentry_t** %15)
  store %struct.entry_set_cache_t* %254, %struct.entry_set_cache_t** %16, align 8
  %255 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %16, align 8
  %256 = icmp ne %struct.entry_set_cache_t* %255, null
  br i1 %256, label %259, label %257

257:                                              ; preds = %246
  %258 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %258, i32* %12, align 4
  br label %387

259:                                              ; preds = %246
  %260 = load %struct.dentry_t*, %struct.dentry_t** %15, align 8
  %261 = getelementptr inbounds %struct.dentry_t, %struct.dentry_t* %260, i32 1
  store %struct.dentry_t* %261, %struct.dentry_t** %15, align 8
  br label %262

262:                                              ; preds = %259, %234
  %263 = load i32, i32* %10, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %341

265:                                              ; preds = %262
  %266 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %267 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @EXFAT, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %284

271:                                              ; preds = %265
  %272 = load %struct.super_block*, %struct.super_block** %17, align 8
  %273 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %274 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %273, i32 0, i32 6
  %275 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %276 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 8
  %278 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %272, i32* %274, i32 %277, i32* %13)
  store %struct.dentry_t* %278, %struct.dentry_t** %15, align 8
  %279 = load %struct.dentry_t*, %struct.dentry_t** %15, align 8
  %280 = icmp ne %struct.dentry_t* %279, null
  br i1 %280, label %283, label %281

281:                                              ; preds = %271
  %282 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %282, i32* %12, align 4
  br label %387

283:                                              ; preds = %271
  br label %284

284:                                              ; preds = %283, %265
  %285 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %286 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %285, i32 0, i32 4
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 1
  %289 = load i32 (%struct.dentry_t*)*, i32 (%struct.dentry_t*)** %288, align 8
  %290 = load %struct.dentry_t*, %struct.dentry_t** %15, align 8
  %291 = call i32 %289(%struct.dentry_t* %290)
  %292 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %293 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %291, %294
  br i1 %295, label %296, label %307

296:                                              ; preds = %284
  %297 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %298 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %297, i32 0, i32 4
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 4
  %301 = load i32 (%struct.dentry_t*, i32)*, i32 (%struct.dentry_t*, i32)** %300, align 8
  %302 = load %struct.dentry_t*, %struct.dentry_t** %15, align 8
  %303 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %304 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = call i32 %301(%struct.dentry_t* %302, i32 %305)
  br label %307

307:                                              ; preds = %296, %284
  %308 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %309 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %308, i32 0, i32 4
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 2
  %312 = load i64 (%struct.dentry_t*)*, i64 (%struct.dentry_t*)** %311, align 8
  %313 = load %struct.dentry_t*, %struct.dentry_t** %15, align 8
  %314 = call i64 %312(%struct.dentry_t* %313)
  %315 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %316 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %314, %317
  br i1 %318, label %319, label %330

319:                                              ; preds = %307
  %320 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %321 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %320, i32 0, i32 4
  %322 = load %struct.TYPE_4__*, %struct.TYPE_4__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 3
  %324 = load i32 (%struct.dentry_t*, i64)*, i32 (%struct.dentry_t*, i64)** %323, align 8
  %325 = load %struct.dentry_t*, %struct.dentry_t** %15, align 8
  %326 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %327 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = call i32 %324(%struct.dentry_t* %325, i64 %328)
  br label %330

330:                                              ; preds = %319, %307
  %331 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %332 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @EXFAT, align 8
  %335 = icmp ne i64 %333, %334
  br i1 %335, label %336, label %340

336:                                              ; preds = %330
  %337 = load %struct.super_block*, %struct.super_block** %17, align 8
  %338 = load i32, i32* %13, align 4
  %339 = call i32 @buf_modify(%struct.super_block* %337, i32 %338)
  br label %340

340:                                              ; preds = %336, %330
  br label %341

341:                                              ; preds = %340, %262
  %342 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %343 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %342, i32 0, i32 1
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @EXFAT, align 8
  %346 = icmp eq i64 %344, %345
  br i1 %346, label %347, label %353

347:                                              ; preds = %341
  %348 = load %struct.super_block*, %struct.super_block** %17, align 8
  %349 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %16, align 8
  %350 = call i32 @update_dir_checksum_with_entry_set(%struct.super_block* %348, %struct.entry_set_cache_t* %349)
  %351 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %16, align 8
  %352 = call i32 @release_entry_set(%struct.entry_set_cache_t* %351)
  br label %353

353:                                              ; preds = %347, %341
  %354 = load i64, i64* %9, align 8
  %355 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %356 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = sub nsw i32 %357, 9
  %359 = zext i32 %358 to i64
  %360 = shl i64 %354, %359
  %361 = load %struct.inode*, %struct.inode** %5, align 8
  %362 = getelementptr inbounds %struct.inode, %struct.inode* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = add nsw i64 %363, %360
  store i64 %364, i64* %362, align 8
  br label %365

365:                                              ; preds = %353, %149
  %366 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %367 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %370 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = ashr i32 %368, %371
  %373 = sext i32 %372 to i64
  %374 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %375 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %374, i32 0, i32 3
  store i64 %373, i64* %375, align 8
  %376 = load i64*, i64** %7, align 8
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.file_id_t*, %struct.file_id_t** %19, align 8
  %379 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %378, i32 0, i32 4
  store i64 %377, i64* %379, align 8
  %380 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %381 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %380, i32 0, i32 3
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %365
  %385 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %385, i32* %12, align 4
  br label %386

386:                                              ; preds = %384, %365
  br label %387

387:                                              ; preds = %386, %281, %257, %188, %183, %143
  %388 = load %struct.fs_info_t*, %struct.fs_info_t** %18, align 8
  %389 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %388, i32 0, i32 2
  %390 = call i32 @up(i32* %389)
  %391 = load i32, i32* %12, align 4
  store i32 %391, i32* %4, align 4
  br label %392

392:                                              ; preds = %387, %32
  %393 = load i32, i32* %4, align 4
  ret i32 %393
}

declare dso_local %struct.TYPE_5__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_6__* @EXFAT_I(%struct.inode*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local i32 @FAT_read(%struct.super_block*, i64, i64*) #1

declare dso_local i32 @fs_set_vol_flags(%struct.super_block*, i32) #1

declare dso_local i32 @exfat_chain_cont_cluster(%struct.super_block*, i64, i64) #1

declare dso_local i32 @FAT_write(%struct.super_block*, i64, i64) #1

declare dso_local %struct.entry_set_cache_t* @get_entry_set_in_dir(%struct.super_block*, i32*, i32, i32, %struct.dentry_t**) #1

declare dso_local %struct.dentry_t* @get_entry_in_dir(%struct.super_block*, i32*, i32, i32*) #1

declare dso_local i32 @buf_modify(%struct.super_block*, i32) #1

declare dso_local i32 @update_dir_checksum_with_entry_set(%struct.super_block*, %struct.entry_set_cache_t*) #1

declare dso_local i32 @release_entry_set(%struct.entry_set_cache_t*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
