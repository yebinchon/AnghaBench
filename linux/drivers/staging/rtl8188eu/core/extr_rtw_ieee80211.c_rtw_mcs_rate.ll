; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ieee80211.c_rtw_mcs_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ieee80211.c_rtw_mcs_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RF_1T1R = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_mcs_rate(i64 %0, i64 %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @RF_1T1R, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %215

15:                                               ; preds = %5
  %16 = load i8*, i8** %10, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = call zeroext i8 @BIT(i32 7)
  %21 = zext i8 %20 to i32
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %15
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1500, i32 1350
  br label %37

32:                                               ; preds = %24
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 722, i32 650
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i32 [ %31, %27 ], [ %36, %32 ]
  store i32 %38, i32* %11, align 4
  br label %214

39:                                               ; preds = %15
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = call zeroext i8 @BIT(i32 6)
  %45 = zext i8 %44 to i32
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %39
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1350, i32 1215
  br label %61

56:                                               ; preds = %48
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 650, i32 585
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i32 [ %55, %51 ], [ %60, %56 ]
  store i32 %62, i32* %11, align 4
  br label %213

63:                                               ; preds = %39
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = call zeroext i8 @BIT(i32 5)
  %69 = zext i8 %68 to i32
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %63
  %73 = load i64, i64* %7, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i64, i64* %9, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1200, i32 1080
  br label %85

80:                                               ; preds = %72
  %81 = load i64, i64* %8, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 578, i32 520
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ %79, %75 ], [ %84, %80 ]
  store i32 %86, i32* %11, align 4
  br label %212

87:                                               ; preds = %63
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = call zeroext i8 @BIT(i32 4)
  %93 = zext i8 %92 to i32
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %87
  %97 = load i64, i64* %7, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i64, i64* %9, align 8
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 900, i32 810
  br label %109

104:                                              ; preds = %96
  %105 = load i64, i64* %8, align 8
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 433, i32 390
  br label %109

109:                                              ; preds = %104, %99
  %110 = phi i32 [ %103, %99 ], [ %108, %104 ]
  store i32 %110, i32* %11, align 4
  br label %211

111:                                              ; preds = %87
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = call zeroext i8 @BIT(i32 3)
  %117 = zext i8 %116 to i32
  %118 = and i32 %115, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %111
  %121 = load i64, i64* %7, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i64, i64* %9, align 8
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 600, i32 540
  br label %133

128:                                              ; preds = %120
  %129 = load i64, i64* %8, align 8
  %130 = icmp ne i64 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 289, i32 260
  br label %133

133:                                              ; preds = %128, %123
  %134 = phi i32 [ %127, %123 ], [ %132, %128 ]
  store i32 %134, i32* %11, align 4
  br label %210

135:                                              ; preds = %111
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = call zeroext i8 @BIT(i32 2)
  %141 = zext i8 %140 to i32
  %142 = and i32 %139, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %135
  %145 = load i64, i64* %7, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load i64, i64* %9, align 8
  %149 = icmp ne i64 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 450, i32 405
  br label %157

152:                                              ; preds = %144
  %153 = load i64, i64* %8, align 8
  %154 = icmp ne i64 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 217, i32 195
  br label %157

157:                                              ; preds = %152, %147
  %158 = phi i32 [ %151, %147 ], [ %156, %152 ]
  store i32 %158, i32* %11, align 4
  br label %209

159:                                              ; preds = %135
  %160 = load i8*, i8** %10, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = call zeroext i8 @BIT(i32 1)
  %165 = zext i8 %164 to i32
  %166 = and i32 %163, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %183

168:                                              ; preds = %159
  %169 = load i64, i64* %7, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load i64, i64* %9, align 8
  %173 = icmp ne i64 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 300, i32 270
  br label %181

176:                                              ; preds = %168
  %177 = load i64, i64* %8, align 8
  %178 = icmp ne i64 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i32 144, i32 130
  br label %181

181:                                              ; preds = %176, %171
  %182 = phi i32 [ %175, %171 ], [ %180, %176 ]
  store i32 %182, i32* %11, align 4
  br label %208

