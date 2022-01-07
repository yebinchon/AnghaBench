; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_s_uGetRTSCTSDuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_s_uGetRTSCTSDuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i32, i32, i32 }

@AUTO_FB_0 = common dso_local global i8 0, align 1
@RATE_18M = common dso_local global i16 0, align 2
@RATE_54M = common dso_local global i16 0, align 2
@wFB_Opt0 = common dso_local global i16** null, align 8
@FB_RATE0 = common dso_local global i64 0, align 8
@AUTO_FB_1 = common dso_local global i8 0, align 1
@wFB_Opt1 = common dso_local global i16** null, align 8
@FB_RATE1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_private*, i8, i32, i8, i16, i32, i8)* @s_uGetRTSCTSDuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_uGetRTSCTSDuration(%struct.vnt_private* %0, i8 zeroext %1, i32 %2, i8 zeroext %3, i16 zeroext %4, i32 %5, i8 zeroext %6) #0 {
  %8 = alloca %struct.vnt_private*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %8, align 8
  store i8 %1, i8* %9, align 1
  store i32 %2, i32* %10, align 4
  store i8 %3, i8* %11, align 1
  store i16 %4, i16* %12, align 2
  store i32 %5, i32* %13, align 4
  store i8 %6, i8* %14, align 1
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load i8, i8* %9, align 1
  %18 = zext i8 %17 to i32
  switch i32 %18, label %644 [
    i32 128, label %19
    i32 131, label %41
    i32 134, label %63
    i32 137, label %85
    i32 130, label %96
    i32 133, label %192
    i32 129, label %288
    i32 132, label %384
    i32 136, label %480
    i32 135, label %562
  ]

19:                                               ; preds = %7
  %20 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %21 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i8, i8* %11, align 1
  %24 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %25 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @BBuGetFrameTime(i32 %22, i8 zeroext %23, i32 14, i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %30 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 2, %31
  %33 = add i32 %28, %32
  %34 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %35 = load i8, i8* %11, align 1
  %36 = load i32, i32* %10, align 4
  %37 = load i16, i16* %12, align 2
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %34, i8 zeroext %35, i32 %36, i16 zeroext %37, i32 %38)
  %40 = add i32 %33, %39
  store i32 %40, i32* %16, align 4
  br label %645

41:                                               ; preds = %7
  %42 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %43 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i8, i8* %11, align 1
  %46 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %47 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @BBuGetFrameTime(i32 %44, i8 zeroext %45, i32 14, i32 %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %52 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 2, %53
  %55 = add i32 %50, %54
  %56 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %57 = load i8, i8* %11, align 1
  %58 = load i32, i32* %10, align 4
  %59 = load i16, i16* %12, align 2
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %56, i8 zeroext %57, i32 %58, i16 zeroext %59, i32 %60)
  %62 = add i32 %55, %61
  store i32 %62, i32* %16, align 4
  br label %645

63:                                               ; preds = %7
  %64 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %65 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i8, i8* %11, align 1
  %68 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %69 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @BBuGetFrameTime(i32 %66, i8 zeroext %67, i32 14, i32 %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %74 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 2, %75
  %77 = add i32 %72, %76
  %78 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %79 = load i8, i8* %11, align 1
  %80 = load i32, i32* %10, align 4
  %81 = load i16, i16* %12, align 2
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %78, i8 zeroext %79, i32 %80, i16 zeroext %81, i32 %82)
  %84 = add i32 %77, %83
  store i32 %84, i32* %16, align 4
  br label %645

85:                                               ; preds = %7
  %86 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %87 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %90 = load i8, i8* %11, align 1
  %91 = load i32, i32* %10, align 4
  %92 = load i16, i16* %12, align 2
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %89, i8 zeroext %90, i32 %91, i16 zeroext %92, i32 %93)
  %95 = add i32 %88, %94
  store i32 %95, i32* %16, align 4
  br label %645

96:                                               ; preds = %7
  %97 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %98 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i8, i8* %11, align 1
  %101 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %102 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @BBuGetFrameTime(i32 %99, i8 zeroext %100, i32 14, i32 %103)
  store i32 %104, i32* %15, align 4
  %105 = load i8, i8* %14, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8, i8* @AUTO_FB_0, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %147

