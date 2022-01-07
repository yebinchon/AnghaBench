; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_search_slot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_search_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_key = type { i32 }
%struct.btrfs_path = type { i32, i32*, i32, i32, i32, %struct.extent_buffer**, i64*, i32, i64 }
%struct.extent_buffer = type { i32 }

@BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@BTRFS_WRITE_LOCK = common dso_local global i64 0, align 8
@BTRFS_READ_LOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_key* %2, %struct.btrfs_path* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_key*, align 8
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.extent_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %8, align 8
  store %struct.btrfs_key* %2, %struct.btrfs_key** %9, align 8
  store %struct.btrfs_path* %3, %struct.btrfs_path** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %26 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %27 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %20, align 4
  %29 = load i32, i32* %20, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %6
  %32 = load i32, i32* %11, align 4
  %33 = icmp sgt i32 %32, 0
  br label %34

34:                                               ; preds = %31, %6
  %35 = phi i1 [ false, %6 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON(i32 %36)
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %39 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %38, i32 0, i32 5
  %40 = load %struct.extent_buffer**, %struct.extent_buffer*** %39, align 8
  %41 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %40, i64 0
  %42 = load %struct.extent_buffer*, %struct.extent_buffer** %41, align 8
  %43 = icmp ne %struct.extent_buffer* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @WARN_ON(i32 %44)
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %34
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %48, %34
  %52 = phi i1 [ false, %34 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 2, i32* %18, align 4
  store i32 2, i32* %19, align 4
  br label %63

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 1, i32* %19, align 4
  br label %62

62:                                               ; preds = %61, %58
  br label %63

63:                                               ; preds = %62, %57
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32 -1, i32* %19, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %72 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %71, i32 0, i32 8
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %77 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75, %70
  %81 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  store i32 %81, i32* %19, align 4
  br label %82

82:                                               ; preds = %80, %75, %67
  %83 = load i32, i32* %19, align 4
  store i32 %83, i32* %21, align 4
  br label %84

84:                                               ; preds = %424, %346, %308, %277, %142, %82
  store i32 -1, i32* %22, align 4
  %85 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %86 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %87 = load i32, i32* %19, align 4
  %88 = call %struct.extent_buffer* @btrfs_search_slot_get_root(%struct.btrfs_root* %85, %struct.btrfs_path* %86, i32 %87)
  store %struct.extent_buffer* %88, %struct.extent_buffer** %13, align 8
  %89 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %90 = call i64 @IS_ERR(%struct.extent_buffer* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %94 = call i32 @PTR_ERR(%struct.extent_buffer* %93)
  store i32 %94, i32* %15, align 4
  br label %462

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %460, %95
  %97 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %98 = icmp ne %struct.extent_buffer* %97, null
  br i1 %98, label %99, label %461

99:                                               ; preds = %96
  %100 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %101 = call i32 @btrfs_header_level(%struct.extent_buffer* %100)
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %184

104:                                              ; preds = %99
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %107 = sub nsw i32 %106, 1
  %108 = icmp eq i32 %105, %107
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %23, align 4
  %110 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %111 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %112 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %113 = call i32 @should_cow_block(%struct.btrfs_trans_handle* %110, %struct.btrfs_root* %111, %struct.extent_buffer* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %104
  %116 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %117 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %116, i32 0, i32 0
  store i32 1, i32* %117, align 4
  br label %185

118:                                              ; preds = %104
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %19, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %142, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %17, align 4
  %124 = add nsw i32 %123, 1
  %125 = load i32, i32* %19, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %147

127:                                              ; preds = %122
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %128, 1
  %130 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %147

132:                                              ; preds = %127
  %133 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %134 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %133, i32 0, i32 5
  %135 = load %struct.extent_buffer**, %struct.extent_buffer*** %134, align 8
  %136 = load i32, i32* %17, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %135, i64 %138
  %140 = load %struct.extent_buffer*, %struct.extent_buffer** %139, align 8
  %141 = icmp ne %struct.extent_buffer* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %132, %118
  %143 = load i32, i32* %17, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %19, align 4
  %145 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %146 = call i32 @btrfs_release_path(%struct.btrfs_path* %145)
  br label %84

147:                                              ; preds = %132, %127, %122
  %148 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %149 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %148)
  %150 = load i32, i32* %23, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %154 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %155 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %156 = call i32 @btrfs_cow_block(%struct.btrfs_trans_handle* %153, %struct.btrfs_root* %154, %struct.extent_buffer* %155, %struct.extent_buffer* null, i32 0, %struct.extent_buffer** %13)
  store i32 %156, i32* %16, align 4
  br label %178

157:                                              ; preds = %147
  %158 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %159 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %160 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %161 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %162 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %161, i32 0, i32 5
  %163 = load %struct.extent_buffer**, %struct.extent_buffer*** %162, align 8
  %164 = load i32, i32* %17, align 4
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %163, i64 %166
  %168 = load %struct.extent_buffer*, %struct.extent_buffer** %167, align 8
  %169 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %170 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %17, align 4
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @btrfs_cow_block(%struct.btrfs_trans_handle* %158, %struct.btrfs_root* %159, %struct.extent_buffer* %160, %struct.extent_buffer* %168, i32 %176, %struct.extent_buffer** %13)
  store i32 %177, i32* %16, align 4
  br label %178

178:                                              ; preds = %157, %152
  %179 = load i32, i32* %16, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = load i32, i32* %16, align 4
  store i32 %182, i32* %15, align 4
  br label %462

183:                                              ; preds = %178
  br label %184

184:                                              ; preds = %183, %99
  br label %185

185:                                              ; preds = %184, %115
  %186 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %187 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %188 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %187, i32 0, i32 5
  %189 = load %struct.extent_buffer**, %struct.extent_buffer*** %188, align 8
  %190 = load i32, i32* %17, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %189, i64 %191
  store %struct.extent_buffer* %186, %struct.extent_buffer** %192, align 8
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %238, label %195

195:                                              ; preds = %185
  %196 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %197 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %196, i32 0, i32 8
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %238, label %200

200:                                              ; preds = %195
  %201 = load i32, i32* %17, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %24, align 4
  %203 = load i32, i32* %24, align 4
  %204 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %237

206:                                              ; preds = %200
  %207 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %208 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %207, i32 0, i32 6
  %209 = load i64*, i64** %208, align 8
  %210 = load i32, i32* %24, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %209, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %237

215:                                              ; preds = %206
  %216 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %217 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %216, i32 0, i32 5
  %218 = load %struct.extent_buffer**, %struct.extent_buffer*** %217, align 8
  %219 = load i32, i32* %24, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %218, i64 %220
  %222 = load %struct.extent_buffer*, %struct.extent_buffer** %221, align 8
  %223 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %224 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %223, i32 0, i32 6
  %225 = load i64*, i64** %224, align 8
  %226 = load i32, i32* %24, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64, i64* %225, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @btrfs_tree_unlock_rw(%struct.extent_buffer* %222, i64 %229)
  %231 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %232 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %231, i32 0, i32 6
  %233 = load i64*, i64** %232, align 8
  %234 = load i32, i32* %24, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i64, i64* %233, i64 %235
  store i64 0, i64* %236, align 8
  br label %237

237:                                              ; preds = %215, %206, %200
  br label %238

238:                                              ; preds = %237, %195, %185
  %239 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %240 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %241 = load i32, i32* %17, align 4
  %242 = call i32 @key_search(%struct.extent_buffer* %239, %struct.btrfs_key* %240, i32 %241, i32* %22, i32* %14)
  store i32 %242, i32* %15, align 4
  %243 = load i32, i32* %15, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %238
  br label %462

246:                                              ; preds = %238
  %247 = load i32, i32* %17, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %406

249:                                              ; preds = %246
  store i32 0, i32* %25, align 4
  %250 = load i32, i32* %15, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %249
  %253 = load i32, i32* %14, align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  store i32 1, i32* %25, align 4
  %256 = load i32, i32* %14, align 4
  %257 = sub nsw i32 %256, 1
  store i32 %257, i32* %14, align 4
  br label %258

258:                                              ; preds = %255, %252, %249
  %259 = load i32, i32* %14, align 4
  %260 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %261 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %17, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  store i32 %259, i32* %265, align 4
  %266 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %267 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %268 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %269 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %270 = load i32, i32* %17, align 4
  %271 = load i32, i32* %11, align 4
  %272 = call i32 @setup_nodes_for_search(%struct.btrfs_trans_handle* %266, %struct.btrfs_root* %267, %struct.btrfs_path* %268, %struct.extent_buffer* %269, i32 %270, i32 %271, i32* %19)
  store i32 %272, i32* %16, align 4
  %273 = load i32, i32* %16, align 4
  %274 = load i32, i32* @EAGAIN, align 4
  %275 = sub nsw i32 0, %274
  %276 = icmp eq i32 %273, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %258
  br label %84

278:                                              ; preds = %258
  %279 = load i32, i32* %16, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %278
  %282 = load i32, i32* %16, align 4
  store i32 %282, i32* %15, align 4
  br label %462

283:                                              ; preds = %278
  %284 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %285 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %284, i32 0, i32 5
  %286 = load %struct.extent_buffer**, %struct.extent_buffer*** %285, align 8
  %287 = load i32, i32* %17, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %286, i64 %288
  %290 = load %struct.extent_buffer*, %struct.extent_buffer** %289, align 8
  store %struct.extent_buffer* %290, %struct.extent_buffer** %13, align 8
  %291 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %292 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %291, i32 0, i32 1
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %17, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  store i32 %297, i32* %14, align 4
  %298 = load i32, i32* %14, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %313

300:                                              ; preds = %283
  %301 = load i32, i32* %11, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %313

303:                                              ; preds = %300
  %304 = load i32, i32* %19, align 4
  %305 = load i32, i32* %17, align 4
  %306 = add nsw i32 %305, 1
  %307 = icmp slt i32 %304, %306
  br i1 %307, label %308, label %313

308:                                              ; preds = %303
  %309 = load i32, i32* %17, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %19, align 4
  %311 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %312 = call i32 @btrfs_release_path(%struct.btrfs_path* %311)
  br label %84

313:                                              ; preds = %303, %300, %283
  %314 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %315 = load i32, i32* %17, align 4
  %316 = load i32, i32* %18, align 4
  %317 = load i32, i32* %21, align 4
  %318 = call i32 @unlock_up(%struct.btrfs_path* %314, i32 %315, i32 %316, i32 %317, i32* %19)
  %319 = load i32, i32* %17, align 4
  %320 = load i32, i32* %20, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %335

322:                                              ; preds = %313
  %323 = load i32, i32* %25, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %334

325:                                              ; preds = %322
  %326 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %327 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %326, i32 0, i32 1
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %17, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %331, align 4
  br label %334

334:                                              ; preds = %325, %322
  br label %462

335:                                              ; preds = %313
  %336 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %337 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %338 = load i32, i32* %17, align 4
  %339 = load i32, i32* %14, align 4
  %340 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %341 = call i32 @read_block_for_search(%struct.btrfs_root* %336, %struct.btrfs_path* %337, %struct.extent_buffer** %13, i32 %338, i32 %339, %struct.btrfs_key* %340)
  store i32 %341, i32* %16, align 4
  %342 = load i32, i32* %16, align 4
  %343 = load i32, i32* @EAGAIN, align 4
  %344 = sub nsw i32 0, %343
  %345 = icmp eq i32 %342, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %335
  br label %84

347:                                              ; preds = %335
  %348 = load i32, i32* %16, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %347
  %351 = load i32, i32* %16, align 4
  store i32 %351, i32* %15, align 4
  br label %462

352:                                              ; preds = %347
  %353 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %354 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %353, i32 0, i32 7
  %355 = load i32, i32* %354, align 8
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %405, label %357

357:                                              ; preds = %352
  %358 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %359 = call i32 @btrfs_header_level(%struct.extent_buffer* %358)
  store i32 %359, i32* %17, align 4
  %360 = load i32, i32* %17, align 4
  %361 = load i32, i32* %19, align 4
  %362 = icmp sle i32 %360, %361
  br i1 %362, label %363, label %380

363:                                              ; preds = %357
  %364 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %365 = call i32 @btrfs_try_tree_write_lock(%struct.extent_buffer* %364)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %372, label %367

367:                                              ; preds = %363
  %368 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %369 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %368)
  %370 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %371 = call i32 @btrfs_tree_lock(%struct.extent_buffer* %370)
  br label %372

372:                                              ; preds = %367, %363
  %373 = load i64, i64* @BTRFS_WRITE_LOCK, align 8
  %374 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %375 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %374, i32 0, i32 6
  %376 = load i64*, i64** %375, align 8
  %377 = load i32, i32* %17, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i64, i64* %376, i64 %378
  store i64 %373, i64* %379, align 8
  br label %397

380:                                              ; preds = %357
  %381 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %382 = call i32 @btrfs_tree_read_lock_atomic(%struct.extent_buffer* %381)
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %389, label %384

384:                                              ; preds = %380
  %385 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %386 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %385)
  %387 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %388 = call i32 @btrfs_tree_read_lock(%struct.extent_buffer* %387)
  br label %389

389:                                              ; preds = %384, %380
  %390 = load i64, i64* @BTRFS_READ_LOCK, align 8
  %391 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %392 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %391, i32 0, i32 6
  %393 = load i64*, i64** %392, align 8
  %394 = load i32, i32* %17, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i64, i64* %393, i64 %395
  store i64 %390, i64* %396, align 8
  br label %397

397:                                              ; preds = %389, %372
  %398 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %399 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %400 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %399, i32 0, i32 5
  %401 = load %struct.extent_buffer**, %struct.extent_buffer*** %400, align 8
  %402 = load i32, i32* %17, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %401, i64 %403
  store %struct.extent_buffer* %398, %struct.extent_buffer** %404, align 8
  br label %405

405:                                              ; preds = %397, %352
  br label %460

406:                                              ; preds = %246
  %407 = load i32, i32* %14, align 4
  %408 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %409 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %408, i32 0, i32 1
  %410 = load i32*, i32** %409, align 8
  %411 = load i32, i32* %17, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  store i32 %407, i32* %413, align 4
  %414 = load i32, i32* %11, align 4
  %415 = icmp sgt i32 %414, 0
  br i1 %415, label %416, label %448

416:                                              ; preds = %406
  %417 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %418 = call i32 @btrfs_leaf_free_space(%struct.extent_buffer* %417)
  %419 = load i32, i32* %11, align 4
  %420 = icmp slt i32 %418, %419
  br i1 %420, label %421, label %448

421:                                              ; preds = %416
  %422 = load i32, i32* %19, align 4
  %423 = icmp slt i32 %422, 1
  br i1 %423, label %424, label %427

424:                                              ; preds = %421
  store i32 1, i32* %19, align 4
  %425 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %426 = call i32 @btrfs_release_path(%struct.btrfs_path* %425)
  br label %84

427:                                              ; preds = %421
  %428 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %429 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %428)
  %430 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %431 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %432 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %433 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %434 = load i32, i32* %11, align 4
  %435 = load i32, i32* %15, align 4
  %436 = icmp eq i32 %435, 0
  %437 = zext i1 %436 to i32
  %438 = call i32 @split_leaf(%struct.btrfs_trans_handle* %430, %struct.btrfs_root* %431, %struct.btrfs_key* %432, %struct.btrfs_path* %433, i32 %434, i32 %437)
  store i32 %438, i32* %16, align 4
  %439 = load i32, i32* %16, align 4
  %440 = icmp sgt i32 %439, 0
  %441 = zext i1 %440 to i32
  %442 = call i32 @BUG_ON(i32 %441)
  %443 = load i32, i32* %16, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %447

