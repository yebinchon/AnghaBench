; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_phy_simularity_compare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_phy_simularity_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@__const._rtl92ee_phy_simularity_compare.final_candidate = private unnamed_addr constant [2 x i32] [i32 255, i32 255], align 4
@MAX_TOLERANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, [8 x i64]*, i32, i32)* @_rtl92ee_phy_simularity_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92ee_phy_simularity_compare(%struct.ieee80211_hw* %0, [8 x i64]* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca [8 x i64]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store [8 x i64]* %1, [8 x i64]** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = bitcast [2 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast ([2 x i32]* @__const._rtl92ee_phy_simularity_compare.final_candidate to i8*), i64 8, i1 false)
  store i32 1, i32* %16, align 4
  store i32 8, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %212, %4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %215

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 5
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 7
  br i1 %35, label %36, label %101

36:                                               ; preds = %33, %30, %27, %24
  %37 = load [8 x i64]*, [8 x i64]** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i64], [8 x i64]* %37, i64 %39
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i64], [8 x i64]* %40, i64 0, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = and i64 %44, 512
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %36
  %48 = load [8 x i64]*, [8 x i64]** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x i64], [8 x i64]* %48, i64 %50
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8 x i64], [8 x i64]* %51, i64 0, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = or i64 %55, 4294966272
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %17, align 4
  br label %68

58:                                               ; preds = %36
  %59 = load [8 x i64]*, [8 x i64]** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [8 x i64], [8 x i64]* %59, i64 %61
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [8 x i64], [8 x i64]* %62, i64 0, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %17, align 4
  br label %68

68:                                               ; preds = %58, %47
  %69 = load [8 x i64]*, [8 x i64]** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x i64], [8 x i64]* %69, i64 %71
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [8 x i64], [8 x i64]* %72, i64 0, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = and i64 %76, 512
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %68
  %80 = load [8 x i64]*, [8 x i64]** %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8 x i64], [8 x i64]* %80, i64 %82
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [8 x i64], [8 x i64]* %83, i64 0, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = or i64 %87, 4294966272
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %18, align 4
  br label %100

90:                                               ; preds = %68
  %91 = load [8 x i64]*, [8 x i64]** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x i64], [8 x i64]* %91, i64 %93
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x i64], [8 x i64]* %94, i64 0, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %18, align 4
  br label %100

100:                                              ; preds = %90, %79
  br label %120

101:                                              ; preds = %33
  %102 = load [8 x i64]*, [8 x i64]** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [8 x i64], [8 x i64]* %102, i64 %104
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [8 x i64], [8 x i64]* %105, i64 0, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %17, align 4
  %111 = load [8 x i64]*, [8 x i64]** %7, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [8 x i64], [8 x i64]* %111, i64 %113
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [8 x i64], [8 x i64]* %114, i64 0, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %18, align 4
  br label %120

120:                                              ; preds = %101, %100
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %18, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %18, align 4
  %127 = sub nsw i32 %125, %126
  br label %132

128:                                              ; preds = %120
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %17, align 4
  %131 = sub nsw i32 %129, %130
  br label %132

132:                                              ; preds = %128, %124
  %133 = phi i32 [ %127, %124 ], [ %131, %128 ]
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @MAX_TOLERANCE, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %211

137:                                              ; preds = %132
  %138 = load i32, i32* %10, align 4
  %139 = icmp eq i32 %138, 2
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %10, align 4
  %142 = icmp eq i32 %141, 6
  br i1 %142, label %143, label %205

143:                                              ; preds = %140, %137
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %205, label %146

146:                                              ; preds = %143
  %147 = load [8 x i64]*, [8 x i64]** %7, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [8 x i64], [8 x i64]* %147, i64 %149
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [8 x i64], [8 x i64]* %150, i64 0, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = load [8 x i64]*, [8 x i64]** %7, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [8 x i64], [8 x i64]* %155, i64 %157
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [8 x i64], [8 x i64]* %158, i64 0, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %154, %163
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %146
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %10, align 4
  %169 = sdiv i32 %168, 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %170
  store i32 %167, i32* %171, align 4
  br label %204

