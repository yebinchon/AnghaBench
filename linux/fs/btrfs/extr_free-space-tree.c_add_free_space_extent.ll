; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_add_free_space_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_add_free_space_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_block_group_cache = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.btrfs_path = type { i32*, i32* }
%struct.btrfs_key = type { i64, i64, i64 }

@BTRFS_FREE_SPACE_EXTENT_KEY = common dso_local global i64 0, align 8
@BTRFS_FREE_SPACE_INFO_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i64, i64)* @add_free_space_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_free_space_extent(%struct.btrfs_trans_handle* %0, %struct.btrfs_block_group_cache* %1, %struct.btrfs_path* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_block_group_cache*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca %struct.btrfs_key, align 8
  %13 = alloca %struct.btrfs_key, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_block_group_cache* %1, %struct.btrfs_block_group_cache** %7, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %20 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %22, align 8
  store %struct.btrfs_root* %23, %struct.btrfs_root** %11, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = add nsw i64 %24, %25
  store i64 %26, i64* %16, align 8
  store i32 1, i32* %17, align 4
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* @BTRFS_FREE_SPACE_EXTENT_KEY, align 8
  %30 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 2
  store i64 %31, i64* %32, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %35 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %5
  br label %138

40:                                               ; preds = %5
  %41 = load i64, i64* %9, align 8
  %42 = sub nsw i64 %41, 1
  %43 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  store i64 -1, i64* %44, align 8
  %45 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  store i64 -1, i64* %45, align 8
  %46 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %48 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %49 = call i32 @btrfs_search_prev_slot(%struct.btrfs_trans_handle* %46, %struct.btrfs_root* %47, %struct.btrfs_key* %12, %struct.btrfs_path* %48, i32 -1, i32 1)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %272

53:                                               ; preds = %40
  %54 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %55 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %60 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @btrfs_item_key_to_cpu(i32 %58, %struct.btrfs_key* %12, i32 %63)
  %65 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BTRFS_FREE_SPACE_EXTENT_KEY, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %53
  %70 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @BTRFS_FREE_SPACE_INFO_KEY, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @ASSERT(i32 %74)
  %76 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %77 = call i32 @btrfs_release_path(%struct.btrfs_path* %76)
  br label %138

78:                                               ; preds = %53
  %79 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %14, align 8
  %81 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %82, %84
  store i64 %85, i64* %15, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %88 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sge i64 %86, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %78
  %93 = load i64, i64* %15, align 8
  %94 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %95 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %93, %97
  br label %99

99:                                               ; preds = %92, %78
  %100 = phi i1 [ false, %78 ], [ %98, %92 ]
  %101 = zext i1 %100 to i32
  %102 = call i32 @ASSERT(i32 %101)
  %103 = load i64, i64* %14, align 8
  %104 = load i64, i64* %9, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* %9, align 8
  %109 = icmp sle i64 %107, %108
  br label %110

110:                                              ; preds = %106, %99
  %111 = phi i1 [ false, %99 ], [ %109, %106 ]
  %112 = zext i1 %111 to i32
  %113 = call i32 @ASSERT(i32 %112)
  %114 = load i64, i64* %15, align 8
  %115 = load i64, i64* %9, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %135

117:                                              ; preds = %110
  %118 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %119 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %120 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %121 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %118, %struct.btrfs_root* %119, %struct.btrfs_path* %120)
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %272

125:                                              ; preds = %117
  %126 = load i64, i64* %14, align 8
  %127 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 0
  store i64 %126, i64* %127, align 8
  %128 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, %129
  store i64 %132, i64* %130, align 8
  %133 = load i32, i32* %17, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %17, align 4
  br label %135

135:                                              ; preds = %125, %110
  %136 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %137 = call i32 @btrfs_release_path(%struct.btrfs_path* %136)
  br label %138

138:                                              ; preds = %135, %69, %39
  %139 = load i64, i64* %16, align 8
  %140 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %141 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %145 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %143, %147
  %149 = icmp eq i64 %139, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %138
  br label %256

151:                                              ; preds = %138
  %152 = load i64, i64* %16, align 8
  %153 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  store i64 %152, i64* %153, align 8
  %154 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  store i64 -1, i64* %154, align 8
  %155 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  store i64 -1, i64* %155, align 8
  %156 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %157 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %158 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %159 = call i32 @btrfs_search_prev_slot(%struct.btrfs_trans_handle* %156, %struct.btrfs_root* %157, %struct.btrfs_key* %12, %struct.btrfs_path* %158, i32 -1, i32 1)
  store i32 %159, i32* %18, align 4
  %160 = load i32, i32* %18, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %151
  br label %272