183:                                              ; preds = %159
  %184 = load i8*, i8** %10, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 0
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = call zeroext i8 @BIT(i32 0)
  %189 = zext i8 %188 to i32
  %190 = and i32 %187, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %207

192:                                              ; preds = %183
  %193 = load i64, i64* %7, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = load i64, i64* %9, align 8
  %197 = icmp ne i64 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i32 150, i32 135
  br label %205

200:                                              ; preds = %192
  %201 = load i64, i64* %8, align 8
  %202 = icmp ne i64 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i32 72, i32 65
  br label %205

205:                                              ; preds = %200, %195
  %206 = phi i32 [ %199, %195 ], [ %204, %200 ]
  store i32 %206, i32* %11, align 4
  br label %207

207:                                              ; preds = %205, %183
  br label %208

208:                                              ; preds = %207, %181
  br label %209

209:                                              ; preds = %208, %157
  br label %210

210:                                              ; preds = %209, %133
  br label %211

211:                                              ; preds = %210, %109
  br label %212

212:                                              ; preds = %211, %85
  br label %213

213:                                              ; preds = %212, %61
  br label %214

214:                                              ; preds = %213, %37
  br label %621

215:                                              ; preds = %5
  %216 = load i8*, i8** %10, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 1
  %218 = load i8, i8* %217, align 1
  %219 = icmp ne i8 %218, 0
  br i1 %219, label %220, label %420

220:                                              ; preds = %215
  %221 = load i8*, i8** %10, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = call zeroext i8 @BIT(i32 7)
  %226 = zext i8 %225 to i32
  %227 = and i32 %224, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %244

229:                                              ; preds = %220
  %230 = load i64, i64* %7, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %229
  %233 = load i64, i64* %9, align 8
  %234 = icmp ne i64 %233, 0
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i32 3000, i32 2700
  br label %242

237:                                              ; preds = %229
  %238 = load i64, i64* %8, align 8
  %239 = icmp ne i64 %238, 0
  %240 = zext i1 %239 to i64
  %241 = select i1 %239, i32 1444, i32 1300
  br label %242

242:                                              ; preds = %237, %232
  %243 = phi i32 [ %236, %232 ], [ %241, %237 ]
  store i32 %243, i32* %11, align 4
  br label %419

244:                                              ; preds = %220
  %245 = load i8*, i8** %10, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 1
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = call zeroext i8 @BIT(i32 6)
  %250 = zext i8 %249 to i32
  %251 = and i32 %248, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %268

253:                                              ; preds = %244
  %254 = load i64, i64* %7, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %253
  %257 = load i64, i64* %9, align 8
  %258 = icmp ne i64 %257, 0
  %259 = zext i1 %258 to i64
  %260 = select i1 %258, i32 2700, i32 2430
  br label %266

261:                                              ; preds = %253
  %262 = load i64, i64* %8, align 8
  %263 = icmp ne i64 %262, 0
  %264 = zext i1 %263 to i64
  %265 = select i1 %263, i32 1300, i32 1170
  br label %266

266:                                              ; preds = %261, %256
  %267 = phi i32 [ %260, %256 ], [ %265, %261 ]
  store i32 %267, i32* %11, align 4
  br label %418

268:                                              ; preds = %244
  %269 = load i8*, i8** %10, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 1
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i32
  %273 = call zeroext i8 @BIT(i32 5)
  %274 = zext i8 %273 to i32
  %275 = and i32 %272, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %292

277:                                              ; preds = %268
  %278 = load i64, i64* %7, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %277
  %281 = load i64, i64* %9, align 8
  %282 = icmp ne i64 %281, 0
  %283 = zext i1 %282 to i64
  %284 = select i1 %282, i32 2400, i32 2160
  br label %290

285:                                              ; preds = %277
  %286 = load i64, i64* %8, align 8
  %287 = icmp ne i64 %286, 0
  %288 = zext i1 %287 to i64
  %289 = select i1 %287, i32 1156, i32 1040
  br label %290

