; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_update_block_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_update_block_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.TYPE_5__*, i32, %struct.btrfs_fs_info* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.btrfs_fs_info = type { i32, i32, i32 }
%struct.btrfs_block_group_cache = type { i64, i64, i64, i64, i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@ENOENT = common dso_local global i32 0, align 4
@BTRFS_CACHE_NO = common dso_local global i64 0, align 8
@SPACE_CACHE = common dso_local global i32 0, align 4
@BTRFS_DC_CLEAR = common dso_local global i64 0, align 8
@BTRFS_TOTAL_BYTES_PINNED_BATCH = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_update_block_group(%struct.btrfs_trans_handle* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca %struct.btrfs_block_group_cache*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %17 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %16, i32 0, i32 2
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %17, align 8
  store %struct.btrfs_fs_info* %18, %struct.btrfs_fs_info** %9, align 8
  store %struct.btrfs_block_group_cache* null, %struct.btrfs_block_group_cache** %10, align 8
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %11, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %21 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %20, i32 0, i32 1
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @btrfs_super_bytes_used(i32 %25)
  store i64 %26, i64* %12, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %12, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %12, align 8
  br label %37

33:                                               ; preds = %4
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %12, align 8
  %36 = sub nsw i64 %35, %34
  store i64 %36, i64* %12, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %39 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @btrfs_set_super_bytes_used(i32 %40, i64 %41)
  %43 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %44 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock(i32* %44)
  br label %46

46:                                               ; preds = %271, %37
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %280

49:                                               ; preds = %46
  %50 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(%struct.btrfs_fs_info* %50, i64 %51)
  store %struct.btrfs_block_group_cache* %52, %struct.btrfs_block_group_cache** %10, align 8
  %53 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %54 = icmp ne %struct.btrfs_block_group_cache* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %15, align 4
  br label %280

58:                                               ; preds = %49
  %59 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %60 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @btrfs_bg_type_to_factor(i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %58
  %66 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %67 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BTRFS_CACHE_NO, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %73 = call i32 @btrfs_cache_block_group(%struct.btrfs_block_group_cache* %72, i32 1)
  br label %74

74:                                               ; preds = %71, %65, %58
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %77 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %75, %79
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %83 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %82, i32 0, i32 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %81, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @WARN_ON(i32 %87)
  %89 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %90 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %89, i32 0, i32 5
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 4
  %93 = call i32 @spin_lock(i32* %92)
  %94 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %95 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %94, i32 0, i32 6
  %96 = call i32 @spin_lock(i32* %95)
  %97 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %98 = load i32, i32* @SPACE_CACHE, align 4
  %99 = call i64 @btrfs_test_opt(%struct.btrfs_fs_info* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %74
  %102 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %103 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @BTRFS_DC_CLEAR, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i64, i64* @BTRFS_DC_CLEAR, align 8
  %109 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %110 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %107, %101, %74
  %112 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %113 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %112, i32 0, i32 7
  %114 = call i64 @btrfs_block_group_used(i32* %113)
  store i64 %114, i64* %12, align 8
  %115 = load i64, i64* %11, align 8
  %116 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %117 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %116, i32 0, i32 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %13, align 8
  %121 = sub nsw i64 %119, %120
  %122 = call i64 @min(i64 %115, i64 %121)
  store i64 %122, i64* %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %170

125:                                              ; preds = %111
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* %12, align 8
  %128 = add nsw i64 %127, %126
  store i64 %128, i64* %12, align 8
  %129 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %130 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %129, i32 0, i32 7
  %131 = load i64, i64* %12, align 8
  %132 = call i32 @btrfs_set_block_group_used(i32* %130, i64 %131)
  %133 = load i64, i64* %7, align 8
  %134 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %135 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %136, %133
  store i64 %137, i64* %135, align 8
  %138 = load i64, i64* %7, align 8
  %139 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %140 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %139, i32 0, i32 5
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %143, %138
  store i64 %144, i64* %142, align 8
  %145 = load i64, i64* %7, align 8
  %146 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %147 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %146, i32 0, i32 5
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, %145
  store i64 %151, i64* %149, align 8
  %152 = load i64, i64* %7, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = mul nsw i64 %152, %154
  %156 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %157 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %156, i32 0, i32 5
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, %155
  store i64 %161, i64* %159, align 8
  %162 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %163 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %162, i32 0, i32 6
  %164 = call i32 @spin_unlock(i32* %163)
  %165 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %166 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %165, i32 0, i32 5
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 4
  %169 = call i32 @spin_unlock(i32* %168)
  br label %233

170:                                              ; preds = %111
  %171 = load i64, i64* %7, align 8
  %172 = load i64, i64* %12, align 8
  %173 = sub nsw i64 %172, %171
  store i64 %173, i64* %12, align 8
  %174 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %175 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %174, i32 0, i32 7
  %176 = load i64, i64* %12, align 8
  %177 = call i32 @btrfs_set_block_group_used(i32* %175, i64 %176)
  %178 = load i64, i64* %7, align 8
  %179 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %180 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, %178
  store i64 %182, i64* %180, align 8
  %183 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %184 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %185 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %184, i32 0, i32 5
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = load i64, i64* %7, align 8
  %188 = call i32 @btrfs_space_info_update_bytes_pinned(%struct.btrfs_fs_info* %183, %struct.TYPE_6__* %186, i64 %187)
  %189 = load i64, i64* %7, align 8
  %190 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %191 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %190, i32 0, i32 5
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = sub nsw i64 %194, %189
  store i64 %195, i64* %193, align 8
  %196 = load i64, i64* %7, align 8
  %197 = load i32, i32* %14, align 4
  %198 = sext i32 %197 to i64
  %199 = mul nsw i64 %196, %198
  %200 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %201 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %200, i32 0, i32 5
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = sub nsw i64 %204, %199
  store i64 %205, i64* %203, align 8
  %206 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %207 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %206, i32 0, i32 6
  %208 = call i32 @spin_unlock(i32* %207)
  %209 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %210 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %209, i32 0, i32 5
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 4
  %213 = call i32 @spin_unlock(i32* %212)
  %214 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %215 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %214, i32 0, i32 5
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 3
  %218 = load i64, i64* %7, align 8
  %219 = load i32, i32* @BTRFS_TOTAL_BYTES_PINNED_BATCH, align 4
  %220 = call i32 @percpu_counter_add_batch(i32* %217, i64 %218, i32 %219)
  %221 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %222 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i64, i64* %6, align 8
  %225 = load i64, i64* %6, align 8
  %226 = load i64, i64* %7, align 8
  %227 = add nsw i64 %225, %226
  %228 = sub nsw i64 %227, 1
  %229 = load i32, i32* @GFP_NOFS, align 4
  %230 = load i32, i32* @__GFP_NOFAIL, align 4
  %231 = or i32 %229, %230
  %232 = call i32 @set_extent_dirty(i32 %223, i64 %224, i64 %228, i32 %231)
  br label %233

233:                                              ; preds = %170, %125
  %234 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %235 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %234, i32 0, i32 0
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = call i32 @spin_lock(i32* %237)
  %239 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %240 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %239, i32 0, i32 4
  %241 = call i64 @list_empty(i32* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %257

243:                                              ; preds = %233
  %244 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %245 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %244, i32 0, i32 4
  %246 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %247 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %246, i32 0, i32 0
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 1
  %250 = call i32 @list_add_tail(i32* %245, i32* %249)
  %251 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %252 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 8
  %255 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %256 = call i32 @btrfs_get_block_group(%struct.btrfs_block_group_cache* %255)
  br label %257

257:                                              ; preds = %243, %233
  %258 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %259 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %258, i32 0, i32 0
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 0
  %262 = call i32 @spin_unlock(i32* %261)
  %263 = load i32, i32* %8, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %271, label %265

265:                                              ; preds = %257
  %266 = load i64, i64* %12, align 8
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %265
  %269 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %270 = call i32 @btrfs_mark_bg_unused(%struct.btrfs_block_group_cache* %269)
  br label %271

271:                                              ; preds = %268, %265, %257
  %272 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %10, align 8
  %273 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %272)
  %274 = load i64, i64* %7, align 8
  %275 = load i64, i64* %11, align 8
  %276 = sub nsw i64 %275, %274
  store i64 %276, i64* %11, align 8
  %277 = load i64, i64* %7, align 8
  %278 = load i64, i64* %6, align 8
  %279 = add nsw i64 %278, %277
  store i64 %279, i64* %6, align 8
  br label %46

280:                                              ; preds = %55, %46
  %281 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %282 = call i32 @btrfs_update_delayed_refs_rsv(%struct.btrfs_trans_handle* %281)
  %283 = load i32, i32* %15, align 4
  ret i32 %283
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @btrfs_super_bytes_used(i32) #1

declare dso_local i32 @btrfs_set_super_bytes_used(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(%struct.btrfs_fs_info*, i64) #1

declare dso_local i32 @btrfs_bg_type_to_factor(i32) #1

declare dso_local i32 @btrfs_cache_block_group(%struct.btrfs_block_group_cache*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @btrfs_test_opt(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @btrfs_block_group_used(i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @btrfs_set_block_group_used(i32*, i64) #1

declare dso_local i32 @btrfs_space_info_update_bytes_pinned(%struct.btrfs_fs_info*, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @percpu_counter_add_batch(i32*, i64, i32) #1

declare dso_local i32 @set_extent_dirty(i32, i64, i64, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @btrfs_get_block_group(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @btrfs_mark_bg_unused(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @btrfs_update_delayed_refs_rsv(%struct.btrfs_trans_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