163:                                              ; preds = %151
  %164 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %165 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %170 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @btrfs_item_key_to_cpu(i32 %168, %struct.btrfs_key* %12, i32 %173)
  %175 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @BTRFS_FREE_SPACE_EXTENT_KEY, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %188

179:                                              ; preds = %163
  %180 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @BTRFS_FREE_SPACE_INFO_KEY, align 8
  %183 = icmp eq i64 %181, %182
  %184 = zext i1 %183 to i32
  %185 = call i32 @ASSERT(i32 %184)
  %186 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %187 = call i32 @btrfs_release_path(%struct.btrfs_path* %186)
  br label %256

188:                                              ; preds = %163
  %189 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %14, align 8
  %191 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %192, %194
  store i64 %195, i64* %15, align 8
  %196 = load i64, i64* %14, align 8
  %197 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %198 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp sge i64 %196, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %188
  %203 = load i64, i64* %15, align 8
  %204 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %205 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp sgt i64 %203, %207
  br label %209

209:                                              ; preds = %202, %188
  %210 = phi i1 [ false, %188 ], [ %208, %202 ]
  %211 = zext i1 %210 to i32
  %212 = call i32 @ASSERT(i32 %211)
  %213 = load i64, i64* %14, align 8
  %214 = load i64, i64* %9, align 8
  %215 = icmp slt i64 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %209
  %217 = load i64, i64* %15, align 8
  %218 = load i64, i64* %9, align 8
  %219 = icmp sle i64 %217, %218
  br i1 %219, label %230, label %220

220:                                              ; preds = %216, %209
  %221 = load i64, i64* %14, align 8
  %222 = load i64, i64* %16, align 8
  %223 = icmp sge i64 %221, %222
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = load i64, i64* %15, align 8
  %226 = load i64, i64* %16, align 8
  %227 = icmp sgt i64 %225, %226
  br label %228

228:                                              ; preds = %224, %220
  %229 = phi i1 [ false, %220 ], [ %227, %224 ]
  br label %230

230:                                              ; preds = %228, %216
  %231 = phi i1 [ true, %216 ], [ %229, %228 ]
  %232 = zext i1 %231 to i32
  %233 = call i32 @ASSERT(i32 %232)
  %234 = load i64, i64* %14, align 8
  %235 = load i64, i64* %16, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %253

237:                                              ; preds = %230
  %238 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %239 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %240 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %241 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %238, %struct.btrfs_root* %239, %struct.btrfs_path* %240)
  store i32 %241, i32* %18, align 4
  %242 = load i32, i32* %18, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %237
  br label %272

245:                                              ; preds = %237
  %246 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %249, %247
  store i64 %250, i64* %248, align 8
  %251 = load i32, i32* %17, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %17, align 4
  br label %253

253:                                              ; preds = %245, %230
  %254 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %255 = call i32 @btrfs_release_path(%struct.btrfs_path* %254)
  br label %256

256:                                              ; preds = %253, %179, %150
  %257 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %258 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %259 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %260 = call i32 @btrfs_insert_empty_item(%struct.btrfs_trans_handle* %257, %struct.btrfs_root* %258, %struct.btrfs_path* %259, %struct.btrfs_key* %13, i32 0)
  store i32 %260, i32* %18, align 4
  %261 = load i32, i32* %18, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %256
  br label %272

264:                                              ; preds = %256
  %265 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %266 = call i32 @btrfs_release_path(%struct.btrfs_path* %265)
  %267 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %268 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %269 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %270 = load i32, i32* %17, align 4
  %271 = call i32 @update_free_space_extent_count(%struct.btrfs_trans_handle* %267, %struct.btrfs_block_group_cache* %268, %struct.btrfs_path* %269, i32 %270)
  store i32 %271, i32* %18, align 4
  br label %272

272:                                              ; preds = %264, %263, %244, %162, %124, %52
  %273 = load i32, i32* %18, align 4
  ret i32 %273
}

declare dso_local i32 @btrfs_search_prev_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(i32, %struct.btrfs_key*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_del_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_insert_empty_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @update_free_space_extent_count(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