290:                                              ; preds = %285, %280
  %291 = phi i32 [ %284, %280 ], [ %289, %285 ]
  store i32 %291, i32* %11, align 4
  br label %417

292:                                              ; preds = %268
  %293 = load i8*, i8** %10, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 1
  %295 = load i8, i8* %294, align 1
  %296 = zext i8 %295 to i32
  %297 = call zeroext i8 @BIT(i32 4)
  %298 = zext i8 %297 to i32
  %299 = and i32 %296, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %316

301:                                              ; preds = %292
  %302 = load i64, i64* %7, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %301
  %305 = load i64, i64* %9, align 8
  %306 = icmp ne i64 %305, 0
  %307 = zext i1 %306 to i64
  %308 = select i1 %306, i32 1800, i32 1620
  br label %314

309:                                              ; preds = %301
  %310 = load i64, i64* %8, align 8
  %311 = icmp ne i64 %310, 0
  %312 = zext i1 %311 to i64
  %313 = select i1 %311, i32 867, i32 780
  br label %314

314:                                              ; preds = %309, %304
  %315 = phi i32 [ %308, %304 ], [ %313, %309 ]
  store i32 %315, i32* %11, align 4
  br label %416

316:                                              ; preds = %292
  %317 = load i8*, i8** %10, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 1
  %319 = load i8, i8* %318, align 1
  %320 = zext i8 %319 to i32
  %321 = call zeroext i8 @BIT(i32 3)
  %322 = zext i8 %321 to i32
  %323 = and i32 %320, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %340

325:                                              ; preds = %316
  %326 = load i64, i64* %7, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %325
  %329 = load i64, i64* %9, align 8
  %330 = icmp ne i64 %329, 0
  %331 = zext i1 %330 to i64
  %332 = select i1 %330, i32 1200, i32 1080
  br label %338

333:                                              ; preds = %325
  %334 = load i64, i64* %8, align 8
  %335 = icmp ne i64 %334, 0
  %336 = zext i1 %335 to i64
  %337 = select i1 %335, i32 578, i32 520
  br label %338

338:                                              ; preds = %333, %328
  %339 = phi i32 [ %332, %328 ], [ %337, %333 ]
  store i32 %339, i32* %11, align 4
  br label %415

340:                                              ; preds = %316
  %341 = load i8*, i8** %10, align 8
  %342 = getelementptr inbounds i8, i8* %341, i64 1
  %343 = load i8, i8* %342, align 1
  %344 = zext i8 %343 to i32
  %345 = call zeroext i8 @BIT(i32 2)
  %346 = zext i8 %345 to i32
  %347 = and i32 %344, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %364

349:                                              ; preds = %340
  %350 = load i64, i64* %7, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %349
  %353 = load i64, i64* %9, align 8
  %354 = icmp ne i64 %353, 0
  %355 = zext i1 %354 to i64
  %356 = select i1 %354, i32 900, i32 810
  br label %362

357:                                              ; preds = %349
  %358 = load i64, i64* %8, align 8
  %359 = icmp ne i64 %358, 0
  %360 = zext i1 %359 to i64
  %361 = select i1 %359, i32 433, i32 390
  br label %362

362:                                              ; preds = %357, %352
  %363 = phi i32 [ %356, %352 ], [ %361, %357 ]
  store i32 %363, i32* %11, align 4
  br label %414

364:                                              ; preds = %340
  %365 = load i8*, i8** %10, align 8
  %366 = getelementptr inbounds i8, i8* %365, i64 1
  %367 = load i8, i8* %366, align 1
  %368 = zext i8 %367 to i32
  %369 = call zeroext i8 @BIT(i32 1)
  %370 = zext i8 %369 to i32
  %371 = and i32 %368, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %388

373:                                              ; preds = %364
  %374 = load i64, i64* %7, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %381

376:                                              ; preds = %373
  %377 = load i64, i64* %9, align 8
  %378 = icmp ne i64 %377, 0
  %379 = zext i1 %378 to i64
  %380 = select i1 %378, i32 600, i32 540
  br label %386