110:                                              ; preds = %96
  %111 = load i16, i16* %12, align 2
  %112 = zext i16 %111 to i32
  %113 = load i16, i16* @RATE_18M, align 2
  %114 = zext i16 %113 to i32
  %115 = icmp sge i32 %112, %114
  br i1 %115, label %116, label %147

116:                                              ; preds = %110
  %117 = load i16, i16* %12, align 2
  %118 = zext i16 %117 to i32
  %119 = load i16, i16* @RATE_54M, align 2
  %120 = zext i16 %119 to i32
  %121 = icmp sle i32 %118, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %116
  %123 = load i32, i32* %15, align 4
  %124 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %125 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 2, %126
  %128 = add i32 %123, %127
  %129 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %130 = load i8, i8* %11, align 1
  %131 = load i32, i32* %10, align 4
  %132 = load i16**, i16*** @wFB_Opt0, align 8
  %133 = load i64, i64* @FB_RATE0, align 8
  %134 = getelementptr inbounds i16*, i16** %132, i64 %133
  %135 = load i16*, i16** %134, align 8
  %136 = load i16, i16* %12, align 2
  %137 = zext i16 %136 to i32
  %138 = load i16, i16* @RATE_18M, align 2
  %139 = zext i16 %138 to i32
  %140 = sub nsw i32 %137, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i16, i16* %135, i64 %141
  %143 = load i16, i16* %142, align 2
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %129, i8 zeroext %130, i32 %131, i16 zeroext %143, i32 %144)
  %146 = add i32 %128, %145
  store i32 %146, i32* %16, align 4
  br label %191

147:                                              ; preds = %116, %110, %96
  %148 = load i8, i8* %14, align 1
  %149 = zext i8 %148 to i32
  %150 = load i8, i8* @AUTO_FB_1, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %190

153:                                              ; preds = %147
  %154 = load i16, i16* %12, align 2
  %155 = zext i16 %154 to i32
  %156 = load i16, i16* @RATE_18M, align 2
  %157 = zext i16 %156 to i32
  %158 = icmp sge i32 %155, %157
  br i1 %158, label %159, label %190

159:                                              ; preds = %153
  %160 = load i16, i16* %12, align 2
  %161 = zext i16 %160 to i32
  %162 = load i16, i16* @RATE_54M, align 2
  %163 = zext i16 %162 to i32
  %164 = icmp sle i32 %161, %163
  br i1 %164, label %165, label %190

165:                                              ; preds = %159
  %166 = load i32, i32* %15, align 4
  %167 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %168 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 2, %169
  %171 = add i32 %166, %170
  %172 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %173 = load i8, i8* %11, align 1
  %174 = load i32, i32* %10, align 4
  %175 = load i16**, i16*** @wFB_Opt1, align 8
  %176 = load i64, i64* @FB_RATE0, align 8
  %177 = getelementptr inbounds i16*, i16** %175, i64 %176
  %178 = load i16*, i16** %177, align 8
  %179 = load i16, i16* %12, align 2
  %180 = zext i16 %179 to i32
  %181 = load i16, i16* @RATE_18M, align 2
  %182 = zext i16 %181 to i32
  %183 = sub nsw i32 %180, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i16, i16* %178, i64 %184
  %186 = load i16, i16* %185, align 2
  %187 = load i32, i32* %13, align 4
  %188 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %172, i8 zeroext %173, i32 %174, i16 zeroext %186, i32 %187)
  %189 = add i32 %171, %188
  store i32 %189, i32* %16, align 4
  br label %190

190:                                              ; preds = %165, %159, %153, %147
  br label %191

191:                                              ; preds = %190, %122
  br label %645

192:                                              ; preds = %7
  %193 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %194 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load i8, i8* %11, align 1
  %197 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %198 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @BBuGetFrameTime(i32 %195, i8 zeroext %196, i32 14, i32 %199)
  store i32 %200, i32* %15, align 4
  %201 = load i8, i8* %14, align 1
  %202 = zext i8 %201 to i32
  %203 = load i8, i8* @AUTO_FB_0, align 1
  %204 = zext i8 %203 to i32
  %205 = icmp eq i32 %202, %204
  br i1 %205, label %206, label %243

206:                                              ; preds = %192
  %207 = load i16, i16* %12, align 2
  %208 = zext i16 %207 to i32
  %209 = load i16, i16* @RATE_18M, align 2
  %210 = zext i16 %209 to i32
  %211 = icmp sge i32 %208, %210
  br i1 %211, label %212, label %243

