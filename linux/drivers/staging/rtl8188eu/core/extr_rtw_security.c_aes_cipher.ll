; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_security.c_aes_cipher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_security.c_aes_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WLAN_HDR_A3_LEN = common dso_local global i32 0, align 4
@WLAN_HDR_A3_QOS_LEN = common dso_local global i32 0, align 4
@WIFI_DATA_CFACK = common dso_local global i32 0, align 4
@WIFI_DATA_CFPOLL = common dso_local global i32 0, align 4
@WIFI_DATA_CFACKPOLL = common dso_local global i32 0, align 4
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
  %34 = call i32 @memset(i32* %33, i32 0, i32 16)
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %36 = call i32 @memset(i32* %35, i32 0, i32 16)
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 0
  %38 = call i32 @memset(i32* %37, i32 0, i32 16)
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %40 = call i32 @memset(i32* %39, i32 0, i32 16)
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %42 = call i32 @memset(i32* %41, i32 0, i32 16)
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %44 = call i32 @memset(i32* %43, i32 0, i32 16)
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  %46 = call i32 @memset(i32* %45, i32 0, i32 16)
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @WLAN_HDR_A3_QOS_LEN, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %4
  store i32 0, i32* %10, align 4
  br label %56

55:                                               ; preds = %50
  store i32 1, i32* %10, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i32, i32* %25, align 4
  %58 = load i32, i32* @WIFI_DATA_CFACK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %25, align 4
  %62 = load i32, i32* @WIFI_DATA_CFPOLL, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %25, align 4
  %66 = load i32, i32* @WIFI_DATA_CFACKPOLL, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64, %60, %56
  store i32 1, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @WLAN_HDR_A3_QOS_LEN, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 2
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %72, %68
  br label %98

76:                                               ; preds = %64
  %77 = load i32, i32* %26, align 4
  %78 = icmp eq i32 %77, 8
  br i1 %78, label %88, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %26, align 4
  %81 = icmp eq i32 %80, 9
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %26, align 4
  %84 = icmp eq i32 %83, 10
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %26, align 4
  %87 = icmp eq i32 %86, 11
  br i1 %87, label %88, label %96

88:                                               ; preds = %85, %82, %79, %76
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @WLAN_HDR_A3_QOS_LEN, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 2
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %92, %88
  store i32 1, i32* %9, align 4
  br label %97

96:                                               ; preds = %85
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %96, %95
  br label %98

98:                                               ; preds = %97, %75
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  store i32 %103, i32* %104, align 16
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 1
  store i32 %110, i32* %111, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 2
  store i32 %117, i32* %118, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 5
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 3
  store i32 %124, i32* %125, align 4
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 6
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 4
  store i32 %131, i32* %132, align 16
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 7
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 5
  store i32 %138, i32* %139, align 4
  %140 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %8, align 4
  %145 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %146 = call i32 @construct_mic_iv(i32* %140, i32 %141, i32 %142, i32* %143, i32 %144, i32* %145)
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %148 = load i32, i32* %6, align 4
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @construct_mic_header1(i32* %147, i32 %148, i32* %149)
  %151 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 0
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @construct_mic_header2(i32* %151, i32* %152, i32 %153, i32 %154)
  %156 = load i32, i32* %8, align 4
  %157 = srem i32 %156, 16
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %8, align 4
  %159 = sdiv i32 %158, 16
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 8
  store i32 %161, i32* %15, align 4
  %162 = load i32*, i32** %5, align 8
  %163 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %164 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %165 = call i32 @aes128k128d(i32* %162, i32* %163, i32* %164)
  %166 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %167 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %169 = call i32 @bitwise_xor(i32* %166, i32* %167, i32* %168)
  %170 = load i32*, i32** %5, align 8
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %172 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %173 = call i32 @aes128k128d(i32* %170, i32* %171, i32* %172)
  %174 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %175 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 0
  %176 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %177 = call i32 @bitwise_xor(i32* %174, i32* %175, i32* %176)
  %178 = load i32*, i32** %5, align 8
  %179 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %180 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %181 = call i32 @aes128k128d(i32* %178, i32* %179, i32* %180)
  store i32 0, i32* %11, align 4
  br label %182

182:                                              ; preds = %200, %98
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* %14, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %203

186:                                              ; preds = %182
  %187 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %188 = load i32*, i32** %7, align 8
  %189 = load i32, i32* %15, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %193 = call i32 @bitwise_xor(i32* %187, i32* %191, i32* %192)
  %194 = load i32, i32* %15, align 4
  %195 = add nsw i32 %194, 16
  store i32 %195, i32* %15, align 4
  %196 = load i32*, i32** %5, align 8
  %197 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %198 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %199 = call i32 @aes128k128d(i32* %196, i32* %197, i32* %198)
  br label %200

200:                                              ; preds = %186
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %11, align 4
  br label %182

203:                                              ; preds = %182
  %204 = load i32, i32* %13, align 4
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %244

206:                                              ; preds = %203
  store i32 0, i32* %12, align 4
  br label %207