381:                                              ; preds = %373
  %382 = load i64, i64* %8, align 8
  %383 = icmp ne i64 %382, 0
  %384 = zext i1 %383 to i64
  %385 = select i1 %383, i32 289, i32 260
  br label %386

386:                                              ; preds = %381, %376
  %387 = phi i32 [ %380, %376 ], [ %385, %381 ]
  store i32 %387, i32* %11, align 4
  br label %413

388:                                              ; preds = %364
  %389 = load i8*, i8** %10, align 8
  %390 = getelementptr inbounds i8, i8* %389, i64 1
  %391 = load i8, i8* %390, align 1
  %392 = zext i8 %391 to i32
  %393 = call zeroext i8 @BIT(i32 0)
  %394 = zext i8 %393 to i32
  %395 = and i32 %392, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %412

397:                                              ; preds = %388
  %398 = load i64, i64* %7, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %397
  %401 = load i64, i64* %9, align 8
  %402 = icmp ne i64 %401, 0
  %403 = zext i1 %402 to i64
  %404 = select i1 %402, i32 300, i32 270
  br label %410

405:                                              ; preds = %397
  %406 = load i64, i64* %8, align 8
  %407 = icmp ne i64 %406, 0
  %408 = zext i1 %407 to i64
  %409 = select i1 %407, i32 144, i32 130
  br label %410

410:                                              ; preds = %405, %400
  %411 = phi i32 [ %404, %400 ], [ %409, %405 ]
  store i32 %411, i32* %11, align 4
  br label %412

412:                                              ; preds = %410, %388
  br label %413

413:                                              ; preds = %412, %386
  br label %414

414:                                              ; preds = %413, %362
  br label %415

415:                                              ; preds = %414, %338
  br label %416

416:                                              ; preds = %415, %314
  br label %417

417:                                              ; preds = %416, %290
  br label %418

418:                                              ; preds = %417, %266
  br label %419

419:                                              ; preds = %418, %242
  br label %620

420:                                              ; preds = %215
  %421 = load i8*, i8** %10, align 8
  %422 = getelementptr inbounds i8, i8* %421, i64 0
  %423 = load i8, i8* %422, align 1
  %424 = zext i8 %423 to i32
  %425 = call zeroext i8 @BIT(i32 7)
  %426 = zext i8 %425 to i32
  %427 = and i32 %424, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %444

429:                                              ; preds = %420
  %430 = load i64, i64* %7, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %437

432:                                              ; preds = %429
  %433 = load i64, i64* %9, align 8
  %434 = icmp ne i64 %433, 0
  %435 = zext i1 %434 to i64
  %436 = select i1 %434, i32 1500, i32 1350
  br label %442

437:                                              ; preds = %429
  %438 = load i64, i64* %8, align 8
  %439 = icmp ne i64 %438, 0
  %440 = zext i1 %439 to i64
  %441 = select i1 %439, i32 722, i32 650
  br label %442

442:                                              ; preds = %437, %432
  %443 = phi i32 [ %436, %432 ], [ %441, %437 ]
  store i32 %443, i32* %11, align 4
  br label %619

444:                                              ; preds = %420
  %445 = load i8*, i8** %10, align 8
  %446 = getelementptr inbounds i8, i8* %445, i64 0
  %447 = load i8, i8* %446, align 1
  %448 = zext i8 %447 to i32
  %449 = call zeroext i8 @BIT(i32 6)
  %450 = zext i8 %449 to i32
  %451 = and i32 %448, %450
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %468

453:                                              ; preds = %444
  %454 = load i64, i64* %7, align 8
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %461

456:                                              ; preds = %453
  %457 = load i64, i64* %9, align 8
  %458 = icmp ne i64 %457, 0
  %459 = zext i1 %458 to i64
  %460 = select i1 %458, i32 1350, i32 1215
  br label %466

461:                                              ; preds = %453
  %462 = load i64, i64* %8, align 8
  %463 = icmp ne i64 %462, 0
  %464 = zext i1 %463 to i64
  %465 = select i1 %463, i32 650, i32 585
  br label %466