212:                                              ; preds = %206
  %213 = load i16, i16* %12, align 2
  %214 = zext i16 %213 to i32
  %215 = load i16, i16* @RATE_54M, align 2
  %216 = zext i16 %215 to i32
  %217 = icmp sle i32 %214, %216
  br i1 %217, label %218, label %243

218:                                              ; preds = %212
  %219 = load i32, i32* %15, align 4
  %220 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %221 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = mul nsw i32 2, %222
  %224 = add i32 %219, %223
  %225 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %226 = load i8, i8* %11, align 1
  %227 = load i32, i32* %10, align 4
  %228 = load i16**, i16*** @wFB_Opt0, align 8
  %229 = load i64, i64* @FB_RATE0, align 8
  %230 = getelementptr inbounds i16*, i16** %228, i64 %229
  %231 = load i16*, i16** %230, align 8
  %232 = load i16, i16* %12, align 2
  %233 = zext i16 %232 to i32
  %234 = load i16, i16* @RATE_18M, align 2
  %235 = zext i16 %234 to i32
  %236 = sub nsw i32 %233, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i16, i16* %231, i64 %237
  %239 = load i16, i16* %238, align 2
  %240 = load i32, i32* %13, align 4
  %241 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %225, i8 zeroext %226, i32 %227, i16 zeroext %239, i32 %240)
  %242 = add i32 %224, %241
  store i32 %242, i32* %16, align 4
  br label %287

243:                                              ; preds = %212, %206, %192
  %244 = load i8, i8* %14, align 1
  %245 = zext i8 %244 to i32
  %246 = load i8, i8* @AUTO_FB_1, align 1
  %247 = zext i8 %246 to i32
  %248 = icmp eq i32 %245, %247
  br i1 %248, label %249, label %286

249:                                              ; preds = %243
  %250 = load i16, i16* %12, align 2
  %251 = zext i16 %250 to i32
  %252 = load i16, i16* @RATE_18M, align 2
  %253 = zext i16 %252 to i32
  %254 = icmp sge i32 %251, %253
  br i1 %254, label %255, label %286

255:                                              ; preds = %249
  %256 = load i16, i16* %12, align 2
  %257 = zext i16 %256 to i32
  %258 = load i16, i16* @RATE_54M, align 2
  %259 = zext i16 %258 to i32
  %260 = icmp sle i32 %257, %259
  br i1 %260, label %261, label %286

261:                                              ; preds = %255
  %262 = load i32, i32* %15, align 4
  %263 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %264 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = mul nsw i32 2, %265
  %267 = add i32 %262, %266
  %268 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %269 = load i8, i8* %11, align 1
  %270 = load i32, i32* %10, align 4
  %271 = load i16**, i16*** @wFB_Opt1, align 8
  %272 = load i64, i64* @FB_RATE0, align 8
  %273 = getelementptr inbounds i16*, i16** %271, i64 %272
  %274 = load i16*, i16** %273, align 8
  %275 = load i16, i16* %12, align 2
  %276 = zext i16 %275 to i32
  %277 = load i16, i16* @RATE_18M, align 2
  %278 = zext i16 %277 to i32
  %279 = sub nsw i32 %276, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i16, i16* %274, i64 %280
  %282 = load i16, i16* %281, align 2
  %283 = load i32, i32* %13, align 4
  %284 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %268, i8 zeroext %269, i32 %270, i16 zeroext %282, i32 %283)
  %285 = add i32 %267, %284
  store i32 %285, i32* %16, align 4
  br label %286

286:                                              ; preds = %261, %255, %249, %243
  br label %287

287:                                              ; preds = %286, %218
  br label %645

288:                                              ; preds = %7
  %289 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %290 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = load i8, i8* %11, align 1
  %293 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %294 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @BBuGetFrameTime(i32 %291, i8 zeroext %292, i32 14, i32 %295)
  store i32 %296, i32* %15, align 4
  %297 = load i8, i8* %14, align 1
  %298 = zext i8 %297 to i32
  %299 = load i8, i8* @AUTO_FB_0, align 1
  %300 = zext i8 %299 to i32
  %301 = icmp eq i32 %298, %300
  br i1 %301, label %302, label %339

