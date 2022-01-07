; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_next_old_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_next_old_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32, i32, i32*, i32*, i32, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i32 }

@BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@BTRFS_READ_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_next_old_leaf(%struct.btrfs_root* %0, %struct.btrfs_path* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_path*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.extent_buffer*, align 8
  %11 = alloca %struct.extent_buffer*, align 8
  %12 = alloca %struct.btrfs_key, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %18 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %21 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %20, i32 0, i32 5
  %22 = load %struct.extent_buffer**, %struct.extent_buffer*** %21, align 8
  %23 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %22, i64 0
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %23, align 8
  %25 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %331

29:                                               ; preds = %3
  %30 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %31 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %30, i32 0, i32 5
  %32 = load %struct.extent_buffer**, %struct.extent_buffer*** %31, align 8
  %33 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %32, i64 0
  %34 = load %struct.extent_buffer*, %struct.extent_buffer** %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %34, %struct.btrfs_key* %12, i32 %36)
  br label %38

38:                                               ; preds = %292, %198, %178, %29
  store i32 1, i32* %9, align 4
  store %struct.extent_buffer* null, %struct.extent_buffer** %11, align 8
  store i32 0, i32* %16, align 4
  %39 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %40 = call i32 @btrfs_release_path(%struct.btrfs_path* %39)
  %41 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %42 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %44 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %49 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @btrfs_search_old_slot(%struct.btrfs_root* %48, %struct.btrfs_key* %12, %struct.btrfs_path* %49, i64 %50)
  store i32 %51, i32* %14, align 4
  br label %56

52:                                               ; preds = %38
  %53 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %54 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %55 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %53, %struct.btrfs_key* %12, %struct.btrfs_path* %54, i32 0, i32 0)
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %58 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %4, align 4
  br label %331

63:                                               ; preds = %56
  %64 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %65 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %64, i32 0, i32 5
  %66 = load %struct.extent_buffer**, %struct.extent_buffer*** %65, align 8
  %67 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %66, i64 0
  %68 = load %struct.extent_buffer*, %struct.extent_buffer** %67, align 8
  %69 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %63
  %73 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %74 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %72
  %82 = load i32, i32* %14, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %86 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %84, %81
  store i32 0, i32* %14, align 4
  br label %318

92:                                               ; preds = %72, %63
  %93 = load i32, i32* %13, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = load i32, i32* %14, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %100 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %13, align 4
  %105 = sub nsw i32 %104, 1
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  store i32 0, i32* %14, align 4
  br label %318

108:                                              ; preds = %98, %95, %92
  br label %109

109:                                              ; preds = %150, %108
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %215

113:                                              ; preds = %109
  %114 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %115 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %114, i32 0, i32 5
  %116 = load %struct.extent_buffer**, %struct.extent_buffer*** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %116, i64 %118
  %120 = load %struct.extent_buffer*, %struct.extent_buffer** %119, align 8
  %121 = icmp ne %struct.extent_buffer* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %113
  store i32 1, i32* %14, align 4
  br label %318

123:                                              ; preds = %113
  %124 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %125 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  %132 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %133 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %132, i32 0, i32 5
  %134 = load %struct.extent_buffer**, %struct.extent_buffer*** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %134, i64 %136
  %138 = load %struct.extent_buffer*, %struct.extent_buffer** %137, align 8
  store %struct.extent_buffer* %138, %struct.extent_buffer** %10, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %141 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %140)
  %142 = icmp sge i32 %139, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %123
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  store i32 1, i32* %14, align 4
  br label %318

150:                                              ; preds = %143
  br label %109

151:                                              ; preds = %123
  %152 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %153 = icmp ne %struct.extent_buffer* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %156 = load i32, i32* %16, align 4
  %157 = call i32 @btrfs_tree_unlock_rw(%struct.extent_buffer* %155, i32 %156)
  %158 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %159 = call i32 @free_extent_buffer(%struct.extent_buffer* %158)
  br label %160

160:                                              ; preds = %154, %151
  %161 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  store %struct.extent_buffer* %161, %struct.extent_buffer** %11, align 8
  %162 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %163 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %16, align 4
  %169 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %170 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @read_block_for_search(%struct.btrfs_root* %169, %struct.btrfs_path* %170, %struct.extent_buffer** %11, i32 %171, i32 %172, %struct.btrfs_key* %12)
  store i32 %173, i32* %14, align 4
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* @EAGAIN, align 4
  %176 = sub nsw i32 0, %175
  %177 = icmp eq i32 %174, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %160
  br label %38

179:                                              ; preds = %160
  %180 = load i32, i32* %14, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %184 = call i32 @btrfs_release_path(%struct.btrfs_path* %183)
  br label %318

185:                                              ; preds = %179
  %186 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %187 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %214, label %190

190:                                              ; preds = %185
  %191 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %192 = call i32 @btrfs_try_tree_read_lock(%struct.extent_buffer* %191)
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %14, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %204, label %195

195:                                              ; preds = %190
  %196 = load i64, i64* %7, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %195
  %199 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %200 = call i32 @free_extent_buffer(%struct.extent_buffer* %199)
  %201 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %202 = call i32 @btrfs_release_path(%struct.btrfs_path* %201)
  %203 = call i32 (...) @cond_resched()
  br label %38

