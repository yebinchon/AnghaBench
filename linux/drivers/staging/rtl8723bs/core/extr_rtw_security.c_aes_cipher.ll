; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_aes_cipher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_aes_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WLAN_HDR_A3_LEN = common dso_local global i32 0, align 4
@WLAN_HDR_A3_QOS_LEN = common dso_local global i32 0, align 4
@WIFI_DATA_CFACK = common dso_local global i32 0, align 4
@WIFI_DATA_CFPOLL = common dso_local global i32 0, align 4
@WIFI_DATA_CFACKPOLL = common dso_local global i32 0, align 4
@WIFI_DATA = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32)* @aes_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_cipher(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [6 x i32], align 16
  %17 = alloca [16 x i32], align 16
  %18 = alloca [16 x i32], align 16
  %19 = alloca [16 x i32], align 16
  %20 = alloca [16 x i32], align 16
  %21 = alloca [16 x i32], align 16
  %22 = alloca [16 x i32], align 16
  %23 = alloca [16 x i32], align 16
  %24 = alloca [8 x i32], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @GetFrameType(i32* %27)
  store i32 %28, i32* %25, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @GetFrameSubType(i32* %29)
  store i32 %30, i32* %26, align 4
  %31 = load i32, i32* %26, align 4
  %32 = ashr i32 %31, 4
  store i32 %32, i32* %26, align 4
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %34 = bitcast i32* %33 to i8*
  %35 = call i32 @memset(i8* %34, i32 0, i32 16)
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %37 = bitcast i32* %36 to i8*
  %38 = call i32 @memset(i8* %37, i32 0, i32 16)
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 0
  %40 = bitcast i32* %39 to i8*
  %41 = call i32 @memset(i8* %40, i32 0, i32 16)
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %43 = bitcast i32* %42 to i8*
  %44 = call i32 @memset(i8* %43, i32 0, i32 16)
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %46 = bitcast i32* %45 to i8*
  %47 = call i32 @memset(i8* %46, i32 0, i32 16)
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %49 = bitcast i32* %48 to i8*
  %50 = call i32 @memset(i8* %49, i32 0, i32 16)
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  %52 = bitcast i32* %51 to i8*
  %53 = call i32 @memset(i8* %52, i32 0, i32 16)
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @WLAN_HDR_A3_QOS_LEN, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %4
  store i32 0, i32* %10, align 4
  br label %63

62:                                               ; preds = %57
  store i32 1, i32* %10, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i32, i32* %25, align 4
  %65 = load i32, i32* %26, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @WIFI_DATA_CFACK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %81, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %25, align 4
  %71 = load i32, i32* %26, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @WIFI_DATA_CFPOLL, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %25, align 4
  %77 = load i32, i32* %26, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @WIFI_DATA_CFACKPOLL, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %75, %69, %63
  store i32 1, i32* %9, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @WLAN_HDR_A3_QOS_LEN, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 2
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %85, %81
  br label %115

89:                                               ; preds = %75
  %90 = load i32, i32* %25, align 4
  %91 = load i32, i32* @WIFI_DATA, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %89
  %94 = load i32, i32* %26, align 4
  %95 = icmp eq i32 %94, 8
  br i1 %95, label %105, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %26, align 4
  %98 = icmp eq i32 %97, 9
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %26, align 4
  %101 = icmp eq i32 %100, 10
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %26, align 4
  %104 = icmp eq i32 %103, 11
  br i1 %104, label %105, label %113

105:                                              ; preds = %102, %99, %96, %93
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @WLAN_HDR_A3_QOS_LEN, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 2
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %109, %105
  store i32 1, i32* %9, align 4
  br label %114

113:                                              ; preds = %102, %89
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %113, %112
  br label %115

115:                                              ; preds = %114, %88
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  store i32 %120, i32* %121, align 16
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 1
  store i32 %127, i32* %128, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 2
  store i32 %134, i32* %135, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 5
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 3
  store i32 %141, i32* %142, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 6
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 4
  store i32 %148, i32* %149, align 16
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 7
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 5
  store i32 %155, i32* %156, align 4
  %157 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %10, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = load i32, i32* %8, align 4
  %162 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %163 = load i32, i32* %25, align 4
  %164 = call i32 @construct_mic_iv(i32* %157, i32 %158, i32 %159, i32* %160, i32 %161, i32* %162, i32 %163)
  %165 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %166 = load i32, i32* %6, align 4
  %167 = load i32*, i32** %7, align 8
  %168 = load i32, i32* %25, align 4
  %169 = call i32 @construct_mic_header1(i32* %165, i32 %166, i32* %167, i32 %168)
  %170 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 0
  %171 = load i32*, i32** %7, align 8
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @construct_mic_header2(i32* %170, i32* %171, i32 %172, i32 %173)
  %175 = load i32, i32* %8, align 4
  %176 = srem i32 %175, 16
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %8, align 4
  %178 = sdiv i32 %177, 16
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 8
  store i32 %180, i32* %15, align 4
  %181 = load i32*, i32** %5, align 8
  %182 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %184 = call i32 @aes128k128d(i32* %181, i32* %182, i32* %183)
  %185 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %186 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %187 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %188 = call i32 @bitwise_xor(i32* %185, i32* %186, i32* %187)
  %189 = load i32*, i32** %5, align 8
  %190 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %191 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %192 = call i32 @aes128k128d(i32* %189, i32* %190, i32* %191)
  %193 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %194 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 0
  %195 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %196 = call i32 @bitwise_xor(i32* %193, i32* %194, i32* %195)
  %197 = load i32*, i32** %5, align 8
  %198 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %199 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %200 = call i32 @aes128k128d(i32* %197, i32* %198, i32* %199)
  store i32 0, i32* %11, align 4
  br label %201

201:                                              ; preds = %219, %115
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %14, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %222

205:                                              ; preds = %201
  %206 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %207 = load i32*, i32** %7, align 8
  %208 = load i32, i32* %15, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %212 = call i32 @bitwise_xor(i32* %206, i32* %210, i32* %211)
  %213 = load i32, i32* %15, align 4
  %214 = add nsw i32 %213, 16
  store i32 %214, i32* %15, align 4
  %215 = load i32*, i32** %5, align 8
  %216 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %217 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %218 = call i32 @aes128k128d(i32* %215, i32* %216, i32* %217)
  br label %219

219:                                              ; preds = %205
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %11, align 4
  br label %201

222:                                              ; preds = %201
  %223 = load i32, i32* %13, align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %263

225:                                              ; preds = %222
  store i32 0, i32* %12, align 4
  br label %226

226:                                              ; preds = %233, %225
  %227 = load i32, i32* %12, align 4
  %228 = icmp slt i32 %227, 16
  br i1 %228, label %229, label %236

229:                                              ; preds = %226
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %231
  store i32 0, i32* %232, align 4
  br label %233

233:                                              ; preds = %229
  %234 = load i32, i32* %12, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %12, align 4
  br label %226

236:                                              ; preds = %226
  store i32 0, i32* %12, align 4
  br label %237

237:                                              ; preds = %251, %236
  %238 = load i32, i32* %12, align 4
  %239 = load i32, i32* %13, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %254

241:                                              ; preds = %237
  %242 = load i32*, i32** %7, align 8
  %243 = load i32, i32* %15, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %15, align 4
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %249
  store i32 %247, i32* %250, align 4
  br label %251

251:                                              ; preds = %241
  %252 = load i32, i32* %12, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %12, align 4
  br label %237

254:                                              ; preds = %237
  %255 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %256 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  %257 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %258 = call i32 @bitwise_xor(i32* %255, i32* %256, i32* %257)
  %259 = load i32*, i32** %5, align 8
  %260 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %261 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %262 = call i32 @aes128k128d(i32* %259, i32* %260, i32* %261)
  br label %263

263:                                              ; preds = %254, %222
  store i32 0, i32* %12, align 4
  br label %264

264:                                              ; preds = %275, %263
  %265 = load i32, i32* %12, align 4
  %266 = icmp slt i32 %265, 8
  br i1 %266, label %267, label %278

267:                                              ; preds = %264
  %268 = load i32, i32* %12, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %12, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 %273
  store i32 %271, i32* %274, align 4
  br label %275

275:                                              ; preds = %267
  %276 = load i32, i32* %12, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %12, align 4
  br label %264

278:                                              ; preds = %264
  store i32 0, i32* %12, align 4
  br label %279

279:                                              ; preds = %293, %278
  %280 = load i32, i32* %12, align 4
  %281 = icmp slt i32 %280, 8
  br i1 %281, label %282, label %296

282:                                              ; preds = %279
  %283 = load i32, i32* %12, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = load i32*, i32** %7, align 8
  %288 = load i32, i32* %15, align 4
  %289 = load i32, i32* %12, align 4
  %290 = add nsw i32 %288, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %287, i64 %291
  store i32 %286, i32* %292, align 4
  br label %293

293:                                              ; preds = %282
  %294 = load i32, i32* %12, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %12, align 4
  br label %279

296:                                              ; preds = %279
  %297 = load i32, i32* %6, align 4
  %298 = add nsw i32 %297, 8
  store i32 %298, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %299

299:                                              ; preds = %341, %296
  %300 = load i32, i32* %11, align 4
  %301 = load i32, i32* %14, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %344

303:                                              ; preds = %299
  %304 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %305 = load i32, i32* %10, align 4
  %306 = load i32, i32* %9, align 4
  %307 = load i32*, i32** %7, align 8
  %308 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %309 = load i32, i32* %11, align 4
  %310 = add nsw i32 %309, 1
  %311 = load i32, i32* %25, align 4
  %312 = call i32 @construct_ctr_preload(i32* %304, i32 %305, i32 %306, i32* %307, i32* %308, i32 %310, i32 %311)
  %313 = load i32*, i32** %5, align 8
  %314 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %315 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %316 = call i32 @aes128k128d(i32* %313, i32* %314, i32* %315)
  %317 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %318 = load i32*, i32** %7, align 8
  %319 = load i32, i32* %15, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %323 = call i32 @bitwise_xor(i32* %317, i32* %321, i32* %322)
  store i32 0, i32* %12, align 4
  br label %324

324:                                              ; preds = %337, %303
  %325 = load i32, i32* %12, align 4
  %326 = icmp slt i32 %325, 16
  br i1 %326, label %327, label %340

327:                                              ; preds = %324
  %328 = load i32, i32* %12, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = load i32*, i32** %7, align 8
  %333 = load i32, i32* %15, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %15, align 4
  %335 = sext i32 %333 to i64
  %336 = getelementptr inbounds i32, i32* %332, i64 %335
  store i32 %331, i32* %336, align 4
  br label %337

337:                                              ; preds = %327
  %338 = load i32, i32* %12, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %12, align 4
  br label %324

340:                                              ; preds = %324
  br label %341

341:                                              ; preds = %340
  %342 = load i32, i32* %11, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %11, align 4
  br label %299

344:                                              ; preds = %299
  %345 = load i32, i32* %13, align 4
  %346 = icmp sgt i32 %345, 0
  br i1 %346, label %347, label %413

347:                                              ; preds = %344
  %348 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %349 = load i32, i32* %10, align 4
  %350 = load i32, i32* %9, align 4
  %351 = load i32*, i32** %7, align 8
  %352 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %353 = load i32, i32* %14, align 4
  %354 = add nsw i32 %353, 1
  %355 = load i32, i32* %25, align 4
  %356 = call i32 @construct_ctr_preload(i32* %348, i32 %349, i32 %350, i32* %351, i32* %352, i32 %354, i32 %355)
  store i32 0, i32* %12, align 4
  br label %357

357:                                              ; preds = %364, %347
  %358 = load i32, i32* %12, align 4
  %359 = icmp slt i32 %358, 16
  br i1 %359, label %360, label %367

360:                                              ; preds = %357
  %361 = load i32, i32* %12, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %362
  store i32 0, i32* %363, align 4
  br label %364

364:                                              ; preds = %360
  %365 = load i32, i32* %12, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %12, align 4
  br label %357

367:                                              ; preds = %357
  store i32 0, i32* %12, align 4
  br label %368

368:                                              ; preds = %383, %367
  %369 = load i32, i32* %12, align 4
  %370 = load i32, i32* %13, align 4
  %371 = icmp slt i32 %369, %370
  br i1 %371, label %372, label %386

372:                                              ; preds = %368
  %373 = load i32*, i32** %7, align 8
  %374 = load i32, i32* %15, align 4
  %375 = load i32, i32* %12, align 4
  %376 = add nsw i32 %374, %375
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %373, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* %12, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %381
  store i32 %379, i32* %382, align 4
  br label %383

383:                                              ; preds = %372
  %384 = load i32, i32* %12, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %12, align 4
  br label %368

386:                                              ; preds = %368
  %387 = load i32*, i32** %5, align 8
  %388 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %389 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %390 = call i32 @aes128k128d(i32* %387, i32* %388, i32* %389)
  %391 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %392 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  %393 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %394 = call i32 @bitwise_xor(i32* %391, i32* %392, i32* %393)
  store i32 0, i32* %12, align 4
  br label %395

395:                                              ; preds = %409, %386
  %396 = load i32, i32* %12, align 4
  %397 = load i32, i32* %13, align 4
  %398 = icmp slt i32 %396, %397
  br i1 %398, label %399, label %412

399:                                              ; preds = %395
  %400 = load i32, i32* %12, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = load i32*, i32** %7, align 8
  %405 = load i32, i32* %15, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %15, align 4
  %407 = sext i32 %405 to i64
  %408 = getelementptr inbounds i32, i32* %404, i64 %407
  store i32 %403, i32* %408, align 4
  br label %409

409:                                              ; preds = %399
  %410 = load i32, i32* %12, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %12, align 4
  br label %395

412:                                              ; preds = %395
  br label %413

413:                                              ; preds = %412, %344
  %414 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %415 = load i32, i32* %10, align 4
  %416 = load i32, i32* %9, align 4
  %417 = load i32*, i32** %7, align 8
  %418 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %419 = load i32, i32* %25, align 4
  %420 = call i32 @construct_ctr_preload(i32* %414, i32 %415, i32 %416, i32* %417, i32* %418, i32 0, i32 %419)
  store i32 0, i32* %12, align 4
  br label %421

421:                                              ; preds = %428, %413
  %422 = load i32, i32* %12, align 4
  %423 = icmp slt i32 %422, 16
  br i1 %423, label %424, label %431

424:                                              ; preds = %421
  %425 = load i32, i32* %12, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %426
  store i32 0, i32* %427, align 4
  br label %428

428:                                              ; preds = %424
  %429 = load i32, i32* %12, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %12, align 4
  br label %421

431:                                              ; preds = %421
  store i32 0, i32* %12, align 4
  br label %432

432:                                              ; preds = %449, %431
  %433 = load i32, i32* %12, align 4
  %434 = icmp slt i32 %433, 8
  br i1 %434, label %435, label %452

435:                                              ; preds = %432
  %436 = load i32*, i32** %7, align 8
  %437 = load i32, i32* %12, align 4
  %438 = load i32, i32* %6, align 4
  %439 = add nsw i32 %437, %438
  %440 = add nsw i32 %439, 8
  %441 = load i32, i32* %8, align 4
  %442 = add nsw i32 %440, %441
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %436, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = load i32, i32* %12, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %447
  store i32 %445, i32* %448, align 4
  br label %449

449:                                              ; preds = %435
  %450 = load i32, i32* %12, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %12, align 4
  br label %432

452:                                              ; preds = %432
  %453 = load i32*, i32** %5, align 8
  %454 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %455 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %456 = call i32 @aes128k128d(i32* %453, i32* %454, i32* %455)
  %457 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %458 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  %459 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %460 = call i32 @bitwise_xor(i32* %457, i32* %458, i32* %459)
  store i32 0, i32* %12, align 4
  br label %461

461:                                              ; preds = %474, %452
  %462 = load i32, i32* %12, align 4
  %463 = icmp slt i32 %462, 8
  br i1 %463, label %464, label %477

464:                                              ; preds = %461
  %465 = load i32, i32* %12, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %466
  %468 = load i32, i32* %467, align 4
  %469 = load i32*, i32** %7, align 8
  %470 = load i32, i32* %15, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %15, align 4
  %472 = sext i32 %470 to i64
  %473 = getelementptr inbounds i32, i32* %469, i64 %472
  store i32 %468, i32* %473, align 4
  br label %474

474:                                              ; preds = %464
  %475 = load i32, i32* %12, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %12, align 4
  br label %461

477:                                              ; preds = %461
  %478 = load i32, i32* @_SUCCESS, align 4
  ret i32 %478
}

declare dso_local i32 @GetFrameType(i32*) #1

declare dso_local i32 @GetFrameSubType(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @construct_mic_iv(i32*, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @construct_mic_header1(i32*, i32, i32*, i32) #1

declare dso_local i32 @construct_mic_header2(i32*, i32*, i32, i32) #1

declare dso_local i32 @aes128k128d(i32*, i32*, i32*) #1

declare dso_local i32 @bitwise_xor(i32*, i32*, i32*) #1

declare dso_local i32 @construct_ctr_preload(i32*, i32, i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
