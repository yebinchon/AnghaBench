; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_s_uGetDataDuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_s_uGetDataDuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i32, i32, i32 }

@AUTO_FB_0 = common dso_local global i8 0, align 1
@RATE_18M = common dso_local global i16 0, align 2
@RATE_54M = common dso_local global i16 0, align 2
@wFB_Opt0 = common dso_local global i16** null, align 8
@FB_RATE0 = common dso_local global i64 0, align 8
@wFB_Opt1 = common dso_local global i16** null, align 8
@FB_RATE1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_private*, i8, i32, i8, i16, i32, i32, i32, i32, i8)* @s_uGetDataDuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_uGetDataDuration(%struct.vnt_private* %0, i8 zeroext %1, i32 %2, i8 zeroext %3, i16 zeroext %4, i32 %5, i32 %6, i32 %7, i32 %8, i8 zeroext %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.vnt_private*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %12, align 8
  store i8 %1, i8* %13, align 1
  store i32 %2, i32* %14, align 4
  store i8 %3, i8* %15, align 1
  store i16 %4, i16* %16, align 2
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i8 %9, i8* %21, align 1
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %18, align 4
  %26 = load i32, i32* %20, align 4
  %27 = sub i32 %26, 1
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %10
  store i32 1, i32* %22, align 4
  br label %30

30:                                               ; preds = %29, %10
  %31 = load i8, i8* %13, align 1
  %32 = zext i8 %31 to i32
  switch i32 %32, label %515 [
    i32 128, label %33
    i32 131, label %101
    i32 130, label %169
    i32 129, label %342
  ]

33:                                               ; preds = %30
  %34 = load i32, i32* %20, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %22, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %44 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i8, i8* %15, align 1
  %47 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %48 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @BBuGetFrameTime(i32 %45, i8 zeroext %46, i32 14, i32 %49)
  store i32 %50, i32* %23, align 4
  %51 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %52 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %23, align 4
  %55 = add i32 %53, %54
  store i32 %55, i32* %11, align 4
  br label %517

56:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %517

57:                                               ; preds = %36
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* %20, align 4
  %60 = sub i32 %59, 2
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %64 = load i8, i8* %15, align 1
  %65 = load i32, i32* %19, align 4
  %66 = load i16, i16* %16, align 2
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %63, i8 zeroext %64, i32 %65, i16 zeroext %66, i32 %67)
  store i32 %68, i32* %24, align 4
  br label %76

69:                                               ; preds = %57
  %70 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %71 = load i8, i8* %15, align 1
  %72 = load i32, i32* %14, align 4
  %73 = load i16, i16* %16, align 2
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %70, i8 zeroext %71, i32 %72, i16 zeroext %73, i32 %74)
  store i32 %75, i32* %24, align 4
  br label %76

76:                                               ; preds = %69, %62
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %81 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i8, i8* %15, align 1
  %84 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %85 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @BBuGetFrameTime(i32 %82, i8 zeroext %83, i32 14, i32 %86)
  store i32 %87, i32* %23, align 4
  %88 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %89 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %23, align 4
  %92 = add i32 %90, %91
  %93 = load i32, i32* %24, align 4
  %94 = add i32 %92, %93
  store i32 %94, i32* %11, align 4
  br label %517

95:                                               ; preds = %76
  %96 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %97 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %24, align 4
  %100 = add i32 %98, %99
  store i32 %100, i32* %11, align 4
  br label %517

101:                                              ; preds = %30
  %102 = load i32, i32* %20, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %22, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %107
  %111 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %112 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i8, i8* %15, align 1
  %115 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %116 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @BBuGetFrameTime(i32 %113, i8 zeroext %114, i32 14, i32 %117)
  store i32 %118, i32* %23, align 4
  %119 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %120 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %23, align 4
  %123 = add i32 %121, %122
  store i32 %123, i32* %11, align 4
  br label %517

124:                                              ; preds = %107
  store i32 0, i32* %11, align 4
  br label %517

125:                                              ; preds = %104
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %20, align 4
  %128 = sub i32 %127, 2
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %132 = load i8, i8* %15, align 1
  %133 = load i32, i32* %19, align 4
  %134 = load i16, i16* %16, align 2
  %135 = load i32, i32* %17, align 4
  %136 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %131, i8 zeroext %132, i32 %133, i16 zeroext %134, i32 %135)
  store i32 %136, i32* %24, align 4
  br label %144