207:                                              ; preds = %214, %206
  %208 = load i32, i32* %12, align 4
  %209 = icmp slt i32 %208, 16
  br i1 %209, label %210, label %217

210:                                              ; preds = %207
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %212
  store i32 0, i32* %213, align 4
  br label %214

214:                                              ; preds = %210
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %12, align 4
  br label %207

217:                                              ; preds = %207
  store i32 0, i32* %12, align 4
  br label %218

218:                                              ; preds = %232, %217
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* %13, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %235

222:                                              ; preds = %218
  %223 = load i32*, i32** %7, align 8
  %224 = load i32, i32* %15, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %15, align 4
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %230
  store i32 %228, i32* %231, align 4
  br label %232

232:                                              ; preds = %222
  %233 = load i32, i32* %12, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %12, align 4
  br label %218

235:                                              ; preds = %218
  %236 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %237 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  %238 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %239 = call i32 @bitwise_xor(i32* %236, i32* %237, i32* %238)
  %240 = load i32*, i32** %5, align 8
  %241 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %242 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %243 = call i32 @aes128k128d(i32* %240, i32* %241, i32* %242)
  br label %244

244:                                              ; preds = %235, %203
  store i32 0, i32* %12, align 4
  br label %245

245:                                              ; preds = %256, %244
  %246 = load i32, i32* %12, align 4
  %247 = icmp slt i32 %246, 8
  br i1 %247, label %248, label %259

248:                                              ; preds = %245
  %249 = load i32, i32* %12, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %12, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 %254
  store i32 %252, i32* %255, align 4
  br label %256

256:                                              ; preds = %248
  %257 = load i32, i32* %12, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %12, align 4
  br label %245

259:                                              ; preds = %245
  store i32 0, i32* %12, align 4
  br label %260

260:                                              ; preds = %274, %259
  %261 = load i32, i32* %12, align 4
  %262 = icmp slt i32 %261, 8
  br i1 %262, label %263, label %277

263:                                              ; preds = %260
  %264 = load i32, i32* %12, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = load i32*, i32** %7, align 8
  %269 = load i32, i32* %15, align 4
  %270 = load i32, i32* %12, align 4
  %271 = add nsw i32 %269, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %268, i64 %272
  store i32 %267, i32* %273, align 4
  br label %274

274:                                              ; preds = %263
  %275 = load i32, i32* %12, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %12, align 4
  br label %260

277:                                              ; preds = %260
  %278 = load i32, i32* %6, align 4
  %279 = add nsw i32 %278, 8
  store i32 %279, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %280

280:                                              ; preds = %321, %277
  %281 = load i32, i32* %11, align 4
  %282 = load i32, i32* %14, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %324

284:                                              ; preds = %280
  %285 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %286 = load i32, i32* %10, align 4
  %287 = load i32, i32* %9, align 4
  %288 = load i32*, i32** %7, align 8
  %289 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %290 = load i32, i32* %11, align 4
  %291 = add nsw i32 %290, 1
  %292 = call i32 @construct_ctr_preload(i32* %285, i32 %286, i32 %287, i32* %288, i32* %289, i32 %291)
  %293 = load i32*, i32** %5, align 8
  %294 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %295 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %296 = call i32 @aes128k128d(i32* %293, i32* %294, i32* %295)
  %297 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %298 = load i32*, i32** %7, align 8
  %299 = load i32, i32* %15, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %303 = call i32 @bitwise_xor(i32* %297, i32* %301, i32* %302)
  store i32 0, i32* %12, align 4
  br label %304

304:                                              ; preds = %317, %284
  %305 = load i32, i32* %12, align 4
  %306 = icmp slt i32 %305, 16
  br i1 %306, label %307, label %320

307:                                              ; preds = %304
  %308 = load i32, i32* %12, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = load i32*, i32** %7, align 8
  %313 = load i32, i32* %15, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %15, align 4
  %315 = sext i32 %313 to i64
  %316 = getelementptr inbounds i32, i32* %312, i64 %315
  store i32 %311, i32* %316, align 4
  br label %317

317:                                              ; preds = %307
  %318 = load i32, i32* %12, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %12, align 4
  br label %304

320:                                              ; preds = %304
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %11, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %11, align 4
  br label %280

324:                                              ; preds = %280
  %325 = load i32, i32* %13, align 4
  %326 = icmp sgt i32 %325, 0
  br i1 %326, label %327, label %392

327:                                              ; preds = %324
  %328 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %329 = load i32, i32* %10, align 4
  %330 = load i32, i32* %9, align 4
  %331 = load i32*, i32** %7, align 8
  %332 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %333 = load i32, i32* %14, align 4
  %334 = add nsw i32 %333, 1
  %335 = call i32 @construct_ctr_preload(i32* %328, i32 %329, i32 %330, i32* %331, i32* %332, i32 %334)
  store i32 0, i32* %12, align 4
  br label %336

