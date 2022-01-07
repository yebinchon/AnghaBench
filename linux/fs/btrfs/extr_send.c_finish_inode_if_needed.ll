; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_finish_inode_if_needed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_finish_inode_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i64, i64, i64, i64, i64, i32, i32, i32, i64, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i32)* @finish_inode_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_inode_if_needed(%struct.send_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.send_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %19 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %19, i32 0, i32 12
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %299

24:                                               ; preds = %2
  %25 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @process_recorded_refs_if_needed(%struct.send_ctx* %25, i32 %26, i32* %16, i32* %17)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %297

31:                                               ; preds = %24
  %32 = load i32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  %42 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %37, %34, %31
  %45 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %50, i32 0, i32 11
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %44
  br label %297

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %55
  %59 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %59, i32 0, i32 10
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %65 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %297

69:                                               ; preds = %58, %55
  %70 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %71 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %74 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @get_inode_info(i32 %72, i64 %75, i64* null, i32* null, i64* %7, i64* %8, i64* %9, i32* null)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %297

80:                                               ; preds = %69
  %81 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %82 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %87 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %86, i32 0, i32 8
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %85, %80
  store i32 1, i32* %14, align 4
  %91 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %92 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @S_ISLNK(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  store i32 1, i32* %13, align 4
  br label %97

97:                                               ; preds = %96, %90
  %98 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %99 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %102 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  store i32 0, i32* %15, align 4
  br label %106

106:                                              ; preds = %105, %97
  br label %160

107:                                              ; preds = %85
  %108 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %109 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %112 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @get_inode_info(i32 %110, i64 %113, i64* %18, i32* null, i64* %10, i64* %11, i64* %12, i32* null)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  br label %297

118:                                              ; preds = %107
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* %11, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* %12, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122, %118
  store i32 1, i32* %14, align 4
  br label %127

127:                                              ; preds = %126, %122
  %128 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %129 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @S_ISLNK(i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %127
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* %10, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 1, i32* %13, align 4
  br label %138

138:                                              ; preds = %137, %133, %127
  %139 = load i64, i64* %18, align 8
  %140 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %141 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %139, %142
  br i1 %143, label %158, label %144

144:                                              ; preds = %138
  %145 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %146 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %18, align 8
  %149 = icmp sgt i64 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %144
  %151 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %152 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %155 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %153, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %150, %138
  store i32 0, i32* %15, align 4
  br label %159

159:                                              ; preds = %158, %150, %144
  br label %160

160:                                              ; preds = %159, %106
  %161 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %162 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @S_ISREG(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %229

166:                                              ; preds = %160
  %167 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %168 = call i64 @need_send_hole(%struct.send_ctx* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %209

170:                                              ; preds = %166
  %171 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %172 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, -1
  br i1 %174, label %183, label %175

175:                                              ; preds = %170
  %176 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %177 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %180 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = icmp slt i64 %178, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %175, %170
  %184 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %185 = call i32 @get_last_extent(%struct.send_ctx* %184, i64 -1)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %297

189:                                              ; preds = %183
  br label %190

190:                                              ; preds = %189, %175
  %191 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %192 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %195 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = icmp slt i64 %193, %196
  br i1 %197, label %198, label %208

198:                                              ; preds = %190
  %199 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %200 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %201 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @send_hole(%struct.send_ctx* %199, i64 %202)
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* %6, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %198
  br label %297

207:                                              ; preds = %198
  br label %208

208:                                              ; preds = %207, %190
  br label %209

209:                                              ; preds = %208, %166
  %210 = load i32, i32* %15, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %228

212:                                              ; preds = %209
  %213 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %214 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %215 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %218 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %221 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @send_truncate(%struct.send_ctx* %213, i64 %216, i32 %219, i64 %222)
  store i32 %223, i32* %6, align 4
  %224 = load i32, i32* %6, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %212
  br label %297

227:                                              ; preds = %212
  br label %228

228:                                              ; preds = %227, %209
  br label %229

229:                                              ; preds = %228, %160
  %230 = load i32, i32* %14, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %247

232:                                              ; preds = %229
  %233 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %234 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %235 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %238 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 8
  %240 = load i64, i64* %8, align 8
  %241 = load i64, i64* %9, align 8
  %242 = call i32 @send_chown(%struct.send_ctx* %233, i64 %236, i32 %239, i64 %240, i64 %241)
  store i32 %242, i32* %6, align 4
  %243 = load i32, i32* %6, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %232
  br label %297

246:                                              ; preds = %232
  br label %247

247:                                              ; preds = %246, %229
  %248 = load i32, i32* %13, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %264

250:                                              ; preds = %247
  %251 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %252 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %253 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %256 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 8
  %258 = load i64, i64* %7, align 8
  %259 = call i32 @send_chmod(%struct.send_ctx* %251, i64 %254, i32 %257, i64 %258)
  store i32 %259, i32* %6, align 4
  %260 = load i32, i32* %6, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %250
  br label %297

263:                                              ; preds = %250
  br label %264

264:                                              ; preds = %263, %247
  %265 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %266 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %267 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = call i32 @is_waiting_for_move(%struct.send_ctx* %265, i64 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %296, label %271

271:                                              ; preds = %264
  %272 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %273 = call i32 @apply_children_dir_moves(%struct.send_ctx* %272)
  store i32 %273, i32* %6, align 4
  %274 = load i32, i32* %6, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %271
  br label %297

277:                                              ; preds = %271
  %278 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %279 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = add nsw i64 %280, 1
  %282 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %283 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %282, i32 0, i32 0
  store i64 %281, i64* %283, align 8
  %284 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %285 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %286 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %289 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @send_utimes(%struct.send_ctx* %284, i64 %287, i32 %290)
  store i32 %291, i32* %6, align 4
  %292 = load i32, i32* %6, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %277
  br label %297

295:                                              ; preds = %277
  br label %296

296:                                              ; preds = %295, %264
  br label %297

297:                                              ; preds = %296, %294, %276, %262, %245, %226, %206, %188, %117, %79, %68, %54, %30
  %298 = load i32, i32* %6, align 4
  store i32 %298, i32* %3, align 4
  br label %299

299:                                              ; preds = %297, %23
  %300 = load i32, i32* %3, align 4
  ret i32 %300
}

declare dso_local i32 @process_recorded_refs_if_needed(%struct.send_ctx*, i32, i32*, i32*) #1

declare dso_local i32 @get_inode_info(i32, i64, i64*, i32*, i64*, i64*, i64*, i32*) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @need_send_hole(%struct.send_ctx*) #1

declare dso_local i32 @get_last_extent(%struct.send_ctx*, i64) #1

declare dso_local i32 @send_hole(%struct.send_ctx*, i64) #1

declare dso_local i32 @send_truncate(%struct.send_ctx*, i64, i32, i64) #1

declare dso_local i32 @send_chown(%struct.send_ctx*, i64, i32, i64, i64) #1

declare dso_local i32 @send_chmod(%struct.send_ctx*, i64, i32, i64) #1

declare dso_local i32 @is_waiting_for_move(%struct.send_ctx*, i64) #1

declare dso_local i32 @apply_children_dir_moves(%struct.send_ctx*) #1

declare dso_local i32 @send_utimes(%struct.send_ctx*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
