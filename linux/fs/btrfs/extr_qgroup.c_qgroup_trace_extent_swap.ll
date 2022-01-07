; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_qgroup_trace_extent_swap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_qgroup_trace_extent_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer**, i64* }
%struct.btrfs_key = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BTRFS_READ_LOCK_BLOCKING = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.extent_buffer*, %struct.btrfs_path*, i32, i32, i32)* @qgroup_trace_extent_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qgroup_trace_extent_swap(%struct.btrfs_trans_handle* %0, %struct.extent_buffer* %1, %struct.btrfs_path* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfs_key, align 4
  %15 = alloca %struct.btrfs_path*, align 8
  %16 = alloca %struct.btrfs_fs_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.btrfs_key, align 4
  %21 = alloca %struct.btrfs_key, align 4
  %22 = alloca %struct.btrfs_key, align 4
  %23 = alloca %struct.extent_buffer*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %8, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %9, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %27 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %28 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %27, i32 0, i32 0
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %28, align 8
  store %struct.btrfs_fs_info* %29, %struct.btrfs_fs_info** %16, align 8
  %30 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %31 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp sgt i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %40 = call i32 @btrfs_header_level(%struct.extent_buffer* %39)
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %6
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %333

46:                                               ; preds = %6
  %47 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %47, %struct.btrfs_path** %15, align 8
  %48 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %49 = icmp ne %struct.btrfs_path* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %19, align 4
  br label %329

53:                                               ; preds = %46
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %58 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %57, i32 0, i32 1
  %59 = load %struct.extent_buffer**, %struct.extent_buffer*** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %59, i64 %61
  %63 = load %struct.extent_buffer*, %struct.extent_buffer** %62, align 8
  %64 = call i32 @btrfs_node_key_to_cpu(%struct.extent_buffer* %63, %struct.btrfs_key* %14, i32 0)
  br label %74

65:                                               ; preds = %53
  %66 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %67 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %66, i32 0, i32 1
  %68 = load %struct.extent_buffer**, %struct.extent_buffer*** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %68, i64 %70
  %72 = load %struct.extent_buffer*, %struct.extent_buffer** %71, align 8
  %73 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %72, %struct.btrfs_key* %14, i32 0)
  br label %74

74:                                               ; preds = %65, %56
  %75 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %76 = call i32 @extent_buffer_get(%struct.extent_buffer* %75)
  %77 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %78 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %79 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %78, i32 0, i32 1
  %80 = load %struct.extent_buffer**, %struct.extent_buffer*** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %80, i64 %82
  store %struct.extent_buffer* %77, %struct.extent_buffer** %83, align 8
  %84 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %85 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %92 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %90, i32* %96, align 4
  %97 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %98 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %97, i32 0, i32 2
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %266, %74
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %269

107:                                              ; preds = %103
  %108 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %109 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %108, i32 0, i32 1
  %110 = load %struct.extent_buffer**, %struct.extent_buffer*** %109, align 8
  %111 = load i32, i32* %18, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %110, i64 %112
  %114 = load %struct.extent_buffer*, %struct.extent_buffer** %113, align 8
  %115 = icmp eq %struct.extent_buffer* %114, null
  br i1 %115, label %116, label %182

