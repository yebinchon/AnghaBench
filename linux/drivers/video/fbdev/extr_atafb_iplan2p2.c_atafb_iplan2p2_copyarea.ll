; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb_iplan2p2.c_atafb_iplan2p2_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb_iplan2p2.c_atafb_iplan2p2_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }

@BPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atafb_iplan2p2_copyarea(%struct.fb_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.fb_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca [4 x i32], align 16
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca [4 x i32], align 16
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %55, %56
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i1 [ false, %50 ], [ %57, %54 ]
  br label %60

60:                                               ; preds = %58, %8
  %61 = phi i1 [ true, %8 ], [ %59, %58 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %26, align 4
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %25, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %14, align 4
  %66 = xor i32 %64, %65
  %67 = and i32 %66, 15
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %353, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %26, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %202

72:                                               ; preds = %69
  %73 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32*
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = load i32, i32* %12, align 4
  %83 = and i32 %82, -16
  %84 = load i32, i32* @BPL, align 4
  %85 = sdiv i32 8, %84
  %86 = sdiv i32 %83, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %81, i64 %87
  store i32* %88, i32** %17, align 8
  %89 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i32*
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %10, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load i32, i32* %14, align 4
  %99 = and i32 %98, -16
  %100 = load i32, i32* @BPL, align 4
  %101 = sdiv i32 8, %100
  %102 = sdiv i32 %99, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %97, i64 %103
  store i32* %104, i32** %18, align 8
  %105 = load i32, i32* %12, align 4
  %106 = and i32 %105, 15
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %72
  %109 = load i32*, i32** %18, align 8
  %110 = load i32*, i32** %17, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @BPL, align 4
  %114 = mul nsw i32 %113, 2
  %115 = sub nsw i32 %112, %114
  %116 = call i32 @memmove32_col(i32* %109, i32* %110, i32 16711935, i32 %111, i32 %115)
  %117 = load i32, i32* @BPL, align 4
  %118 = mul nsw i32 %117, 2
  %119 = load i32*, i32** %17, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %17, align 8
  %122 = load i32, i32* @BPL, align 4
  %123 = mul nsw i32 %122, 2
  %124 = load i32*, i32** %18, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32* %126, i32** %18, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sub nsw i32 %127, 8
  store i32 %128, i32* %16, align 4
  br label %129

129:                                              ; preds = %108, %72
  %130 = load i32, i32* %16, align 4
  %131 = ashr i32 %130, 4
  store i32 %131, i32* %21, align 4
  %132 = load i32, i32* %21, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %176

134:                                              ; preds = %129
  %135 = load i32*, i32** %17, align 8
  store i32* %135, i32** %19, align 8
  %136 = load i32*, i32** %18, align 8
  store i32* %136, i32** %20, align 8
  %137 = load i32, i32* @BPL, align 4
  %138 = sdiv i32 %137, 2
  %139 = load i32, i32* %21, align 4
  %140 = mul nsw i32 %139, %138
  store i32 %140, i32* %21, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %21, align 4
  %143 = mul nsw i32 %142, 4
  %144 = sub nsw i32 %141, %143
  store i32 %144, i32* %22, align 4
  %145 = load i32, i32* %15, align 4
  store i32 %145, i32* %24, align 4
  br label %146

146:                                              ; preds = %172, %134
  %147 = load i32, i32* %24, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %175

149:                                              ; preds = %146
  %150 = load i32, i32* %21, align 4
  store i32 %150, i32* %23, align 4
  br label %151

151:                                              ; preds = %160, %149
  %152 = load i32, i32* %23, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %151
  %155 = load i32*, i32** %19, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %19, align 8
  %157 = load i32, i32* %155, align 4
  %158 = load i32*, i32** %20, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %20, align 8
  store i32 %157, i32* %158, align 4
  br label %160

160:                                              ; preds = %154
  %161 = load i32, i32* %23, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %23, align 4
  br label %151

163:                                              ; preds = %151
  %164 = load i32*, i32** %19, align 8
  %165 = load i32, i32* %22, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32* %167, i32** %19, align 8
  %168 = load i32*, i32** %20, align 8
  %169 = load i32, i32* %22, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32* %171, i32** %20, align 8
  br label %172

172:                                              ; preds = %163
  %173 = load i32, i32* %24, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %24, align 4
  br label %146

175:                                              ; preds = %146
  br label %176

176:                                              ; preds = %175, %129
  %177 = load i32, i32* %16, align 4
  %178 = and i32 %177, 15
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %201

180:                                              ; preds = %176
  %181 = load i32*, i32** %18, align 8
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* @BPL, align 4
  %184 = sdiv i32 8, %183
  %185 = sdiv i32 %182, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %181, i64 %186
  %188 = load i32*, i32** %17, align 8
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* @BPL, align 4
  %191 = sdiv i32 8, %190
  %192 = sdiv i32 %189, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %188, i64 %193
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* @BPL, align 4
  %198 = mul nsw i32 %197, 2
  %199 = sub nsw i32 %196, %198
  %200 = call i32 @memmove32_col(i32* %187, i32* %194, i32 -16711936, i32 %195, i32 %199)
  br label %201

201:                                              ; preds = %180, %176
  br label %352

202:                                              ; preds = %69
  %203 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %204 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = inttoptr i64 %205 to i32*
  %207 = load i32, i32* %11, align 4
  %208 = sub nsw i32 %207, 1
  %209 = load i32, i32* %10, align 4
  %210 = mul nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %206, i64 %211
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* %16, align 4
  %215 = add nsw i32 %213, %214
  %216 = add nsw i32 %215, 8
  %217 = and i32 %216, -16
  %218 = load i32, i32* @BPL, align 4
  %219 = sdiv i32 8, %218
  %220 = sdiv i32 %217, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %212, i64 %221
  store i32* %222, i32** %17, align 8
  %223 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %224 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = inttoptr i64 %225 to i32*
  %227 = load i32, i32* %13, align 4
  %228 = sub nsw i32 %227, 1
  %229 = load i32, i32* %10, align 4
  %230 = mul nsw i32 %228, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %226, i64 %231
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* %16, align 4
  %235 = add nsw i32 %233, %234
  %236 = add nsw i32 %235, 8
  %237 = and i32 %236, -16
  %238 = load i32, i32* @BPL, align 4
  %239 = sdiv i32 8, %238
  %240 = sdiv i32 %237, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %232, i64 %241
  store i32* %242, i32** %18, align 8
  %243 = load i32, i32* %12, align 4
  %244 = load i32, i32* %16, align 4
  %245 = add nsw i32 %243, %244
  %246 = and i32 %245, 15
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %272

248:                                              ; preds = %202
  %249 = load i32, i32* @BPL, align 4
  %250 = mul nsw i32 %249, 2
  %251 = load i32*, i32** %17, align 8
  %252 = sext i32 %250 to i64
  %253 = sub i64 0, %252
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32* %254, i32** %17, align 8
  %255 = load i32, i32* @BPL, align 4
  %256 = mul nsw i32 %255, 2
  %257 = load i32*, i32** %18, align 8
  %258 = sext i32 %256 to i64
  %259 = sub i64 0, %258
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  store i32* %260, i32** %18, align 8
  %261 = load i32*, i32** %18, align 8
  %262 = load i32*, i32** %17, align 8
  %263 = load i32, i32* %25, align 4
  %264 = load i32, i32* %10, align 4
  %265 = sub nsw i32 0, %264
  %266 = load i32, i32* @BPL, align 4
  %267 = mul nsw i32 %266, 2
  %268 = sub nsw i32 %265, %267
  %269 = call i32 @memmove32_col(i32* %261, i32* %262, i32 -16711936, i32 %263, i32 %268)
  %270 = load i32, i32* %16, align 4
  %271 = sub nsw i32 %270, 8
  store i32 %271, i32* %16, align 4
  br label %272

272:                                              ; preds = %248, %202
  %273 = load i32, i32* %16, align 4
  %274 = ashr i32 %273, 4
  store i32 %274, i32* %21, align 4
  %275 = load i32, i32* %21, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %321

277:                                              ; preds = %272
  %278 = load i32*, i32** %17, align 8
  store i32* %278, i32** %19, align 8
  %279 = load i32*, i32** %18, align 8
  store i32* %279, i32** %20, align 8
  %280 = load i32, i32* @BPL, align 4
  %281 = sdiv i32 %280, 2
  %282 = load i32, i32* %21, align 4
  %283 = mul nsw i32 %282, %281
  store i32 %283, i32* %21, align 4
  %284 = load i32, i32* %10, align 4
  %285 = load i32, i32* %21, align 4
  %286 = mul nsw i32 %285, 4
  %287 = sub nsw i32 %284, %286
  store i32 %287, i32* %22, align 4
  %288 = load i32, i32* %15, align 4
  store i32 %288, i32* %24, align 4
  br label %289

289:                                              ; preds = %317, %277
  %290 = load i32, i32* %24, align 4
  %291 = icmp sgt i32 %290, 0
  br i1 %291, label %292, label %320

292:                                              ; preds = %289
  %293 = load i32, i32* %21, align 4
  store i32 %293, i32* %23, align 4
  br label %294

294:                                              ; preds = %303, %292
  %295 = load i32, i32* %23, align 4
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %306

297:                                              ; preds = %294
  %298 = load i32*, i32** %19, align 8
  %299 = getelementptr inbounds i32, i32* %298, i32 -1
  store i32* %299, i32** %19, align 8
  %300 = load i32, i32* %299, align 4
  %301 = load i32*, i32** %20, align 8
  %302 = getelementptr inbounds i32, i32* %301, i32 -1
  store i32* %302, i32** %20, align 8
  store i32 %300, i32* %302, align 4
  br label %303

303:                                              ; preds = %297
  %304 = load i32, i32* %23, align 4
  %305 = add nsw i32 %304, -1
  store i32 %305, i32* %23, align 4
  br label %294

306:                                              ; preds = %294
  %307 = load i32*, i32** %19, align 8
  %308 = load i32, i32* %22, align 4
  %309 = sext i32 %308 to i64
  %310 = sub i64 0, %309
  %311 = getelementptr inbounds i32, i32* %307, i64 %310
  store i32* %311, i32** %19, align 8
  %312 = load i32*, i32** %20, align 8
  %313 = load i32, i32* %22, align 4
  %314 = sext i32 %313 to i64
  %315 = sub i64 0, %314
  %316 = getelementptr inbounds i32, i32* %312, i64 %315
  store i32* %316, i32** %20, align 8
  br label %317

317:                                              ; preds = %306
  %318 = load i32, i32* %24, align 4
  %319 = add nsw i32 %318, -1
  store i32 %319, i32* %24, align 4
  br label %289

320:                                              ; preds = %289
  br label %321

321:                                              ; preds = %320, %272
  %322 = load i32, i32* %12, align 4
  %323 = and i32 %322, 15
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %351

325:                                              ; preds = %321
  %326 = load i32*, i32** %18, align 8
  %327 = load i32, i32* %16, align 4
  %328 = sub nsw i32 %327, 16
  %329 = load i32, i32* @BPL, align 4
  %330 = sdiv i32 8, %329
  %331 = sdiv i32 %328, %330
  %332 = sext i32 %331 to i64
  %333 = sub i64 0, %332
  %334 = getelementptr inbounds i32, i32* %326, i64 %333
  %335 = load i32*, i32** %17, align 8
  %336 = load i32, i32* %16, align 4
  %337 = sub nsw i32 %336, 16
  %338 = load i32, i32* @BPL, align 4
  %339 = sdiv i32 8, %338
  %340 = sdiv i32 %337, %339
  %341 = sext i32 %340 to i64
  %342 = sub i64 0, %341
  %343 = getelementptr inbounds i32, i32* %335, i64 %342
  %344 = load i32, i32* %25, align 4
  %345 = load i32, i32* %10, align 4
  %346 = sub nsw i32 0, %345
  %347 = load i32, i32* @BPL, align 4
  %348 = mul nsw i32 %347, 2
  %349 = sub nsw i32 %346, %348
  %350 = call i32 @memmove32_col(i32* %334, i32* %343, i32 16711935, i32 %344, i32 %349)
  br label %351

351:                                              ; preds = %325, %321
  br label %352

352:                                              ; preds = %351, %201
  br label %631

353:                                              ; preds = %60
  %354 = load i32, i32* %26, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %488

356:                                              ; preds = %353
  %357 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %358 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = inttoptr i64 %359 to i32*
  %361 = load i32, i32* %11, align 4
  %362 = load i32, i32* %10, align 4
  %363 = mul nsw i32 %361, %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %360, i64 %364
  %366 = load i32, i32* %12, align 4
  %367 = and i32 %366, -16
  %368 = load i32, i32* @BPL, align 4
  %369 = sdiv i32 8, %368
  %370 = sdiv i32 %367, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %365, i64 %371
  store i32* %372, i32** %17, align 8
  %373 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %374 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = inttoptr i64 %375 to i32*
  %377 = load i32, i32* %13, align 4
  %378 = load i32, i32* %10, align 4
  %379 = mul nsw i32 %377, %378
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %376, i64 %380
  %382 = load i32, i32* %14, align 4
  %383 = and i32 %382, -16
  %384 = load i32, i32* @BPL, align 4
  %385 = sdiv i32 8, %384
  %386 = sdiv i32 %383, %385
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %381, i64 %387
  store i32* %388, i32** %18, align 8
  store i32 -16711936, i32* %32, align 4
  store i32 0, i32* %36, align 4
  %389 = load i32, i32* %16, align 4
  store i32 %389, i32* %35, align 4
  %390 = load i32, i32* %12, align 4
  %391 = and i32 %390, 15
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %356
  store i32 1, i32* %36, align 4
  %394 = load i32, i32* %35, align 4
  %395 = add nsw i32 %394, 8
  store i32 %395, i32* %35, align 4
  br label %396

396:                                              ; preds = %393, %356
  %397 = load i32, i32* %12, align 4
  %398 = load i32, i32* %16, align 4
  %399 = add nsw i32 %397, %398
  %400 = and i32 %399, 15
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %405

402:                                              ; preds = %396
  %403 = load i32, i32* %36, align 4
  %404 = or i32 %403, 2
  store i32 %404, i32* %36, align 4
  br label %405

405:                                              ; preds = %402, %396
  %406 = load i32, i32* %35, align 4
  %407 = ashr i32 %406, 4
  store i32 %407, i32* %35, align 4
  %408 = load i32, i32* %15, align 4
  store i32 %408, i32* %33, align 4
  br label %409

409:                                              ; preds = %484, %405
  %410 = load i32, i32* %33, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %487

412:                                              ; preds = %409
  %413 = load i32*, i32** %17, align 8
  store i32* %413, i32** %27, align 8
  %414 = load i32*, i32** %18, align 8
  store i32* %414, i32** %28, align 8
  %415 = load i32, i32* %36, align 4
  %416 = and i32 %415, 1
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %426

418:                                              ; preds = %412
  %419 = load i32*, i32** %27, align 8
  %420 = getelementptr inbounds i32, i32* %419, i32 1
  store i32* %420, i32** %27, align 8
  %421 = load i32, i32* %419, align 4
  %422 = shl i32 %421, 8
  %423 = load i32, i32* %32, align 4
  %424 = and i32 %422, %423
  %425 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  store i32 %424, i32* %425, align 16
  br label %433

426:                                              ; preds = %412
  %427 = load i32*, i32** %28, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 0
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* %32, align 4
  %431 = and i32 %429, %430
  %432 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  store i32 %431, i32* %432, align 16
  br label %433

433:                                              ; preds = %426, %418
  %434 = load i32, i32* %35, align 4
  store i32 %434, i32* %34, align 4
  br label %435

435:                                              ; preds = %457, %433
  %436 = load i32, i32* %34, align 4
  %437 = icmp sgt i32 %436, 0
  br i1 %437, label %438, label %460

438:                                              ; preds = %435
  %439 = load i32*, i32** %27, align 8
  %440 = getelementptr inbounds i32, i32* %439, i32 1
  store i32* %440, i32** %27, align 8
  %441 = load i32, i32* %439, align 4
  store i32 %441, i32* %30, align 4
  %442 = load i32, i32* %30, align 4
  %443 = load i32, i32* %32, align 4
  %444 = and i32 %442, %443
  store i32 %444, i32* %31, align 4
  %445 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  %446 = load i32, i32* %445, align 16
  %447 = load i32, i32* %31, align 4
  %448 = ashr i32 %447, 8
  %449 = or i32 %446, %448
  %450 = load i32*, i32** %28, align 8
  %451 = getelementptr inbounds i32, i32* %450, i32 1
  store i32* %451, i32** %28, align 8
  store i32 %449, i32* %450, align 4
  %452 = load i32, i32* %30, align 4
  %453 = load i32, i32* %31, align 4
  %454 = xor i32 %452, %453
  %455 = shl i32 %454, 8
  %456 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  store i32 %455, i32* %456, align 16
  br label %457

457:                                              ; preds = %438
  %458 = load i32, i32* %34, align 4
  %459 = add nsw i32 %458, -1
  store i32 %459, i32* %34, align 4
  br label %435

460:                                              ; preds = %435
  %461 = load i32, i32* %36, align 4
  %462 = and i32 %461, 2
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %475

464:                                              ; preds = %460
  %465 = load i32*, i32** %28, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 0
  %467 = load i32, i32* %466, align 4
  %468 = load i32, i32* %32, align 4
  %469 = and i32 %467, %468
  %470 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  %471 = load i32, i32* %470, align 16
  %472 = or i32 %469, %471
  %473 = load i32*, i32** %28, align 8
  %474 = getelementptr inbounds i32, i32* %473, i64 0
  store i32 %472, i32* %474, align 4
  br label %475

475:                                              ; preds = %464, %460
  %476 = load i32, i32* %10, align 4
  %477 = load i32*, i32** %17, align 8
  %478 = sext i32 %476 to i64
  %479 = getelementptr inbounds i32, i32* %477, i64 %478
  store i32* %479, i32** %17, align 8
  %480 = load i32, i32* %10, align 4
  %481 = load i32*, i32** %18, align 8
  %482 = sext i32 %480 to i64
  %483 = getelementptr inbounds i32, i32* %481, i64 %482
  store i32* %483, i32** %18, align 8
  br label %484

484:                                              ; preds = %475
  %485 = load i32, i32* %33, align 4
  %486 = add nsw i32 %485, -1
  store i32 %486, i32* %33, align 4
  br label %409

487:                                              ; preds = %409
  br label %630

488:                                              ; preds = %353
  %489 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %490 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %489, i32 0, i32 0
  %491 = load i64, i64* %490, align 8
  %492 = inttoptr i64 %491 to i32*
  %493 = load i32, i32* %11, align 4
  %494 = sub nsw i32 %493, 1
  %495 = load i32, i32* %10, align 4
  %496 = mul nsw i32 %494, %495
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %492, i64 %497
  %499 = load i32, i32* %12, align 4
  %500 = load i32, i32* %16, align 4
  %501 = add nsw i32 %499, %500
  %502 = add nsw i32 %501, 8
  %503 = and i32 %502, -16
  %504 = load i32, i32* @BPL, align 4
  %505 = sdiv i32 8, %504
  %506 = sdiv i32 %503, %505
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %498, i64 %507
  store i32* %508, i32** %17, align 8
  %509 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %510 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %509, i32 0, i32 0
  %511 = load i64, i64* %510, align 8
  %512 = inttoptr i64 %511 to i32*
  %513 = load i32, i32* %13, align 4
  %514 = sub nsw i32 %513, 1
  %515 = load i32, i32* %10, align 4
  %516 = mul nsw i32 %514, %515
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i32, i32* %512, i64 %517
  %519 = load i32, i32* %14, align 4
  %520 = load i32, i32* %16, align 4
  %521 = add nsw i32 %519, %520
  %522 = add nsw i32 %521, 8
  %523 = and i32 %522, -16
  %524 = load i32, i32* @BPL, align 4
  %525 = sdiv i32 8, %524
  %526 = sdiv i32 %523, %525
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32, i32* %518, i64 %527
  store i32* %528, i32** %18, align 8
  store i32 16711935, i32* %42, align 4
  store i32 0, i32* %46, align 4
  %529 = load i32, i32* %16, align 4
  store i32 %529, i32* %45, align 4
  %530 = load i32, i32* %14, align 4
  %531 = load i32, i32* %16, align 4
  %532 = add nsw i32 %530, %531
  %533 = and i32 %532, 15
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %536

535:                                              ; preds = %488
  store i32 1, i32* %46, align 4
  br label %536

536:                                              ; preds = %535, %488
  %537 = load i32, i32* %12, align 4
  %538 = and i32 %537, 15
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %545

540:                                              ; preds = %536
  %541 = load i32, i32* %46, align 4
  %542 = or i32 %541, 2
  store i32 %542, i32* %46, align 4
  %543 = load i32, i32* %45, align 4
  %544 = add nsw i32 %543, 8
  store i32 %544, i32* %45, align 4
  br label %545

545:                                              ; preds = %540, %536
  %546 = load i32, i32* %45, align 4
  %547 = ashr i32 %546, 4
  store i32 %547, i32* %45, align 4
  %548 = load i32, i32* %15, align 4
  store i32 %548, i32* %43, align 4
  br label %549

549:                                              ; preds = %626, %545
  %550 = load i32, i32* %43, align 4
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %629

552:                                              ; preds = %549
  %553 = load i32*, i32** %17, align 8
  store i32* %553, i32** %37, align 8
  %554 = load i32*, i32** %18, align 8
  store i32* %554, i32** %38, align 8
  %555 = load i32, i32* %46, align 4
  %556 = and i32 %555, 1
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %565

558:                                              ; preds = %552
  %559 = load i32*, i32** %38, align 8
  %560 = getelementptr inbounds i32, i32* %559, i64 -1
  %561 = load i32, i32* %560, align 4
  %562 = load i32, i32* %42, align 4
  %563 = and i32 %561, %562
  %564 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 0
  store i32 %563, i32* %564, align 16
  br label %573

565:                                              ; preds = %552
  %566 = load i32*, i32** %37, align 8
  %567 = getelementptr inbounds i32, i32* %566, i32 -1
  store i32* %567, i32** %37, align 8
  %568 = load i32, i32* %567, align 4
  %569 = ashr i32 %568, 8
  %570 = load i32, i32* %42, align 4
  %571 = and i32 %569, %570
  %572 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 0
  store i32 %571, i32* %572, align 16
  br label %573

573:                                              ; preds = %565, %558
  %574 = load i32, i32* %45, align 4
  store i32 %574, i32* %44, align 4
  br label %575

575:                                              ; preds = %597, %573
  %576 = load i32, i32* %44, align 4
  %577 = icmp sgt i32 %576, 0
  br i1 %577, label %578, label %600

578:                                              ; preds = %575
  %579 = load i32*, i32** %37, align 8
  %580 = getelementptr inbounds i32, i32* %579, i32 -1
  store i32* %580, i32** %37, align 8
  %581 = load i32, i32* %580, align 4
  store i32 %581, i32* %40, align 4
  %582 = load i32, i32* %40, align 4
  %583 = load i32, i32* %42, align 4
  %584 = and i32 %582, %583
  store i32 %584, i32* %41, align 4
  %585 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 0
  %586 = load i32, i32* %585, align 16
  %587 = load i32, i32* %41, align 4
  %588 = shl i32 %587, 8
  %589 = or i32 %586, %588
  %590 = load i32*, i32** %38, align 8
  %591 = getelementptr inbounds i32, i32* %590, i32 -1
  store i32* %591, i32** %38, align 8
  store i32 %589, i32* %591, align 4
  %592 = load i32, i32* %40, align 4
  %593 = load i32, i32* %41, align 4
  %594 = xor i32 %592, %593
  %595 = ashr i32 %594, 8
  %596 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 0
  store i32 %595, i32* %596, align 16
  br label %597

597:                                              ; preds = %578
  %598 = load i32, i32* %44, align 4
  %599 = add nsw i32 %598, -1
  store i32 %599, i32* %44, align 4
  br label %575

600:                                              ; preds = %575
  %601 = load i32, i32* %46, align 4
  %602 = and i32 %601, 2
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %615, label %604

604:                                              ; preds = %600
  %605 = load i32*, i32** %38, align 8
  %606 = getelementptr inbounds i32, i32* %605, i64 -1
  %607 = load i32, i32* %606, align 4
  %608 = load i32, i32* %42, align 4
  %609 = and i32 %607, %608
  %610 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 0
  %611 = load i32, i32* %610, align 16
  %612 = or i32 %609, %611
  %613 = load i32*, i32** %38, align 8
  %614 = getelementptr inbounds i32, i32* %613, i64 -1
  store i32 %612, i32* %614, align 4
  br label %615

615:                                              ; preds = %604, %600
  %616 = load i32, i32* %10, align 4
  %617 = load i32*, i32** %17, align 8
  %618 = sext i32 %616 to i64
  %619 = sub i64 0, %618
  %620 = getelementptr inbounds i32, i32* %617, i64 %619
  store i32* %620, i32** %17, align 8
  %621 = load i32, i32* %10, align 4
  %622 = load i32*, i32** %18, align 8
  %623 = sext i32 %621 to i64
  %624 = sub i64 0, %623
  %625 = getelementptr inbounds i32, i32* %622, i64 %624
  store i32* %625, i32** %18, align 8
  br label %626

626:                                              ; preds = %615
  %627 = load i32, i32* %43, align 4
  %628 = add nsw i32 %627, -1
  store i32 %628, i32* %43, align 4
  br label %549

629:                                              ; preds = %549
  br label %630

630:                                              ; preds = %629, %487
  br label %631

631:                                              ; preds = %630, %352
  ret void
}

declare dso_local i32 @memmove32_col(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