137:                                              ; preds = %125
  %138 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %139 = load i8, i8* %15, align 1
  %140 = load i32, i32* %14, align 4
  %141 = load i16, i16* %16, align 2
  %142 = load i32, i32* %17, align 4
  %143 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %138, i8 zeroext %139, i32 %140, i16 zeroext %141, i32 %142)
  store i32 %143, i32* %24, align 4
  br label %144

144:                                              ; preds = %137, %130
  %145 = load i32, i32* %17, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %144
  %148 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %149 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i8, i8* %15, align 1
  %152 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %153 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @BBuGetFrameTime(i32 %150, i8 zeroext %151, i32 14, i32 %154)
  store i32 %155, i32* %23, align 4
  %156 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %157 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %23, align 4
  %160 = add i32 %158, %159
  %161 = load i32, i32* %24, align 4
  %162 = add i32 %160, %161
  store i32 %162, i32* %11, align 4
  br label %517

163:                                              ; preds = %144
  %164 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %165 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %24, align 4
  %168 = add i32 %166, %167
  store i32 %168, i32* %11, align 4
  br label %517

169:                                              ; preds = %30
  %170 = load i32, i32* %20, align 4
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %22, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %193

175:                                              ; preds = %172, %169
  %176 = load i32, i32* %17, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %192

178:                                              ; preds = %175
  %179 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %180 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load i8, i8* %15, align 1
  %183 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %184 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @BBuGetFrameTime(i32 %181, i8 zeroext %182, i32 14, i32 %185)
  store i32 %186, i32* %23, align 4
  %187 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %188 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %23, align 4
  %191 = add i32 %189, %190
  store i32 %191, i32* %11, align 4
  br label %517

192:                                              ; preds = %175
  store i32 0, i32* %11, align 4
  br label %517

193:                                              ; preds = %172
  %194 = load i8, i8* %21, align 1
  %195 = zext i8 %194 to i32
  %196 = load i8, i8* @AUTO_FB_0, align 1
  %197 = zext i8 %196 to i32
  %198 = icmp eq i32 %195, %197
  br i1 %198, label %199, label %258

199:                                              ; preds = %193
  %200 = load i16, i16* %16, align 2
  %201 = zext i16 %200 to i32
  %202 = load i16, i16* @RATE_18M, align 2
  %203 = zext i16 %202 to i32
  %204 = icmp slt i32 %201, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  %206 = load i16, i16* @RATE_18M, align 2
  store i16 %206, i16* %16, align 2
  br label %216

207:                                              ; preds = %199
  %208 = load i16, i16* %16, align 2
  %209 = zext i16 %208 to i32
  %210 = load i16, i16* @RATE_54M, align 2
  %211 = zext i16 %210 to i32
  %212 = icmp sgt i32 %209, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %207
  %214 = load i16, i16* @RATE_54M, align 2
  store i16 %214, i16* %16, align 2
  br label %215

215:                                              ; preds = %213, %207
  br label %216

216:                                              ; preds = %215, %205
  %217 = load i32, i32* %18, align 4
  %218 = load i32, i32* %20, align 4
  %219 = sub i32 %218, 2
  %220 = icmp eq i32 %217, %219
  br i1 %220, label %221, label %239

221:                                              ; preds = %216
  %222 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %223 = load i8, i8* %15, align 1
  %224 = load i32, i32* %19, align 4
  %225 = load i16**, i16*** @wFB_Opt0, align 8
  %226 = load i64, i64* @FB_RATE0, align 8
  %227 = getelementptr inbounds i16*, i16** %225, i64 %226
  %228 = load i16*, i16** %227, align 8
  %229 = load i16, i16* %16, align 2
  %230 = zext i16 %229 to i32
  %231 = load i16, i16* @RATE_18M, align 2
  %232 = zext i16 %231 to i32
  %233 = sub nsw i32 %230, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i16, i16* %228, i64 %234
  %236 = load i16, i16* %235, align 2
  %237 = load i32, i32* %17, align 4
  %238 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %222, i8 zeroext %223, i32 %224, i16 zeroext %236, i32 %237)
  store i32 %238, i32* %24, align 4
  br label %257

239:                                              ; preds = %216
  %240 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %241 = load i8, i8* %15, align 1
  %242 = load i32, i32* %14, align 4
  %243 = load i16**, i16*** @wFB_Opt0, align 8
  %244 = load i64, i64* @FB_RATE0, align 8
  %245 = getelementptr inbounds i16*, i16** %243, i64 %244
  %246 = load i16*, i16** %245, align 8
  %247 = load i16, i16* %16, align 2
  %248 = zext i16 %247 to i32
  %249 = load i16, i16* @RATE_18M, align 2
  %250 = zext i16 %249 to i32
  %251 = sub nsw i32 %248, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i16, i16* %246, i64 %252
  %254 = load i16, i16* %253, align 2
  %255 = load i32, i32* %17, align 4
  %256 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %240, i8 zeroext %241, i32 %242, i16 zeroext %254, i32 %255)
  store i32 %256, i32* %24, align 4
  br label %257

