; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_gen2_simularity_compare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_gen2_simularity_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32 }

@__const.rtl8xxxu_gen2_simularity_compare.candidate = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@MAX_TOLERANCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8xxxu_gen2_simularity_compare(%struct.rtl8xxxu_priv* %0, [8 x i32]* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl8xxxu_priv*, align 8
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
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %6, align 8
  store [8 x i32]* %1, [8 x i32]** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %19 = bitcast [2 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast ([2 x i32]* @__const.rtl8xxxu_gen2_simularity_compare.candidate to i8*), i64 8, i1 false)
  store i32 1, i32* %18, align 4
  %20 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %6, align 8
  %21 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 8, i32* %14, align 4
  br label %26

25:                                               ; preds = %4
  store i32 4, i32* %14, align 4
  br label %26

26:                                               ; preds = %25, %24
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %205, %26
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %208

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %96

35:                                               ; preds = %31
  %36 = load [8 x i32]*, [8 x i32]** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %36, i64 %38
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %39, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 512
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %35
  %47 = load [8 x i32]*, [8 x i32]** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %47, i64 %49
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %50, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, -1024
  store i32 %55, i32* %16, align 4
  br label %65

56:                                               ; preds = %35
  %57 = load [8 x i32]*, [8 x i32]** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %57, i64 %59
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %60, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %16, align 4
  br label %65

65:                                               ; preds = %56, %46
  %66 = load [8 x i32]*, [8 x i32]** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %66, i64 %68
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %69, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 512
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %65
  %77 = load [8 x i32]*, [8 x i32]** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %77, i64 %79
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %80, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, -1024
  store i32 %85, i32* %17, align 4
  br label %95

86:                                               ; preds = %65
  %87 = load [8 x i32]*, [8 x i32]** %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %87, i64 %89
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %90, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %17, align 4
  br label %95

95:                                               ; preds = %86, %76
  br label %113

96:                                               ; preds = %31
  %97 = load [8 x i32]*, [8 x i32]** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %97, i64 %99
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %100, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %16, align 4
  %105 = load [8 x i32]*, [8 x i32]** %7, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* %105, i64 %107
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %108, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %17, align 4
  br label %113

113:                                              ; preds = %96, %95
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %17, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %17, align 4
  %120 = sub nsw i32 %118, %119
  br label %125

121:                                              ; preds = %113
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %16, align 4
  %124 = sub nsw i32 %122, %123
  br label %125

125:                                              ; preds = %121, %117
  %126 = phi i32 [ %120, %117 ], [ %124, %121 ]
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @MAX_TOLERANCE, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %204

130:                                              ; preds = %125
  %131 = load i32, i32* %10, align 4
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %10, align 4
  %135 = icmp eq i32 %134, 6
  br i1 %135, label %136, label %198

136:                                              ; preds = %133, %130
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %198, label %139

139:                                              ; preds = %136
  %140 = load [8 x i32]*, [8 x i32]** %7, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 %142
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [8 x i32], [8 x i32]* %143, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load [8 x i32]*, [8 x i32]** %7, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* %148, i64 %150
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %151, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %147, %156
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %139
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %10, align 4
  %162 = sdiv i32 %161, 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %163
  store i32 %160, i32* %164, align 4
  br label %197

165:                                              ; preds = %139
  %166 = load [8 x i32]*, [8 x i32]** %7, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [8 x i32], [8 x i32]* %166, i64 %168
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [8 x i32], [8 x i32]* %169, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load [8 x i32]*, [8 x i32]** %7, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [8 x i32], [8 x i32]* %174, i64 %176
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [8 x i32], [8 x i32]* %177, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %173, %182
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %165
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %10, align 4
  %188 = sdiv i32 %187, 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %189
  store i32 %186, i32* %190, align 4
  br label %196

191:                                              ; preds = %165
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %10, align 4
  %194 = shl i32 1, %193
  %195 = or i32 %192, %194
  store i32 %195, i32* %13, align 4
  br label %196

196:                                              ; preds = %191, %185
  br label %197

197:                                              ; preds = %196, %159
  br label %203

198:                                              ; preds = %136, %133
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* %10, align 4
  %201 = shl i32 1, %200
  %202 = or i32 %199, %201
  store i32 %202, i32* %13, align 4
  br label %203

203:                                              ; preds = %198, %197
  br label %204

204:                                              ; preds = %203, %125
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %10, align 4
  br label %27

208:                                              ; preds = %27
  %209 = load i32, i32* %13, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %260

211:                                              ; preds = %208
  store i32 0, i32* %10, align 4
  br label %212

212:                                              ; preds = %255, %211
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %14, align 4
  %215 = sdiv i32 %214, 4
  %216 = icmp slt i32 %213, %215
  br i1 %216, label %217, label %258

217:                                              ; preds = %212
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = icmp sge i32 %221, 0
  br i1 %222, label %223, label %254

223:                                              ; preds = %217
  %224 = load i32, i32* %10, align 4
  %225 = mul nsw i32 %224, 4
  store i32 %225, i32* %11, align 4
  br label %226

226:                                              ; preds = %250, %223
  %227 = load i32, i32* %11, align 4
  %228 = load i32, i32* %10, align 4
  %229 = add nsw i32 %228, 1
  %230 = mul nsw i32 %229, 4
  %231 = sub nsw i32 %230, 2
  %232 = icmp slt i32 %227, %231
  br i1 %232, label %233, label %253

233:                                              ; preds = %226
  %234 = load [8 x i32]*, [8 x i32]** %7, align 8
  %235 = load i32, i32* %10, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [8 x i32], [8 x i32]* %234, i64 %239
  %241 = load i32, i32* %11, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [8 x i32], [8 x i32]* %240, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load [8 x i32]*, [8 x i32]** %7, align 8
  %246 = getelementptr inbounds [8 x i32], [8 x i32]* %245, i64 3
  %247 = load i32, i32* %11, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [8 x i32], [8 x i32]* %246, i64 0, i64 %248
  store i32 %244, i32* %249, align 4
  br label %250

250:                                              ; preds = %233
  %251 = load i32, i32* %11, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %11, align 4
  br label %226

253:                                              ; preds = %226
  store i32 0, i32* %18, align 4
  br label %254

254:                                              ; preds = %253, %217
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %10, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %10, align 4
  br label %212

258:                                              ; preds = %212
  %259 = load i32, i32* %18, align 4
  store i32 %259, i32* %5, align 4
  br label %376

260:                                              ; preds = %208
  %261 = load i32, i32* %13, align 4
  %262 = and i32 %261, 3
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %286, label %264

264:                                              ; preds = %260
  store i32 0, i32* %10, align 4
  br label %265

265:                                              ; preds = %282, %264
  %266 = load i32, i32* %10, align 4
  %267 = icmp slt i32 %266, 2
  br i1 %267, label %268, label %285

268:                                              ; preds = %265
  %269 = load [8 x i32]*, [8 x i32]** %7, align 8
  %270 = load i32, i32* %8, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [8 x i32], [8 x i32]* %269, i64 %271
  %273 = load i32, i32* %10, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [8 x i32], [8 x i32]* %272, i64 0, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load [8 x i32]*, [8 x i32]** %7, align 8
  %278 = getelementptr inbounds [8 x i32], [8 x i32]* %277, i64 3
  %279 = load i32, i32* %10, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [8 x i32], [8 x i32]* %278, i64 0, i64 %280
  store i32 %276, i32* %281, align 4
  br label %282

282:                                              ; preds = %268
  %283 = load i32, i32* %10, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %10, align 4
  br label %265

285:                                              ; preds = %265
  br label %286

286:                                              ; preds = %285, %260
  %287 = load i32, i32* %13, align 4
  %288 = and i32 %287, 12
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %312, label %290

290:                                              ; preds = %286
  store i32 2, i32* %10, align 4
  br label %291

291:                                              ; preds = %308, %290
  %292 = load i32, i32* %10, align 4
  %293 = icmp slt i32 %292, 4
  br i1 %293, label %294, label %311

294:                                              ; preds = %291
  %295 = load [8 x i32]*, [8 x i32]** %7, align 8
  %296 = load i32, i32* %8, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [8 x i32], [8 x i32]* %295, i64 %297
  %299 = load i32, i32* %10, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [8 x i32], [8 x i32]* %298, i64 0, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = load [8 x i32]*, [8 x i32]** %7, align 8
  %304 = getelementptr inbounds [8 x i32], [8 x i32]* %303, i64 3
  %305 = load i32, i32* %10, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [8 x i32], [8 x i32]* %304, i64 0, i64 %306
  store i32 %302, i32* %307, align 4
  br label %308

308:                                              ; preds = %294
  %309 = load i32, i32* %10, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %10, align 4
  br label %291

311:                                              ; preds = %291
  br label %312

312:                                              ; preds = %311, %286
  %313 = load i32, i32* %13, align 4
  %314 = and i32 %313, 48
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %343, label %316

316:                                              ; preds = %312
  %317 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %6, align 8
  %318 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = icmp sgt i32 %319, 1
  br i1 %320, label %321, label %343

321:                                              ; preds = %316
  store i32 4, i32* %10, align 4
  br label %322

322:                                              ; preds = %339, %321
  %323 = load i32, i32* %10, align 4
  %324 = icmp slt i32 %323, 6
  br i1 %324, label %325, label %342

325:                                              ; preds = %322
  %326 = load [8 x i32]*, [8 x i32]** %7, align 8
  %327 = load i32, i32* %8, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [8 x i32], [8 x i32]* %326, i64 %328
  %330 = load i32, i32* %10, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [8 x i32], [8 x i32]* %329, i64 0, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = load [8 x i32]*, [8 x i32]** %7, align 8
  %335 = getelementptr inbounds [8 x i32], [8 x i32]* %334, i64 3
  %336 = load i32, i32* %10, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [8 x i32], [8 x i32]* %335, i64 0, i64 %337
  store i32 %333, i32* %338, align 4
  br label %339

339:                                              ; preds = %325
  %340 = load i32, i32* %10, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %10, align 4
  br label %322

342:                                              ; preds = %322
  br label %343

343:                                              ; preds = %342, %316, %312
  %344 = load i32, i32* %13, align 4
  %345 = and i32 %344, 48
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %374, label %347

347:                                              ; preds = %343
  %348 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %6, align 8
  %349 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = icmp sgt i32 %350, 1
  br i1 %351, label %352, label %374

352:                                              ; preds = %347
  store i32 6, i32* %10, align 4
  br label %353

353:                                              ; preds = %370, %352
  %354 = load i32, i32* %10, align 4
  %355 = icmp slt i32 %354, 8
  br i1 %355, label %356, label %373

356:                                              ; preds = %353
  %357 = load [8 x i32]*, [8 x i32]** %7, align 8
  %358 = load i32, i32* %8, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [8 x i32], [8 x i32]* %357, i64 %359
  %361 = load i32, i32* %10, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [8 x i32], [8 x i32]* %360, i64 0, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = load [8 x i32]*, [8 x i32]** %7, align 8
  %366 = getelementptr inbounds [8 x i32], [8 x i32]* %365, i64 3
  %367 = load i32, i32* %10, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [8 x i32], [8 x i32]* %366, i64 0, i64 %368
  store i32 %364, i32* %369, align 4
  br label %370

370:                                              ; preds = %356
  %371 = load i32, i32* %10, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %10, align 4
  br label %353

373:                                              ; preds = %353
  br label %374

374:                                              ; preds = %373, %347, %343
  br label %375

375:                                              ; preds = %374
  store i32 0, i32* %5, align 4
  br label %376

376:                                              ; preds = %375, %258
  %377 = load i32, i32* %5, align 4
  ret i32 %377
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
