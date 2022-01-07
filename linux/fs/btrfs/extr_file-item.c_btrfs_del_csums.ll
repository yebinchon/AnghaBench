; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_file-item.c_btrfs_del_csums.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_file-item.c_btrfs_del_csums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_fs_info = type { %struct.TYPE_2__*, i32, %struct.btrfs_root* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32, i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_EXTENT_CSUM_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_EXTENT_CSUM_KEY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_del_csums(%struct.btrfs_trans_handle* %0, %struct.btrfs_fs_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca %struct.btrfs_path*, align 8
  %12 = alloca %struct.btrfs_key, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.extent_buffer*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.btrfs_key, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_fs_info* %1, %struct.btrfs_fs_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %25 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %26 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %25, i32 0, i32 2
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %26, align 8
  store %struct.btrfs_root* %27, %struct.btrfs_root** %10, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %13, align 4
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %32 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @btrfs_super_csum_size(i32 %33)
  store i64 %34, i64* %17, align 8
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %36 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %18, align 4
  %40 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %40, %struct.btrfs_path** %11, align 8
  %41 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %42 = icmp ne %struct.btrfs_path* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %4
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %301

46:                                               ; preds = %4
  br label %47

47:                                               ; preds = %46, %293
  %48 = load i64, i64* @BTRFS_EXTENT_CSUM_OBJECTID, align 8
  %49 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sub nsw i32 %50, 1
  %52 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  %53 = load i64, i64* @BTRFS_EXTENT_CSUM_KEY, align 8
  %54 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  store i64 %53, i64* %54, align 8
  %55 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %56 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %59 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %60 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %57, %struct.btrfs_root* %58, %struct.btrfs_key* %12, %struct.btrfs_path* %59, i32 -1, i32 1)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %47
  %64 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %65 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %296

71:                                               ; preds = %63
  %72 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %73 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 4
  br label %83

78:                                               ; preds = %47
  %79 = load i32, i32* %16, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %296

82:                                               ; preds = %78
  br label %83

83:                                               ; preds = %82, %71
  %84 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %85 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %84, i32 0, i32 2
  %86 = load %struct.extent_buffer**, %struct.extent_buffer*** %85, align 8
  %87 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %86, i64 0
  %88 = load %struct.extent_buffer*, %struct.extent_buffer** %87, align 8
  store %struct.extent_buffer* %88, %struct.extent_buffer** %15, align 8
  %89 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %90 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %91 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %89, %struct.btrfs_key* %12, i32 %94)
  %96 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @BTRFS_EXTENT_CSUM_OBJECTID, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %105, label %100

100:                                              ; preds = %83
  %101 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @BTRFS_EXTENT_CSUM_KEY, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100, %83
  br label %296

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %296

112:                                              ; preds = %106
  %113 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %114 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %115 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @btrfs_item_size_nr(%struct.extent_buffer* %113, i32 %118)
  %120 = load i64, i64* %17, align 8
  %121 = udiv i64 %119, %120
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %14, align 4
  %125 = shl i32 %124, %123
  store i32 %125, i32* %14, align 4
  %126 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp sle i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %112
  br label %296

134:                                              ; preds = %112
  %135 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %219

139:                                              ; preds = %134
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp sle i32 %140, %141
  br i1 %142, label %143, label %219

143:                                              ; preds = %139
  store i32 1, i32* %19, align 4
  %144 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %198

148:                                              ; preds = %143
  %149 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %150 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %198

155:                                              ; preds = %148
  %156 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %157 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %160, 1
  store i32 %161, i32* %20, align 4
  br label %162

162:                                              ; preds = %184, %155
  %163 = load i32, i32* %20, align 4
  %164 = icmp sge i32 %163, 0
  br i1 %164, label %165, label %197

165:                                              ; preds = %162
  %166 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %167 = load i32, i32* %20, align 4
  %168 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %166, %struct.btrfs_key* %21, i32 %167)
  %169 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %21, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %183, label %173

173:                                              ; preds = %165
  %174 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %21, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @BTRFS_EXTENT_CSUM_KEY, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %183, label %178

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %21, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @BTRFS_EXTENT_CSUM_OBJECTID, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %178, %173, %165
  br label %197

184:                                              ; preds = %178
  %185 = load i32, i32* %20, align 4
  %186 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %187 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  store i32 %185, i32* %189, align 4
  %190 = load i32, i32* %19, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %19, align 4
  %192 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %21, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  store i32 %193, i32* %194, align 8
  %195 = load i32, i32* %20, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %20, align 4
  br label %162