257:                                              ; preds = %239, %221
  br label %317

258:                                              ; preds = %193
  %259 = load i16, i16* %16, align 2
  %260 = zext i16 %259 to i32
  %261 = load i16, i16* @RATE_18M, align 2
  %262 = zext i16 %261 to i32
  %263 = icmp slt i32 %260, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %258
  %265 = load i16, i16* @RATE_18M, align 2
  store i16 %265, i16* %16, align 2
  br label %275

266:                                              ; preds = %258
  %267 = load i16, i16* %16, align 2
  %268 = zext i16 %267 to i32
  %269 = load i16, i16* @RATE_54M, align 2
  %270 = zext i16 %269 to i32
  %271 = icmp sgt i32 %268, %270
  br i1 %271, label %272, label %274

272:                                              ; preds = %266
  %273 = load i16, i16* @RATE_54M, align 2
  store i16 %273, i16* %16, align 2
  br label %274

274:                                              ; preds = %272, %266
  br label %275

275:                                              ; preds = %274, %264
  %276 = load i32, i32* %18, align 4
  %277 = load i32, i32* %20, align 4
  %278 = sub i32 %277, 2
  %279 = icmp eq i32 %276, %278
  br i1 %279, label %280, label %298

280:                                              ; preds = %275
  %281 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %282 = load i8, i8* %15, align 1
  %283 = load i32, i32* %19, align 4
  %284 = load i16**, i16*** @wFB_Opt1, align 8
  %285 = load i64, i64* @FB_RATE0, align 8
  %286 = getelementptr inbounds i16*, i16** %284, i64 %285
  %287 = load i16*, i16** %286, align 8
  %288 = load i16, i16* %16, align 2
  %289 = zext i16 %288 to i32
  %290 = load i16, i16* @RATE_18M, align 2
  %291 = zext i16 %290 to i32
  %292 = sub nsw i32 %289, %291
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i16, i16* %287, i64 %293
  %295 = load i16, i16* %294, align 2
  %296 = load i32, i32* %17, align 4
  %297 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %281, i8 zeroext %282, i32 %283, i16 zeroext %295, i32 %296)
  store i32 %297, i32* %24, align 4
  br label %316

298:                                              ; preds = %275
  %299 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %300 = load i8, i8* %15, align 1
  %301 = load i32, i32* %14, align 4
  %302 = load i16**, i16*** @wFB_Opt1, align 8
  %303 = load i64, i64* @FB_RATE0, align 8
  %304 = getelementptr inbounds i16*, i16** %302, i64 %303
  %305 = load i16*, i16** %304, align 8
  %306 = load i16, i16* %16, align 2
  %307 = zext i16 %306 to i32
  %308 = load i16, i16* @RATE_18M, align 2
  %309 = zext i16 %308 to i32
  %310 = sub nsw i32 %307, %309
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i16, i16* %305, i64 %311
  %313 = load i16, i16* %312, align 2
  %314 = load i32, i32* %17, align 4
  %315 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %299, i8 zeroext %300, i32 %301, i16 zeroext %313, i32 %314)
  store i32 %315, i32* %24, align 4
  br label %316

316:                                              ; preds = %298, %280
  br label %317

317:                                              ; preds = %316, %257
  %318 = load i32, i32* %17, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %336

320:                                              ; preds = %317
  %321 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %322 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = load i8, i8* %15, align 1
  %325 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %326 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @BBuGetFrameTime(i32 %323, i8 zeroext %324, i32 14, i32 %327)
  store i32 %328, i32* %23, align 4
  %329 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %330 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %23, align 4
  %333 = add i32 %331, %332
  %334 = load i32, i32* %24, align 4
  %335 = add i32 %333, %334
  store i32 %335, i32* %11, align 4
  br label %517

336:                                              ; preds = %317
  %337 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %338 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* %24, align 4
  %341 = add i32 %339, %340
  store i32 %341, i32* %11, align 4
  br label %517

342:                                              ; preds = %30
  %343 = load i32, i32* %20, align 4
  %344 = icmp eq i32 %343, 1
  br i1 %344, label %348, label %345

