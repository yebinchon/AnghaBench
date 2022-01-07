; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_simularity_compare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_simularity_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_hal }
%struct.rtl_hal = type { i32 }

@__const._rtl92d_phy_simularity_compare.final_candidate = private unnamed_addr constant [2 x i32] [i32 255, i32 255], align 4
@MAX_TOLERANCE_92D = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, [8 x i64]*, i32, i32)* @_rtl92d_phy_simularity_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92d_phy_simularity_compare(%struct.ieee80211_hw* %0, [8 x i64]* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca [8 x i64]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl_priv*, align 8
  %11 = alloca %struct.rtl_hal*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store [8 x i64]* %1, [8 x i64]** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %21 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %20)
  store %struct.rtl_priv* %21, %struct.rtl_priv** %10, align 8
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 0
  store %struct.rtl_hal* %23, %struct.rtl_hal** %11, align 8
  %24 = bitcast [2 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast ([2 x i32]* @__const._rtl92d_phy_simularity_compare.final_candidate to i8*), i64 8, i1 false)
  store i32 1, i32* %18, align 4
  %25 = load %struct.rtl_hal*, %struct.rtl_hal** %11, align 8
  %26 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IS_92D_SINGLEPHY(i32 %27)
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %19, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i64 8, i64* %16, align 8
  br label %33

32:                                               ; preds = %4
  store i64 4, i64* %16, align 8
  br label %33

33:                                               ; preds = %32, %31
  store i64 0, i64* %15, align 8
  store i64 0, i64* %12, align 8
  br label %34

34:                                               ; preds = %164, %33
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %16, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %167

38:                                               ; preds = %34
  %39 = load [8 x i64]*, [8 x i64]** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i64], [8 x i64]* %39, i64 %41
  %43 = load i64, i64* %12, align 8
  %44 = getelementptr inbounds [8 x i64], [8 x i64]* %42, i64 0, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load [8 x i64]*, [8 x i64]** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i64], [8 x i64]* %46, i64 %48
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds [8 x i64], [8 x i64]* %49, i64 0, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %45, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %38
  %55 = load [8 x i64]*, [8 x i64]** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i64], [8 x i64]* %55, i64 %57
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds [8 x i64], [8 x i64]* %58, i64 0, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load [8 x i64]*, [8 x i64]** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [8 x i64], [8 x i64]* %62, i64 %64
  %66 = load i64, i64* %12, align 8
  %67 = getelementptr inbounds [8 x i64], [8 x i64]* %65, i64 0, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %61, %68
  br label %86

70:                                               ; preds = %38
  %71 = load [8 x i64]*, [8 x i64]** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x i64], [8 x i64]* %71, i64 %73
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds [8 x i64], [8 x i64]* %74, i64 0, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load [8 x i64]*, [8 x i64]** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [8 x i64], [8 x i64]* %78, i64 %80
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds [8 x i64], [8 x i64]* %81, i64 0, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %77, %84
  br label %86

86:                                               ; preds = %70, %54
  %87 = phi i64 [ %69, %54 ], [ %85, %70 ]
  store i64 %87, i64* %14, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* @MAX_TOLERANCE_92D, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %163

91:                                               ; preds = %86
  %92 = load i64, i64* %12, align 8
  %93 = icmp eq i64 %92, 2
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i64, i64* %12, align 8
  %96 = icmp eq i64 %95, 6
  br i1 %96, label %97, label %155

97:                                               ; preds = %94, %91
  %98 = load i64, i64* %15, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %155, label %100

100:                                              ; preds = %97
  %101 = load [8 x i64]*, [8 x i64]** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [8 x i64], [8 x i64]* %101, i64 %103
  %105 = load i64, i64* %12, align 8
  %106 = getelementptr inbounds [8 x i64], [8 x i64]* %104, i64 0, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load [8 x i64]*, [8 x i64]** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [8 x i64], [8 x i64]* %108, i64 %110
  %112 = load i64, i64* %12, align 8
  %113 = add i64 %112, 1
  %114 = getelementptr inbounds [8 x i64], [8 x i64]* %111, i64 0, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %107, %115
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %100
  %119 = load i32, i32* %9, align 4
  %120 = load i64, i64* %12, align 8
  %121 = udiv i64 %120, 4
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %121
  store i32 %119, i32* %122, align 4
  br label %154

123:                                              ; preds = %100
  %124 = load [8 x i64]*, [8 x i64]** %7, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [8 x i64], [8 x i64]* %124, i64 %126
  %128 = load i64, i64* %12, align 8
  %129 = getelementptr inbounds [8 x i64], [8 x i64]* %127, i64 0, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load [8 x i64]*, [8 x i64]** %7, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [8 x i64], [8 x i64]* %131, i64 %133
  %135 = load i64, i64* %12, align 8
  %136 = add i64 %135, 1
  %137 = getelementptr inbounds [8 x i64], [8 x i64]* %134, i64 0, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %130, %138
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %123
  %142 = load i32, i32* %8, align 4
  %143 = load i64, i64* %12, align 8
  %144 = udiv i64 %143, 4
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %144
  store i32 %142, i32* %145, align 4
  br label %153

