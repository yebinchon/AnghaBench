; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_AdjustCRT2Rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_AdjustCRT2Rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i64, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i16, i16 }

@VB_SISVB = common dso_local global i32 0, align 4
@SetCRT2ToRAMDAC = common dso_local global i32 0, align 4
@SupportRAMDAC2 = common dso_local global i16 0, align 2
@SIS_315H = common dso_local global i64 0, align 8
@SupportRAMDAC2_135 = common dso_local global i16 0, align 2
@VB_SIS30xBLV = common dso_local global i32 0, align 4
@SupportRAMDAC2_162 = common dso_local global i16 0, align 2
@VB_SISRAMDAC202 = common dso_local global i32 0, align 4
@SupportRAMDAC2_202 = common dso_local global i16 0, align 2
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@SupportLCD = common dso_local global i16 0, align 2
@DontExpandLCD = common dso_local global i32 0, align 4
@LCDPass11 = common dso_local global i32 0, align 4
@Support64048060Hz = common dso_local global i16 0, align 2
@SetCRT2ToHiVision = common dso_local global i32 0, align 4
@SupportHiVision = common dso_local global i16 0, align 2
@SetCRT2ToYPbPr525750 = common dso_local global i32 0, align 4
@SetCRT2ToAVIDEO = common dso_local global i32 0, align 4
@SetCRT2ToSVIDEO = common dso_local global i32 0, align 4
@SetCRT2ToSCART = common dso_local global i32 0, align 4
@SupportTV = common dso_local global i16 0, align 2
@SupportTV1024 = common dso_local global i16 0, align 2
@TVSetYPbPr750p = common dso_local global i32 0, align 4
@SupportYPbPr750p = common dso_local global i16 0, align 2
@SetCRT2ToTV = common dso_local global i32 0, align 4
@SupportCHTV = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SiS_Private*, i16, i16, i16, i16*)* @SiS_AdjustCRT2Rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SiS_AdjustCRT2Rate(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3, i16* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.SiS_Private*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %7, align 8
  store i16 %1, i16* %8, align 2
  store i16 %2, i16* %9, align 2
  store i16 %3, i16* %10, align 2
  store i16* %4, i16** %11, align 8
  store i16 0, i16* %12, align 2
  %15 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %16 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %15, i32 0, i32 6
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i16, i16* %10, align 2
  %19 = zext i16 %18 to i32
  %20 = load i16*, i16** %11, align 8
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i32
  %23 = add nsw i32 %19, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i16, i16* %26, align 2
  store i16 %27, i16* %13, align 2
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %29 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @VB_SISVB, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %220

34:                                               ; preds = %5
  %35 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %36 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SetCRT2ToRAMDAC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %89

41:                                               ; preds = %34
  %42 = load i16, i16* @SupportRAMDAC2, align 2
  %43 = zext i16 %42 to i32
  %44 = load i16, i16* %12, align 2
  %45 = zext i16 %44 to i32
  %46 = or i32 %45, %43
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %12, align 2
  %48 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %49 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SIS_315H, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %88

53:                                               ; preds = %41
  %54 = load i16, i16* @SupportRAMDAC2_135, align 2
  %55 = zext i16 %54 to i32
  %56 = load i16, i16* %12, align 2
  %57 = zext i16 %56 to i32
  %58 = or i32 %57, %55
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %12, align 2
  %60 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %61 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @VB_SIS30xBLV, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %53
  %67 = load i16, i16* @SupportRAMDAC2_162, align 2
  %68 = zext i16 %67 to i32
  %69 = load i16, i16* %12, align 2
  %70 = zext i16 %69 to i32
  %71 = or i32 %70, %68
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %12, align 2
  %73 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %74 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @VB_SISRAMDAC202, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %66
  %80 = load i16, i16* @SupportRAMDAC2_202, align 2
  %81 = zext i16 %80 to i32
  %82 = load i16, i16* %12, align 2
  %83 = zext i16 %82 to i32
  %84 = or i32 %83, %81
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %12, align 2
  br label %86

86:                                               ; preds = %79, %66
  br label %87

87:                                               ; preds = %86, %53
  br label %88

88:                                               ; preds = %87, %41
  br label %219

89:                                               ; preds = %34
  %90 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %91 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @SetCRT2ToLCD, align 4
  %94 = load i32, i32* @SetCRT2ToLCDA, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %92, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %146

98:                                               ; preds = %89
  %99 = load i16, i16* @SupportLCD, align 2
  %100 = zext i16 %99 to i32
  %101 = load i16, i16* %12, align 2
  %102 = zext i16 %101 to i32
  %103 = or i32 %102, %100
  %104 = trunc i32 %103 to i16
  store i16 %104, i16* %12, align 2
  %105 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %106 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SIS_315H, align 8
  %109 = icmp sge i64 %107, %108
  br i1 %109, label %110, label %145

110:                                              ; preds = %98
  %111 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %112 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @VB_SISVB, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %144

117:                                              ; preds = %110
  %118 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %119 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @DontExpandLCD, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %117
  %125 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %126 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @LCDPass11, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %124
  %132 = load i16, i16* %13, align 2
  %133 = zext i16 %132 to i32
  %134 = icmp eq i32 %133, 46
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load i16, i16* @Support64048060Hz, align 2
  %137 = zext i16 %136 to i32
  %138 = load i16, i16* %12, align 2
  %139 = zext i16 %138 to i32
  %140 = or i32 %139, %137
  %141 = trunc i32 %140 to i16
  store i16 %141, i16* %12, align 2
  br label %142

142:                                              ; preds = %135, %131
  br label %143

143:                                              ; preds = %142, %124, %117
  br label %144

144:                                              ; preds = %143, %110
  br label %145

145:                                              ; preds = %144, %98
  br label %218

146:                                              ; preds = %89
  %147 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %148 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @SetCRT2ToHiVision, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %146
  %154 = load i16, i16* @SupportHiVision, align 2
  %155 = zext i16 %154 to i32
  %156 = load i16, i16* %12, align 2
  %157 = zext i16 %156 to i32
  %158 = or i32 %157, %155
  %159 = trunc i32 %158 to i16
  store i16 %159, i16* %12, align 2
  br label %217

160:                                              ; preds = %146
  %161 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %162 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @SetCRT2ToYPbPr525750, align 4
  %165 = load i32, i32* @SetCRT2ToAVIDEO, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @SetCRT2ToSVIDEO, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @SetCRT2ToSCART, align 4
  %170 = or i32 %168, %169
  %171 = and i32 %163, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %216

173:                                              ; preds = %160
  %174 = load i16, i16* @SupportTV, align 2
  %175 = zext i16 %174 to i32
  %176 = load i16, i16* %12, align 2
  %177 = zext i16 %176 to i32
  %178 = or i32 %177, %175
  %179 = trunc i32 %178 to i16
  store i16 %179, i16* %12, align 2
  %180 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %181 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @VB_SIS30xBLV, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %215

186:                                              ; preds = %173
  %187 = load i16, i16* @SupportTV1024, align 2
  %188 = zext i16 %187 to i32
  %189 = load i16, i16* %12, align 2
  %190 = zext i16 %189 to i32
  %191 = or i32 %190, %188
  %192 = trunc i32 %191 to i16
  store i16 %192, i16* %12, align 2
  %193 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %194 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @SetCRT2ToYPbPr525750, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %214

199:                                              ; preds = %186
  %200 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %201 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @TVSetYPbPr750p, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %199
  %207 = load i16, i16* @SupportYPbPr750p, align 2
  %208 = zext i16 %207 to i32
  %209 = load i16, i16* %12, align 2
  %210 = zext i16 %209 to i32
  %211 = or i32 %210, %208
  %212 = trunc i32 %211 to i16
  store i16 %212, i16* %12, align 2
  br label %213

213:                                              ; preds = %206, %199
  br label %214

214:                                              ; preds = %213, %186
  br label %215

215:                                              ; preds = %214, %173
  br label %216

216:                                              ; preds = %215, %160
  br label %217

217:                                              ; preds = %216, %153
  br label %218

218:                                              ; preds = %217, %145
  br label %219

219:                                              ; preds = %218, %88
  br label %255

220:                                              ; preds = %5
  %221 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %222 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %221, i32 0, i32 5
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %240

225:                                              ; preds = %220
  %226 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %227 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @SetCRT2ToTV, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %225
  %233 = load i16, i16* @SupportCHTV, align 2
  %234 = zext i16 %233 to i32
  %235 = load i16, i16* %12, align 2
  %236 = zext i16 %235 to i32
  %237 = or i32 %236, %234
  %238 = trunc i32 %237 to i16
  store i16 %238, i16* %12, align 2
  br label %239

239:                                              ; preds = %232, %225
  br label %240

240:                                              ; preds = %239, %220
  %241 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %242 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @SetCRT2ToLCD, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %240
  %248 = load i16, i16* @SupportLCD, align 2
  %249 = zext i16 %248 to i32
  %250 = load i16, i16* %12, align 2
  %251 = zext i16 %250 to i32
  %252 = or i32 %251, %249
  %253 = trunc i32 %252 to i16
  store i16 %253, i16* %12, align 2
  br label %254

254:                                              ; preds = %247, %240
  br label %255

255:                                              ; preds = %254, %219
  br label %256

256:                                              ; preds = %302, %255
  %257 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %258 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %257, i32 0, i32 6
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** %258, align 8
  %260 = load i16, i16* %10, align 2
  %261 = zext i16 %260 to i32
  %262 = load i16*, i16** %11, align 8
  %263 = load i16, i16* %262, align 2
  %264 = zext i16 %263 to i32
  %265 = add nsw i32 %261, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 0
  %269 = load i16, i16* %268, align 2
  %270 = zext i16 %269 to i32
  %271 = load i16, i16* %13, align 2
  %272 = zext i16 %271 to i32
  %273 = icmp eq i32 %270, %272
  br i1 %273, label %274, label %306

274:                                              ; preds = %256
  %275 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %276 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %275, i32 0, i32 6
  %277 = load %struct.TYPE_2__*, %struct.TYPE_2__** %276, align 8
  %278 = load i16, i16* %10, align 2
  %279 = zext i16 %278 to i32
  %280 = load i16*, i16** %11, align 8
  %281 = load i16, i16* %280, align 2
  %282 = zext i16 %281 to i32
  %283 = add nsw i32 %279, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 1
  %287 = load i16, i16* %286, align 2
  store i16 %287, i16* %14, align 2
  %288 = load i16, i16* %14, align 2
  %289 = zext i16 %288 to i32
  %290 = load i16, i16* %12, align 2
  %291 = zext i16 %290 to i32
  %292 = and i32 %289, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %274
  store i32 1, i32* %6, align 4
  br label %354

295:                                              ; preds = %274
  %296 = load i16*, i16** %11, align 8
  %297 = load i16, i16* %296, align 2
  %298 = zext i16 %297 to i32
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %295
  br label %306

301:                                              ; preds = %295
  br label %302

302:                                              ; preds = %301
  %303 = load i16*, i16** %11, align 8
  %304 = load i16, i16* %303, align 2
  %305 = add i16 %304, -1
  store i16 %305, i16* %303, align 2
  br label %256

306:                                              ; preds = %300, %256
  %307 = load i16*, i16** %11, align 8
  store i16 0, i16* %307, align 2
  br label %308

308:                                              ; preds = %349, %306
  %309 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %310 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %309, i32 0, i32 6
  %311 = load %struct.TYPE_2__*, %struct.TYPE_2__** %310, align 8
  %312 = load i16, i16* %10, align 2
  %313 = zext i16 %312 to i32
  %314 = load i16*, i16** %11, align 8
  %315 = load i16, i16* %314, align 2
  %316 = zext i16 %315 to i32
  %317 = add nsw i32 %313, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 0
  %321 = load i16, i16* %320, align 2
  %322 = zext i16 %321 to i32
  %323 = load i16, i16* %13, align 2
  %324 = zext i16 %323 to i32
  %325 = icmp ne i32 %322, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %308
  br label %353

327:                                              ; preds = %308
  %328 = load %struct.SiS_Private*, %struct.SiS_Private** %7, align 8
  %329 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %328, i32 0, i32 6
  %330 = load %struct.TYPE_2__*, %struct.TYPE_2__** %329, align 8
  %331 = load i16, i16* %10, align 2
  %332 = zext i16 %331 to i32
  %333 = load i16*, i16** %11, align 8
  %334 = load i16, i16* %333, align 2
  %335 = zext i16 %334 to i32
  %336 = add nsw i32 %332, %335
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %338, i32 0, i32 1
  %340 = load i16, i16* %339, align 2
  store i16 %340, i16* %14, align 2
  %341 = load i16, i16* %14, align 2
  %342 = zext i16 %341 to i32
  %343 = load i16, i16* %12, align 2
  %344 = zext i16 %343 to i32
  %345 = and i32 %342, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %327
  store i32 1, i32* %6, align 4
  br label %354

348:                                              ; preds = %327
  br label %349

349:                                              ; preds = %348
  %350 = load i16*, i16** %11, align 8
  %351 = load i16, i16* %350, align 2
  %352 = add i16 %351, 1
  store i16 %352, i16* %350, align 2
  br label %308

353:                                              ; preds = %326
  store i32 0, i32* %6, align 4
  br label %354

354:                                              ; preds = %353, %347, %294
  %355 = load i32, i32* %6, align 4
  ret i32 %355
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
