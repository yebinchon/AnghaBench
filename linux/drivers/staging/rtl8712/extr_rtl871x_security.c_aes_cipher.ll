; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_aes_cipher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_aes_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WLAN_HDR_A3_LEN = common dso_local global i32 0, align 4
@WLAN_HDR_A3_QOS_LEN = common dso_local global i32 0, align 4
@WIFI_DATA_CFACK = common dso_local global i32 0, align 4
@WIFI_DATA_CFPOLL = common dso_local global i32 0, align 4
@WIFI_DATA_CFACKPOLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @aes_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_cipher(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
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
  %65 = load i32, i32* @WIFI_DATA_CFACK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %25, align 4
  %69 = load i32, i32* @WIFI_DATA_CFPOLL, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %25, align 4
  %73 = load i32, i32* @WIFI_DATA_CFACKPOLL, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %71, %67, %63
  store i32 1, i32* %9, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @WLAN_HDR_A3_QOS_LEN, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 2
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %79, %75
  br label %105

83:                                               ; preds = %71
  %84 = load i32, i32* %26, align 4
  %85 = icmp eq i32 %84, 8
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %26, align 4
  %88 = icmp eq i32 %87, 9
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %26, align 4
  %91 = icmp eq i32 %90, 10
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %26, align 4
  %94 = icmp eq i32 %93, 11
  br i1 %94, label %95, label %103

95:                                               ; preds = %92, %89, %86, %83
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @WLAN_HDR_A3_QOS_LEN, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 2
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %99, %95
  store i32 1, i32* %9, align 4
  br label %104

103:                                              ; preds = %92
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %103, %102
  br label %105

105:                                              ; preds = %104, %82
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  store i32 %110, i32* %111, align 16
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 1
  store i32 %117, i32* %118, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 2
  store i32 %124, i32* %125, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 5
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 3
  store i32 %131, i32* %132, align 4
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 6
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 4
  store i32 %138, i32* %139, align 16
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 7
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 5
  store i32 %145, i32* %146, align 4
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %8, align 4
  %152 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %153 = call i32 @construct_mic_iv(i32* %147, i32 %148, i32 %149, i32* %150, i32 %151, i32* %152)
  %154 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %155 = load i32, i32* %6, align 4
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @construct_mic_header1(i32* %154, i32 %155, i32* %156)
  %158 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 0
  %159 = load i32*, i32** %7, align 8
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @construct_mic_header2(i32* %158, i32* %159, i32 %160, i32 %161)
  %163 = load i32, i32* %8, align 4
  %164 = srem i32 %163, 16
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %8, align 4
  %166 = sdiv i32 %165, 16
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 8
  store i32 %168, i32* %15, align 4
  %169 = load i32*, i32** %5, align 8
  %170 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %172 = call i32 @aes128k128d(i32* %169, i32* %170, i32* %171)
  %173 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %174 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %175 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %176 = call i32 @bitwise_xor(i32* %173, i32* %174, i32* %175)
  %177 = load i32*, i32** %5, align 8
  %178 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %179 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %180 = call i32 @aes128k128d(i32* %177, i32* %178, i32* %179)
  %181 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %182 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 0
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %184 = call i32 @bitwise_xor(i32* %181, i32* %182, i32* %183)
  %185 = load i32*, i32** %5, align 8
  %186 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %187 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %188 = call i32 @aes128k128d(i32* %185, i32* %186, i32* %187)
  store i32 0, i32* %11, align 4
  br label %189

189:                                              ; preds = %207, %105
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* %14, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %210

193:                                              ; preds = %189
  %194 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %195 = load i32*, i32** %7, align 8
  %196 = load i32, i32* %15, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %200 = call i32 @bitwise_xor(i32* %194, i32* %198, i32* %199)
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, 16
  store i32 %202, i32* %15, align 4
  %203 = load i32*, i32** %5, align 8
  %204 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %205 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %206 = call i32 @aes128k128d(i32* %203, i32* %204, i32* %205)
  br label %207

207:                                              ; preds = %193
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %11, align 4
  br label %189

210:                                              ; preds = %189
  %211 = load i32, i32* %13, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %251

213:                                              ; preds = %210
  store i32 0, i32* %12, align 4
  br label %214

214:                                              ; preds = %221, %213
  %215 = load i32, i32* %12, align 4
  %216 = icmp slt i32 %215, 16
  br i1 %216, label %217, label %224

217:                                              ; preds = %214
  %218 = load i32, i32* %12, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %219
  store i32 0, i32* %220, align 4
  br label %221

221:                                              ; preds = %217
  %222 = load i32, i32* %12, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %12, align 4
  br label %214

224:                                              ; preds = %214
  store i32 0, i32* %12, align 4
  br label %225

225:                                              ; preds = %239, %224
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* %13, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %242

229:                                              ; preds = %225
  %230 = load i32*, i32** %7, align 8
  %231 = load i32, i32* %15, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %15, align 4
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %12, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %237
  store i32 %235, i32* %238, align 4
  br label %239

239:                                              ; preds = %229
  %240 = load i32, i32* %12, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %12, align 4
  br label %225

242:                                              ; preds = %225
  %243 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %244 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  %245 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %246 = call i32 @bitwise_xor(i32* %243, i32* %244, i32* %245)
  %247 = load i32*, i32** %5, align 8
  %248 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %249 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %250 = call i32 @aes128k128d(i32* %247, i32* %248, i32* %249)
  br label %251

251:                                              ; preds = %242, %210
  store i32 0, i32* %12, align 4
  br label %252

252:                                              ; preds = %263, %251
  %253 = load i32, i32* %12, align 4
  %254 = icmp slt i32 %253, 8
  br i1 %254, label %255, label %266

255:                                              ; preds = %252
  %256 = load i32, i32* %12, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %12, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 %261
  store i32 %259, i32* %262, align 4
  br label %263

263:                                              ; preds = %255
  %264 = load i32, i32* %12, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %12, align 4
  br label %252

266:                                              ; preds = %252
  store i32 0, i32* %12, align 4
  br label %267

267:                                              ; preds = %281, %266
  %268 = load i32, i32* %12, align 4
  %269 = icmp slt i32 %268, 8
  br i1 %269, label %270, label %284

270:                                              ; preds = %267
  %271 = load i32, i32* %12, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** %7, align 8
  %276 = load i32, i32* %15, align 4
  %277 = load i32, i32* %12, align 4
  %278 = add nsw i32 %276, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %275, i64 %279
  store i32 %274, i32* %280, align 4
  br label %281

281:                                              ; preds = %270
  %282 = load i32, i32* %12, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %12, align 4
  br label %267

284:                                              ; preds = %267
  %285 = load i32, i32* %6, align 4
  %286 = add nsw i32 %285, 8
  store i32 %286, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %287

287:                                              ; preds = %328, %284
  %288 = load i32, i32* %11, align 4
  %289 = load i32, i32* %14, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %331

291:                                              ; preds = %287
  %292 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %293 = load i32, i32* %10, align 4
  %294 = load i32, i32* %9, align 4
  %295 = load i32*, i32** %7, align 8
  %296 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %297 = load i32, i32* %11, align 4
  %298 = add nsw i32 %297, 1
  %299 = call i32 @construct_ctr_preload(i32* %292, i32 %293, i32 %294, i32* %295, i32* %296, i32 %298)
  %300 = load i32*, i32** %5, align 8
  %301 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %302 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %303 = call i32 @aes128k128d(i32* %300, i32* %301, i32* %302)
  %304 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %305 = load i32*, i32** %7, align 8
  %306 = load i32, i32* %15, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %310 = call i32 @bitwise_xor(i32* %304, i32* %308, i32* %309)
  store i32 0, i32* %12, align 4
  br label %311

311:                                              ; preds = %324, %291
  %312 = load i32, i32* %12, align 4
  %313 = icmp slt i32 %312, 16
  br i1 %313, label %314, label %327

314:                                              ; preds = %311
  %315 = load i32, i32* %12, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = load i32*, i32** %7, align 8
  %320 = load i32, i32* %15, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %15, align 4
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds i32, i32* %319, i64 %322
  store i32 %318, i32* %323, align 4
  br label %324

324:                                              ; preds = %314
  %325 = load i32, i32* %12, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %12, align 4
  br label %311

327:                                              ; preds = %311
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %11, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %11, align 4
  br label %287

331:                                              ; preds = %287
  %332 = load i32, i32* %13, align 4
  %333 = icmp sgt i32 %332, 0
  br i1 %333, label %334, label %399

334:                                              ; preds = %331
  %335 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %336 = load i32, i32* %10, align 4
  %337 = load i32, i32* %9, align 4
  %338 = load i32*, i32** %7, align 8
  %339 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %340 = load i32, i32* %14, align 4
  %341 = add nsw i32 %340, 1
  %342 = call i32 @construct_ctr_preload(i32* %335, i32 %336, i32 %337, i32* %338, i32* %339, i32 %341)
  store i32 0, i32* %12, align 4
  br label %343

343:                                              ; preds = %350, %334
  %344 = load i32, i32* %12, align 4
  %345 = icmp slt i32 %344, 16
  br i1 %345, label %346, label %353

346:                                              ; preds = %343
  %347 = load i32, i32* %12, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %348
  store i32 0, i32* %349, align 4
  br label %350

350:                                              ; preds = %346
  %351 = load i32, i32* %12, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %12, align 4
  br label %343

353:                                              ; preds = %343
  store i32 0, i32* %12, align 4
  br label %354

354:                                              ; preds = %369, %353
  %355 = load i32, i32* %12, align 4
  %356 = load i32, i32* %13, align 4
  %357 = icmp slt i32 %355, %356
  br i1 %357, label %358, label %372

358:                                              ; preds = %354
  %359 = load i32*, i32** %7, align 8
  %360 = load i32, i32* %15, align 4
  %361 = load i32, i32* %12, align 4
  %362 = add nsw i32 %360, %361
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %359, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* %12, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %367
  store i32 %365, i32* %368, align 4
  br label %369

369:                                              ; preds = %358
  %370 = load i32, i32* %12, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %12, align 4
  br label %354

372:                                              ; preds = %354
  %373 = load i32*, i32** %5, align 8
  %374 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %375 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %376 = call i32 @aes128k128d(i32* %373, i32* %374, i32* %375)
  %377 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %378 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  %379 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %380 = call i32 @bitwise_xor(i32* %377, i32* %378, i32* %379)
  store i32 0, i32* %12, align 4
  br label %381

381:                                              ; preds = %395, %372
  %382 = load i32, i32* %12, align 4
  %383 = load i32, i32* %13, align 4
  %384 = icmp slt i32 %382, %383
  br i1 %384, label %385, label %398

385:                                              ; preds = %381
  %386 = load i32, i32* %12, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = load i32*, i32** %7, align 8
  %391 = load i32, i32* %15, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %15, align 4
  %393 = sext i32 %391 to i64
  %394 = getelementptr inbounds i32, i32* %390, i64 %393
  store i32 %389, i32* %394, align 4
  br label %395

395:                                              ; preds = %385
  %396 = load i32, i32* %12, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %12, align 4
  br label %381

398:                                              ; preds = %381
  br label %399

399:                                              ; preds = %398, %331
  %400 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %401 = load i32, i32* %10, align 4
  %402 = load i32, i32* %9, align 4
  %403 = load i32*, i32** %7, align 8
  %404 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %405 = call i32 @construct_ctr_preload(i32* %400, i32 %401, i32 %402, i32* %403, i32* %404, i32 0)
  store i32 0, i32* %12, align 4
  br label %406

406:                                              ; preds = %413, %399
  %407 = load i32, i32* %12, align 4
  %408 = icmp slt i32 %407, 16
  br i1 %408, label %409, label %416

409:                                              ; preds = %406
  %410 = load i32, i32* %12, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %411
  store i32 0, i32* %412, align 4
  br label %413

413:                                              ; preds = %409
  %414 = load i32, i32* %12, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %12, align 4
  br label %406

416:                                              ; preds = %406
  store i32 0, i32* %12, align 4
  br label %417

417:                                              ; preds = %434, %416
  %418 = load i32, i32* %12, align 4
  %419 = icmp slt i32 %418, 8
  br i1 %419, label %420, label %437

420:                                              ; preds = %417
  %421 = load i32*, i32** %7, align 8
  %422 = load i32, i32* %12, align 4
  %423 = load i32, i32* %6, align 4
  %424 = add nsw i32 %422, %423
  %425 = add nsw i32 %424, 8
  %426 = load i32, i32* %8, align 4
  %427 = add nsw i32 %425, %426
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %421, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* %12, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %432
  store i32 %430, i32* %433, align 4
  br label %434

434:                                              ; preds = %420
  %435 = load i32, i32* %12, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %12, align 4
  br label %417

437:                                              ; preds = %417
  %438 = load i32*, i32** %5, align 8
  %439 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %440 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %441 = call i32 @aes128k128d(i32* %438, i32* %439, i32* %440)
  %442 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %443 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  %444 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %445 = call i32 @bitwise_xor(i32* %442, i32* %443, i32* %444)
  store i32 0, i32* %12, align 4
  br label %446

446:                                              ; preds = %459, %437
  %447 = load i32, i32* %12, align 4
  %448 = icmp slt i32 %447, 8
  br i1 %448, label %449, label %462

449:                                              ; preds = %446
  %450 = load i32, i32* %12, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %451
  %453 = load i32, i32* %452, align 4
  %454 = load i32*, i32** %7, align 8
  %455 = load i32, i32* %15, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %15, align 4
  %457 = sext i32 %455 to i64
  %458 = getelementptr inbounds i32, i32* %454, i64 %457
  store i32 %453, i32* %458, align 4
  br label %459

459:                                              ; preds = %449
  %460 = load i32, i32* %12, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %12, align 4
  br label %446

462:                                              ; preds = %446
  ret void
}

declare dso_local i32 @GetFrameType(i32*) #1

declare dso_local i32 @GetFrameSubType(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @construct_mic_iv(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @construct_mic_header1(i32*, i32, i32*) #1

declare dso_local i32 @construct_mic_header2(i32*, i32*, i32, i32) #1

declare dso_local i32 @aes128k128d(i32*, i32*, i32*) #1

declare dso_local i32 @bitwise_xor(i32*, i32*, i32*) #1

declare dso_local i32 @construct_ctr_preload(i32*, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