466:                                              ; preds = %461, %456
  %467 = phi i32 [ %460, %456 ], [ %465, %461 ]
  store i32 %467, i32* %11, align 4
  br label %618

468:                                              ; preds = %444
  %469 = load i8*, i8** %10, align 8
  %470 = getelementptr inbounds i8, i8* %469, i64 0
  %471 = load i8, i8* %470, align 1
  %472 = zext i8 %471 to i32
  %473 = call zeroext i8 @BIT(i32 5)
  %474 = zext i8 %473 to i32
  %475 = and i32 %472, %474
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %492

477:                                              ; preds = %468
  %478 = load i64, i64* %7, align 8
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %485

480:                                              ; preds = %477
  %481 = load i64, i64* %9, align 8
  %482 = icmp ne i64 %481, 0
  %483 = zext i1 %482 to i64
  %484 = select i1 %482, i32 1200, i32 1080
  br label %490

485:                                              ; preds = %477
  %486 = load i64, i64* %8, align 8
  %487 = icmp ne i64 %486, 0
  %488 = zext i1 %487 to i64
  %489 = select i1 %487, i32 578, i32 520
  br label %490

490:                                              ; preds = %485, %480
  %491 = phi i32 [ %484, %480 ], [ %489, %485 ]
  store i32 %491, i32* %11, align 4
  br label %617

492:                                              ; preds = %468
  %493 = load i8*, i8** %10, align 8
  %494 = getelementptr inbounds i8, i8* %493, i64 0
  %495 = load i8, i8* %494, align 1
  %496 = zext i8 %495 to i32
  %497 = call zeroext i8 @BIT(i32 4)
  %498 = zext i8 %497 to i32
  %499 = and i32 %496, %498
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %516

501:                                              ; preds = %492
  %502 = load i64, i64* %7, align 8
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %509

504:                                              ; preds = %501
  %505 = load i64, i64* %9, align 8
  %506 = icmp ne i64 %505, 0
  %507 = zext i1 %506 to i64
  %508 = select i1 %506, i32 900, i32 810
  br label %514

509:                                              ; preds = %501
  %510 = load i64, i64* %8, align 8
  %511 = icmp ne i64 %510, 0
  %512 = zext i1 %511 to i64
  %513 = select i1 %511, i32 433, i32 390
  br label %514

514:                                              ; preds = %509, %504
  %515 = phi i32 [ %508, %504 ], [ %513, %509 ]
  store i32 %515, i32* %11, align 4
  br label %616

516:                                              ; preds = %492
  %517 = load i8*, i8** %10, align 8
  %518 = getelementptr inbounds i8, i8* %517, i64 0
  %519 = load i8, i8* %518, align 1
  %520 = zext i8 %519 to i32
  %521 = call zeroext i8 @BIT(i32 3)
  %522 = zext i8 %521 to i32
  %523 = and i32 %520, %522
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %540

525:                                              ; preds = %516
  %526 = load i64, i64* %7, align 8
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %533

528:                                              ; preds = %525
  %529 = load i64, i64* %9, align 8
  %530 = icmp ne i64 %529, 0
  %531 = zext i1 %530 to i64
  %532 = select i1 %530, i32 600, i32 540
  br label %538

533:                                              ; preds = %525
  %534 = load i64, i64* %8, align 8
  %535 = icmp ne i64 %534, 0
  %536 = zext i1 %535 to i64
  %537 = select i1 %535, i32 289, i32 260
  br label %538

538:                                              ; preds = %533, %528
  %539 = phi i32 [ %532, %528 ], [ %537, %533 ]
  store i32 %539, i32* %11, align 4
  br label %615

540:                                              ; preds = %516
  %541 = load i8*, i8** %10, align 8
  %542 = getelementptr inbounds i8, i8* %541, i64 0
  %543 = load i8, i8* %542, align 1
  %544 = zext i8 %543 to i32
  %545 = call zeroext i8 @BIT(i32 2)
  %546 = zext i8 %545 to i32
  %547 = and i32 %544, %546
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %564

