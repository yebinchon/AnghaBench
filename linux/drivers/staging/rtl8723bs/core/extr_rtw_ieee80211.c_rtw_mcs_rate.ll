; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ieee80211.c_rtw_mcs_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ieee80211.c_rtw_mcs_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RF_1T1R = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_mcs_rate(i64 %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @RF_1T1R, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %213

13:                                               ; preds = %4
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = call zeroext i8 @BIT(i32 7)
  %19 = zext i8 %18 to i32
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %13
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1500, i32 1350
  br label %35

30:                                               ; preds = %22
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 722, i32 650
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i32 [ %29, %25 ], [ %34, %30 ]
  store i32 %36, i32* %9, align 4
  br label %212

37:                                               ; preds = %13
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = call zeroext i8 @BIT(i32 6)
  %43 = zext i8 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %37
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1350, i32 1215
  br label %59

54:                                               ; preds = %46
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 650, i32 585
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i32 [ %53, %49 ], [ %58, %54 ]
  store i32 %60, i32* %9, align 4
  br label %211

61:                                               ; preds = %37
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = call zeroext i8 @BIT(i32 5)
  %67 = zext i8 %66 to i32
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %61
  %71 = load i64, i64* %6, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i64, i64* %7, align 8
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 1200, i32 1080
  br label %83

78:                                               ; preds = %70
  %79 = load i64, i64* %7, align 8
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 578, i32 520
  br label %83

83:                                               ; preds = %78, %73
  %84 = phi i32 [ %77, %73 ], [ %82, %78 ]
  store i32 %84, i32* %9, align 4
  br label %210

85:                                               ; preds = %61
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = call zeroext i8 @BIT(i32 4)
  %91 = zext i8 %90 to i32
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %85
  %95 = load i64, i64* %6, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i64, i64* %7, align 8
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 900, i32 810
  br label %107

102:                                              ; preds = %94
  %103 = load i64, i64* %7, align 8
  %104 = icmp ne i64 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 433, i32 390
  br label %107

107:                                              ; preds = %102, %97
  %108 = phi i32 [ %101, %97 ], [ %106, %102 ]
  store i32 %108, i32* %9, align 4
  br label %209

109:                                              ; preds = %85
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = call zeroext i8 @BIT(i32 3)
  %115 = zext i8 %114 to i32
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %109
  %119 = load i64, i64* %6, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i64, i64* %7, align 8
  %123 = icmp ne i64 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 600, i32 540
  br label %131

126:                                              ; preds = %118
  %127 = load i64, i64* %7, align 8
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 289, i32 260
  br label %131

131:                                              ; preds = %126, %121
  %132 = phi i32 [ %125, %121 ], [ %130, %126 ]
  store i32 %132, i32* %9, align 4
  br label %208

133:                                              ; preds = %109
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = call zeroext i8 @BIT(i32 2)
  %139 = zext i8 %138 to i32
  %140 = and i32 %137, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %133
  %143 = load i64, i64* %6, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i64, i64* %7, align 8
  %147 = icmp ne i64 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 450, i32 405
  br label %155

150:                                              ; preds = %142
  %151 = load i64, i64* %7, align 8
  %152 = icmp ne i64 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 217, i32 195
  br label %155

155:                                              ; preds = %150, %145
  %156 = phi i32 [ %149, %145 ], [ %154, %150 ]
  store i32 %156, i32* %9, align 4
  br label %207

157:                                              ; preds = %133
  %158 = load i8*, i8** %8, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = call zeroext i8 @BIT(i32 1)
  %163 = zext i8 %162 to i32
  %164 = and i32 %161, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %181

166:                                              ; preds = %157
  %167 = load i64, i64* %6, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = load i64, i64* %7, align 8
  %171 = icmp ne i64 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 300, i32 270
  br label %179

174:                                              ; preds = %166
  %175 = load i64, i64* %7, align 8
  %176 = icmp ne i64 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 144, i32 130
  br label %179

179:                                              ; preds = %174, %169
  %180 = phi i32 [ %173, %169 ], [ %178, %174 ]
  store i32 %180, i32* %9, align 4
  br label %206

181:                                              ; preds = %157
  %182 = load i8*, i8** %8, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 0
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = call zeroext i8 @BIT(i32 0)
  %187 = zext i8 %186 to i32
  %188 = and i32 %185, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %205

190:                                              ; preds = %181
  %191 = load i64, i64* %6, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = load i64, i64* %7, align 8
  %195 = icmp ne i64 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i32 150, i32 135
  br label %203

198:                                              ; preds = %190
  %199 = load i64, i64* %7, align 8
  %200 = icmp ne i64 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 72, i32 65
  br label %203

203:                                              ; preds = %198, %193
  %204 = phi i32 [ %197, %193 ], [ %202, %198 ]
  store i32 %204, i32* %9, align 4
  br label %205

205:                                              ; preds = %203, %181
  br label %206

206:                                              ; preds = %205, %179
  br label %207

207:                                              ; preds = %206, %155
  br label %208

208:                                              ; preds = %207, %131
  br label %209

209:                                              ; preds = %208, %107
  br label %210

210:                                              ; preds = %209, %83
  br label %211

211:                                              ; preds = %210, %59
  br label %212

212:                                              ; preds = %211, %35
  br label %619

213:                                              ; preds = %4
  %214 = load i8*, i8** %8, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 1
  %216 = load i8, i8* %215, align 1
  %217 = icmp ne i8 %216, 0
  br i1 %217, label %218, label %418

218:                                              ; preds = %213
  %219 = load i8*, i8** %8, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 1
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = call zeroext i8 @BIT(i32 7)
  %224 = zext i8 %223 to i32
  %225 = and i32 %222, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %242

227:                                              ; preds = %218
  %228 = load i64, i64* %6, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %227
  %231 = load i64, i64* %7, align 8
  %232 = icmp ne i64 %231, 0
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i32 3000, i32 2700
  br label %240

235:                                              ; preds = %227
  %236 = load i64, i64* %7, align 8
  %237 = icmp ne i64 %236, 0
  %238 = zext i1 %237 to i64
  %239 = select i1 %237, i32 1444, i32 1300
  br label %240

240:                                              ; preds = %235, %230
  %241 = phi i32 [ %234, %230 ], [ %239, %235 ]
  store i32 %241, i32* %9, align 4
  br label %417

242:                                              ; preds = %218
  %243 = load i8*, i8** %8, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 1
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = call zeroext i8 @BIT(i32 6)
  %248 = zext i8 %247 to i32
  %249 = and i32 %246, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %266

251:                                              ; preds = %242
  %252 = load i64, i64* %6, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %251
  %255 = load i64, i64* %7, align 8
  %256 = icmp ne i64 %255, 0
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i32 2700, i32 2430
  br label %264

259:                                              ; preds = %251
  %260 = load i64, i64* %7, align 8
  %261 = icmp ne i64 %260, 0
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i32 1300, i32 1170
  br label %264

264:                                              ; preds = %259, %254
  %265 = phi i32 [ %258, %254 ], [ %263, %259 ]
  store i32 %265, i32* %9, align 4
  br label %416

266:                                              ; preds = %242
  %267 = load i8*, i8** %8, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 1
  %269 = load i8, i8* %268, align 1
  %270 = zext i8 %269 to i32
  %271 = call zeroext i8 @BIT(i32 5)
  %272 = zext i8 %271 to i32
  %273 = and i32 %270, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %290

275:                                              ; preds = %266
  %276 = load i64, i64* %6, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %275
  %279 = load i64, i64* %7, align 8
  %280 = icmp ne i64 %279, 0
  %281 = zext i1 %280 to i64
  %282 = select i1 %280, i32 2400, i32 2160
  br label %288

283:                                              ; preds = %275
  %284 = load i64, i64* %7, align 8
  %285 = icmp ne i64 %284, 0
  %286 = zext i1 %285 to i64
  %287 = select i1 %285, i32 1156, i32 1040
  br label %288

288:                                              ; preds = %283, %278
  %289 = phi i32 [ %282, %278 ], [ %287, %283 ]
  store i32 %289, i32* %9, align 4
  br label %415

290:                                              ; preds = %266
  %291 = load i8*, i8** %8, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 1
  %293 = load i8, i8* %292, align 1
  %294 = zext i8 %293 to i32
  %295 = call zeroext i8 @BIT(i32 4)
  %296 = zext i8 %295 to i32
  %297 = and i32 %294, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %314

299:                                              ; preds = %290
  %300 = load i64, i64* %6, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %299
  %303 = load i64, i64* %7, align 8
  %304 = icmp ne i64 %303, 0
  %305 = zext i1 %304 to i64
  %306 = select i1 %304, i32 1800, i32 1620
  br label %312

307:                                              ; preds = %299
  %308 = load i64, i64* %7, align 8
  %309 = icmp ne i64 %308, 0
  %310 = zext i1 %309 to i64
  %311 = select i1 %309, i32 867, i32 780
  br label %312

312:                                              ; preds = %307, %302
  %313 = phi i32 [ %306, %302 ], [ %311, %307 ]
  store i32 %313, i32* %9, align 4
  br label %414

314:                                              ; preds = %290
  %315 = load i8*, i8** %8, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 1
  %317 = load i8, i8* %316, align 1
  %318 = zext i8 %317 to i32
  %319 = call zeroext i8 @BIT(i32 3)
  %320 = zext i8 %319 to i32
  %321 = and i32 %318, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %338

323:                                              ; preds = %314
  %324 = load i64, i64* %6, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %331

326:                                              ; preds = %323
  %327 = load i64, i64* %7, align 8
  %328 = icmp ne i64 %327, 0
  %329 = zext i1 %328 to i64
  %330 = select i1 %328, i32 1200, i32 1080
  br label %336

331:                                              ; preds = %323
  %332 = load i64, i64* %7, align 8
  %333 = icmp ne i64 %332, 0
  %334 = zext i1 %333 to i64
  %335 = select i1 %333, i32 578, i32 520
  br label %336

336:                                              ; preds = %331, %326
  %337 = phi i32 [ %330, %326 ], [ %335, %331 ]
  store i32 %337, i32* %9, align 4
  br label %413

338:                                              ; preds = %314
  %339 = load i8*, i8** %8, align 8
  %340 = getelementptr inbounds i8, i8* %339, i64 1
  %341 = load i8, i8* %340, align 1
  %342 = zext i8 %341 to i32
  %343 = call zeroext i8 @BIT(i32 2)
  %344 = zext i8 %343 to i32
  %345 = and i32 %342, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %362

347:                                              ; preds = %338
  %348 = load i64, i64* %6, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %355

350:                                              ; preds = %347
  %351 = load i64, i64* %7, align 8
  %352 = icmp ne i64 %351, 0
  %353 = zext i1 %352 to i64
  %354 = select i1 %352, i32 900, i32 810
  br label %360

355:                                              ; preds = %347
  %356 = load i64, i64* %7, align 8
  %357 = icmp ne i64 %356, 0
  %358 = zext i1 %357 to i64
  %359 = select i1 %357, i32 433, i32 390
  br label %360

360:                                              ; preds = %355, %350
  %361 = phi i32 [ %354, %350 ], [ %359, %355 ]
  store i32 %361, i32* %9, align 4
  br label %412

362:                                              ; preds = %338
  %363 = load i8*, i8** %8, align 8
  %364 = getelementptr inbounds i8, i8* %363, i64 1
  %365 = load i8, i8* %364, align 1
  %366 = zext i8 %365 to i32
  %367 = call zeroext i8 @BIT(i32 1)
  %368 = zext i8 %367 to i32
  %369 = and i32 %366, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %386

371:                                              ; preds = %362
  %372 = load i64, i64* %6, align 8
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %371
  %375 = load i64, i64* %7, align 8
  %376 = icmp ne i64 %375, 0
  %377 = zext i1 %376 to i64
  %378 = select i1 %376, i32 600, i32 540
  br label %384

379:                                              ; preds = %371
  %380 = load i64, i64* %7, align 8
  %381 = icmp ne i64 %380, 0
  %382 = zext i1 %381 to i64
  %383 = select i1 %381, i32 289, i32 260
  br label %384

384:                                              ; preds = %379, %374
  %385 = phi i32 [ %378, %374 ], [ %383, %379 ]
  store i32 %385, i32* %9, align 4
  br label %411

386:                                              ; preds = %362
  %387 = load i8*, i8** %8, align 8
  %388 = getelementptr inbounds i8, i8* %387, i64 1
  %389 = load i8, i8* %388, align 1
  %390 = zext i8 %389 to i32
  %391 = call zeroext i8 @BIT(i32 0)
  %392 = zext i8 %391 to i32
  %393 = and i32 %390, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %410

395:                                              ; preds = %386
  %396 = load i64, i64* %6, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %403

398:                                              ; preds = %395
  %399 = load i64, i64* %7, align 8
  %400 = icmp ne i64 %399, 0
  %401 = zext i1 %400 to i64
  %402 = select i1 %400, i32 300, i32 270
  br label %408

403:                                              ; preds = %395
  %404 = load i64, i64* %7, align 8
  %405 = icmp ne i64 %404, 0
  %406 = zext i1 %405 to i64
  %407 = select i1 %405, i32 144, i32 130
  br label %408

408:                                              ; preds = %403, %398
  %409 = phi i32 [ %402, %398 ], [ %407, %403 ]
  store i32 %409, i32* %9, align 4
  br label %410

410:                                              ; preds = %408, %386
  br label %411

411:                                              ; preds = %410, %384
  br label %412

412:                                              ; preds = %411, %360
  br label %413

413:                                              ; preds = %412, %336
  br label %414

414:                                              ; preds = %413, %312
  br label %415

415:                                              ; preds = %414, %288
  br label %416

416:                                              ; preds = %415, %264
  br label %417

417:                                              ; preds = %416, %240
  br label %618

418:                                              ; preds = %213
  %419 = load i8*, i8** %8, align 8
  %420 = getelementptr inbounds i8, i8* %419, i64 0
  %421 = load i8, i8* %420, align 1
  %422 = zext i8 %421 to i32
  %423 = call zeroext i8 @BIT(i32 7)
  %424 = zext i8 %423 to i32
  %425 = and i32 %422, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %442

427:                                              ; preds = %418
  %428 = load i64, i64* %6, align 8
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %435

430:                                              ; preds = %427
  %431 = load i64, i64* %7, align 8
  %432 = icmp ne i64 %431, 0
  %433 = zext i1 %432 to i64
  %434 = select i1 %432, i32 1500, i32 1350
  br label %440

435:                                              ; preds = %427
  %436 = load i64, i64* %7, align 8
  %437 = icmp ne i64 %436, 0
  %438 = zext i1 %437 to i64
  %439 = select i1 %437, i32 722, i32 650
  br label %440

440:                                              ; preds = %435, %430
  %441 = phi i32 [ %434, %430 ], [ %439, %435 ]
  store i32 %441, i32* %9, align 4
  br label %617

442:                                              ; preds = %418
  %443 = load i8*, i8** %8, align 8
  %444 = getelementptr inbounds i8, i8* %443, i64 0
  %445 = load i8, i8* %444, align 1
  %446 = zext i8 %445 to i32
  %447 = call zeroext i8 @BIT(i32 6)
  %448 = zext i8 %447 to i32
  %449 = and i32 %446, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %466

451:                                              ; preds = %442
  %452 = load i64, i64* %6, align 8
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %459

454:                                              ; preds = %451
  %455 = load i64, i64* %7, align 8
  %456 = icmp ne i64 %455, 0
  %457 = zext i1 %456 to i64
  %458 = select i1 %456, i32 1350, i32 1215
  br label %464

459:                                              ; preds = %451
  %460 = load i64, i64* %7, align 8
  %461 = icmp ne i64 %460, 0
  %462 = zext i1 %461 to i64
  %463 = select i1 %461, i32 650, i32 585
  br label %464

464:                                              ; preds = %459, %454
  %465 = phi i32 [ %458, %454 ], [ %463, %459 ]
  store i32 %465, i32* %9, align 4
  br label %616

466:                                              ; preds = %442
  %467 = load i8*, i8** %8, align 8
  %468 = getelementptr inbounds i8, i8* %467, i64 0
  %469 = load i8, i8* %468, align 1
  %470 = zext i8 %469 to i32
  %471 = call zeroext i8 @BIT(i32 5)
  %472 = zext i8 %471 to i32
  %473 = and i32 %470, %472
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %490

475:                                              ; preds = %466
  %476 = load i64, i64* %6, align 8
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %483

478:                                              ; preds = %475
  %479 = load i64, i64* %7, align 8
  %480 = icmp ne i64 %479, 0
  %481 = zext i1 %480 to i64
  %482 = select i1 %480, i32 1200, i32 1080
  br label %488

483:                                              ; preds = %475
  %484 = load i64, i64* %7, align 8
  %485 = icmp ne i64 %484, 0
  %486 = zext i1 %485 to i64
  %487 = select i1 %485, i32 578, i32 520
  br label %488

488:                                              ; preds = %483, %478
  %489 = phi i32 [ %482, %478 ], [ %487, %483 ]
  store i32 %489, i32* %9, align 4
  br label %615

490:                                              ; preds = %466
  %491 = load i8*, i8** %8, align 8
  %492 = getelementptr inbounds i8, i8* %491, i64 0
  %493 = load i8, i8* %492, align 1
  %494 = zext i8 %493 to i32
  %495 = call zeroext i8 @BIT(i32 4)
  %496 = zext i8 %495 to i32
  %497 = and i32 %494, %496
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %514

499:                                              ; preds = %490
  %500 = load i64, i64* %6, align 8
  %501 = icmp ne i64 %500, 0
  br i1 %501, label %502, label %507

502:                                              ; preds = %499
  %503 = load i64, i64* %7, align 8
  %504 = icmp ne i64 %503, 0
  %505 = zext i1 %504 to i64
  %506 = select i1 %504, i32 900, i32 810
  br label %512

507:                                              ; preds = %499
  %508 = load i64, i64* %7, align 8
  %509 = icmp ne i64 %508, 0
  %510 = zext i1 %509 to i64
  %511 = select i1 %509, i32 433, i32 390
  br label %512

512:                                              ; preds = %507, %502
  %513 = phi i32 [ %506, %502 ], [ %511, %507 ]
  store i32 %513, i32* %9, align 4
  br label %614

514:                                              ; preds = %490
  %515 = load i8*, i8** %8, align 8
  %516 = getelementptr inbounds i8, i8* %515, i64 0
  %517 = load i8, i8* %516, align 1
  %518 = zext i8 %517 to i32
  %519 = call zeroext i8 @BIT(i32 3)
  %520 = zext i8 %519 to i32
  %521 = and i32 %518, %520
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %538

523:                                              ; preds = %514
  %524 = load i64, i64* %6, align 8
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %531

526:                                              ; preds = %523
  %527 = load i64, i64* %7, align 8
  %528 = icmp ne i64 %527, 0
  %529 = zext i1 %528 to i64
  %530 = select i1 %528, i32 600, i32 540
  br label %536

531:                                              ; preds = %523
  %532 = load i64, i64* %7, align 8
  %533 = icmp ne i64 %532, 0
  %534 = zext i1 %533 to i64
  %535 = select i1 %533, i32 289, i32 260
  br label %536

536:                                              ; preds = %531, %526
  %537 = phi i32 [ %530, %526 ], [ %535, %531 ]
  store i32 %537, i32* %9, align 4
  br label %613

538:                                              ; preds = %514
  %539 = load i8*, i8** %8, align 8
  %540 = getelementptr inbounds i8, i8* %539, i64 0
  %541 = load i8, i8* %540, align 1
  %542 = zext i8 %541 to i32
  %543 = call zeroext i8 @BIT(i32 2)
  %544 = zext i8 %543 to i32
  %545 = and i32 %542, %544
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %562

547:                                              ; preds = %538
  %548 = load i64, i64* %6, align 8
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %555

550:                                              ; preds = %547
  %551 = load i64, i64* %7, align 8
  %552 = icmp ne i64 %551, 0
  %553 = zext i1 %552 to i64
  %554 = select i1 %552, i32 450, i32 405
  br label %560

555:                                              ; preds = %547
  %556 = load i64, i64* %7, align 8
  %557 = icmp ne i64 %556, 0
  %558 = zext i1 %557 to i64
  %559 = select i1 %557, i32 217, i32 195
  br label %560

560:                                              ; preds = %555, %550
  %561 = phi i32 [ %554, %550 ], [ %559, %555 ]
  store i32 %561, i32* %9, align 4
  br label %612

562:                                              ; preds = %538
  %563 = load i8*, i8** %8, align 8
  %564 = getelementptr inbounds i8, i8* %563, i64 0
  %565 = load i8, i8* %564, align 1
  %566 = zext i8 %565 to i32
  %567 = call zeroext i8 @BIT(i32 1)
  %568 = zext i8 %567 to i32
  %569 = and i32 %566, %568
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %586

571:                                              ; preds = %562
  %572 = load i64, i64* %6, align 8
  %573 = icmp ne i64 %572, 0
  br i1 %573, label %574, label %579

574:                                              ; preds = %571
  %575 = load i64, i64* %7, align 8
  %576 = icmp ne i64 %575, 0
  %577 = zext i1 %576 to i64
  %578 = select i1 %576, i32 300, i32 270
  br label %584

579:                                              ; preds = %571
  %580 = load i64, i64* %7, align 8
  %581 = icmp ne i64 %580, 0
  %582 = zext i1 %581 to i64
  %583 = select i1 %581, i32 144, i32 130
  br label %584

584:                                              ; preds = %579, %574
  %585 = phi i32 [ %578, %574 ], [ %583, %579 ]
  store i32 %585, i32* %9, align 4
  br label %611

586:                                              ; preds = %562
  %587 = load i8*, i8** %8, align 8
  %588 = getelementptr inbounds i8, i8* %587, i64 0
  %589 = load i8, i8* %588, align 1
  %590 = zext i8 %589 to i32
  %591 = call zeroext i8 @BIT(i32 0)
  %592 = zext i8 %591 to i32
  %593 = and i32 %590, %592
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %610

595:                                              ; preds = %586
  %596 = load i64, i64* %6, align 8
  %597 = icmp ne i64 %596, 0
  br i1 %597, label %598, label %603

598:                                              ; preds = %595
  %599 = load i64, i64* %7, align 8
  %600 = icmp ne i64 %599, 0
  %601 = zext i1 %600 to i64
  %602 = select i1 %600, i32 150, i32 135
  br label %608

603:                                              ; preds = %595
  %604 = load i64, i64* %7, align 8
  %605 = icmp ne i64 %604, 0
  %606 = zext i1 %605 to i64
  %607 = select i1 %605, i32 72, i32 65
  br label %608

608:                                              ; preds = %603, %598
  %609 = phi i32 [ %602, %598 ], [ %607, %603 ]
  store i32 %609, i32* %9, align 4
  br label %610

610:                                              ; preds = %608, %586
  br label %611

611:                                              ; preds = %610, %584
  br label %612

612:                                              ; preds = %611, %560
  br label %613

613:                                              ; preds = %612, %536
  br label %614

614:                                              ; preds = %613, %512
  br label %615

615:                                              ; preds = %614, %488
  br label %616

616:                                              ; preds = %615, %464
  br label %617

617:                                              ; preds = %616, %440
  br label %618

618:                                              ; preds = %617, %417
  br label %619

619:                                              ; preds = %618, %212
  %620 = load i32, i32* %9, align 4
  ret i32 %620
}

declare dso_local zeroext i8 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