336:                                              ; preds = %343, %327
  %337 = load i32, i32* %12, align 4
  %338 = icmp slt i32 %337, 16
  br i1 %338, label %339, label %346

339:                                              ; preds = %336
  %340 = load i32, i32* %12, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %341
  store i32 0, i32* %342, align 4
  br label %343

343:                                              ; preds = %339
  %344 = load i32, i32* %12, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %12, align 4
  br label %336

346:                                              ; preds = %336
  store i32 0, i32* %12, align 4
  br label %347

347:                                              ; preds = %362, %346
  %348 = load i32, i32* %12, align 4
  %349 = load i32, i32* %13, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %365

351:                                              ; preds = %347
  %352 = load i32*, i32** %7, align 8
  %353 = load i32, i32* %15, align 4
  %354 = load i32, i32* %12, align 4
  %355 = add nsw i32 %353, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %352, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* %12, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %360
  store i32 %358, i32* %361, align 4
  br label %362

362:                                              ; preds = %351
  %363 = load i32, i32* %12, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %12, align 4
  br label %347

365:                                              ; preds = %347
  %366 = load i32*, i32** %5, align 8
  %367 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %368 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %369 = call i32 @aes128k128d(i32* %366, i32* %367, i32* %368)
  %370 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %371 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  %372 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %373 = call i32 @bitwise_xor(i32* %370, i32* %371, i32* %372)
  store i32 0, i32* %12, align 4
  br label %374

374:                                              ; preds = %388, %365
  %375 = load i32, i32* %12, align 4
  %376 = load i32, i32* %13, align 4
  %377 = icmp slt i32 %375, %376
  br i1 %377, label %378, label %391

378:                                              ; preds = %374
  %379 = load i32, i32* %12, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = load i32*, i32** %7, align 8
  %384 = load i32, i32* %15, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %15, align 4
  %386 = sext i32 %384 to i64
  %387 = getelementptr inbounds i32, i32* %383, i64 %386
  store i32 %382, i32* %387, align 4
  br label %388

388:                                              ; preds = %378
  %389 = load i32, i32* %12, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %12, align 4
  br label %374

391:                                              ; preds = %374
  br label %392

392:                                              ; preds = %391, %324
  %393 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %394 = load i32, i32* %10, align 4
  %395 = load i32, i32* %9, align 4
  %396 = load i32*, i32** %7, align 8
  %397 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %398 = call i32 @construct_ctr_preload(i32* %393, i32 %394, i32 %395, i32* %396, i32* %397, i32 0)
  store i32 0, i32* %12, align 4
  br label %399

399:                                              ; preds = %406, %392
  %400 = load i32, i32* %12, align 4
  %401 = icmp slt i32 %400, 16
  br i1 %401, label %402, label %409

402:                                              ; preds = %399
  %403 = load i32, i32* %12, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %404
  store i32 0, i32* %405, align 4
  br label %406

406:                                              ; preds = %402
  %407 = load i32, i32* %12, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %12, align 4
  br label %399

409:                                              ; preds = %399
  store i32 0, i32* %12, align 4
  br label %410

410:                                              ; preds = %427, %409
  %411 = load i32, i32* %12, align 4
  %412 = icmp slt i32 %411, 8
  br i1 %412, label %413, label %430

413:                                              ; preds = %410
  %414 = load i32*, i32** %7, align 8
  %415 = load i32, i32* %12, align 4
  %416 = load i32, i32* %6, align 4
  %417 = add nsw i32 %415, %416
  %418 = add nsw i32 %417, 8
  %419 = load i32, i32* %8, align 4
  %420 = add nsw i32 %418, %419
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %414, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* %12, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %425
  store i32 %423, i32* %426, align 4
  br label %427

427:                                              ; preds = %413
  %428 = load i32, i32* %12, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %12, align 4
  br label %410

430:                                              ; preds = %410
  %431 = load i32*, i32** %5, align 8
  %432 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %433 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %434 = call i32 @aes128k128d(i32* %431, i32* %432, i32* %433)
  %435 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %436 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  %437 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %438 = call i32 @bitwise_xor(i32* %435, i32* %436, i32* %437)
  store i32 0, i32* %12, align 4
  br label %439

439:                                              ; preds = %452, %430
  %440 = load i32, i32* %12, align 4
  %441 = icmp slt i32 %440, 8
  br i1 %441, label %442, label %455

442:                                              ; preds = %439
  %443 = load i32, i32* %12, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = load i32*, i32** %7, align 8
  %448 = load i32, i32* %15, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %15, align 4
  %450 = sext i32 %448 to i64
  %451 = getelementptr inbounds i32, i32* %447, i64 %450
  store i32 %446, i32* %451, align 4
  br label %452

452:                                              ; preds = %442
  %453 = load i32, i32* %12, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %12, align 4
  br label %439

455:                                              ; preds = %439
  %456 = load i32, i32* @_SUCCESS, align 4
  ret i32 %456
}

declare dso_local i32 @GetFrameType(i32*) #1

declare dso_local i32 @GetFrameSubType(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

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