445:                                              ; preds = %427
  %446 = load i32, i32* %16, align 4
  store i32 %446, i32* %15, align 4
  br label %462

447:                                              ; preds = %427
  br label %448

448:                                              ; preds = %447, %416, %406
  %449 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %450 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %449, i32 0, i32 4
  %451 = load i32, i32* %450, align 8
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %459, label %453

453:                                              ; preds = %448
  %454 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %455 = load i32, i32* %17, align 4
  %456 = load i32, i32* %18, align 4
  %457 = load i32, i32* %21, align 4
  %458 = call i32 @unlock_up(%struct.btrfs_path* %454, i32 %455, i32 %456, i32 %457, i32* null)
  br label %459

459:                                              ; preds = %453, %448
  br label %462

460:                                              ; preds = %405
  br label %96

461:                                              ; preds = %96
  store i32 1, i32* %15, align 4
  br label %462

462:                                              ; preds = %461, %459, %445, %350, %334, %281, %245, %181, %92
  %463 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %464 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %463, i32 0, i32 3
  %465 = load i32, i32* %464, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %470, label %467

467:                                              ; preds = %462
  %468 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %469 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %468)
  br label %470

470:                                              ; preds = %467, %462
  %471 = load i32, i32* %15, align 4
  %472 = icmp slt i32 %471, 0
  br i1 %472, label %473, label %481

