; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_Generic_ConvertCRData.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_Generic_ConvertCRData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiS_Generic_ConvertCRData(%struct.SiS_Private* %0, i8* %1, i32 %2, i32 %3, %struct.fb_var_screeninfo* %4, i32 %5) #0 {
  %7 = alloca %struct.SiS_Private*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fb_var_screeninfo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  %22 = alloca i16, align 2
  %23 = alloca i16, align 2
  %24 = alloca i16, align 2
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.SiS_Private* %0, %struct.SiS_Private** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.fb_var_screeninfo* %4, %struct.fb_var_screeninfo** %11, align 8
  store i32 %5, i32* %12, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 14
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %25, align 1
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* %25, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 3
  %45 = trunc i32 %44 to i16
  %46 = zext i16 %45 to i32
  %47 = shl i32 %46, 8
  %48 = or i32 %41, %47
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %18, align 2
  %50 = load i16, i16* %18, align 2
  %51 = zext i16 %50 to i32
  %52 = add nsw i32 %51, 5
  store i32 %52, i32* %28, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* %25, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 12
  %60 = trunc i32 %59 to i16
  %61 = zext i16 %60 to i32
  %62 = shl i32 %61, 6
  %63 = or i32 %56, %62
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %17, align 2
  %65 = load i16, i16* %17, align 2
  %66 = zext i16 %65 to i32
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %32, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 4
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* %25, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 192
  %75 = trunc i32 %74 to i16
  %76 = zext i16 %75 to i32
  %77 = shl i32 %76, 2
  %78 = or i32 %71, %77
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %15, align 2
  %80 = load i16, i16* %15, align 2
  %81 = zext i16 %80 to i32
  %82 = load i32, i32* %32, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sub nsw i32 %83, 3
  store i32 %84, i32* %33, align 4
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* %25, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 48
  %92 = trunc i32 %91 to i16
  %93 = zext i16 %92 to i32
  %94 = shl i32 %93, 4
  %95 = or i32 %88, %94
  %96 = trunc i32 %95 to i16
  store i16 %96, i16* %16, align 2
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 15
  %99 = load i8, i8* %98, align 1
  store i8 %99, i8* %25, align 1
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 5
  %102 = load i8, i8* %101, align 1
  store i8 %102, i8* %26, align 1
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 3
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = and i32 %106, 31
  %108 = load i8, i8* %26, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %109, 128
  %111 = trunc i32 %110 to i16
  %112 = zext i16 %111 to i32
  %113 = ashr i32 %112, 2
  %114 = or i32 %107, %113
  %115 = load i8, i8* %25, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, 3
  %118 = trunc i32 %117 to i16
  %119 = zext i16 %118 to i32
  %120 = shl i32 %119, 6
  %121 = or i32 %114, %120
  %122 = trunc i32 %121 to i16
  store i16 %122, i16* %14, align 2
  %123 = load i8, i8* %26, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, 31
  %126 = load i8, i8* %25, align 1
  %127 = zext i8 %126 to i32
  %128 = and i32 %127, 4
  %129 = shl i32 %128, 3
  %130 = or i32 %125, %129
  %131 = trunc i32 %130 to i16
  store i16 %131, i16* %13, align 2
  %132 = load i16, i16* %14, align 2
  %133 = zext i16 %132 to i32
  %134 = load i32, i32* %32, align 4
  %135 = sub nsw i32 %134, 1
  %136 = and i32 %135, 255
  %137 = sub nsw i32 %133, %136
  store i32 %137, i32* %34, align 4
  %138 = load i32, i32* %34, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %6
  %141 = load i32, i32* %34, align 4
  br label %145

142:                                              ; preds = %6
  %143 = load i32, i32* %34, align 4
  %144 = add nsw i32 %143, 256
  br label %145