204:                                              ; preds = %195, %190
  %205 = load i32, i32* %14, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %204
  %208 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %209 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %208)
  %210 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %211 = call i32 @btrfs_tree_read_lock(%struct.extent_buffer* %210)
  br label %212

212:                                              ; preds = %207, %204
  %213 = load i32, i32* @BTRFS_READ_LOCK, align 4
  store i32 %213, i32* %16, align 4
  br label %214

214:                                              ; preds = %212, %185
  br label %215

215:                                              ; preds = %214, %109
  %216 = load i32, i32* %8, align 4
  %217 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %218 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %216, i32* %222, align 4
  br label %223

223:                                              ; preds = %215, %316
  %224 = load i32, i32* %9, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %9, align 4
  %226 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %227 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %226, i32 0, i32 5
  %228 = load %struct.extent_buffer**, %struct.extent_buffer*** %227, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %228, i64 %230
  %232 = load %struct.extent_buffer*, %struct.extent_buffer** %231, align 8
  store %struct.extent_buffer* %232, %struct.extent_buffer** %10, align 8
  %233 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %234 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %233, i32 0, i32 3
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %9, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %251

241:                                              ; preds = %223
  %242 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %243 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %244 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %243, i32 0, i32 3
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %9, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @btrfs_tree_unlock_rw(%struct.extent_buffer* %242, i32 %249)
  br label %251

251:                                              ; preds = %241, %223
  %252 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %253 = call i32 @free_extent_buffer(%struct.extent_buffer* %252)
  %254 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %255 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %256 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %255, i32 0, i32 5
  %257 = load %struct.extent_buffer**, %struct.extent_buffer*** %256, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %257, i64 %259
  store %struct.extent_buffer* %254, %struct.extent_buffer** %260, align 8
  %261 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %262 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %261, i32 0, i32 2
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  store i32 0, i32* %266, align 4
  %267 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %268 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %279, label %271

271:                                              ; preds = %251
  %272 = load i32, i32* %16, align 4
  %273 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %274 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %273, i32 0, i32 3
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %9, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  store i32 %272, i32* %278, align 4
  br label %279

279:                                              ; preds = %271, %251
  %280 = load i32, i32* %9, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %279
  br label %317

283:                                              ; preds = %279
  %284 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %285 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %286 = load i32, i32* %9, align 4
  %287 = call i32 @read_block_for_search(%struct.btrfs_root* %284, %struct.btrfs_path* %285, %struct.extent_buffer** %11, i32 %286, i32 0, %struct.btrfs_key* %12)
  store i32 %287, i32* %14, align 4
  %288 = load i32, i32* %14, align 4
  %289 = load i32, i32* @EAGAIN, align 4
  %290 = sub nsw i32 0, %289
  %291 = icmp eq i32 %288, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %283
  br label %38

293:                                              ; preds = %283
  %294 = load i32, i32* %14, align 4
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %293
  %297 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %298 = call i32 @btrfs_release_path(%struct.btrfs_path* %297)
  br label %318

299:                                              ; preds = %293
  %300 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %301 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %316, label %304

304:                                              ; preds = %299
  %305 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %306 = call i32 @btrfs_try_tree_read_lock(%struct.extent_buffer* %305)
  store i32 %306, i32* %14, align 4
  %307 = load i32, i32* %14, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %314, label %309

309:                                              ; preds = %304
  %310 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %311 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %310)
  %312 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %313 = call i32 @btrfs_tree_read_lock(%struct.extent_buffer* %312)
  br label %314

314:                                              ; preds = %309, %304
  %315 = load i32, i32* @BTRFS_READ_LOCK, align 4
  store i32 %315, i32* %16, align 4
  br label %316

316:                                              ; preds = %314, %299
  br label %223

317:                                              ; preds = %282
  store i32 0, i32* %14, align 4
  br label %318

318:                                              ; preds = %317, %296, %182, %149, %122, %107, %91
  %319 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %320 = call i32 @unlock_up(%struct.btrfs_path* %319, i32 0, i32 1, i32 0, i32* null)
  %321 = load i32, i32* %15, align 4
  %322 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %323 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %322, i32 0, i32 0
  store i32 %321, i32* %323, align 8
  %324 = load i32, i32* %15, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %329, label %326

326:                                              ; preds = %318
  %327 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %328 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %327)
  br label %329

329:                                              ; preds = %326, %318
  %330 = load i32, i32* %14, align 4
  store i32 %330, i32* %4, align 4
  br label %331

331:                                              ; preds = %329, %61, %28
  %332 = load i32, i32* %4, align 4
  ret i32 %332
}

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_search_old_slot(%struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i64) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_tree_unlock_rw(%struct.extent_buffer*, i32) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @read_block_for_search(%struct.btrfs_root*, %struct.btrfs_path*, %struct.extent_buffer**, i32, i32, %struct.btrfs_key*) #1

declare dso_local i32 @btrfs_try_tree_read_lock(%struct.extent_buffer*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @btrfs_set_path_blocking(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_tree_read_lock(%struct.extent_buffer*) #1

declare dso_local i32 @unlock_up(%struct.btrfs_path*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