146:                                              ; preds = %123
  %147 = load i64, i64* %15, align 8
  %148 = load i64, i64* %12, align 8
  %149 = trunc i64 %148 to i32
  %150 = shl i32 1, %149
  %151 = sext i32 %150 to i64
  %152 = or i64 %147, %151
  store i64 %152, i64* %15, align 8
  br label %153

153:                                              ; preds = %146, %141
  br label %154

154:                                              ; preds = %153, %118
  br label %162

155:                                              ; preds = %97, %94
  %156 = load i64, i64* %15, align 8
  %157 = load i64, i64* %12, align 8
  %158 = trunc i64 %157 to i32
  %159 = shl i32 1, %158
  %160 = sext i32 %159 to i64
  %161 = or i64 %156, %160
  store i64 %161, i64* %15, align 8
  br label %162

162:                                              ; preds = %155, %154
  br label %163

163:                                              ; preds = %162, %86
  br label %164

164:                                              ; preds = %163
  %165 = load i64, i64* %12, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %12, align 8
  br label %34

167:                                              ; preds = %34
  %168 = load i64, i64* %15, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %215

170:                                              ; preds = %167
  store i64 0, i64* %12, align 8
  br label %171

171:                                              ; preds = %210, %170
  %172 = load i64, i64* %12, align 8
  %173 = load i64, i64* %16, align 8
  %174 = udiv i64 %173, 4
  %175 = icmp ult i64 %172, %174
  br i1 %175, label %176, label %213

176:                                              ; preds = %171
  %177 = load i64, i64* %12, align 8
  %178 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 255
  br i1 %180, label %181, label %209

181:                                              ; preds = %176
  %182 = load i64, i64* %12, align 8
  %183 = mul i64 %182, 4
  store i64 %183, i64* %13, align 8
  br label %184

184:                                              ; preds = %205, %181
  %185 = load i64, i64* %13, align 8
  %186 = load i64, i64* %12, align 8
  %187 = add i64 %186, 1
  %188 = mul i64 %187, 4
  %189 = sub i64 %188, 2
  %190 = icmp ult i64 %185, %189
  br i1 %190, label %191, label %208

191:                                              ; preds = %184
  %192 = load [8 x i64]*, [8 x i64]** %7, align 8
  %193 = load i64, i64* %12, align 8
  %194 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [8 x i64], [8 x i64]* %192, i64 %196
  %198 = load i64, i64* %13, align 8
  %199 = getelementptr inbounds [8 x i64], [8 x i64]* %197, i64 0, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = load [8 x i64]*, [8 x i64]** %7, align 8
  %202 = getelementptr inbounds [8 x i64], [8 x i64]* %201, i64 3
  %203 = load i64, i64* %13, align 8
  %204 = getelementptr inbounds [8 x i64], [8 x i64]* %202, i64 0, i64 %203
  store i64 %200, i64* %204, align 8
  br label %205

205:                                              ; preds = %191
  %206 = load i64, i64* %13, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %13, align 8
  br label %184

208:                                              ; preds = %184
  store i32 0, i32* %18, align 4
  br label %209

209:                                              ; preds = %208, %176
  br label %210

210:                                              ; preds = %209
  %211 = load i64, i64* %12, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %12, align 8
  br label %171

213:                                              ; preds = %171
  %214 = load i32, i32* %18, align 4
  store i32 %214, i32* %5, align 4
  br label %317

215:                                              ; preds = %167
  %216 = load i64, i64* %15, align 8
  %217 = and i64 %216, 15
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %239, label %219

219:                                              ; preds = %215
  store i64 0, i64* %12, align 8
  br label %220

220:                                              ; preds = %235, %219
  %221 = load i64, i64* %12, align 8
  %222 = icmp ult i64 %221, 4
  br i1 %222, label %223, label %238

223:                                              ; preds = %220
  %224 = load [8 x i64]*, [8 x i64]** %7, align 8
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [8 x i64], [8 x i64]* %224, i64 %226
  %228 = load i64, i64* %12, align 8
  %229 = getelementptr inbounds [8 x i64], [8 x i64]* %227, i64 0, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = load [8 x i64]*, [8 x i64]** %7, align 8
  %232 = getelementptr inbounds [8 x i64], [8 x i64]* %231, i64 3
  %233 = load i64, i64* %12, align 8
  %234 = getelementptr inbounds [8 x i64], [8 x i64]* %232, i64 0, i64 %233
  store i64 %230, i64* %234, align 8
  br label %235