473:                                              ; preds = %470
  %474 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %475 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %474, i32 0, i32 2
  %476 = load i32, i32* %475, align 8
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %481, label %478

478:                                              ; preds = %473
  %479 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %480 = call i32 @btrfs_release_path(%struct.btrfs_path* %479)
  br label %481

481:                                              ; preds = %478, %473, %470
  %482 = load i32, i32* %15, align 4
  ret i32 %482
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.extent_buffer* @btrfs_search_slot_get_root(%struct.btrfs_root*, %struct.btrfs_path*, i32) #1

declare dso_local i64 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @PTR_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @should_cow_block(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.extent_buffer*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_set_path_blocking(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_cow_block(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.extent_buffer*, %struct.extent_buffer*, i32, %struct.extent_buffer**) #1

declare dso_local i32 @btrfs_tree_unlock_rw(%struct.extent_buffer*, i64) #1

declare dso_local i32 @key_search(%struct.extent_buffer*, %struct.btrfs_key*, i32, i32*, i32*) #1

declare dso_local i32 @setup_nodes_for_search(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.extent_buffer*, i32, i32, i32*) #1

declare dso_local i32 @unlock_up(%struct.btrfs_path*, i32, i32, i32, i32*) #1

declare dso_local i32 @read_block_for_search(%struct.btrfs_root*, %struct.btrfs_path*, %struct.extent_buffer**, i32, i32, %struct.btrfs_key*) #1

declare dso_local i32 @btrfs_try_tree_write_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_read_lock_atomic(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_read_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_leaf_free_space(%struct.extent_buffer*) #1

declare dso_local i32 @split_leaf(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