172:                                              ; preds = %146
  %173 = load [8 x i64]*, [8 x i64]** %7, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [8 x i64], [8 x i64]* %173, i64 %175
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [8 x i64], [8 x i64]* %176, i64 0, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = load [8 x i64]*, [8 x i64]** %7, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [8 x i64], [8 x i64]* %181, i64 %183
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [8 x i64], [8 x i64]* %184, i64 0, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %180, %189
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %172
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* %10, align 4
  %195 = sdiv i32 %194, 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %196
  store i32 %193, i32* %197, align 4
  br label %203

198:                                              ; preds = %172
  %199 = load i32, i32* %10, align 4
  %200 = shl i32 1, %199
  %201 = load i32, i32* %13, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %13, align 4
  br label %203

203:                                              ; preds = %198, %192
  br label %204

204:                                              ; preds = %203, %166
  br label %210

205:                                              ; preds = %143, %140
  %206 = load i32, i32* %10, align 4
  %207 = shl i32 1, %206
  %208 = load i32, i32* %13, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %13, align 4
  br label %210

210:                                              ; preds = %205, %204
  br label %211

211:                                              ; preds = %210, %132
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %10, align 4
  br label %20

215:                                              ; preds = %20
  %216 = load i32, i32* %13, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %267

218:                                              ; preds = %215
  store i32 0, i32* %10, align 4
  br label %219

219:                                              ; preds = %262, %218
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* %14, align 4
  %222 = sdiv i32 %221, 4
  %223 = icmp slt i32 %220, %222
  br i1 %223, label %224, label %265

224:                                              ; preds = %219
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 255
  br i1 %229, label %230, label %261

230:                                              ; preds = %224
  %231 = load i32, i32* %10, align 4
  %232 = mul nsw i32 %231, 4
  store i32 %232, i32* %11, align 4
  br label %233

233:                                              ; preds = %257, %230
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* %10, align 4
  %236 = add nsw i32 %235, 1
  %237 = mul nsw i32 %236, 4
  %238 = sub nsw i32 %237, 2
  %239 = icmp slt i32 %234, %238
  br i1 %239, label %240, label %260

240:                                              ; preds = %233
  %241 = load [8 x i64]*, [8 x i64]** %7, align 8
  %242 = load i32, i32* %10, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [8 x i64], [8 x i64]* %241, i64 %246
  %248 = load i32, i32* %11, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [8 x i64], [8 x i64]* %247, i64 0, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = load [8 x i64]*, [8 x i64]** %7, align 8
  %253 = getelementptr inbounds [8 x i64], [8 x i64]* %252, i64 3
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [8 x i64], [8 x i64]* %253, i64 0, i64 %255
  store i64 %251, i64* %256, align 8
  br label %257

257:                                              ; preds = %240
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %11, align 4
  br label %233

260:                                              ; preds = %233
  store i32 0, i32* %16, align 4
  br label %261

261:                                              ; preds = %260, %224
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %10, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %10, align 4
  br label %219

265:                                              ; preds = %219
  %266 = load i32, i32* %16, align 4
  store i32 %266, i32* %5, align 4
  br label %372

267:                                              ; preds = %215
  %268 = load i32, i32* %13, align 4
  %269 = and i32 %268, 3
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %293, label %271

271:                                              ; preds = %267
  store i32 0, i32* %10, align 4
  br label %272

272:                                              ; preds = %289, %271
  %273 = load i32, i32* %10, align 4
  %274 = icmp slt i32 %273, 2
  br i1 %274, label %275, label %292

275:                                              ; preds = %272
  %276 = load [8 x i64]*, [8 x i64]** %7, align 8
  %277 = load i32, i32* %8, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [8 x i64], [8 x i64]* %276, i64 %278
  %280 = load i32, i32* %10, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [8 x i64], [8 x i64]* %279, i64 0, i64 %281
  %283 = load i64, i64* %282, align 8
  %284 = load [8 x i64]*, [8 x i64]** %7, align 8
  %285 = getelementptr inbounds [8 x i64], [8 x i64]* %284, i64 3
  %286 = load i32, i32* %10, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [8 x i64], [8 x i64]* %285, i64 0, i64 %287
  store i64 %283, i64* %288, align 8
  br label %289