302:                                              ; preds = %288
  %303 = load i16, i16* %12, align 2
  %304 = zext i16 %303 to i32
  %305 = load i16, i16* @RATE_18M, align 2
  %306 = zext i16 %305 to i32
  %307 = icmp sge i32 %304, %306
  br i1 %307, label %308, label %339

308:                                              ; preds = %302
  %309 = load i16, i16* %12, align 2
  %310 = zext i16 %309 to i32
  %311 = load i16, i16* @RATE_54M, align 2
  %312 = zext i16 %311 to i32
  %313 = icmp sle i32 %310, %312
  br i1 %313, label %314, label %339

314:                                              ; preds = %308
  %315 = load i32, i32* %15, align 4
  %316 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %317 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = mul nsw i32 2, %318
  %320 = add i32 %315, %319
  %321 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %322 = load i8, i8* %11, align 1
  %323 = load i32, i32* %10, align 4
  %324 = load i16**, i16*** @wFB_Opt0, align 8
  %325 = load i64, i64* @FB_RATE1, align 8
  %326 = getelementptr inbounds i16*, i16** %324, i64 %325
  %327 = load i16*, i16** %326, align 8
  %328 = load i16, i16* %12, align 2
  %329 = zext i16 %328 to i32
  %330 = load i16, i16* @RATE_18M, align 2
  %331 = zext i16 %330 to i32
  %332 = sub nsw i32 %329, %331
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i16, i16* %327, i64 %333
  %335 = load i16, i16* %334, align 2
  %336 = load i32, i32* %13, align 4
  %337 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %321, i8 zeroext %322, i32 %323, i16 zeroext %335, i32 %336)
  %338 = add i32 %320, %337
  store i32 %338, i32* %16, align 4
  br label %383

339:                                              ; preds = %308, %302, %288
  %340 = load i8, i8* %14, align 1
  %341 = zext i8 %340 to i32
  %342 = load i8, i8* @AUTO_FB_1, align 1
  %343 = zext i8 %342 to i32
  %344 = icmp eq i32 %341, %343
  br i1 %344, label %345, label %382

345:                                              ; preds = %339
  %346 = load i16, i16* %12, align 2
  %347 = zext i16 %346 to i32
  %348 = load i16, i16* @RATE_18M, align 2
  %349 = zext i16 %348 to i32
  %350 = icmp sge i32 %347, %349
  br i1 %350, label %351, label %382

351:                                              ; preds = %345
  %352 = load i16, i16* %12, align 2
  %353 = zext i16 %352 to i32
  %354 = load i16, i16* @RATE_54M, align 2
  %355 = zext i16 %354 to i32
  %356 = icmp sle i32 %353, %355
  br i1 %356, label %357, label %382

357:                                              ; preds = %351
  %358 = load i32, i32* %15, align 4
  %359 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %360 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = mul nsw i32 2, %361
  %363 = add i32 %358, %362
  %364 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %365 = load i8, i8* %11, align 1
  %366 = load i32, i32* %10, align 4
  %367 = load i16**, i16*** @wFB_Opt1, align 8
  %368 = load i64, i64* @FB_RATE1, align 8
  %369 = getelementptr inbounds i16*, i16** %367, i64 %368
  %370 = load i16*, i16** %369, align 8
  %371 = load i16, i16* %12, align 2
  %372 = zext i16 %371 to i32
  %373 = load i16, i16* @RATE_18M, align 2
  %374 = zext i16 %373 to i32
  %375 = sub nsw i32 %372, %374
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i16, i16* %370, i64 %376
  %378 = load i16, i16* %377, align 2
  %379 = load i32, i32* %13, align 4
  %380 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %364, i8 zeroext %365, i32 %366, i16 zeroext %378, i32 %379)
  %381 = add i32 %363, %380
  store i32 %381, i32* %16, align 4
  br label %382

382:                                              ; preds = %357, %351, %345, %339
  br label %383

383:                                              ; preds = %382, %314
  br label %645

384:                                              ; preds = %7
  %385 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %386 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 4
  %388 = load i8, i8* %11, align 1
  %389 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %390 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = call i32 @BBuGetFrameTime(i32 %387, i8 zeroext %388, i32 14, i32 %391)
  store i32 %392, i32* %15, align 4
  %393 = load i8, i8* %14, align 1
  %394 = zext i8 %393 to i32
  %395 = load i8, i8* @AUTO_FB_0, align 1
  %396 = zext i8 %395 to i32
  %397 = icmp eq i32 %394, %396
  br i1 %397, label %398, label %435

