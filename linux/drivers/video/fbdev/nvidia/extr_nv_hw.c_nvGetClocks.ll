; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_hw.c_nvGetClocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_hw.c_nvGetClocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i64, i32, i32, i32, i64, i32 }

@NV_ARCH_40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvidia_par*, i32*, i32*)* @nvGetClocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvGetClocks(%struct.nvidia_par* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.nvidia_par*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvidia_par* %0, %struct.nvidia_par** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %14 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NV_ARCH_40, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %105

18:                                               ; preds = %3
  %19 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %20 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @NV_RD32(i32 %21, i32 16416)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 7
  store i32 %25, i32* %12, align 4
  %26 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %27 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @NV_RD32(i32 %28, i32 16420)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 255
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = lshr i32 %32, 8
  %34 = and i32 %33, 255
  store i32 %34, i32* %8, align 4
  %35 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %36 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 65520
  %39 = icmp eq i32 %38, 656
  br i1 %39, label %46, label %40

40:                                               ; preds = %18
  %41 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %42 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 65520
  %45 = icmp eq i32 %44, 912
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %18
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %54

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 255
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = lshr i32 %51, 24
  %53 = and i32 %52, 255
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %47, %46
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %11, align 4
  %57 = mul i32 %55, %56
  %58 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %59 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = mul i32 %57, %60
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = mul i32 %62, %63
  %65 = udiv i32 %61, %64
  %66 = load i32, i32* %12, align 4
  %67 = lshr i32 %65, %66
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %70 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @NV_RD32(i32 %71, i32 16384)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = lshr i32 %73, 16
  %75 = and i32 %74, 7
  store i32 %75, i32* %12, align 4
  %76 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %77 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @NV_RD32(i32 %78, i32 16388)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, 255
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %7, align 4
  %83 = lshr i32 %82, 8
  %84 = and i32 %83, 255
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = lshr i32 %85, 16
  %87 = and i32 %86, 255
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %7, align 4
  %89 = lshr i32 %88, 24
  %90 = and i32 %89, 255
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %11, align 4
  %93 = mul i32 %91, %92
  %94 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %95 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = mul i32 %93, %96
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = mul i32 %98, %99
  %101 = udiv i32 %97, %100
  %102 = load i32, i32* %12, align 4
  %103 = lshr i32 %101, %102
  %104 = load i32*, i32** %6, align 8
  store i32 %103, i32* %104, align 4
  br label %329

105:                                              ; preds = %3
  %106 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %107 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %193

110:                                              ; preds = %105
  %111 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %112 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @NV_RD32(i32 %113, i32 1284)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = and i32 %115, 255
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %7, align 4
  %118 = lshr i32 %117, 8
  %119 = and i32 %118, 255
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %7, align 4
  %121 = lshr i32 %120, 16
  %122 = and i32 %121, 15
  store i32 %122, i32* %12, align 4
  %123 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %124 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @NV_RD32(i32 %125, i32 1396)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = and i32 %127, -2147483648
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %110
  %131 = load i32, i32* %7, align 4
  %132 = and i32 %131, 255
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %7, align 4
  %134 = lshr i32 %133, 8
  %135 = and i32 %134, 255
  store i32 %135, i32* %11, align 4
  br label %137

136:                                              ; preds = %110
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %137

137:                                              ; preds = %136, %130
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %11, align 4
  %140 = mul i32 %138, %139
  %141 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %142 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = mul i32 %140, %143
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %10, align 4
  %147 = mul i32 %145, %146
  %148 = udiv i32 %144, %147
  %149 = load i32, i32* %12, align 4
  %150 = lshr i32 %148, %149
  %151 = load i32*, i32** %5, align 8
  store i32 %150, i32* %151, align 4
  %152 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %153 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @NV_RD32(i32 %154, i32 1280)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = and i32 %156, 255
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %7, align 4
  %159 = lshr i32 %158, 8
  %160 = and i32 %159, 255
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %7, align 4
  %162 = lshr i32 %161, 16
  %163 = and i32 %162, 15
  store i32 %163, i32* %12, align 4
  %164 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %165 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @NV_RD32(i32 %166, i32 1392)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = and i32 %168, -2147483648
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %137
  %172 = load i32, i32* %7, align 4
  %173 = and i32 %172, 255
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %7, align 4
  %175 = lshr i32 %174, 8
  %176 = and i32 %175, 255
  store i32 %176, i32* %11, align 4
  br label %178

177:                                              ; preds = %137
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %178

178:                                              ; preds = %177, %171
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %11, align 4
  %181 = mul i32 %179, %180
  %182 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %183 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = mul i32 %181, %184
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %10, align 4
  %188 = mul i32 %186, %187
  %189 = udiv i32 %185, %188
  %190 = load i32, i32* %12, align 4
  %191 = lshr i32 %189, %190
  %192 = load i32*, i32** %6, align 8
  store i32 %191, i32* %192, align 4
  br label %328

193:                                              ; preds = %105
  %194 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %195 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = and i32 %196, 4080
  %198 = icmp eq i32 %197, 768
  br i1 %198, label %205, label %199

199:                                              ; preds = %193
  %200 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %201 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = and i32 %202, 4080
  %204 = icmp eq i32 %203, 816
  br i1 %204, label %205, label %282

205:                                              ; preds = %199, %193
  %206 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %207 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @NV_RD32(i32 %208, i32 1284)
  store i32 %209, i32* %7, align 4
  %210 = load i32, i32* %7, align 4
  %211 = and i32 %210, 15
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* %7, align 4
  %213 = lshr i32 %212, 8
  %214 = and i32 %213, 255
  store i32 %214, i32* %8, align 4
  %215 = load i32, i32* %7, align 4
  %216 = lshr i32 %215, 16
  %217 = and i32 %216, 7
  store i32 %217, i32* %12, align 4
  %218 = load i32, i32* %7, align 4
  %219 = and i32 %218, 128
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %205
  %222 = load i32, i32* %7, align 4
  %223 = lshr i32 %222, 4
  %224 = and i32 %223, 7
  store i32 %224, i32* %10, align 4
  %225 = load i32, i32* %7, align 4
  %226 = lshr i32 %225, 19
  %227 = and i32 %226, 31
  store i32 %227, i32* %11, align 4
  br label %229

228:                                              ; preds = %205
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %229

229:                                              ; preds = %228, %221
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* %11, align 4
  %232 = mul i32 %230, %231
  %233 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %234 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = mul i32 %232, %235
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %10, align 4
  %239 = mul i32 %237, %238
  %240 = udiv i32 %236, %239
  %241 = load i32, i32* %12, align 4
  %242 = lshr i32 %240, %241
  %243 = load i32*, i32** %5, align 8
  store i32 %242, i32* %243, align 4
  %244 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %245 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @NV_RD32(i32 %246, i32 1280)
  store i32 %247, i32* %7, align 4
  %248 = load i32, i32* %7, align 4
  %249 = and i32 %248, 15
  store i32 %249, i32* %9, align 4
  %250 = load i32, i32* %7, align 4
  %251 = lshr i32 %250, 8
  %252 = and i32 %251, 255
  store i32 %252, i32* %8, align 4
  %253 = load i32, i32* %7, align 4
  %254 = lshr i32 %253, 16
  %255 = and i32 %254, 7
  store i32 %255, i32* %12, align 4
  %256 = load i32, i32* %7, align 4
  %257 = and i32 %256, 128
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %229
  %260 = load i32, i32* %7, align 4
  %261 = lshr i32 %260, 4
  %262 = and i32 %261, 7
  store i32 %262, i32* %10, align 4
  %263 = load i32, i32* %7, align 4
  %264 = lshr i32 %263, 19
  %265 = and i32 %264, 31
  store i32 %265, i32* %11, align 4
  br label %267

266:                                              ; preds = %229
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %267

267:                                              ; preds = %266, %259
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* %11, align 4
  %270 = mul i32 %268, %269
  %271 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %272 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = mul i32 %270, %273
  %275 = load i32, i32* %9, align 4
  %276 = load i32, i32* %10, align 4
  %277 = mul i32 %275, %276
  %278 = udiv i32 %274, %277
  %279 = load i32, i32* %12, align 4
  %280 = lshr i32 %278, %279
  %281 = load i32*, i32** %6, align 8
  store i32 %280, i32* %281, align 4
  br label %327

282:                                              ; preds = %199
  %283 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %284 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @NV_RD32(i32 %285, i32 1284)
  store i32 %286, i32* %7, align 4
  %287 = load i32, i32* %7, align 4
  %288 = and i32 %287, 255
  store i32 %288, i32* %9, align 4
  %289 = load i32, i32* %7, align 4
  %290 = lshr i32 %289, 8
  %291 = and i32 %290, 255
  store i32 %291, i32* %8, align 4
  %292 = load i32, i32* %7, align 4
  %293 = lshr i32 %292, 16
  %294 = and i32 %293, 15
  store i32 %294, i32* %12, align 4
  %295 = load i32, i32* %8, align 4
  %296 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %297 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = mul i32 %295, %298
  %300 = load i32, i32* %9, align 4
  %301 = udiv i32 %299, %300
  %302 = load i32, i32* %12, align 4
  %303 = lshr i32 %301, %302
  %304 = load i32*, i32** %5, align 8
  store i32 %303, i32* %304, align 4
  %305 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %306 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @NV_RD32(i32 %307, i32 1280)
  store i32 %308, i32* %7, align 4
  %309 = load i32, i32* %7, align 4
  %310 = and i32 %309, 255
  store i32 %310, i32* %9, align 4
  %311 = load i32, i32* %7, align 4
  %312 = lshr i32 %311, 8
  %313 = and i32 %312, 255
  store i32 %313, i32* %8, align 4
  %314 = load i32, i32* %7, align 4
  %315 = lshr i32 %314, 16
  %316 = and i32 %315, 15
  store i32 %316, i32* %12, align 4
  %317 = load i32, i32* %8, align 4
  %318 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %319 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = mul i32 %317, %320
  %322 = load i32, i32* %9, align 4
  %323 = udiv i32 %321, %322
  %324 = load i32, i32* %12, align 4
  %325 = lshr i32 %323, %324
  %326 = load i32*, i32** %6, align 8
  store i32 %325, i32* %326, align 4
  br label %327

327:                                              ; preds = %282, %267
  br label %328

328:                                              ; preds = %327, %178
  br label %329

329:                                              ; preds = %328, %54
  ret void
}

declare dso_local i32 @NV_RD32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