145:                                              ; preds = %142, %140
  %146 = phi i32 [ %141, %140 ], [ %144, %142 ]
  store i32 %146, i32* %29, align 4
  %147 = load i16, i16* %13, align 2
  %148 = zext i16 %147 to i32
  %149 = load i32, i32* %32, align 4
  %150 = load i32, i32* %33, align 4
  %151 = add nsw i32 %149, %150
  %152 = add nsw i32 %151, 3
  %153 = and i32 %152, 63
  %154 = sub nsw i32 %148, %153
  store i32 %154, i32* %34, align 4
  %155 = load i32, i32* %34, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %145
  %158 = load i32, i32* %34, align 4
  br label %162

159:                                              ; preds = %145
  %160 = load i32, i32* %34, align 4
  %161 = add nsw i32 %160, 64
  br label %162

162:                                              ; preds = %159, %157
  %163 = phi i32 [ %158, %157 ], [ %161, %159 ]
  store i32 %163, i32* %30, align 4
  %164 = load i32, i32* %29, align 4
  %165 = load i32, i32* %33, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load i32, i32* %30, align 4
  %168 = sub nsw i32 %166, %167
  store i32 %168, i32* %31, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %162
  %172 = load i32, i32* %32, align 4
  %173 = mul nsw i32 %172, 8
  store i32 %173, i32* %9, align 4
  %174 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %11, align 8
  %175 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  br label %176

