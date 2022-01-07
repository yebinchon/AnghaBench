; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_syscopyarea.c_bitcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_syscopyarea.c_bitcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i64*, i32, i64*, i32, i32, i32)* @bitcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitcpy(%struct.fb_info* %0, i64* %1, i32 %2, i64* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %12, align 4
  %25 = sub i32 %23, %24
  store i32 %25, i32* %17, align 4
  %26 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @FB_SHIFT_HIGH(%struct.fb_info* %26, i64 -1, i32 %27)
  store i64 %28, i64* %15, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %14, align 4
  %32 = add i32 %30, %31
  %33 = load i32, i32* %13, align 4
  %34 = urem i32 %32, %33
  %35 = call i64 @FB_SHIFT_HIGH(%struct.fb_info* %29, i64 -1, i32 %34)
  %36 = xor i64 %35, -1
  store i64 %36, i64* %16, align 8
  %37 = load i32, i32* %17, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %154, label %39

39:                                               ; preds = %7
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %14, align 4
  %42 = add i32 %40, %41
  %43 = load i32, i32* %13, align 4
  %44 = icmp ule i32 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load i64, i64* %16, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i64, i64* %16, align 8
  %50 = load i64, i64* %15, align 8
  %51 = and i64 %50, %49
  store i64 %51, i64* %15, align 8
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i64*, i64** %11, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %9, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %15, align 8
  %58 = call i64 @comp(i64 %54, i64 %56, i64 %57)
  %59 = load i64*, i64** %9, align 8
  store i64 %58, i64* %59, align 8
  br label %153

60:                                               ; preds = %39
  %61 = load i64, i64* %15, align 8
  %62 = icmp ne i64 %61, -1
  br i1 %62, label %63, label %80

63:                                               ; preds = %60
  %64 = load i64*, i64** %11, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %9, align 8
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i64 @comp(i64 %65, i64 %67, i64 %68)
  %70 = load i64*, i64** %9, align 8
  store i64 %69, i64* %70, align 8
  %71 = load i64*, i64** %9, align 8
  %72 = getelementptr inbounds i64, i64* %71, i32 1
  store i64* %72, i64** %9, align 8
  %73 = load i64*, i64** %11, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 1
  store i64* %74, i64** %11, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sub i32 %75, %76
  %78 = load i32, i32* %14, align 4
  %79 = sub i32 %78, %77
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %63, %60
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = udiv i32 %82, %81
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %87, %80
  %85 = load i32, i32* %14, align 4
  %86 = icmp uge i32 %85, 8
  br i1 %86, label %87, label %130

87:                                               ; preds = %84
  %88 = load i64*, i64** %11, align 8
  %89 = getelementptr inbounds i64, i64* %88, i32 1
  store i64* %89, i64** %11, align 8
  %90 = load i64, i64* %88, align 8
  %91 = load i64*, i64** %9, align 8
  %92 = getelementptr inbounds i64, i64* %91, i32 1
  store i64* %92, i64** %9, align 8
  store i64 %90, i64* %91, align 8
  %93 = load i64*, i64** %11, align 8
  %94 = getelementptr inbounds i64, i64* %93, i32 1
  store i64* %94, i64** %11, align 8
  %95 = load i64, i64* %93, align 8
  %96 = load i64*, i64** %9, align 8
  %97 = getelementptr inbounds i64, i64* %96, i32 1
  store i64* %97, i64** %9, align 8
  store i64 %95, i64* %96, align 8
  %98 = load i64*, i64** %11, align 8
  %99 = getelementptr inbounds i64, i64* %98, i32 1
  store i64* %99, i64** %11, align 8
  %100 = load i64, i64* %98, align 8
  %101 = load i64*, i64** %9, align 8
  %102 = getelementptr inbounds i64, i64* %101, i32 1
  store i64* %102, i64** %9, align 8
  store i64 %100, i64* %101, align 8
  %103 = load i64*, i64** %11, align 8
  %104 = getelementptr inbounds i64, i64* %103, i32 1
  store i64* %104, i64** %11, align 8
  %105 = load i64, i64* %103, align 8
  %106 = load i64*, i64** %9, align 8
  %107 = getelementptr inbounds i64, i64* %106, i32 1
  store i64* %107, i64** %9, align 8
  store i64 %105, i64* %106, align 8
  %108 = load i64*, i64** %11, align 8
  %109 = getelementptr inbounds i64, i64* %108, i32 1
  store i64* %109, i64** %11, align 8
  %110 = load i64, i64* %108, align 8
  %111 = load i64*, i64** %9, align 8
  %112 = getelementptr inbounds i64, i64* %111, i32 1
  store i64* %112, i64** %9, align 8
  store i64 %110, i64* %111, align 8
  %113 = load i64*, i64** %11, align 8
  %114 = getelementptr inbounds i64, i64* %113, i32 1
  store i64* %114, i64** %11, align 8
  %115 = load i64, i64* %113, align 8
  %116 = load i64*, i64** %9, align 8
  %117 = getelementptr inbounds i64, i64* %116, i32 1
  store i64* %117, i64** %9, align 8
  store i64 %115, i64* %116, align 8
  %118 = load i64*, i64** %11, align 8
  %119 = getelementptr inbounds i64, i64* %118, i32 1
  store i64* %119, i64** %11, align 8
  %120 = load i64, i64* %118, align 8
  %121 = load i64*, i64** %9, align 8
  %122 = getelementptr inbounds i64, i64* %121, i32 1
  store i64* %122, i64** %9, align 8
  store i64 %120, i64* %121, align 8
  %123 = load i64*, i64** %11, align 8
  %124 = getelementptr inbounds i64, i64* %123, i32 1
  store i64* %124, i64** %11, align 8
  %125 = load i64, i64* %123, align 8
  %126 = load i64*, i64** %9, align 8
  %127 = getelementptr inbounds i64, i64* %126, i32 1
  store i64* %127, i64** %9, align 8
  store i64 %125, i64* %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sub i32 %128, 8
  store i32 %129, i32* %14, align 4
  br label %84

130:                                              ; preds = %84
  br label %131

131:                                              ; preds = %135, %130
  %132 = load i32, i32* %14, align 4
  %133 = add i32 %132, -1
  store i32 %133, i32* %14, align 4
  %134 = icmp ne i32 %132, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = load i64*, i64** %11, align 8
  %137 = getelementptr inbounds i64, i64* %136, i32 1
  store i64* %137, i64** %11, align 8
  %138 = load i64, i64* %136, align 8
  %139 = load i64*, i64** %9, align 8
  %140 = getelementptr inbounds i64, i64* %139, i32 1
  store i64* %140, i64** %9, align 8
  store i64 %138, i64* %139, align 8
  br label %131

141:                                              ; preds = %131
  %142 = load i64, i64* %16, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  %145 = load i64*, i64** %11, align 8
  %146 = load i64, i64* %145, align 8
  %147 = load i64*, i64** %9, align 8
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %16, align 8
  %150 = call i64 @comp(i64 %146, i64 %148, i64 %149)
  %151 = load i64*, i64** %9, align 8
  store i64 %150, i64* %151, align 8
  br label %152

152:                                              ; preds = %144, %141
  br label %153

153:                                              ; preds = %152, %52
  br label %407

154:                                              ; preds = %7
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %13, align 4
  %157 = sub nsw i32 %156, 1
  %158 = and i32 %155, %157
  store i32 %158, i32* %19, align 4
  %159 = load i32, i32* %17, align 4
  %160 = sub nsw i32 0, %159
  %161 = load i32, i32* %13, align 4
  %162 = sub nsw i32 %161, 1
  %163 = and i32 %160, %162
  store i32 %163, i32* %18, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %14, align 4
  %166 = add i32 %164, %165
  %167 = load i32, i32* %13, align 4
  %168 = icmp ule i32 %166, %167
  br i1 %168, label %169, label %229

169:                                              ; preds = %154
  %170 = load i64, i64* %16, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i64, i64* %16, align 8
  %174 = load i64, i64* %15, align 8
  %175 = and i64 %174, %173
  store i64 %175, i64* %15, align 8
  br label %176

176:                                              ; preds = %172, %169
  %177 = load i32, i32* %17, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %176
  %180 = load i64*, i64** %11, align 8
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %18, align 4
  %183 = zext i32 %182 to i64
  %184 = shl i64 %181, %183
  %185 = load i64*, i64** %9, align 8
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %15, align 8
  %188 = call i64 @comp(i64 %184, i64 %186, i64 %187)
  %189 = load i64*, i64** %9, align 8
  store i64 %188, i64* %189, align 8
  br label %228

190:                                              ; preds = %176
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* %14, align 4
  %193 = add i32 %191, %192
  %194 = load i32, i32* %13, align 4
  %195 = icmp ule i32 %193, %194
  br i1 %195, label %196, label %207

196:                                              ; preds = %190
  %197 = load i64*, i64** %11, align 8
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %19, align 4
  %200 = zext i32 %199 to i64
  %201 = lshr i64 %198, %200
  %202 = load i64*, i64** %9, align 8
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* %15, align 8
  %205 = call i64 @comp(i64 %201, i64 %203, i64 %204)
  %206 = load i64*, i64** %9, align 8
  store i64 %205, i64* %206, align 8
  br label %227

207:                                              ; preds = %190
  %208 = load i64*, i64** %11, align 8
  %209 = getelementptr inbounds i64, i64* %208, i32 1
  store i64* %209, i64** %11, align 8
  %210 = load i64, i64* %208, align 8
  store i64 %210, i64* %20, align 8
  %211 = load i64*, i64** %11, align 8
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %21, align 8
  %213 = load i64, i64* %20, align 8
  %214 = load i32, i32* %19, align 4
  %215 = zext i32 %214 to i64
  %216 = lshr i64 %213, %215
  %217 = load i64, i64* %21, align 8
  %218 = load i32, i32* %18, align 4
  %219 = zext i32 %218 to i64
  %220 = shl i64 %217, %219
  %221 = or i64 %216, %220
  %222 = load i64*, i64** %9, align 8
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* %15, align 8
  %225 = call i64 @comp(i64 %221, i64 %223, i64 %224)
  %226 = load i64*, i64** %9, align 8
  store i64 %225, i64* %226, align 8
  br label %227

227:                                              ; preds = %207, %196
  br label %228

228:                                              ; preds = %227, %179
  br label %406

229:                                              ; preds = %154
  %230 = load i64*, i64** %11, align 8
  %231 = getelementptr inbounds i64, i64* %230, i32 1
  store i64* %231, i64** %11, align 8
  %232 = load i64, i64* %230, align 8
  store i64 %232, i64* %20, align 8
  %233 = load i32, i32* %17, align 4
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %252

235:                                              ; preds = %229
  %236 = load i64, i64* %20, align 8
  %237 = load i32, i32* %18, align 4
  %238 = zext i32 %237 to i64
  %239 = shl i64 %236, %238
  %240 = load i64*, i64** %9, align 8
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* %15, align 8
  %243 = call i64 @comp(i64 %239, i64 %241, i64 %242)
  %244 = load i64*, i64** %9, align 8
  store i64 %243, i64* %244, align 8
  %245 = load i64*, i64** %9, align 8
  %246 = getelementptr inbounds i64, i64* %245, i32 1
  store i64* %246, i64** %9, align 8
  %247 = load i32, i32* %13, align 4
  %248 = load i32, i32* %10, align 4
  %249 = sub i32 %247, %248
  %250 = load i32, i32* %14, align 4
  %251 = sub i32 %250, %249
  store i32 %251, i32* %14, align 4
  br label %278

252:                                              ; preds = %229
  %253 = load i64*, i64** %11, align 8
  %254 = getelementptr inbounds i64, i64* %253, i32 1
  store i64* %254, i64** %11, align 8
  %255 = load i64, i64* %253, align 8
  store i64 %255, i64* %21, align 8
  %256 = load i64, i64* %20, align 8
  %257 = load i32, i32* %19, align 4
  %258 = zext i32 %257 to i64
  %259 = lshr i64 %256, %258
  %260 = load i64, i64* %21, align 8
  %261 = load i32, i32* %18, align 4
  %262 = zext i32 %261 to i64
  %263 = shl i64 %260, %262
  %264 = or i64 %259, %263
  %265 = load i64*, i64** %9, align 8
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* %15, align 8
  %268 = call i64 @comp(i64 %264, i64 %266, i64 %267)
  %269 = load i64*, i64** %9, align 8
  store i64 %268, i64* %269, align 8
  %270 = load i64, i64* %21, align 8
  store i64 %270, i64* %20, align 8
  %271 = load i64*, i64** %9, align 8
  %272 = getelementptr inbounds i64, i64* %271, i32 1
  store i64* %272, i64** %9, align 8
  %273 = load i32, i32* %13, align 4
  %274 = load i32, i32* %10, align 4
  %275 = sub i32 %273, %274
  %276 = load i32, i32* %14, align 4
  %277 = sub i32 %276, %275
  store i32 %277, i32* %14, align 4
  br label %278

278:                                              ; preds = %252, %235
  %279 = load i32, i32* %14, align 4
  %280 = load i32, i32* %13, align 4
  %281 = urem i32 %279, %280
  store i32 %281, i32* %22, align 4
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* %14, align 4
  %284 = udiv i32 %283, %282
  store i32 %284, i32* %14, align 4
  br label %285

285:                                              ; preds = %288, %278
  %286 = load i32, i32* %14, align 4
  %287 = icmp uge i32 %286, 4
  br i1 %287, label %288, label %351

288:                                              ; preds = %285
  %289 = load i64*, i64** %11, align 8
  %290 = getelementptr inbounds i64, i64* %289, i32 1
  store i64* %290, i64** %11, align 8
  %291 = load i64, i64* %289, align 8
  store i64 %291, i64* %21, align 8
  %292 = load i64, i64* %20, align 8
  %293 = load i32, i32* %19, align 4
  %294 = zext i32 %293 to i64
  %295 = lshr i64 %292, %294
  %296 = load i64, i64* %21, align 8
  %297 = load i32, i32* %18, align 4
  %298 = zext i32 %297 to i64
  %299 = shl i64 %296, %298
  %300 = or i64 %295, %299
  %301 = load i64*, i64** %9, align 8
  %302 = getelementptr inbounds i64, i64* %301, i32 1
  store i64* %302, i64** %9, align 8
  store i64 %300, i64* %301, align 8
  %303 = load i64, i64* %21, align 8
  store i64 %303, i64* %20, align 8
  %304 = load i64*, i64** %11, align 8
  %305 = getelementptr inbounds i64, i64* %304, i32 1
  store i64* %305, i64** %11, align 8
  %306 = load i64, i64* %304, align 8
  store i64 %306, i64* %21, align 8
  %307 = load i64, i64* %20, align 8
  %308 = load i32, i32* %19, align 4
  %309 = zext i32 %308 to i64
  %310 = lshr i64 %307, %309
  %311 = load i64, i64* %21, align 8
  %312 = load i32, i32* %18, align 4
  %313 = zext i32 %312 to i64
  %314 = shl i64 %311, %313
  %315 = or i64 %310, %314
  %316 = load i64*, i64** %9, align 8
  %317 = getelementptr inbounds i64, i64* %316, i32 1
  store i64* %317, i64** %9, align 8
  store i64 %315, i64* %316, align 8
  %318 = load i64, i64* %21, align 8
  store i64 %318, i64* %20, align 8
  %319 = load i64*, i64** %11, align 8
  %320 = getelementptr inbounds i64, i64* %319, i32 1
  store i64* %320, i64** %11, align 8
  %321 = load i64, i64* %319, align 8
  store i64 %321, i64* %21, align 8
  %322 = load i64, i64* %20, align 8
  %323 = load i32, i32* %19, align 4
  %324 = zext i32 %323 to i64
  %325 = lshr i64 %322, %324
  %326 = load i64, i64* %21, align 8
  %327 = load i32, i32* %18, align 4
  %328 = zext i32 %327 to i64
  %329 = shl i64 %326, %328
  %330 = or i64 %325, %329
  %331 = load i64*, i64** %9, align 8
  %332 = getelementptr inbounds i64, i64* %331, i32 1
  store i64* %332, i64** %9, align 8
  store i64 %330, i64* %331, align 8
  %333 = load i64, i64* %21, align 8
  store i64 %333, i64* %20, align 8
  %334 = load i64*, i64** %11, align 8
  %335 = getelementptr inbounds i64, i64* %334, i32 1
  store i64* %335, i64** %11, align 8
  %336 = load i64, i64* %334, align 8
  store i64 %336, i64* %21, align 8
  %337 = load i64, i64* %20, align 8
  %338 = load i32, i32* %19, align 4
  %339 = zext i32 %338 to i64
  %340 = lshr i64 %337, %339
  %341 = load i64, i64* %21, align 8
  %342 = load i32, i32* %18, align 4
  %343 = zext i32 %342 to i64
  %344 = shl i64 %341, %343
  %345 = or i64 %340, %344
  %346 = load i64*, i64** %9, align 8
  %347 = getelementptr inbounds i64, i64* %346, i32 1
  store i64* %347, i64** %9, align 8
  store i64 %345, i64* %346, align 8
  %348 = load i64, i64* %21, align 8
  store i64 %348, i64* %20, align 8
  %349 = load i32, i32* %14, align 4
  %350 = sub i32 %349, 4
  store i32 %350, i32* %14, align 4
  br label %285

351:                                              ; preds = %285
  br label %352

352:                                              ; preds = %356, %351
  %353 = load i32, i32* %14, align 4
  %354 = add i32 %353, -1
  store i32 %354, i32* %14, align 4
  %355 = icmp ne i32 %353, 0
  br i1 %355, label %356, label %372

356:                                              ; preds = %352
  %357 = load i64*, i64** %11, align 8
  %358 = getelementptr inbounds i64, i64* %357, i32 1
  store i64* %358, i64** %11, align 8
  %359 = load i64, i64* %357, align 8
  store i64 %359, i64* %21, align 8
  %360 = load i64, i64* %20, align 8
  %361 = load i32, i32* %19, align 4
  %362 = zext i32 %361 to i64
  %363 = lshr i64 %360, %362
  %364 = load i64, i64* %21, align 8
  %365 = load i32, i32* %18, align 4
  %366 = zext i32 %365 to i64
  %367 = shl i64 %364, %366
  %368 = or i64 %363, %367
  %369 = load i64*, i64** %9, align 8
  %370 = getelementptr inbounds i64, i64* %369, i32 1
  store i64* %370, i64** %9, align 8
  store i64 %368, i64* %369, align 8
  %371 = load i64, i64* %21, align 8
  store i64 %371, i64* %20, align 8
  br label %352

372:                                              ; preds = %352
  %373 = load i32, i32* %22, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %405

375:                                              ; preds = %372
  %376 = load i32, i32* %22, align 4
  %377 = load i32, i32* %13, align 4
  %378 = load i32, i32* %19, align 4
  %379 = sub nsw i32 %377, %378
  %380 = icmp sle i32 %376, %379
  br i1 %380, label %381, label %386

381:                                              ; preds = %375
  %382 = load i32, i32* %19, align 4
  %383 = load i64, i64* %20, align 8
  %384 = zext i32 %382 to i64
  %385 = lshr i64 %383, %384
  store i64 %385, i64* %20, align 8
  br label %398

386:                                              ; preds = %375
  %387 = load i64*, i64** %11, align 8
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %21, align 8
  %389 = load i64, i64* %20, align 8
  %390 = load i32, i32* %19, align 4
  %391 = zext i32 %390 to i64
  %392 = lshr i64 %389, %391
  %393 = load i64, i64* %21, align 8
  %394 = load i32, i32* %18, align 4
  %395 = zext i32 %394 to i64
  %396 = shl i64 %393, %395
  %397 = or i64 %392, %396
  store i64 %397, i64* %20, align 8
  br label %398

398:                                              ; preds = %386, %381
  %399 = load i64, i64* %20, align 8
  %400 = load i64*, i64** %9, align 8
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* %16, align 8
  %403 = call i64 @comp(i64 %399, i64 %401, i64 %402)
  %404 = load i64*, i64** %9, align 8
  store i64 %403, i64* %404, align 8
  br label %405

405:                                              ; preds = %398, %372
  br label %406

406:                                              ; preds = %405, %228
  br label %407

407:                                              ; preds = %406, %153
  ret void
}

declare dso_local i64 @FB_SHIFT_HIGH(%struct.fb_info*, i64, i32) #1

declare dso_local i64 @comp(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
