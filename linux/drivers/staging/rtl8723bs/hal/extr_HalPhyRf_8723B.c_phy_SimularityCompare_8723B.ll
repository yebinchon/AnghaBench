; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c_phy_SimularityCompare_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c_phy_SimularityCompare_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@__const.phy_SimularityCompare_8723B.final_candidate = private unnamed_addr constant [2 x i32] [i32 255, i32 255], align 4
@MAX_TOLERANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, [8 x i32]*, i32, i32)* @phy_SimularityCompare_8723B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_SimularityCompare_8723B(%struct.adapter* %0, [8 x i32]* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca [8 x i32]*, align 8
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
  %19 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store [8 x i32]* %1, [8 x i32]** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %20 = bitcast [2 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast ([2 x i32]* @__const.phy_SimularityCompare_8723B.final_candidate to i8*), i64 8, i1 false)
  store i32 1, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %21 = load i32, i32* %17, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 8, i32* %14, align 4
  br label %25

24:                                               ; preds = %4
  store i32 4, i32* %14, align 4
  br label %25

25:                                               ; preds = %24, %23
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %212, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %215

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 5
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 7
  br i1 %41, label %42, label %103

42:                                               ; preds = %39, %36, %33, %30
  %43 = load [8 x i32]*, [8 x i32]** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %43, i64 %45
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %46, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 512
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %42
  %54 = load [8 x i32]*, [8 x i32]** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %54, i64 %56
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %57, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, -1024
  store i32 %62, i32* %18, align 4
  br label %72

63:                                               ; preds = %42
  %64 = load [8 x i32]*, [8 x i32]** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %64, i64 %66
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %67, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %18, align 4
  br label %72

72:                                               ; preds = %63, %53
  %73 = load [8 x i32]*, [8 x i32]** %7, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %73, i64 %75
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %76, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 512
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %72
  %84 = load [8 x i32]*, [8 x i32]** %7, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %84, i64 %86
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %87, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, -1024
  store i32 %92, i32* %19, align 4
  br label %102

93:                                               ; preds = %72
  %94 = load [8 x i32]*, [8 x i32]** %7, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %94, i64 %96
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %97, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %19, align 4
  br label %102

102:                                              ; preds = %93, %83
  br label %120

103:                                              ; preds = %39
  %104 = load [8 x i32]*, [8 x i32]** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [8 x i32], [8 x i32]* %104, i64 %106
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [8 x i32], [8 x i32]* %107, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %18, align 4
  %112 = load [8 x i32]*, [8 x i32]** %7, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [8 x i32], [8 x i32]* %112, i64 %114
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %115, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %19, align 4
  br label %120

120:                                              ; preds = %103, %102
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %19, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %19, align 4
  %127 = sub nsw i32 %125, %126
  br label %132

128:                                              ; preds = %120
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* %18, align 4
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
  %147 = load [8 x i32]*, [8 x i32]** %7, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [8 x i32], [8 x i32]* %147, i64 %149
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [8 x i32], [8 x i32]* %150, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load [8 x i32]*, [8 x i32]** %7, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [8 x i32], [8 x i32]* %155, i64 %157
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [8 x i32], [8 x i32]* %158, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %154, %163
  %165 = icmp eq i32 %164, 0
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
  %173 = load [8 x i32]*, [8 x i32]** %7, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [8 x i32], [8 x i32]* %173, i64 %175
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* %176, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load [8 x i32]*, [8 x i32]** %7, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [8 x i32], [8 x i32]* %181, i64 %183
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [8 x i32], [8 x i32]* %184, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %180, %189
  %191 = icmp eq i32 %190, 0
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
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* %10, align 4
  %201 = shl i32 1, %200
  %202 = or i32 %199, %201
  store i32 %202, i32* %13, align 4
  br label %203

203:                                              ; preds = %198, %192
  br label %204

204:                                              ; preds = %203, %166
  br label %210

205:                                              ; preds = %143, %140
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* %10, align 4
  %208 = shl i32 1, %207
  %209 = or i32 %206, %208
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
  br label %26

215:                                              ; preds = %26
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
  %241 = load [8 x i32]*, [8 x i32]** %7, align 8
  %242 = load i32, i32* %10, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [8 x i32], [8 x i32]* %241, i64 %246
  %248 = load i32, i32* %11, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [8 x i32], [8 x i32]* %247, i64 0, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load [8 x i32]*, [8 x i32]** %7, align 8
  %253 = getelementptr inbounds [8 x i32], [8 x i32]* %252, i64 3
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [8 x i32], [8 x i32]* %253, i64 0, i64 %255
  store i32 %251, i32* %256, align 4
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
  %276 = load [8 x i32]*, [8 x i32]** %7, align 8
  %277 = load i32, i32* %8, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [8 x i32], [8 x i32]* %276, i64 %278
  %280 = load i32, i32* %10, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [8 x i32], [8 x i32]* %279, i64 0, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load [8 x i32]*, [8 x i32]** %7, align 8
  %285 = getelementptr inbounds [8 x i32], [8 x i32]* %284, i64 3
  %286 = load i32, i32* %10, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [8 x i32], [8 x i32]* %285, i64 0, i64 %287
  store i32 %283, i32* %288, align 4
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
  %302 = load [8 x i32]*, [8 x i32]** %7, align 8
  %303 = load i32, i32* %8, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [8 x i32], [8 x i32]* %302, i64 %304
  %306 = load i32, i32* %10, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [8 x i32], [8 x i32]* %305, i64 0, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load [8 x i32]*, [8 x i32]** %7, align 8
  %311 = getelementptr inbounds [8 x i32], [8 x i32]* %310, i64 3
  %312 = load i32, i32* %10, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [8 x i32], [8 x i32]* %311, i64 0, i64 %313
  store i32 %309, i32* %314, align 4
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
  %328 = load [8 x i32]*, [8 x i32]** %7, align 8
  %329 = load i32, i32* %8, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [8 x i32], [8 x i32]* %328, i64 %330
  %332 = load i32, i32* %10, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [8 x i32], [8 x i32]* %331, i64 0, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load [8 x i32]*, [8 x i32]** %7, align 8
  %337 = getelementptr inbounds [8 x i32], [8 x i32]* %336, i64 3
  %338 = load i32, i32* %10, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [8 x i32], [8 x i32]* %337, i64 0, i64 %339
  store i32 %335, i32* %340, align 4
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
  %354 = load [8 x i32]*, [8 x i32]** %7, align 8
  %355 = load i32, i32* %8, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [8 x i32], [8 x i32]* %354, i64 %356
  %358 = load i32, i32* %10, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [8 x i32], [8 x i32]* %357, i64 0, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = load [8 x i32]*, [8 x i32]** %7, align 8
  %363 = getelementptr inbounds [8 x i32], [8 x i32]* %362, i64 3
  %364 = load i32, i32* %10, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [8 x i32], [8 x i32]* %363, i64 0, i64 %365
  store i32 %361, i32* %366, align 4
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