289:                                              ; preds = %275
  %290 = load i32, i32* %10, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %10, align 4
  br label %272

292:                                              ; preds = %272
  br label %293

293:                                              ; preds = %292, %267
  %294 = load i32, i32* %13, align 4
  %295 = and i32 %294, 12
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %319, label %297

297:                                              ; preds = %293
  store i32 2, i32* %10, align 4
  br label %298

298:                                              ; preds = %315, %297
  %299 = load i32, i32* %10, align 4
  %300 = icmp slt i32 %299, 4
  br i1 %300, label %301, label %318

301:                                              ; preds = %298
  %302 = load [8 x i64]*, [8 x i64]** %7, align 8
  %303 = load i32, i32* %8, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [8 x i64], [8 x i64]* %302, i64 %304
  %306 = load i32, i32* %10, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [8 x i64], [8 x i64]* %305, i64 0, i64 %307
  %309 = load i64, i64* %308, align 8
  %310 = load [8 x i64]*, [8 x i64]** %7, align 8
  %311 = getelementptr inbounds [8 x i64], [8 x i64]* %310, i64 3
  %312 = load i32, i32* %10, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [8 x i64], [8 x i64]* %311, i64 0, i64 %313
  store i64 %309, i64* %314, align 8
  br label %315

315:                                              ; preds = %301
  %316 = load i32, i32* %10, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %10, align 4
  br label %298

318:                                              ; preds = %298
  br label %319

319:                                              ; preds = %318, %293
  %320 = load i32, i32* %13, align 4
  %321 = and i32 %320, 48
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %345, label %323

323:                                              ; preds = %319
  store i32 4, i32* %10, align 4
  br label %324

324:                                              ; preds = %341, %323
  %325 = load i32, i32* %10, align 4
  %326 = icmp slt i32 %325, 6
  br i1 %326, label %327, label %344

327:                                              ; preds = %324
  %328 = load [8 x i64]*, [8 x i64]** %7, align 8
  %329 = load i32, i32* %8, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [8 x i64], [8 x i64]* %328, i64 %330
  %332 = load i32, i32* %10, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [8 x i64], [8 x i64]* %331, i64 0, i64 %333
  %335 = load i64, i64* %334, align 8
  %336 = load [8 x i64]*, [8 x i64]** %7, align 8
  %337 = getelementptr inbounds [8 x i64], [8 x i64]* %336, i64 3
  %338 = load i32, i32* %10, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [8 x i64], [8 x i64]* %337, i64 0, i64 %339
  store i64 %335, i64* %340, align 8
  br label %341

341:                                              ; preds = %327
  %342 = load i32, i32* %10, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %10, align 4
  br label %324

344:                                              ; preds = %324
  br label %345

345:                                              ; preds = %344, %319
  %346 = load i32, i32* %13, align 4
  %347 = and i32 %346, 192
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %371, label %349

349:                                              ; preds = %345
  store i32 6, i32* %10, align 4
  br label %350

350:                                              ; preds = %367, %349
  %351 = load i32, i32* %10, align 4
  %352 = icmp slt i32 %351, 8
  br i1 %352, label %353, label %370

353:                                              ; preds = %350
  %354 = load [8 x i64]*, [8 x i64]** %7, align 8
  %355 = load i32, i32* %8, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [8 x i64], [8 x i64]* %354, i64 %356
  %358 = load i32, i32* %10, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [8 x i64], [8 x i64]* %357, i64 0, i64 %359
  %361 = load i64, i64* %360, align 8
  %362 = load [8 x i64]*, [8 x i64]** %7, align 8
  %363 = getelementptr inbounds [8 x i64], [8 x i64]* %362, i64 3
  %364 = load i32, i32* %10, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [8 x i64], [8 x i64]* %363, i64 0, i64 %365
  store i64 %361, i64* %366, align 8
  br label %367

367:                                              ; preds = %353
  %368 = load i32, i32* %10, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %10, align 4
  br label %350

370:                                              ; preds = %350
  br label %371

371:                                              ; preds = %370, %345
  store i32 0, i32* %5, align 4
  br label %372

372:                                              ; preds = %371, %265
  %373 = load i32, i32* %5, align 4
  ret i32 %373
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