116:                                              ; preds = %107
  %117 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %118 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %117, i32 0, i32 1
  %119 = load %struct.extent_buffer**, %struct.extent_buffer*** %118, align 8
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %119, i64 %122
  %124 = load %struct.extent_buffer*, %struct.extent_buffer** %123, align 8
  store %struct.extent_buffer* %124, %struct.extent_buffer** %23, align 8
  %125 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %126 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %24, align 4
  %133 = load %struct.extent_buffer*, %struct.extent_buffer** %23, align 8
  %134 = load i32, i32* %24, align 4
  %135 = call i32 @btrfs_node_blockptr(%struct.extent_buffer* %133, i32 %134)
  store i32 %135, i32* %26, align 4
  %136 = load %struct.extent_buffer*, %struct.extent_buffer** %23, align 8
  %137 = load i32, i32* %24, align 4
  %138 = call i32 @btrfs_node_ptr_generation(%struct.extent_buffer* %136, i32 %137)
  store i32 %138, i32* %25, align 4
  %139 = load %struct.extent_buffer*, %struct.extent_buffer** %23, align 8
  %140 = load i32, i32* %24, align 4
  %141 = call i32 @btrfs_node_key_to_cpu(%struct.extent_buffer* %139, %struct.btrfs_key* %22, i32 %140)
  %142 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %143 = load i32, i32* %26, align 4
  %144 = load i32, i32* %25, align 4
  %145 = load i32, i32* %18, align 4
  %146 = call %struct.extent_buffer* @read_tree_block(%struct.btrfs_fs_info* %142, i32 %143, i32 %144, i32 %145, %struct.btrfs_key* %22)
  store %struct.extent_buffer* %146, %struct.extent_buffer** %23, align 8
  %147 = load %struct.extent_buffer*, %struct.extent_buffer** %23, align 8
  %148 = call i64 @IS_ERR(%struct.extent_buffer* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %116
  %151 = load %struct.extent_buffer*, %struct.extent_buffer** %23, align 8
  %152 = call i32 @PTR_ERR(%struct.extent_buffer* %151)
  store i32 %152, i32* %19, align 4
  br label %329

153:                                              ; preds = %116
  %154 = load %struct.extent_buffer*, %struct.extent_buffer** %23, align 8
  %155 = call i32 @extent_buffer_uptodate(%struct.extent_buffer* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %153
  %158 = load %struct.extent_buffer*, %struct.extent_buffer** %23, align 8
  %159 = call i32 @free_extent_buffer(%struct.extent_buffer* %158)
  %160 = load i32, i32* @EIO, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %19, align 4
  br label %329

162:                                              ; preds = %153
  br label %163

163:                                              ; preds = %162
  %164 = load %struct.extent_buffer*, %struct.extent_buffer** %23, align 8
  %165 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %166 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %165, i32 0, i32 1
  %167 = load %struct.extent_buffer**, %struct.extent_buffer*** %166, align 8
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %167, i64 %169
  store %struct.extent_buffer* %164, %struct.extent_buffer** %170, align 8
  %171 = load %struct.extent_buffer*, %struct.extent_buffer** %23, align 8
  %172 = call i32 @btrfs_tree_read_lock(%struct.extent_buffer* %171)
  %173 = load %struct.extent_buffer*, %struct.extent_buffer** %23, align 8
  %174 = call i32 @btrfs_set_lock_blocking_read(%struct.extent_buffer* %173)
  %175 = load i64, i64* @BTRFS_READ_LOCK_BLOCKING, align 8
  %176 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %177 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %176, i32 0, i32 2
  %178 = load i64*, i64** %177, align 8
  %179 = load i32, i32* %18, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  store i64 %175, i64* %181, align 8
  br label %182

182:                                              ; preds = %163, %107
  %183 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %184 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %18, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %191 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %18, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 %189, i32* %195, align 4
  %196 = load i32, i32* %18, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %229

198:                                              ; preds = %182
  %199 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %200 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %199, i32 0, i32 1
  %201 = load %struct.extent_buffer**, %struct.extent_buffer*** %200, align 8
  %202 = load i32, i32* %18, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %201, i64 %203
  %205 = load %struct.extent_buffer*, %struct.extent_buffer** %204, align 8
  %206 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %207 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %18, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @btrfs_node_key_to_cpu(%struct.extent_buffer* %205, %struct.btrfs_key* %21, i32 %212)
  %214 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %215 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %214, i32 0, i32 1
  %216 = load %struct.extent_buffer**, %struct.extent_buffer*** %215, align 8
  %217 = load i32, i32* %18, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %216, i64 %218
  %220 = load %struct.extent_buffer*, %struct.extent_buffer** %219, align 8
  %221 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %222 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %18, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @btrfs_node_key_to_cpu(%struct.extent_buffer* %220, %struct.btrfs_key* %20, i32 %227)
  br label %260

229:                                              ; preds = %182
  %230 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %231 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %230, i32 0, i32 1
  %232 = load %struct.extent_buffer**, %struct.extent_buffer*** %231, align 8
  %233 = load i32, i32* %18, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %232, i64 %234
  %236 = load %struct.extent_buffer*, %struct.extent_buffer** %235, align 8
  %237 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %238 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %18, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %236, %struct.btrfs_key* %21, i32 %243)
  %245 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %246 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %245, i32 0, i32 1
  %247 = load %struct.extent_buffer**, %struct.extent_buffer*** %246, align 8
  %248 = load i32, i32* %18, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %247, i64 %249
  %251 = load %struct.extent_buffer*, %struct.extent_buffer** %250, align 8
  %252 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %253 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %18, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %251, %struct.btrfs_key* %20, i32 %258)
  br label %260