549:                                              ; preds = %540
  %550 = load i64, i64* %7, align 8
  %551 = icmp ne i64 %550, 0
  br i1 %551, label %552, label %557

552:                                              ; preds = %549
  %553 = load i64, i64* %9, align 8
  %554 = icmp ne i64 %553, 0
  %555 = zext i1 %554 to i64
  %556 = select i1 %554, i32 450, i32 405
  br label %562

557:                                              ; preds = %549
  %558 = load i64, i64* %8, align 8
  %559 = icmp ne i64 %558, 0
  %560 = zext i1 %559 to i64
  %561 = select i1 %559, i32 217, i32 195
  br label %562

562:                                              ; preds = %557, %552
  %563 = phi i32 [ %556, %552 ], [ %561, %557 ]
  store i32 %563, i32* %11, align 4
  br label %614

564:                                              ; preds = %540
  %565 = load i8*, i8** %10, align 8
  %566 = getelementptr inbounds i8, i8* %565, i64 0
  %567 = load i8, i8* %566, align 1
  %568 = zext i8 %567 to i32
  %569 = call zeroext i8 @BIT(i32 1)
  %570 = zext i8 %569 to i32
  %571 = and i32 %568, %570
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %588

573:                                              ; preds = %564
  %574 = load i64, i64* %7, align 8
  %575 = icmp ne i64 %574, 0
  br i1 %575, label %576, label %581

576:                                              ; preds = %573
  %577 = load i64, i64* %9, align 8
  %578 = icmp ne i64 %577, 0
  %579 = zext i1 %578 to i64
  %580 = select i1 %578, i32 300, i32 270
  br label %586

581:                                              ; preds = %573
  %582 = load i64, i64* %8, align 8
  %583 = icmp ne i64 %582, 0
  %584 = zext i1 %583 to i64
  %585 = select i1 %583, i32 144, i32 130
  br label %586

586:                                              ; preds = %581, %576
  %587 = phi i32 [ %580, %576 ], [ %585, %581 ]
  store i32 %587, i32* %11, align 4
  br label %613

588:                                              ; preds = %564
  %589 = load i8*, i8** %10, align 8
  %590 = getelementptr inbounds i8, i8* %589, i64 0
  %591 = load i8, i8* %590, align 1
  %592 = zext i8 %591 to i32
  %593 = call zeroext i8 @BIT(i32 0)
  %594 = zext i8 %593 to i32
  %595 = and i32 %592, %594
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %612

597:                                              ; preds = %588
  %598 = load i64, i64* %7, align 8
  %599 = icmp ne i64 %598, 0
  br i1 %599, label %600, label %605

600:                                              ; preds = %597
  %601 = load i64, i64* %9, align 8
  %602 = icmp ne i64 %601, 0
  %603 = zext i1 %602 to i64
  %604 = select i1 %602, i32 150, i32 135
  br label %610

605:                                              ; preds = %597
  %606 = load i64, i64* %8, align 8
  %607 = icmp ne i64 %606, 0
  %608 = zext i1 %607 to i64
  %609 = select i1 %607, i32 72, i32 65
  br label %610

610:                                              ; preds = %605, %600
  %611 = phi i32 [ %604, %600 ], [ %609, %605 ]
  store i32 %611, i32* %11, align 4
  br label %612

612:                                              ; preds = %610, %588
  br label %613

613:                                              ; preds = %612, %586
  br label %614

614:                                              ; preds = %613, %562
  br label %615

615:                                              ; preds = %614, %538
  br label %616

616:                                              ; preds = %615, %514
  br label %617

617:                                              ; preds = %616, %490
  br label %618

618:                                              ; preds = %617, %466
  br label %619

619:                                              ; preds = %618, %442
  br label %620

620:                                              ; preds = %619, %419
  br label %621

621:                                              ; preds = %620, %214
  %622 = load i32, i32* %11, align 4
  ret i32 %622
}

declare dso_local zeroext i8 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