176:                                              ; preds = %171, %162
  %177 = load i32, i32* %31, align 4
  %178 = mul nsw i32 %177, 8
  %179 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %11, align 8
  %180 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %33, align 4
  %182 = mul nsw i32 %181, 8
  %183 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %11, align 8
  %184 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %30, align 4
  %186 = mul nsw i32 %185, 8
  %187 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %11, align 8
  %188 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 4
  %189 = load i8*, i8** %8, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 13
  %191 = load i8, i8* %190, align 1
  store i8 %191, i8* %25, align 1
  %192 = load i8*, i8** %8, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 7
  %194 = load i8, i8* %193, align 1
  store i8 %194, i8* %26, align 1
  %195 = load i8*, i8** %8, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 6
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = load i8, i8* %26, align 1
  %200 = zext i8 %199 to i32
  %201 = and i32 %200, 1
  %202 = trunc i32 %201 to i16
  %203 = zext i16 %202 to i32
  %204 = shl i32 %203, 8
  %205 = or i32 %198, %204
  %206 = load i8, i8* %26, align 1
  %207 = zext i8 %206 to i32
  %208 = and i32 %207, 32
  %209 = trunc i32 %208 to i16
  %210 = zext i16 %209 to i32
  %211 = shl i32 %210, 4
  %212 = or i32 %205, %211
  %213 = load i8, i8* %25, align 1
  %214 = zext i8 %213 to i32
  %215 = and i32 %214, 1
  %216 = trunc i32 %215 to i16
  %217 = zext i16 %216 to i32
  %218 = shl i32 %217, 10
  %219 = or i32 %212, %218
  %220 = trunc i32 %219 to i16
  store i16 %220, i16* %24, align 2
  %221 = load i16, i16* %24, align 2
  %222 = zext i16 %221 to i32
  %223 = add nsw i32 %222, 2
  store i32 %223, i32* %28, align 4
  %224 = load i8*, i8** %8, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 10
  %226 = load i8, i8* %225, align 1
  %227 = zext i8 %226 to i32
  %228 = load i8, i8* %26, align 1
  %229 = zext i8 %228 to i32
  %230 = and i32 %229, 2
  %231 = trunc i32 %230 to i16
  %232 = zext i16 %231 to i32
  %233 = shl i32 %232, 7
  %234 = or i32 %227, %233
  %235 = load i8, i8* %26, align 1
  %236 = zext i8 %235 to i32
  %237 = and i32 %236, 64
  %238 = trunc i32 %237 to i16
  %239 = zext i16 %238 to i32
  %240 = shl i32 %239, 3
  %241 = or i32 %234, %240
  %242 = load i8, i8* %25, align 1
  %243 = zext i8 %242 to i32
  %244 = and i32 %243, 2
  %245 = trunc i32 %244 to i16
  %246 = zext i16 %245 to i32
  %247 = shl i32 %246, 9
  %248 = or i32 %241, %247
  %249 = trunc i32 %248 to i16
  store i16 %249, i16* %23, align 2
  %250 = load i16, i16* %23, align 2
  %251 = zext i16 %250 to i32
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %32, align 4
  %253 = load i8*, i8** %8, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 8
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = load i8, i8* %26, align 1
  %258 = zext i8 %257 to i32
  %259 = and i32 %258, 4
  %260 = trunc i32 %259 to i16
  %261 = zext i16 %260 to i32
  %262 = shl i32 %261, 6
  %263 = or i32 %256, %262
  %264 = load i8, i8* %26, align 1
  %265 = zext i8 %264 to i32
  %266 = and i32 %265, 128
  %267 = trunc i32 %266 to i16
  %268 = zext i16 %267 to i32
  %269 = shl i32 %268, 2
  %270 = or i32 %263, %269
  %271 = load i8, i8* %25, align 1
  %272 = zext i8 %271 to i32
  %273 = and i32 %272, 8
  %274 = trunc i32 %273 to i16
  %275 = zext i16 %274 to i32
  %276 = shl i32 %275, 7
  %277 = or i32 %270, %276
  %278 = trunc i32 %277 to i16
  store i16 %278, i16* %21, align 2
  %279 = load i16, i16* %21, align 2
  %280 = zext i16 %279 to i32
  %281 = add nsw i32 %280, 1
  %282 = load i32, i32* %32, align 4
  %283 = sub nsw i32 %281, %282
  store i32 %283, i32* %33, align 4
  %284 = load i8*, i8** %8, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 16
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = and i32 %287, 1
  %289 = shl i32 %288, 5
  %290 = trunc i32 %289 to i8
  store i8 %290, i8* %27, align 1
  %291 = load i8*, i8** %8, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 11
  %293 = load i8, i8* %292, align 1
  %294 = zext i8 %293 to i32
  %295 = load i8, i8* %26, align 1
  %296 = zext i8 %295 to i32
  %297 = and i32 %296, 8
  %298 = trunc i32 %297 to i16
  %299 = zext i16 %298 to i32
  %300 = shl i32 %299, 5
  %301 = or i32 %294, %300
  %302 = load i8, i8* %27, align 1
  %303 = zext i8 %302 to i32
  %304 = and i32 %303, 32
  %305 = trunc i32 %304 to i16
  %306 = zext i16 %305 to i32
  %307 = shl i32 %306, 4
  %308 = or i32 %301, %307
  %309 = load i8, i8* %25, align 1
  %310 = zext i8 %309 to i32
  %311 = and i32 %310, 4
  %312 = trunc i32 %311 to i16
  %313 = zext i16 %312 to i32
  %314 = shl i32 %313, 8
  %315 = or i32 %308, %314
  %316 = trunc i32 %315 to i16
  store i16 %316, i16* %22, align 2
  %317 = load i8*, i8** %8, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 12
  %319 = load i8, i8* %318, align 1
  %320 = zext i8 %319 to i32
  %321 = load i8, i8* %25, align 1
  %322 = zext i8 %321 to i32
  %323 = and i32 %322, 16
  %324 = trunc i32 %323 to i16
  %325 = zext i16 %324 to i32
  %326 = shl i32 %325, 4
  %327 = or i32 %320, %326
  %328 = trunc i32 %327 to i16
  store i16 %328, i16* %20, align 2
  %329 = load i16, i16* %20, align 2
  %330 = zext i16 %329 to i32
  %331 = load i32, i32* %32, align 4
  %332 = sub nsw i32 %331, 1
  %333 = and i32 %332, 511
  %334 = sub nsw i32 %330, %333
  store i32 %334, i32* %34, align 4
  %335 = load i32, i32* %34, align 4
  %336 = icmp sgt i32 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %176
  %338 = load i32, i32* %34, align 4
  br label %342