398:                                              ; preds = %384
  %399 = load i16, i16* %12, align 2
  %400 = zext i16 %399 to i32
  %401 = load i16, i16* @RATE_18M, align 2
  %402 = zext i16 %401 to i32
  %403 = icmp sge i32 %400, %402
  br i1 %403, label %404, label %435

404:                                              ; preds = %398
  %405 = load i16, i16* %12, align 2
  %406 = zext i16 %405 to i32
  %407 = load i16, i16* @RATE_54M, align 2
  %408 = zext i16 %407 to i32
  %409 = icmp sle i32 %406, %408
  br i1 %409, label %410, label %435

410:                                              ; preds = %404
  %411 = load i32, i32* %15, align 4
  %412 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %413 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = mul nsw i32 2, %414
  %416 = add i32 %411, %415
  %417 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %418 = load i8, i8* %11, align 1
  %419 = load i32, i32* %10, align 4
  %420 = load i16**, i16*** @wFB_Opt0, align 8
  %421 = load i64, i64* @FB_RATE1, align 8
  %422 = getelementptr inbounds i16*, i16** %420, i64 %421
  %423 = load i16*, i16** %422, align 8
  %424 = load i16, i16* %12, align 2
  %425 = zext i16 %424 to i32
  %426 = load i16, i16* @RATE_18M, align 2
  %427 = zext i16 %426 to i32
  %428 = sub nsw i32 %425, %427
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i16, i16* %423, i64 %429
  %431 = load i16, i16* %430, align 2
  %432 = load i32, i32* %13, align 4
  %433 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %417, i8 zeroext %418, i32 %419, i16 zeroext %431, i32 %432)
  %434 = add i32 %416, %433
  store i32 %434, i32* %16, align 4
  br label %479

435:                                              ; preds = %404, %398, %384
  %436 = load i8, i8* %14, align 1
  %437 = zext i8 %436 to i32
  %438 = load i8, i8* @AUTO_FB_1, align 1
  %439 = zext i8 %438 to i32
  %440 = icmp eq i32 %437, %439
  br i1 %440, label %441, label %478

441:                                              ; preds = %435
  %442 = load i16, i16* %12, align 2
  %443 = zext i16 %442 to i32
  %444 = load i16, i16* @RATE_18M, align 2
  %445 = zext i16 %444 to i32
  %446 = icmp sge i32 %443, %445
  br i1 %446, label %447, label %478

447:                                              ; preds = %441
  %448 = load i16, i16* %12, align 2
  %449 = zext i16 %448 to i32
  %450 = load i16, i16* @RATE_54M, align 2
  %451 = zext i16 %450 to i32
  %452 = icmp sle i32 %449, %451
  br i1 %452, label %453, label %478

453:                                              ; preds = %447
  %454 = load i32, i32* %15, align 4
  %455 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %456 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = mul nsw i32 2, %457
  %459 = add i32 %454, %458
  %460 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %461 = load i8, i8* %11, align 1
  %462 = load i32, i32* %10, align 4
  %463 = load i16**, i16*** @wFB_Opt1, align 8
  %464 = load i64, i64* @FB_RATE1, align 8
  %465 = getelementptr inbounds i16*, i16** %463, i64 %464
  %466 = load i16*, i16** %465, align 8
  %467 = load i16, i16* %12, align 2
  %468 = zext i16 %467 to i32
  %469 = load i16, i16* @RATE_18M, align 2
  %470 = zext i16 %469 to i32
  %471 = sub nsw i32 %468, %470
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i16, i16* %466, i64 %472
  %474 = load i16, i16* %473, align 2
  %475 = load i32, i32* %13, align 4
  %476 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %460, i8 zeroext %461, i32 %462, i16 zeroext %474, i32 %475)
  %477 = add i32 %459, %476
  store i32 %477, i32* %16, align 4
  br label %478

478:                                              ; preds = %453, %447, %441, %435
  br label %479

479:                                              ; preds = %478, %410
  br label %645