345:                                              ; preds = %342
  %346 = load i32, i32* %22, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %366

348:                                              ; preds = %345, %342
  %349 = load i32, i32* %17, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %365

351:                                              ; preds = %348
  %352 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %353 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 4
  %355 = load i8, i8* %15, align 1
  %356 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %357 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @BBuGetFrameTime(i32 %354, i8 zeroext %355, i32 14, i32 %358)
  store i32 %359, i32* %23, align 4
  %360 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %361 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* %23, align 4
  %364 = add i32 %362, %363
  store i32 %364, i32* %11, align 4
  br label %517

365:                                              ; preds = %348
  store i32 0, i32* %11, align 4
  br label %517

366:                                              ; preds = %345
  %367 = load i8, i8* %21, align 1
  %368 = zext i8 %367 to i32
  %369 = load i8, i8* @AUTO_FB_0, align 1
  %370 = zext i8 %369 to i32
  %371 = icmp eq i32 %368, %370
  br i1 %371, label %372, label %431

372:                                              ; preds = %366
  %373 = load i16, i16* %16, align 2
  %374 = zext i16 %373 to i32
  %375 = load i16, i16* @RATE_18M, align 2
  %376 = zext i16 %375 to i32
  %377 = icmp slt i32 %374, %376
  br i1 %377, label %378, label %380

378:                                              ; preds = %372
  %379 = load i16, i16* @RATE_18M, align 2
  store i16 %379, i16* %16, align 2
  br label %389

380:                                              ; preds = %372
  %381 = load i16, i16* %16, align 2
  %382 = zext i16 %381 to i32
  %383 = load i16, i16* @RATE_54M, align 2
  %384 = zext i16 %383 to i32
  %385 = icmp sgt i32 %382, %384
  br i1 %385, label %386, label %388

386:                                              ; preds = %380
  %387 = load i16, i16* @RATE_54M, align 2
  store i16 %387, i16* %16, align 2
  br label %388

388:                                              ; preds = %386, %380
  br label %389

389:                                              ; preds = %388, %378
  %390 = load i32, i32* %18, align 4
  %391 = load i32, i32* %20, align 4
  %392 = sub i32 %391, 2
  %393 = icmp eq i32 %390, %392
  br i1 %393, label %394, label %412

394:                                              ; preds = %389
  %395 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %396 = load i8, i8* %15, align 1
  %397 = load i32, i32* %19, align 4
  %398 = load i16**, i16*** @wFB_Opt0, align 8
  %399 = load i64, i64* @FB_RATE1, align 8
  %400 = getelementptr inbounds i16*, i16** %398, i64 %399
  %401 = load i16*, i16** %400, align 8
  %402 = load i16, i16* %16, align 2
  %403 = zext i16 %402 to i32
  %404 = load i16, i16* @RATE_18M, align 2
  %405 = zext i16 %404 to i32
  %406 = sub nsw i32 %403, %405
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i16, i16* %401, i64 %407
  %409 = load i16, i16* %408, align 2
  %410 = load i32, i32* %17, align 4
  %411 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %395, i8 zeroext %396, i32 %397, i16 zeroext %409, i32 %410)
  store i32 %411, i32* %24, align 4
  br label %430

412:                                              ; preds = %389
  %413 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %414 = load i8, i8* %15, align 1
  %415 = load i32, i32* %14, align 4
  %416 = load i16**, i16*** @wFB_Opt0, align 8
  %417 = load i64, i64* @FB_RATE1, align 8
  %418 = getelementptr inbounds i16*, i16** %416, i64 %417
  %419 = load i16*, i16** %418, align 8
  %420 = load i16, i16* %16, align 2
  %421 = zext i16 %420 to i32
  %422 = load i16, i16* @RATE_18M, align 2
  %423 = zext i16 %422 to i32
  %424 = sub nsw i32 %421, %423
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i16, i16* %419, i64 %425
  %427 = load i16, i16* %426, align 2
  %428 = load i32, i32* %17, align 4
  %429 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %413, i8 zeroext %414, i32 %415, i16 zeroext %427, i32 %428)
  store i32 %429, i32* %24, align 4
  br label %430

430:                                              ; preds = %412, %394
  br label %490

431:                                              ; preds = %366
  %432 = load i16, i16* %16, align 2
  %433 = zext i16 %432 to i32
  %434 = load i16, i16* @RATE_18M, align 2
  %435 = zext i16 %434 to i32
  %436 = icmp slt i32 %433, %435
  br i1 %436, label %437, label %439