235:                                              ; preds = %223
  %236 = load i64, i64* %12, align 8
  %237 = add i64 %236, 1
  store i64 %237, i64* %12, align 8
  br label %220

238:                                              ; preds = %220
  br label %264

239:                                              ; preds = %215
  %240 = load i64, i64* %15, align 8
  %241 = and i64 %240, 3
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %263, label %243

243:                                              ; preds = %239
  store i64 0, i64* %12, align 8
  br label %244

244:                                              ; preds = %259, %243
  %245 = load i64, i64* %12, align 8
  %246 = icmp ult i64 %245, 2
  br i1 %246, label %247, label %262

247:                                              ; preds = %244
  %248 = load [8 x i64]*, [8 x i64]** %7, align 8
  %249 = load i32, i32* %8, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [8 x i64], [8 x i64]* %248, i64 %250
  %252 = load i64, i64* %12, align 8
  %253 = getelementptr inbounds [8 x i64], [8 x i64]* %251, i64 0, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = load [8 x i64]*, [8 x i64]** %7, align 8
  %256 = getelementptr inbounds [8 x i64], [8 x i64]* %255, i64 3
  %257 = load i64, i64* %12, align 8
  %258 = getelementptr inbounds [8 x i64], [8 x i64]* %256, i64 0, i64 %257
  store i64 %254, i64* %258, align 8
  br label %259

259:                                              ; preds = %247
  %260 = load i64, i64* %12, align 8
  %261 = add i64 %260, 1
  store i64 %261, i64* %12, align 8
  br label %244

262:                                              ; preds = %244
  br label %263

263:                                              ; preds = %262, %239
  br label %264

264:                                              ; preds = %263, %238
  %265 = load i64, i64* %15, align 8
  %266 = and i64 %265, 240
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %291, label %268

268:                                              ; preds = %264
  %269 = load i32, i32* %19, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %291

271:                                              ; preds = %268
  store i64 4, i64* %12, align 8
  br label %272

272:                                              ; preds = %287, %271
  %273 = load i64, i64* %12, align 8
  %274 = icmp ult i64 %273, 8
  br i1 %274, label %275, label %290

275:                                              ; preds = %272
  %276 = load [8 x i64]*, [8 x i64]** %7, align 8
  %277 = load i32, i32* %8, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [8 x i64], [8 x i64]* %276, i64 %278
  %280 = load i64, i64* %12, align 8
  %281 = getelementptr inbounds [8 x i64], [8 x i64]* %279, i64 0, i64 %280
  %282 = load i64, i64* %281, align 8
  %283 = load [8 x i64]*, [8 x i64]** %7, align 8
  %284 = getelementptr inbounds [8 x i64], [8 x i64]* %283, i64 3
  %285 = load i64, i64* %12, align 8
  %286 = getelementptr inbounds [8 x i64], [8 x i64]* %284, i64 0, i64 %285
  store i64 %282, i64* %286, align 8
  br label %287

287:                                              ; preds = %275
  %288 = load i64, i64* %12, align 8
  %289 = add i64 %288, 1
  store i64 %289, i64* %12, align 8
  br label %272

290:                                              ; preds = %272
  br label %316

291:                                              ; preds = %268, %264
  %292 = load i64, i64* %15, align 8
  %293 = and i64 %292, 48
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %315, label %295

295:                                              ; preds = %291
  store i64 4, i64* %12, align 8
  br label %296

296:                                              ; preds = %311, %295
  %297 = load i64, i64* %12, align 8
  %298 = icmp ult i64 %297, 6
  br i1 %298, label %299, label %314

299:                                              ; preds = %296
  %300 = load [8 x i64]*, [8 x i64]** %7, align 8
  %301 = load i32, i32* %8, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [8 x i64], [8 x i64]* %300, i64 %302
  %304 = load i64, i64* %12, align 8
  %305 = getelementptr inbounds [8 x i64], [8 x i64]* %303, i64 0, i64 %304
  %306 = load i64, i64* %305, align 8
  %307 = load [8 x i64]*, [8 x i64]** %7, align 8
  %308 = getelementptr inbounds [8 x i64], [8 x i64]* %307, i64 3
  %309 = load i64, i64* %12, align 8
  %310 = getelementptr inbounds [8 x i64], [8 x i64]* %308, i64 0, i64 %309
  store i64 %306, i64* %310, align 8
  br label %311

311:                                              ; preds = %299
  %312 = load i64, i64* %12, align 8
  %313 = add i64 %312, 1
  store i64 %313, i64* %12, align 8
  br label %296

314:                                              ; preds = %296
  br label %315

315:                                              ; preds = %314, %291
  br label %316

316:                                              ; preds = %315, %290
  store i32 0, i32* %5, align 4
  br label %317

317:                                              ; preds = %316, %213
  %318 = load i32, i32* %5, align 4
  ret i32 %318
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IS_92D_SINGLEPHY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