480:                                              ; preds = %7
  %481 = load i8, i8* %14, align 1
  %482 = zext i8 %481 to i32
  %483 = load i8, i8* @AUTO_FB_0, align 1
  %484 = zext i8 %483 to i32
  %485 = icmp eq i32 %482, %484
  br i1 %485, label %486, label %520

486:                                              ; preds = %480
  %487 = load i16, i16* %12, align 2
  %488 = zext i16 %487 to i32
  %489 = load i16, i16* @RATE_18M, align 2
  %490 = zext i16 %489 to i32
  %491 = icmp sge i32 %488, %490
  br i1 %491, label %492, label %520

492:                                              ; preds = %486
  %493 = load i16, i16* %12, align 2
  %494 = zext i16 %493 to i32
  %495 = load i16, i16* @RATE_54M, align 2
  %496 = zext i16 %495 to i32
  %497 = icmp sle i32 %494, %496
  br i1 %497, label %498, label %520

498:                                              ; preds = %492
  %499 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %500 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %503 = load i8, i8* %11, align 1
  %504 = load i32, i32* %10, align 4
  %505 = load i16**, i16*** @wFB_Opt0, align 8
  %506 = load i64, i64* @FB_RATE0, align 8
  %507 = getelementptr inbounds i16*, i16** %505, i64 %506
  %508 = load i16*, i16** %507, align 8
  %509 = load i16, i16* %12, align 2
  %510 = zext i16 %509 to i32
  %511 = load i16, i16* @RATE_18M, align 2
  %512 = zext i16 %511 to i32
  %513 = sub nsw i32 %510, %512
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i16, i16* %508, i64 %514
  %516 = load i16, i16* %515, align 2
  %517 = load i32, i32* %13, align 4
  %518 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %502, i8 zeroext %503, i32 %504, i16 zeroext %516, i32 %517)
  %519 = add i32 %501, %518
  store i32 %519, i32* %16, align 4
  br label %561

520:                                              ; preds = %492, %486, %480
  %521 = load i8, i8* %14, align 1
  %522 = zext i8 %521 to i32
  %523 = load i8, i8* @AUTO_FB_1, align 1
  %524 = zext i8 %523 to i32
  %525 = icmp eq i32 %522, %524
  br i1 %525, label %526, label %560

526:                                              ; preds = %520
  %527 = load i16, i16* %12, align 2
  %528 = zext i16 %527 to i32
  %529 = load i16, i16* @RATE_18M, align 2
  %530 = zext i16 %529 to i32
  %531 = icmp sge i32 %528, %530
  br i1 %531, label %532, label %560

532:                                              ; preds = %526
  %533 = load i16, i16* %12, align 2
  %534 = zext i16 %533 to i32
  %535 = load i16, i16* @RATE_54M, align 2
  %536 = zext i16 %535 to i32
  %537 = icmp sle i32 %534, %536
  br i1 %537, label %538, label %560

538:                                              ; preds = %532
  %539 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %540 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 4
  %542 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %543 = load i8, i8* %11, align 1
  %544 = load i32, i32* %10, align 4
  %545 = load i16**, i16*** @wFB_Opt1, align 8
  %546 = load i64, i64* @FB_RATE0, align 8
  %547 = getelementptr inbounds i16*, i16** %545, i64 %546
  %548 = load i16*, i16** %547, align 8
  %549 = load i16, i16* %12, align 2
  %550 = zext i16 %549 to i32
  %551 = load i16, i16* @RATE_18M, align 2
  %552 = zext i16 %551 to i32
  %553 = sub nsw i32 %550, %552
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i16, i16* %548, i64 %554
  %556 = load i16, i16* %555, align 2
  %557 = load i32, i32* %13, align 4
  %558 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %542, i8 zeroext %543, i32 %544, i16 zeroext %556, i32 %557)
  %559 = add i32 %541, %558
  store i32 %559, i32* %16, align 4
  br label %560

560:                                              ; preds = %538, %532, %526, %520
  br label %561

561:                                              ; preds = %560, %498
  br label %645

562:                                              ; preds = %7
  %563 = load i8, i8* %14, align 1
  %564 = zext i8 %563 to i32
  %565 = load i8, i8* @AUTO_FB_0, align 1
  %566 = zext i8 %565 to i32
  %567 = icmp eq i32 %564, %566
  br i1 %567, label %568, label %602

