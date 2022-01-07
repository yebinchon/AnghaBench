; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_hw.c_nv10CalcArbitration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_hw.c_nv10CalcArbitration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*)* @nv10CalcArbitration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10CalcArbitration(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %22, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %21, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %23, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %6, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = sdiv i32 %59, 64
  store i32 %60, i32* %7, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %9, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %24, align 4
  store i32 0, i32* %35, align 4
  store i32 512, i32* %19, align 4
  store i32 4, i32* %12, align 4
  store i32 3, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 5
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 7
  store i32 %81, i32* %11, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 8
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 64
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 4
  store i32 %93, i32* %11, align 4
  br label %97

94:                                               ; preds = %86
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 2
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %94, %91
  br label %110

98:                                               ; preds = %2
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 64
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 2
  store i32 %105, i32* %11, align 4
  br label %109

106:                                              ; preds = %98
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %97
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %110
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 128
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i32, i32* %9, align 4
  %120 = icmp eq i32 %119, 32
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 31, i32 42
  store i32 %122, i32* %17, align 4
  store i32 17, i32* %41, align 4
  br label %128

123:                                              ; preds = %113, %110
  %124 = load i32, i32* %9, align 4
  %125 = icmp eq i32 %124, 32
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 8, i32 4
  store i32 %127, i32* %17, align 4
  store i32 18, i32* %41, align 4
  br label %128

128:                                              ; preds = %123, %118
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %24, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %128
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 4
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %139, %128
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 0
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 0
  store i32 %146, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %147

147:                                              ; preds = %365, %142
  %148 = load i32, i32* %16, align 4
  %149 = icmp ne i32 %148, 1
  br i1 %149, label %150, label %377

150:                                              ; preds = %147
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store i32 1, i32* %152, align 4
  store i32 1, i32* %16, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %17, align 4
  %155 = add nsw i32 %153, %154
  store i32 %155, i32* %18, align 4
  %156 = load i32, i32* %18, align 4
  %157 = mul nsw i32 %156, 1000
  %158 = mul nsw i32 %157, 1000
  %159 = load i32, i32* %21, align 4
  %160 = sdiv i32 %158, %159
  store i32 %160, i32* %25, align 4
  %161 = load i32, i32* %11, align 4
  %162 = mul nsw i32 %161, 1000
  %163 = mul nsw i32 %162, 1000
  %164 = load i32, i32* %21, align 4
  %165 = sdiv i32 %163, %164
  store i32 %165, i32* %26, align 4
  %166 = load i32, i32* %41, align 4
  %167 = mul nsw i32 %166, 1000
  %168 = mul nsw i32 %167, 1000
  %169 = load i32, i32* %21, align 4
  %170 = sdiv i32 %168, %169
  store i32 %170, i32* %42, align 4
  %171 = load i32, i32* %10, align 4
  %172 = mul nsw i32 %171, 1000
  %173 = mul nsw i32 %172, 1000
  %174 = load i32, i32* %23, align 4
  %175 = sdiv i32 %173, %174
  store i32 %175, i32* %27, align 4
  %176 = load i32, i32* %12, align 4
  %177 = mul nsw i32 %176, 1000
  %178 = mul nsw i32 %177, 1000
  %179 = load i32, i32* %22, align 4
  %180 = sdiv i32 %178, %179
  store i32 %180, i32* %28, align 4
  %181 = load i32, i32* %26, align 4
  %182 = load i32, i32* %27, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* %28, align 4
  %185 = add nsw i32 %183, %184
  store i32 %185, i32* %38, align 4
  %186 = load i32, i32* %18, align 4
  %187 = mul nsw i32 %186, 1000
  %188 = mul nsw i32 %187, 1000
  %189 = load i32, i32* %21, align 4
  %190 = sdiv i32 %188, %189
  store i32 %190, i32* %30, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %238

193:                                              ; preds = %150
  %194 = load i32, i32* %22, align 4
  %195 = load i32, i32* %9, align 4
  %196 = mul nsw i32 %194, %195
  %197 = sdiv i32 %196, 8
  store i32 %197, i32* %29, align 4
  store i32 1, i32* %13, align 4
  %198 = load i32, i32* %13, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %13, align 4
  store i32 2, i32* %14, align 4
  %200 = load i32, i32* %24, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %193
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %14, align 4
  br label %205

205:                                              ; preds = %202, %193
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* %6, align 4
  %208 = mul nsw i32 %206, %207
  %209 = mul nsw i32 %208, 1000
  %210 = mul nsw i32 %209, 1000
  %211 = load i32, i32* %21, align 4
  %212 = sdiv i32 %210, %211
  store i32 %212, i32* %31, align 4
  %213 = load i32, i32* %31, align 4
  %214 = load i32, i32* %30, align 4
  %215 = add nsw i32 %213, %214
  store i32 %215, i32* %32, align 4
  %216 = load i32, i32* %14, align 4
  %217 = load i32, i32* %6, align 4
  %218 = mul nsw i32 %216, %217
  %219 = mul nsw i32 %218, 1000
  %220 = mul nsw i32 %219, 1000
  %221 = load i32, i32* %21, align 4
  %222 = sdiv i32 %220, %221
  store i32 %222, i32* %33, align 4
  %223 = load i32, i32* %32, align 4
  %224 = load i32, i32* %33, align 4
  %225 = add nsw i32 %223, %224
  %226 = load i32, i32* %25, align 4
  %227 = add nsw i32 %225, %226
  %228 = load i32, i32* %27, align 4
  %229 = add nsw i32 %227, %228
  %230 = load i32, i32* %28, align 4
  %231 = add nsw i32 %229, %230
  store i32 %231, i32* %34, align 4
  %232 = load i32, i32* %34, align 4
  %233 = load i32, i32* %29, align 4
  %234 = mul nsw i32 %232, %233
  %235 = sdiv i32 %234, 1000000
  store i32 %235, i32* %35, align 4
  %236 = load i32, i32* %35, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %35, align 4
  br label %292

238:                                              ; preds = %150
  %239 = load i32, i32* %22, align 4
  %240 = load i32, i32* %9, align 4
  %241 = mul nsw i32 %239, %240
  %242 = sdiv i32 %241, 8
  store i32 %242, i32* %29, align 4
  store i32 1, i32* %14, align 4
  %243 = load i32, i32* %14, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %14, align 4
  %245 = load i32, i32* %24, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %238
  %248 = load i32, i32* %14, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %14, align 4
  br label %250

250:                                              ; preds = %247, %238
  %251 = load i32, i32* %14, align 4
  %252 = load i32, i32* %6, align 4
  %253 = mul nsw i32 %251, %252
  %254 = mul nsw i32 %253, 1000
  %255 = mul nsw i32 %254, 1000
  %256 = load i32, i32* %21, align 4
  %257 = sdiv i32 %255, %256
  store i32 %257, i32* %33, align 4
  %258 = load i32, i32* %33, align 4
  %259 = load i32, i32* %25, align 4
  %260 = add nsw i32 %258, %259
  %261 = load i32, i32* %27, align 4
  %262 = add nsw i32 %260, %261
  %263 = load i32, i32* %28, align 4
  %264 = add nsw i32 %262, %263
  store i32 %264, i32* %34, align 4
  %265 = load i32, i32* %34, align 4
  %266 = load i32, i32* %29, align 4
  %267 = mul nsw i32 %265, %266
  %268 = sdiv i32 %267, 1000000
  store i32 %268, i32* %35, align 4
  %269 = load i32, i32* %35, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %35, align 4
  %271 = load i32, i32* %7, align 4
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %273, label %291

273:                                              ; preds = %250
  %274 = load i32, i32* %23, align 4
  %275 = mul nsw i32 %274, 8
  store i32 %275, i32* %15, align 4
  %276 = load i32, i32* %29, align 4
  %277 = mul nsw i32 %276, 100
  %278 = load i32, i32* %15, align 4
  %279 = mul nsw i32 %278, 102
  %280 = icmp sge i32 %277, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %273
  store i32 4095, i32* %35, align 4
  br label %290

282:                                              ; preds = %273
  %283 = load i32, i32* %29, align 4
  %284 = mul nsw i32 %283, 100
  %285 = load i32, i32* %15, align 4
  %286 = mul nsw i32 %285, 98
  %287 = icmp sge i32 %284, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %282
  store i32 1024, i32* %35, align 4
  store i32 512, i32* %19, align 4
  br label %289

289:                                              ; preds = %288, %282
  br label %290

290:                                              ; preds = %289, %281
  br label %291

291:                                              ; preds = %290, %250
  br label %292

292:                                              ; preds = %291, %205
  %293 = load i32, i32* %35, align 4
  %294 = sdiv i32 %293, 8
  %295 = mul nsw i32 %294, 8
  store i32 %295, i32* %36, align 4
  %296 = load i32, i32* %36, align 4
  %297 = load i32, i32* %35, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %292
  %300 = load i32, i32* %35, align 4
  %301 = add nsw i32 %300, 8
  store i32 %301, i32* %35, align 4
  br label %302

302:                                              ; preds = %299, %292
  %303 = load i32, i32* %35, align 4
  %304 = load i32, i32* %19, align 4
  %305 = add nsw i32 %303, %304
  %306 = sub nsw i32 %305, 1024
  store i32 %306, i32* %20, align 4
  %307 = load i32, i32* %38, align 4
  %308 = load i32, i32* %42, align 4
  %309 = add nsw i32 %307, %308
  store i32 %309, i32* %37, align 4
  %310 = load i32, i32* %37, align 4
  %311 = load i32, i32* %22, align 4
  %312 = mul nsw i32 %310, %311
  %313 = sdiv i32 %312, 1000000
  store i32 %313, i32* %39, align 4
  %314 = load i32, i32* %39, align 4
  %315 = load i32, i32* %9, align 4
  %316 = mul nsw i32 %314, %315
  %317 = sdiv i32 %316, 8
  store i32 %317, i32* %40, align 4
  %318 = load i32, i32* %40, align 4
  %319 = load i32, i32* %20, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %341

321:                                              ; preds = %302
  %322 = load i32, i32* %20, align 4
  %323 = icmp sgt i32 %322, 0
  br i1 %323, label %324, label %341

324:                                              ; preds = %321
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 0
  store i32 0, i32* %326, align 4
  store i32 0, i32* %16, align 4
  %327 = load i32, i32* %41, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %337

329:                                              ; preds = %324
  %330 = load i32, i32* %19, align 4
  %331 = icmp sle i32 %330, 32
  br i1 %331, label %332, label %333

332:                                              ; preds = %329
  store i32 1, i32* %16, align 4
  br label %336

333:                                              ; preds = %329
  %334 = load i32, i32* %19, align 4
  %335 = sdiv i32 %334, 2
  store i32 %335, i32* %19, align 4
  br label %336

336:                                              ; preds = %333, %332
  br label %340

337:                                              ; preds = %324
  %338 = load i32, i32* %41, align 4
  %339 = add nsw i32 %338, -1
  store i32 %339, i32* %41, align 4
  br label %340

340:                                              ; preds = %337, %336
  br label %355

341:                                              ; preds = %321, %302
  %342 = load i32, i32* %35, align 4
  %343 = icmp sgt i32 %342, 1023
  br i1 %343, label %344, label %354

344:                                              ; preds = %341
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 0
  store i32 0, i32* %346, align 4
  store i32 0, i32* %16, align 4
  %347 = load i32, i32* %41, align 4
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %344
  store i32 1, i32* %16, align 4
  br label %353

350:                                              ; preds = %344
  %351 = load i32, i32* %41, align 4
  %352 = add nsw i32 %351, -1
  store i32 %352, i32* %41, align 4
  br label %353

353:                                              ; preds = %350, %349
  br label %354

354:                                              ; preds = %353, %341
  br label %355

355:                                              ; preds = %354, %340
  %356 = load i32, i32* %35, align 4
  %357 = load i32, i32* %19, align 4
  %358 = sub nsw i32 1024, %357
  %359 = add nsw i32 %358, 8
  %360 = icmp slt i32 %356, %359
  br i1 %360, label %361, label %365

361:                                              ; preds = %355
  %362 = load i32, i32* %19, align 4
  %363 = sub nsw i32 1024, %362
  %364 = add nsw i32 %363, 8
  store i32 %364, i32* %35, align 4
  br label %365

365:                                              ; preds = %361, %355
  %366 = load i32, i32* %35, align 4
  store i32 %366, i32* %5, align 4
  %367 = load i32, i32* %5, align 4
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 1
  store i32 %367, i32* %369, align 4
  %370 = load i32, i32* %19, align 4
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 2
  store i32 %370, i32* %372, align 4
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 3
  store i32 1024, i32* %374, align 4
  %375 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 4
  store i32 512, i32* %376, align 4
  br label %147

377:                                              ; preds = %147
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