339:                                              ; preds = %176
  %340 = load i32, i32* %34, align 4
  %341 = add nsw i32 %340, 512
  br label %342

342:                                              ; preds = %339, %337
  %343 = phi i32 [ %338, %337 ], [ %341, %339 ]
  store i32 %343, i32* %29, align 4
  %344 = load i8*, i8** %8, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 9
  %346 = load i8, i8* %345, align 1
  %347 = zext i8 %346 to i32
  %348 = and i32 %347, 15
  %349 = load i8, i8* %25, align 1
  %350 = zext i8 %349 to i32
  %351 = and i32 %350, 32
  %352 = ashr i32 %351, 1
  %353 = or i32 %348, %352
  %354 = trunc i32 %353 to i16
  store i16 %354, i16* %19, align 2
  %355 = load i16, i16* %19, align 2
  %356 = zext i16 %355 to i32
  %357 = load i32, i32* %32, align 4
  %358 = load i32, i32* %33, align 4
  %359 = add nsw i32 %357, %358
  %360 = sub nsw i32 %359, 1
  %361 = and i32 %360, 31
  %362 = sub nsw i32 %356, %361
  store i32 %362, i32* %34, align 4
  %363 = load i32, i32* %34, align 4
  %364 = icmp sgt i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %342
  %366 = load i32, i32* %34, align 4
  br label %370

367:                                              ; preds = %342
  %368 = load i32, i32* %34, align 4
  %369 = add nsw i32 %368, 32
  br label %370

370:                                              ; preds = %367, %365
  %371 = phi i32 [ %366, %365 ], [ %369, %367 ]
  store i32 %371, i32* %30, align 4
  %372 = load i32, i32* %29, align 4
  %373 = load i32, i32* %33, align 4
  %374 = sub nsw i32 %372, %373
  %375 = load i32, i32* %30, align 4
  %376 = sub nsw i32 %374, %375
  store i32 %376, i32* %31, align 4
  %377 = load i32, i32* %12, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %383

379:                                              ; preds = %370
  %380 = load i32, i32* %32, align 4
  store i32 %380, i32* %10, align 4
  %381 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %11, align 8
  %382 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %381, i32 0, i32 4
  store i32 %380, i32* %382, align 4
  br label %383

383:                                              ; preds = %379, %370
  %384 = load i32, i32* %31, align 4
  %385 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %11, align 8
  %386 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %385, i32 0, i32 5
  store i32 %384, i32* %386, align 4
  %387 = load i32, i32* %33, align 4
  %388 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %11, align 8
  %389 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %388, i32 0, i32 6
  store i32 %387, i32* %389, align 4
  %390 = load i32, i32* %30, align 4
  %391 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %11, align 8
  %392 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %391, i32 0, i32 7
  store i32 %390, i32* %392, align 4
  %393 = load i32, i32* %9, align 4
  %394 = icmp eq i32 %393, 320
  br i1 %394, label %395, label %408

395:                                              ; preds = %383
  %396 = load i32, i32* %10, align 4
  %397 = icmp eq i32 %396, 200
  br i1 %397, label %401, label %398

398:                                              ; preds = %395
  %399 = load i32, i32* %10, align 4
  %400 = icmp eq i32 %399, 240
  br i1 %400, label %401, label %408

401:                                              ; preds = %398, %395
  %402 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %11, align 8
  %403 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %402, i32 0, i32 1
  store i32 24, i32* %403, align 4
  %404 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %11, align 8
  %405 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %404, i32 0, i32 2
  store i32 8, i32* %405, align 4
  %406 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %11, align 8
  %407 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %406, i32 0, i32 3
  store i32 48, i32* %407, align 4
  br label %408

408:                                              ; preds = %401, %398, %383
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
