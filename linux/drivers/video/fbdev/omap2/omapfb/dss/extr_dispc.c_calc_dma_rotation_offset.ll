; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_calc_dma_rotation_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_calc_dma_rotation_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"calc_rot(%d): scrw %d, %dx%d\0A\00", align 1
@OMAP_DSS_COLOR_YUV2 = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_UYVY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32)* @calc_dma_rotation_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_dma_rotation_offset(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32* %9, i32* %10, i32* %11, i32 %12, i32 %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32 %0, i32* %15, align 4
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32* %8, i32** %23, align 8
  store i32* %9, i32** %24, align 8
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32 %12, i32* %27, align 4
  store i32 %13, i32* %28, align 4
  %32 = load i32, i32* %20, align 4
  switch i32 %32, label %35 [
    i32 135, label %33
    i32 134, label %33
    i32 133, label %33
    i32 132, label %33
  ]

33:                                               ; preds = %14, %14, %14, %14
  %34 = call i32 (...) @BUG()
  br label %487

35:                                               ; preds = %14
  %36 = load i32, i32* %20, align 4
  %37 = call i32 @color_mode_to_bpp(i32 %36)
  %38 = sdiv i32 %37, 8
  store i32 %38, i32* %29, align 4
  br label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* %19, align 4
  %44 = call i32 @DSSDBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %15, align 4
  %46 = icmp eq i32 %45, 131
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %15, align 4
  %49 = icmp eq i32 %48, 130
  br i1 %49, label %50, label %53

50:                                               ; preds = %47, %39
  %51 = load i32, i32* %18, align 4
  store i32 %51, i32* %30, align 4
  %52 = load i32, i32* %19, align 4
  store i32 %52, i32* %31, align 4
  br label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %19, align 4
  store i32 %54, i32* %30, align 4
  %55 = load i32, i32* %18, align 4
  store i32 %55, i32* %31, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %16, align 4
  %59 = mul nsw i32 %58, 4
  %60 = add nsw i32 %57, %59
  switch i32 %60, label %485 [
    i32 131, label %61
    i32 128, label %118
    i32 130, label %164
    i32 129, label %232
    i32 135, label %276
    i32 132, label %336
    i32 134, label %376
    i32 133, label %436
  ]

61:                                               ; preds = %56
  %62 = load i32*, i32** %24, align 8
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* %22, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i32*, i32** %24, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %22, align 4
  %69 = load i32, i32* %17, align 4
  %70 = mul i32 %68, %69
  %71 = load i32, i32* %29, align 4
  %72 = mul i32 %70, %71
  %73 = add i32 %67, %72
  %74 = load i32*, i32** %23, align 8
  store i32 %73, i32* %74, align 4
  br label %79

75:                                               ; preds = %61
  %76 = load i32*, i32** %24, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %23, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %65
  %80 = load i32, i32* %28, align 4
  %81 = load i32, i32* %17, align 4
  %82 = mul i32 %80, %81
  %83 = load i32, i32* %30, align 4
  %84 = load i32, i32* %27, align 4
  %85 = mul i32 %83, %84
  %86 = sub i32 %82, %85
  %87 = add i32 1, %86
  %88 = load i32, i32* %21, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = load i32, i32* %17, align 4
  br label %93

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  %95 = add i32 %87, %94
  %96 = load i32, i32* %29, align 4
  %97 = call i32 @pixinc(i32 %95, i32 %96)
  %98 = load i32*, i32** %25, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* @OMAP_DSS_COLOR_YUV2, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* @OMAP_DSS_COLOR_UYVY, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102, %93
  %107 = load i32, i32* %27, align 4
  %108 = load i32, i32* %29, align 4
  %109 = mul nsw i32 2, %108
  %110 = call i32 @pixinc(i32 %107, i32 %109)
  %111 = load i32*, i32** %26, align 8
  store i32 %110, i32* %111, align 4
  br label %117

112:                                              ; preds = %102
  %113 = load i32, i32* %27, align 4
  %114 = load i32, i32* %29, align 4
  %115 = call i32 @pixinc(i32 %113, i32 %114)
  %116 = load i32*, i32** %26, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %112, %106
  br label %487

118:                                              ; preds = %56
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %31, align 4
  %121 = sub i32 %120, 1
  %122 = mul i32 %119, %121
  %123 = load i32, i32* %29, align 4
  %124 = mul i32 %122, %123
  %125 = load i32*, i32** %24, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* %22, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %118
  %129 = load i32*, i32** %24, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %22, align 4
  %132 = load i32, i32* %29, align 4
  %133 = mul i32 %131, %132
  %134 = add i32 %130, %133
  %135 = load i32*, i32** %23, align 8
  store i32 %134, i32* %135, align 4
  br label %140

136:                                              ; preds = %118
  %137 = load i32*, i32** %24, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %23, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %136, %128
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %31, align 4
  %143 = load i32, i32* %27, align 4
  %144 = mul i32 %142, %143
  %145 = sub i32 %144, 1
  %146 = mul i32 %141, %145
  %147 = load i32, i32* %28, align 4
  %148 = add i32 %146, %147
  %149 = load i32, i32* %21, align 4
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 1, i32 0
  %153 = add i32 %148, %152
  %154 = load i32, i32* %29, align 4
  %155 = call i32 @pixinc(i32 %153, i32 %154)
  %156 = load i32*, i32** %25, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* %27, align 4
  %158 = sub nsw i32 0, %157
  %159 = load i32, i32* %17, align 4
  %160 = mul i32 %158, %159
  %161 = load i32, i32* %29, align 4
  %162 = call i32 @pixinc(i32 %160, i32 %161)
  %163 = load i32*, i32** %26, align 8
  store i32 %162, i32* %163, align 4
  br label %487

164:                                              ; preds = %56
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* %31, align 4
  %167 = sub i32 %166, 1
  %168 = mul i32 %165, %167
  %169 = load i32, i32* %30, align 4
  %170 = add i32 %168, %169
  %171 = sub i32 %170, 1
  %172 = load i32, i32* %29, align 4
  %173 = mul i32 %171, %172
  %174 = load i32*, i32** %24, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32, i32* %22, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %164
  %178 = load i32*, i32** %24, align 8
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %22, align 4
  %181 = load i32, i32* %17, align 4
  %182 = mul i32 %180, %181
  %183 = load i32, i32* %29, align 4
  %184 = mul i32 %182, %183
  %185 = sub i32 %179, %184
  %186 = load i32*, i32** %23, align 8
  store i32 %185, i32* %186, align 4
  br label %191

187:                                              ; preds = %164
  %188 = load i32*, i32** %24, align 8
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %23, align 8
  store i32 %189, i32* %190, align 4
  br label %191

191:                                              ; preds = %187, %177
  %192 = load i32, i32* %28, align 4
  %193 = load i32, i32* %17, align 4
  %194 = mul i32 %192, %193
  %195 = load i32, i32* %30, align 4
  %196 = load i32, i32* %27, align 4
  %197 = mul i32 %195, %196
  %198 = sub i32 %194, %197
  %199 = sub i32 -1, %198
  %200 = load i32, i32* %21, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %191
  %203 = load i32, i32* %17, align 4
  br label %205

204:                                              ; preds = %191
  br label %205

205:                                              ; preds = %204, %202
  %206 = phi i32 [ %203, %202 ], [ 0, %204 ]
  %207 = sub i32 %199, %206
  %208 = load i32, i32* %29, align 4
  %209 = call i32 @pixinc(i32 %207, i32 %208)
  %210 = load i32*, i32** %25, align 8
  store i32 %209, i32* %210, align 4
  %211 = load i32, i32* %20, align 4
  %212 = load i32, i32* @OMAP_DSS_COLOR_YUV2, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %218, label %214

214:                                              ; preds = %205
  %215 = load i32, i32* %20, align 4
  %216 = load i32, i32* @OMAP_DSS_COLOR_UYVY, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %225

218:                                              ; preds = %214, %205
  %219 = load i32, i32* %27, align 4
  %220 = sub nsw i32 0, %219
  %221 = load i32, i32* %29, align 4
  %222 = mul nsw i32 2, %221
  %223 = call i32 @pixinc(i32 %220, i32 %222)
  %224 = load i32*, i32** %26, align 8
  store i32 %223, i32* %224, align 4
  br label %231

225:                                              ; preds = %214
  %226 = load i32, i32* %27, align 4
  %227 = sub nsw i32 0, %226
  %228 = load i32, i32* %29, align 4
  %229 = call i32 @pixinc(i32 %227, i32 %228)
  %230 = load i32*, i32** %26, align 8
  store i32 %229, i32* %230, align 4
  br label %231

231:                                              ; preds = %225, %218
  br label %487

232:                                              ; preds = %56
  %233 = load i32, i32* %30, align 4
  %234 = sub i32 %233, 1
  %235 = load i32, i32* %29, align 4
  %236 = mul i32 %234, %235
  %237 = load i32*, i32** %24, align 8
  store i32 %236, i32* %237, align 4
  %238 = load i32, i32* %22, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %232
  %241 = load i32*, i32** %24, align 8
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %22, align 4
  %244 = load i32, i32* %29, align 4
  %245 = mul i32 %243, %244
  %246 = sub i32 %242, %245
  %247 = load i32*, i32** %23, align 8
  store i32 %246, i32* %247, align 4
  br label %252

248:                                              ; preds = %232
  %249 = load i32*, i32** %24, align 8
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** %23, align 8
  store i32 %250, i32* %251, align 4
  br label %252

252:                                              ; preds = %248, %240
  %253 = load i32, i32* %17, align 4
  %254 = sub i32 0, %253
  %255 = load i32, i32* %31, align 4
  %256 = load i32, i32* %27, align 4
  %257 = mul i32 %255, %256
  %258 = sub i32 %257, 1
  %259 = mul i32 %254, %258
  %260 = load i32, i32* %28, align 4
  %261 = sub i32 %259, %260
  %262 = load i32, i32* %21, align 4
  %263 = icmp ne i32 %262, 0
  %264 = zext i1 %263 to i64
  %265 = select i1 %263, i32 1, i32 0
  %266 = sub i32 %261, %265
  %267 = load i32, i32* %29, align 4
  %268 = call i32 @pixinc(i32 %266, i32 %267)
  %269 = load i32*, i32** %25, align 8
  store i32 %268, i32* %269, align 4
  %270 = load i32, i32* %27, align 4
  %271 = load i32, i32* %17, align 4
  %272 = mul i32 %270, %271
  %273 = load i32, i32* %29, align 4
  %274 = call i32 @pixinc(i32 %272, i32 %273)
  %275 = load i32*, i32** %26, align 8
  store i32 %274, i32* %275, align 4
  br label %487

276:                                              ; preds = %56
  %277 = load i32, i32* %30, align 4
  %278 = sub i32 %277, 1
  %279 = load i32, i32* %29, align 4
  %280 = mul i32 %278, %279
  %281 = load i32*, i32** %24, align 8
  store i32 %280, i32* %281, align 4
  %282 = load i32, i32* %22, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %294

284:                                              ; preds = %276
  %285 = load i32*, i32** %24, align 8
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %22, align 4
  %288 = load i32, i32* %17, align 4
  %289 = mul i32 %287, %288
  %290 = load i32, i32* %29, align 4
  %291 = mul i32 %289, %290
  %292 = add i32 %286, %291
  %293 = load i32*, i32** %23, align 8
  store i32 %292, i32* %293, align 4
  br label %298

294:                                              ; preds = %276
  %295 = load i32*, i32** %24, align 8
  %296 = load i32, i32* %295, align 4
  %297 = load i32*, i32** %23, align 8
  store i32 %296, i32* %297, align 4
  br label %298

298:                                              ; preds = %294, %284
  %299 = load i32, i32* %28, align 4
  %300 = load i32, i32* %17, align 4
  %301 = mul i32 %299, %300
  %302 = mul i32 %301, 2
  %303 = sub i32 %302, 1
  %304 = load i32, i32* %21, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %298
  %307 = load i32, i32* %17, align 4
  br label %309

308:                                              ; preds = %298
  br label %309

309:                                              ; preds = %308, %306
  %310 = phi i32 [ %307, %306 ], [ 0, %308 ]
  %311 = add i32 %303, %310
  %312 = load i32, i32* %29, align 4
  %313 = call i32 @pixinc(i32 %311, i32 %312)
  %314 = load i32*, i32** %25, align 8
  store i32 %313, i32* %314, align 4
  %315 = load i32, i32* %20, align 4
  %316 = load i32, i32* @OMAP_DSS_COLOR_YUV2, align 4
  %317 = icmp eq i32 %315, %316
  br i1 %317, label %322, label %318

318:                                              ; preds = %309
  %319 = load i32, i32* %20, align 4
  %320 = load i32, i32* @OMAP_DSS_COLOR_UYVY, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %329

322:                                              ; preds = %318, %309
  %323 = load i32, i32* %27, align 4
  %324 = sub nsw i32 0, %323
  %325 = load i32, i32* %29, align 4
  %326 = mul nsw i32 2, %325
  %327 = call i32 @pixinc(i32 %324, i32 %326)
  %328 = load i32*, i32** %26, align 8
  store i32 %327, i32* %328, align 4
  br label %335

329:                                              ; preds = %318
  %330 = load i32, i32* %27, align 4
  %331 = sub nsw i32 0, %330
  %332 = load i32, i32* %29, align 4
  %333 = call i32 @pixinc(i32 %331, i32 %332)
  %334 = load i32*, i32** %26, align 8
  store i32 %333, i32* %334, align 4
  br label %335

335:                                              ; preds = %329, %322
  br label %487

336:                                              ; preds = %56
  %337 = load i32*, i32** %24, align 8
  store i32 0, i32* %337, align 4
  %338 = load i32, i32* %22, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %348

340:                                              ; preds = %336
  %341 = load i32*, i32** %24, align 8
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %22, align 4
  %344 = load i32, i32* %29, align 4
  %345 = mul i32 %343, %344
  %346 = add i32 %342, %345
  %347 = load i32*, i32** %23, align 8
  store i32 %346, i32* %347, align 4
  br label %352

348:                                              ; preds = %336
  %349 = load i32*, i32** %24, align 8
  %350 = load i32, i32* %349, align 4
  %351 = load i32*, i32** %23, align 8
  store i32 %350, i32* %351, align 4
  br label %352

352:                                              ; preds = %348, %340
  %353 = load i32, i32* %17, align 4
  %354 = sub i32 0, %353
  %355 = load i32, i32* %31, align 4
  %356 = load i32, i32* %27, align 4
  %357 = mul i32 %355, %356
  %358 = sub i32 %357, 1
  %359 = mul i32 %354, %358
  %360 = load i32, i32* %28, align 4
  %361 = add i32 %359, %360
  %362 = load i32, i32* %21, align 4
  %363 = icmp ne i32 %362, 0
  %364 = zext i1 %363 to i64
  %365 = select i1 %363, i32 1, i32 0
  %366 = add i32 %361, %365
  %367 = load i32, i32* %29, align 4
  %368 = call i32 @pixinc(i32 %366, i32 %367)
  %369 = load i32*, i32** %25, align 8
  store i32 %368, i32* %369, align 4
  %370 = load i32, i32* %27, align 4
  %371 = load i32, i32* %17, align 4
  %372 = mul i32 %370, %371
  %373 = load i32, i32* %29, align 4
  %374 = call i32 @pixinc(i32 %372, i32 %373)
  %375 = load i32*, i32** %26, align 8
  store i32 %374, i32* %375, align 4
  br label %487

376:                                              ; preds = %56
  %377 = load i32, i32* %17, align 4
  %378 = load i32, i32* %31, align 4
  %379 = sub i32 %378, 1
  %380 = mul i32 %377, %379
  %381 = load i32, i32* %29, align 4
  %382 = mul i32 %380, %381
  %383 = load i32*, i32** %24, align 8
  store i32 %382, i32* %383, align 4
  %384 = load i32, i32* %22, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %396

386:                                              ; preds = %376
  %387 = load i32*, i32** %24, align 8
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* %22, align 4
  %390 = load i32, i32* %17, align 4
  %391 = mul i32 %389, %390
  %392 = load i32, i32* %29, align 4
  %393 = mul i32 %391, %392
  %394 = sub i32 %388, %393
  %395 = load i32*, i32** %23, align 8
  store i32 %394, i32* %395, align 4
  br label %400

396:                                              ; preds = %376
  %397 = load i32*, i32** %24, align 8
  %398 = load i32, i32* %397, align 4
  %399 = load i32*, i32** %23, align 8
  store i32 %398, i32* %399, align 4
  br label %400

400:                                              ; preds = %396, %386
  %401 = load i32, i32* %28, align 4
  %402 = load i32, i32* %17, align 4
  %403 = mul i32 %401, %402
  %404 = mul i32 %403, 2
  %405 = sub i32 1, %404
  %406 = load i32, i32* %21, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %410

408:                                              ; preds = %400
  %409 = load i32, i32* %17, align 4
  br label %411

410:                                              ; preds = %400
  br label %411

411:                                              ; preds = %410, %408
  %412 = phi i32 [ %409, %408 ], [ 0, %410 ]
  %413 = sub i32 %405, %412
  %414 = load i32, i32* %29, align 4
  %415 = call i32 @pixinc(i32 %413, i32 %414)
  %416 = load i32*, i32** %25, align 8
  store i32 %415, i32* %416, align 4
  %417 = load i32, i32* %20, align 4
  %418 = load i32, i32* @OMAP_DSS_COLOR_YUV2, align 4
  %419 = icmp eq i32 %417, %418
  br i1 %419, label %424, label %420

420:                                              ; preds = %411
  %421 = load i32, i32* %20, align 4
  %422 = load i32, i32* @OMAP_DSS_COLOR_UYVY, align 4
  %423 = icmp eq i32 %421, %422
  br i1 %423, label %424, label %430

424:                                              ; preds = %420, %411
  %425 = load i32, i32* %27, align 4
  %426 = load i32, i32* %29, align 4
  %427 = mul nsw i32 2, %426
  %428 = call i32 @pixinc(i32 %425, i32 %427)
  %429 = load i32*, i32** %26, align 8
  store i32 %428, i32* %429, align 4
  br label %435

430:                                              ; preds = %420
  %431 = load i32, i32* %27, align 4
  %432 = load i32, i32* %29, align 4
  %433 = call i32 @pixinc(i32 %431, i32 %432)
  %434 = load i32*, i32** %26, align 8
  store i32 %433, i32* %434, align 4
  br label %435

435:                                              ; preds = %430, %424
  br label %487

436:                                              ; preds = %56
  %437 = load i32, i32* %17, align 4
  %438 = load i32, i32* %31, align 4
  %439 = sub i32 %438, 1
  %440 = mul i32 %437, %439
  %441 = load i32, i32* %30, align 4
  %442 = add i32 %440, %441
  %443 = sub i32 %442, 1
  %444 = load i32, i32* %29, align 4
  %445 = mul i32 %443, %444
  %446 = load i32*, i32** %24, align 8
  store i32 %445, i32* %446, align 4
  %447 = load i32, i32* %22, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %457

449:                                              ; preds = %436
  %450 = load i32*, i32** %24, align 8
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* %22, align 4
  %453 = load i32, i32* %29, align 4
  %454 = mul i32 %452, %453
  %455 = sub i32 %451, %454
  %456 = load i32*, i32** %23, align 8
  store i32 %455, i32* %456, align 4
  br label %461

457:                                              ; preds = %436
  %458 = load i32*, i32** %24, align 8
  %459 = load i32, i32* %458, align 4
  %460 = load i32*, i32** %23, align 8
  store i32 %459, i32* %460, align 4
  br label %461

461:                                              ; preds = %457, %449
  %462 = load i32, i32* %17, align 4
  %463 = load i32, i32* %31, align 4
  %464 = load i32, i32* %27, align 4
  %465 = mul i32 %463, %464
  %466 = sub i32 %465, 1
  %467 = mul i32 %462, %466
  %468 = load i32, i32* %28, align 4
  %469 = sub i32 %467, %468
  %470 = load i32, i32* %21, align 4
  %471 = icmp ne i32 %470, 0
  %472 = zext i1 %471 to i64
  %473 = select i1 %471, i32 1, i32 0
  %474 = sub i32 %469, %473
  %475 = load i32, i32* %29, align 4
  %476 = call i32 @pixinc(i32 %474, i32 %475)
  %477 = load i32*, i32** %25, align 8
  store i32 %476, i32* %477, align 4
  %478 = load i32, i32* %27, align 4
  %479 = sub nsw i32 0, %478
  %480 = load i32, i32* %17, align 4
  %481 = mul i32 %479, %480
  %482 = load i32, i32* %29, align 4
  %483 = call i32 @pixinc(i32 %481, i32 %482)
  %484 = load i32*, i32** %26, align 8
  store i32 %483, i32* %484, align 4
  br label %487

485:                                              ; preds = %56
  %486 = call i32 (...) @BUG()
  br label %487

487:                                              ; preds = %33, %485, %461, %435, %352, %335, %252, %231, %140, %117
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @color_mode_to_bpp(i32) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pixinc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