568:                                              ; preds = %562
  %569 = load i16, i16* %12, align 2
  %570 = zext i16 %569 to i32
  %571 = load i16, i16* @RATE_18M, align 2
  %572 = zext i16 %571 to i32
  %573 = icmp sge i32 %570, %572
  br i1 %573, label %574, label %602

574:                                              ; preds = %568
  %575 = load i16, i16* %12, align 2
  %576 = zext i16 %575 to i32
  %577 = load i16, i16* @RATE_54M, align 2
  %578 = zext i16 %577 to i32
  %579 = icmp sle i32 %576, %578
  br i1 %579, label %580, label %602

580:                                              ; preds = %574
  %581 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %582 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 4
  %584 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %585 = load i8, i8* %11, align 1
  %586 = load i32, i32* %10, align 4
  %587 = load i16**, i16*** @wFB_Opt0, align 8
  %588 = load i64, i64* @FB_RATE1, align 8
  %589 = getelementptr inbounds i16*, i16** %587, i64 %588
  %590 = load i16*, i16** %589, align 8
  %591 = load i16, i16* %12, align 2
  %592 = zext i16 %591 to i32
  %593 = load i16, i16* @RATE_18M, align 2
  %594 = zext i16 %593 to i32
  %595 = sub nsw i32 %592, %594
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i16, i16* %590, i64 %596
  %598 = load i16, i16* %597, align 2
  %599 = load i32, i32* %13, align 4
  %600 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %584, i8 zeroext %585, i32 %586, i16 zeroext %598, i32 %599)
  %601 = add i32 %583, %600
  store i32 %601, i32* %16, align 4
  br label %643

602:                                              ; preds = %574, %568, %562
  %603 = load i8, i8* %14, align 1
  %604 = zext i8 %603 to i32
  %605 = load i8, i8* @AUTO_FB_1, align 1
  %606 = zext i8 %605 to i32
  %607 = icmp eq i32 %604, %606
  br i1 %607, label %608, label %642

608:                                              ; preds = %602
  %609 = load i16, i16* %12, align 2
  %610 = zext i16 %609 to i32
  %611 = load i16, i16* @RATE_18M, align 2
  %612 = zext i16 %611 to i32
  %613 = icmp sge i32 %610, %612
  br i1 %613, label %614, label %642

614:                                              ; preds = %608
  %615 = load i16, i16* %12, align 2
  %616 = zext i16 %615 to i32
  %617 = load i16, i16* @RATE_54M, align 2
  %618 = zext i16 %617 to i32
  %619 = icmp sle i32 %616, %618
  br i1 %619, label %620, label %642

620:                                              ; preds = %614
  %621 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %622 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 4
  %624 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  %625 = load i8, i8* %11, align 1
  %626 = load i32, i32* %10, align 4
  %627 = load i16**, i16*** @wFB_Opt1, align 8
  %628 = load i64, i64* @FB_RATE1, align 8
  %629 = getelementptr inbounds i16*, i16** %627, i64 %628
  %630 = load i16*, i16** %629, align 8
  %631 = load i16, i16* %12, align 2
  %632 = zext i16 %631 to i32
  %633 = load i16, i16* @RATE_18M, align 2
  %634 = zext i16 %633 to i32
  %635 = sub nsw i32 %632, %634
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds i16, i16* %630, i64 %636
  %638 = load i16, i16* %637, align 2
  %639 = load i32, i32* %13, align 4
  %640 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %624, i8 zeroext %625, i32 %626, i16 zeroext %638, i32 %639)
  %641 = add i32 %623, %640
  store i32 %641, i32* %16, align 4
  br label %642

642:                                              ; preds = %620, %614, %608, %602
  br label %643

643:                                              ; preds = %642, %580
  br label %645

644:                                              ; preds = %7
  br label %645

645:                                              ; preds = %644, %643, %561, %479, %383, %287, %191, %85, %63, %41, %19
  %646 = load i32, i32* %16, align 4
  %647 = call i32 @cpu_to_le16(i32 %646)
  ret i32 %647
}

declare dso_local i32 @BBuGetFrameTime(i32, i8 zeroext, i32, i32) #1

declare dso_local i32 @s_uGetTxRsvTime(%struct.vnt_private*, i8 zeroext, i32, i16 zeroext, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