260:                                              ; preds = %229, %198
  %261 = call i64 @btrfs_comp_cpu_keys(%struct.btrfs_key* %21, %struct.btrfs_key* %20)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = load i32, i32* @ENOENT, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %19, align 4
  br label %329

266:                                              ; preds = %260
  %267 = load i32, i32* %18, align 4
  %268 = add nsw i32 %267, -1
  store i32 %268, i32* %18, align 4
  br label %103

269:                                              ; preds = %103
  %270 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %271 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %272 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %271, i32 0, i32 1
  %273 = load %struct.extent_buffer**, %struct.extent_buffer*** %272, align 8
  %274 = load i32, i32* %11, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %273, i64 %275
  %277 = load %struct.extent_buffer*, %struct.extent_buffer** %276, align 8
  %278 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %17, align 4
  %281 = load i32, i32* @GFP_NOFS, align 4
  %282 = call i32 @btrfs_qgroup_trace_extent(%struct.btrfs_trans_handle* %270, i32 %279, i32 %280, i32 %281)
  store i32 %282, i32* %19, align 4
  %283 = load i32, i32* %19, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %269
  br label %329

286:                                              ; preds = %269
  %287 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %288 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %289 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %288, i32 0, i32 1
  %290 = load %struct.extent_buffer**, %struct.extent_buffer*** %289, align 8
  %291 = load i32, i32* %11, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %290, i64 %292
  %294 = load %struct.extent_buffer*, %struct.extent_buffer** %293, align 8
  %295 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %17, align 4
  %298 = load i32, i32* @GFP_NOFS, align 4
  %299 = call i32 @btrfs_qgroup_trace_extent(%struct.btrfs_trans_handle* %287, i32 %296, i32 %297, i32 %298)
  store i32 %299, i32* %19, align 4
  %300 = load i32, i32* %19, align 4
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %286
  br label %329

303:                                              ; preds = %286
  %304 = load i32, i32* %11, align 4
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %328

306:                                              ; preds = %303
  %307 = load i32, i32* %13, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %328

309:                                              ; preds = %306
  %310 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %311 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %312 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %311, i32 0, i32 1
  %313 = load %struct.extent_buffer**, %struct.extent_buffer*** %312, align 8
  %314 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %313, i64 0
  %315 = load %struct.extent_buffer*, %struct.extent_buffer** %314, align 8
  %316 = call i32 @btrfs_qgroup_trace_leaf_items(%struct.btrfs_trans_handle* %310, %struct.extent_buffer* %315)
  store i32 %316, i32* %19, align 4
  %317 = load i32, i32* %19, align 4
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %309
  br label %329

320:                                              ; preds = %309
  %321 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %322 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %323 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %322, i32 0, i32 1
  %324 = load %struct.extent_buffer**, %struct.extent_buffer*** %323, align 8
  %325 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %324, i64 0
  %326 = load %struct.extent_buffer*, %struct.extent_buffer** %325, align 8
  %327 = call i32 @btrfs_qgroup_trace_leaf_items(%struct.btrfs_trans_handle* %321, %struct.extent_buffer* %326)
  store i32 %327, i32* %19, align 4
  br label %328

328:                                              ; preds = %320, %306, %303
  br label %329

329:                                              ; preds = %328, %319, %302, %285, %263, %157, %150, %50
  %330 = load %struct.btrfs_path*, %struct.btrfs_path** %15, align 8
  %331 = call i32 @btrfs_free_path(%struct.btrfs_path* %330)
  %332 = load i32, i32* %19, align 4
  store i32 %332, i32* %7, align 4
  br label %333

333:                                              ; preds = %329, %43
  %334 = load i32, i32* %7, align 4
  ret i32 %334
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_node_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @extent_buffer_get(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_node_blockptr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_node_ptr_generation(%struct.extent_buffer*, i32) #1

declare dso_local %struct.extent_buffer* @read_tree_block(%struct.btrfs_fs_info*, i32, i32, i32, %struct.btrfs_key*) #1

declare dso_local i64 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @PTR_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @extent_buffer_uptodate(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_read_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_lock_blocking_read(%struct.extent_buffer*) #1

declare dso_local i64 @btrfs_comp_cpu_keys(%struct.btrfs_key*, %struct.btrfs_key*) #1

declare dso_local i32 @btrfs_qgroup_trace_extent(%struct.btrfs_trans_handle*, i32, i32, i32) #1

declare dso_local i32 @btrfs_qgroup_trace_leaf_items(%struct.btrfs_trans_handle*, %struct.extent_buffer*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