197:                                              ; preds = %183, %162
  br label %198

198:                                              ; preds = %197, %148, %143
  %199 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %200 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %201 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %202 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %203 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %19, align 4
  %208 = call i32 @btrfs_del_items(%struct.btrfs_trans_handle* %199, %struct.btrfs_root* %200, %struct.btrfs_path* %201, i32 %206, i32 %207)
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %16, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %198
  br label %297

212:                                              ; preds = %198
  %213 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %8, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %212
  br label %296

218:                                              ; preds = %212
  br label %293

219:                                              ; preds = %139, %134
  %220 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %8, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %280

224:                                              ; preds = %219
  %225 = load i32, i32* %14, align 4
  %226 = load i32, i32* %13, align 4
  %227 = icmp sgt i32 %225, %226
  br i1 %227, label %228, label %280

228:                                              ; preds = %224
  %229 = load i32, i32* %8, align 4
  %230 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = sub nsw i32 %229, %231
  %233 = load i32, i32* %18, align 4
  %234 = ashr i32 %232, %233
  %235 = sext i32 %234 to i64
  store i64 %235, i64* %22, align 8
  %236 = load i64, i64* %17, align 8
  %237 = load i64, i64* %22, align 8
  %238 = mul i64 %237, %236
  store i64 %238, i64* %22, align 8
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* %18, align 4
  %241 = ashr i32 %239, %240
  %242 = sext i32 %241 to i64
  %243 = load i64, i64* %17, align 8
  %244 = mul i64 %242, %243
  store i64 %244, i64* %23, align 8
  %245 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %246 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %247 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  %250 = load i32, i32* %249, align 4
  %251 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %245, i32 %250)
  store i64 %251, i64* %24, align 8
  %252 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %253 = load i64, i64* %24, align 8
  %254 = load i64, i64* %22, align 8
  %255 = add i64 %253, %254
  %256 = load i64, i64* %23, align 8
  %257 = call i32 @memzero_extent_buffer(%struct.extent_buffer* %252, i64 %255, i64 %256)
  %258 = load i32, i32* %8, align 4
  %259 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  store i32 %258, i32* %259, align 8
  %260 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %261 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %262 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %263 = load i64, i64* %22, align 8
  %264 = call i32 @btrfs_split_item(%struct.btrfs_trans_handle* %260, %struct.btrfs_root* %261, %struct.btrfs_path* %262, %struct.btrfs_key* %12, i64 %263)
  store i32 %264, i32* %16, align 4
  %265 = load i32, i32* %16, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %228
  %268 = load i32, i32* %16, align 4
  %269 = load i32, i32* @EAGAIN, align 4
  %270 = sub nsw i32 0, %269
  %271 = icmp ne i32 %268, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %267
  %273 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %274 = load i32, i32* %16, align 4
  %275 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %273, i32 %274)
  br label %297

276:                                              ; preds = %267, %228
  %277 = load i32, i32* %13, align 4
  %278 = sub nsw i32 %277, 1
  %279 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  store i32 %278, i32* %279, align 8
  br label %292

280:                                              ; preds = %224, %219
  %281 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %282 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* %9, align 4
  %285 = call i32 @truncate_one_csum(%struct.btrfs_fs_info* %281, %struct.btrfs_path* %282, %struct.btrfs_key* %12, i32 %283, i32 %284)
  %286 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* %8, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %280
  br label %296

291:                                              ; preds = %280
  br label %292

292:                                              ; preds = %291, %276
  br label %293

293:                                              ; preds = %292, %218
  %294 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %295 = call i32 @btrfs_release_path(%struct.btrfs_path* %294)
  br label %47

296:                                              ; preds = %290, %217, %133, %111, %105, %81, %70
  store i32 0, i32* %16, align 4
  br label %297

297:                                              ; preds = %296, %272, %211
  %298 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %299 = call i32 @btrfs_free_path(%struct.btrfs_path* %298)
  %300 = load i32, i32* %16, align 4
  store i32 %300, i32* %5, align 4
  br label %301

301:                                              ; preds = %297, %43
  %302 = load i32, i32* %5, align 4
  ret i32 %302
}

declare dso_local i64 @btrfs_super_csum_size(i32) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i64 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_del_items(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i32 @memzero_extent_buffer(%struct.extent_buffer*, i64, i64) #1

declare dso_local i32 @btrfs_split_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i64) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, i32) #1

declare dso_local i32 @truncate_one_csum(%struct.btrfs_fs_info*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