437:                                              ; preds = %431
  %438 = load i16, i16* @RATE_18M, align 2
  store i16 %438, i16* %16, align 2
  br label %448

439:                                              ; preds = %431
  %440 = load i16, i16* %16, align 2
  %441 = zext i16 %440 to i32
  %442 = load i16, i16* @RATE_54M, align 2
  %443 = zext i16 %442 to i32
  %444 = icmp sgt i32 %441, %443
  br i1 %444, label %445, label %447

445:                                              ; preds = %439
  %446 = load i16, i16* @RATE_54M, align 2
  store i16 %446, i16* %16, align 2
  br label %447

447:                                              ; preds = %445, %439
  br label %448

448:                                              ; preds = %447, %437
  %449 = load i32, i32* %18, align 4
  %450 = load i32, i32* %20, align 4
  %451 = sub i32 %450, 2
  %452 = icmp eq i32 %449, %451
  br i1 %452, label %453, label %471

453:                                              ; preds = %448
  %454 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %455 = load i8, i8* %15, align 1
  %456 = load i32, i32* %19, align 4
  %457 = load i16**, i16*** @wFB_Opt1, align 8
  %458 = load i64, i64* @FB_RATE1, align 8
  %459 = getelementptr inbounds i16*, i16** %457, i64 %458
  %460 = load i16*, i16** %459, align 8
  %461 = load i16, i16* %16, align 2
  %462 = zext i16 %461 to i32
  %463 = load i16, i16* @RATE_18M, align 2
  %464 = zext i16 %463 to i32
  %465 = sub nsw i32 %462, %464
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i16, i16* %460, i64 %466
  %468 = load i16, i16* %467, align 2
  %469 = load i32, i32* %17, align 4
  %470 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %454, i8 zeroext %455, i32 %456, i16 zeroext %468, i32 %469)
  store i32 %470, i32* %24, align 4
  br label %489

471:                                              ; preds = %448
  %472 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %473 = load i8, i8* %15, align 1
  %474 = load i32, i32* %14, align 4
  %475 = load i16**, i16*** @wFB_Opt1, align 8
  %476 = load i64, i64* @FB_RATE1, align 8
  %477 = getelementptr inbounds i16*, i16** %475, i64 %476
  %478 = load i16*, i16** %477, align 8
  %479 = load i16, i16* %16, align 2
  %480 = zext i16 %479 to i32
  %481 = load i16, i16* @RATE_18M, align 2
  %482 = zext i16 %481 to i32
  %483 = sub nsw i32 %480, %482
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i16, i16* %478, i64 %484
  %486 = load i16, i16* %485, align 2
  %487 = load i32, i32* %17, align 4
  %488 = call i32 @s_uGetTxRsvTime(%struct.vnt_private* %472, i8 zeroext %473, i32 %474, i16 zeroext %486, i32 %487)
  store i32 %488, i32* %24, align 4
  br label %489

489:                                              ; preds = %471, %453
  br label %490

490:                                              ; preds = %489, %430
  %491 = load i32, i32* %17, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %509

493:                                              ; preds = %490
  %494 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %495 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %494, i32 0, i32 2
  %496 = load i32, i32* %495, align 4
  %497 = load i8, i8* %15, align 1
  %498 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %499 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 4
  %501 = call i32 @BBuGetFrameTime(i32 %496, i8 zeroext %497, i32 14, i32 %500)
  store i32 %501, i32* %23, align 4
  %502 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %503 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 4
  %505 = load i32, i32* %23, align 4
  %506 = add i32 %504, %505
  %507 = load i32, i32* %24, align 4
  %508 = add i32 %506, %507
  store i32 %508, i32* %11, align 4
  br label %517

509:                                              ; preds = %490
  %510 = load %struct.vnt_private*, %struct.vnt_private** %12, align 8
  %511 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 4
  %513 = load i32, i32* %24, align 4
  %514 = add i32 %512, %513
  store i32 %514, i32* %11, align 4
  br label %517

515:                                              ; preds = %30
  br label %516

516:                                              ; preds = %515
  store i32 0, i32* %11, align 4
  br label %517

517:                                              ; preds = %516, %509, %493, %365, %351, %336, %320, %192, %178, %163, %147, %124, %110, %95, %79, %56, %42
  %518 = load i32, i32* %11, align 4
  ret i32 %518
}

declare dso_local i32 @BBuGetFrameTime(i32, i8 zeroext, i32, i32) #1

declare dso_local i32 @s_uGetTxRsvTime(%struct.vnt_private*, i8 zeroext, i32, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
