; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_GetVCLK2Ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_GetVCLK2Ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32, i64, i16, i32, i16, i32, i32, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { i16, i16 }
%struct.TYPE_5__ = type { i16, i16 }
%struct.TYPE_4__ = type { i16 }

@ProgrammingCRT2 = common dso_local global i32 0, align 4
@VB_SISVB = common dso_local global i32 0, align 4
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@SIS_315H = common dso_local global i64 0, align 8
@DontExpandLCD = common dso_local global i32 0, align 4
@LCDPass11 = common dso_local global i32 0, align 4
@VCLK_720x480 = common dso_local global i16 0, align 2
@VCLK_720x576 = common dso_local global i16 0, align 2
@VCLK_768x576 = common dso_local global i16 0, align 2
@VCLK_848x480 = common dso_local global i16 0, align 2
@VCLK_856x480 = common dso_local global i16 0, align 2
@VCLK_800x480 = common dso_local global i16 0, align 2
@VCLK_1024x576 = common dso_local global i16 0, align 2
@VCLK_1152x864 = common dso_local global i16 0, align 2
@VCLK_1280x720 = common dso_local global i16 0, align 2
@VCLK_1360x768 = common dso_local global i16 0, align 2
@SIS_315PRO = common dso_local global i64 0, align 8
@SetCRT2ToTV = common dso_local global i32 0, align 4
@SetCRT2ToHiVision = common dso_local global i32 0, align 4
@TVRPLLDIV2XO = common dso_local global i32 0, align 4
@HiTVVCLKDIV2 = common dso_local global i16 0, align 2
@HiTVVCLK = common dso_local global i16 0, align 2
@TVSetTVSimuMode = common dso_local global i32 0, align 4
@HiTVSimuVCLK = common dso_local global i16 0, align 2
@TVSetYPbPr750p = common dso_local global i32 0, align 4
@YPbPr750pVCLK = common dso_local global i16 0, align 2
@TVSetYPbPr525p = common dso_local global i32 0, align 4
@TVVCLKDIV2 = common dso_local global i16 0, align 2
@TVVCLK = common dso_local global i16 0, align 2
@TVCLKBASE_300 = common dso_local global i64 0, align 8
@TVCLKBASE_315 = common dso_local global i64 0, align 8
@SIS_630 = common dso_local global i64 0, align 8
@SIS_300 = common dso_local global i64 0, align 8
@TVSetCHOverScan = common dso_local global i32 0, align 4
@TVSetPAL = common dso_local global i32 0, align 4
@ModeVGA = common dso_local global i64 0, align 8
@TVSetPALM = common dso_local global i32 0, align 4
@TVSetPALN = common dso_local global i32 0, align 4
@CUT_BARCO1366 = common dso_local global i64 0, align 8
@CUT_PANEL848 = common dso_local global i64 0, align 8
@CUT_PANEL856 = common dso_local global i64 0, align 8
@SIS_730 = common dso_local global i64 0, align 8
@VCLK34_300 = common dso_local global i16 0, align 2
@VCLK34_315 = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @SiS_GetVCLK2Ptr(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i8*, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  store i16 0, i16* %10, align 2
  store i16 0, i16* %11, align 2
  store i16 0, i16* %12, align 2
  store i8* null, i8** %15, align 8
  %16 = load i16, i16* %6, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp sle i32 %17, 19
  br i1 %18, label %19, label %45

19:                                               ; preds = %4
  %20 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %21 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %20, i32 0, i32 22
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i16, i16* %7, align 2
  %24 = zext i16 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i16, i16* %26, align 2
  store i16 %27, i16* %13, align 2
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %29 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %28, i32 0, i32 22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i16, i16* %7, align 2
  %32 = zext i16 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i16, i16* %34, align 2
  store i16 %35, i16* %9, align 2
  %36 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %37 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %36, i32 0, i32 27
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 2
  %40 = call i32 @SiS_GetRegByte(i64 %39)
  %41 = ashr i32 %40, 2
  %42 = and i32 %41, 3
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %11, align 2
  %44 = load i16, i16* %11, align 2
  store i16 %44, i16* %12, align 2
  br label %89

45:                                               ; preds = %4
  %46 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %47 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %46, i32 0, i32 26
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i16, i16* %7, align 2
  %50 = zext i16 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i16, i16* %52, align 2
  store i16 %53, i16* %13, align 2
  %54 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %55 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %54, i32 0, i32 25
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i16, i16* %8, align 2
  %58 = zext i16 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i16, i16* %60, align 2
  store i16 %61, i16* %9, align 2
  %62 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %63 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %62, i32 0, i32 25
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i16, i16* %8, align 2
  %66 = zext i16 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i16, i16* %68, align 2
  store i16 %69, i16* %11, align 2
  %70 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %71 = load i16, i16* %8, align 2
  %72 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %73 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ProgrammingCRT2, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %45
  %79 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %80 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %79, i32 0, i32 24
  %81 = load i32, i32* %80, align 4
  br label %86

82:                                               ; preds = %45
  %83 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %84 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %83, i32 0, i32 23
  %85 = load i32, i32* %84, align 8
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi i32 [ %81, %78 ], [ %85, %82 ]
  %88 = call zeroext i16 @SiS_GetRefCRTVCLK(%struct.SiS_Private* %70, i16 zeroext %71, i32 %87)
  store i16 %88, i16* %12, align 2
  br label %89

89:                                               ; preds = %86, %19
  %90 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %91 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @VB_SISVB, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %403

96:                                               ; preds = %89
  %97 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %98 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ProgrammingCRT2, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %370

103:                                              ; preds = %96
  %104 = load i16, i16* %9, align 2
  %105 = zext i16 %104 to i32
  %106 = ashr i32 %105, 6
  %107 = trunc i32 %106 to i16
  store i16 %107, i16* %9, align 2
  %108 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %109 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @SetCRT2ToLCD, align 4
  %112 = load i32, i32* @SetCRT2ToLCDA, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %110, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %246

116:                                              ; preds = %103
  %117 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %118 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @SIS_315H, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %116
  %123 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %124 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %123, i32 0, i32 4
  %125 = load i16, i16* %124, align 8
  store i16 %125, i16* %10, align 2
  %126 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %127 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @DontExpandLCD, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %122
  %133 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %134 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @LCDPass11, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load i16, i16* %11, align 2
  store i16 %140, i16* %10, align 2
  br label %141

141:                                              ; preds = %139, %132, %122
  br label %245

142:                                              ; preds = %116
  %143 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %144 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %143, i32 0, i32 6
  %145 = load i16, i16* %144, align 8
  store i16 %145, i16* %10, align 2
  %146 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %147 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @DontExpandLCD, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %244

152:                                              ; preds = %142
  %153 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %154 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @LCDPass11, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %244

159:                                              ; preds = %152
  %160 = load i16, i16* %13, align 2
  %161 = zext i16 %160 to i32
  switch i32 %161, label %182 [
    i32 133, label %162
    i32 132, label %164
    i32 131, label %166
    i32 129, label %168
    i32 128, label %170
    i32 130, label %172
    i32 137, label %174
    i32 136, label %176
    i32 135, label %178
    i32 134, label %180
  ]

162:                                              ; preds = %159
  %163 = load i16, i16* @VCLK_720x480, align 2
  store i16 %163, i16* %10, align 2
  br label %184

164:                                              ; preds = %159
  %165 = load i16, i16* @VCLK_720x576, align 2
  store i16 %165, i16* %10, align 2
  br label %184

166:                                              ; preds = %159
  %167 = load i16, i16* @VCLK_768x576, align 2
  store i16 %167, i16* %10, align 2
  br label %184

168:                                              ; preds = %159
  %169 = load i16, i16* @VCLK_848x480, align 2
  store i16 %169, i16* %10, align 2
  br label %184

170:                                              ; preds = %159
  %171 = load i16, i16* @VCLK_856x480, align 2
  store i16 %171, i16* %10, align 2
  br label %184

172:                                              ; preds = %159
  %173 = load i16, i16* @VCLK_800x480, align 2
  store i16 %173, i16* %10, align 2
  br label %184

174:                                              ; preds = %159
  %175 = load i16, i16* @VCLK_1024x576, align 2
  store i16 %175, i16* %10, align 2
  br label %184

176:                                              ; preds = %159
  %177 = load i16, i16* @VCLK_1152x864, align 2
  store i16 %177, i16* %10, align 2
  br label %184

178:                                              ; preds = %159
  %179 = load i16, i16* @VCLK_1280x720, align 2
  store i16 %179, i16* %10, align 2
  br label %184

180:                                              ; preds = %159
  %181 = load i16, i16* @VCLK_1360x768, align 2
  store i16 %181, i16* %10, align 2
  br label %184

182:                                              ; preds = %159
  %183 = load i16, i16* %11, align 2
  store i16 %183, i16* %10, align 2
  br label %184

184:                                              ; preds = %182, %180, %178, %176, %174, %172, %170, %168, %166, %164, %162
  %185 = load i16, i16* %6, align 2
  %186 = zext i16 %185 to i32
  %187 = icmp sle i32 %186, 19
  br i1 %187, label %188, label %221

188:                                              ; preds = %184
  %189 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %190 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @SIS_315PRO, align 8
  %193 = icmp sle i64 %191, %192
  br i1 %193, label %194, label %207

194:                                              ; preds = %188
  %195 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %196 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %195, i32 0, i32 22
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = load i16, i16* %7, align 2
  %199 = zext i16 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  %202 = load i16, i16* %201, align 2
  %203 = zext i16 %202 to i32
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %206

205:                                              ; preds = %194
  store i16 66, i16* %10, align 2
  br label %206

206:                                              ; preds = %205, %194
  br label %220

207:                                              ; preds = %188
  %208 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %209 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %208, i32 0, i32 22
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = load i16, i16* %7, align 2
  %212 = zext i16 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 1
  %215 = load i16, i16* %214, align 2
  %216 = zext i16 %215 to i32
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %219

218:                                              ; preds = %207
  store i16 0, i16* %10, align 2
  br label %219

219:                                              ; preds = %218, %207
  br label %220

220:                                              ; preds = %219, %206
  br label %221

221:                                              ; preds = %220, %184
  %222 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %223 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @SIS_315PRO, align 8
  %226 = icmp sle i64 %224, %225
  br i1 %226, label %227, label %243

227:                                              ; preds = %221
  %228 = load i16, i16* %10, align 2
  %229 = zext i16 %228 to i32
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %227
  store i16 65, i16* %10, align 2
  br label %232

232:                                              ; preds = %231, %227
  %233 = load i16, i16* %10, align 2
  %234 = zext i16 %233 to i32
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  store i16 67, i16* %10, align 2
  br label %237

237:                                              ; preds = %236, %232
  %238 = load i16, i16* %10, align 2
  %239 = zext i16 %238 to i32
  %240 = icmp eq i32 %239, 4
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  store i16 68, i16* %10, align 2
  br label %242

242:                                              ; preds = %241, %237
  br label %243

243:                                              ; preds = %242, %221
  br label %244

244:                                              ; preds = %243, %152, %142
  br label %245

245:                                              ; preds = %244, %141
  br label %369

246:                                              ; preds = %103
  %247 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %248 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @SetCRT2ToTV, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %332

253:                                              ; preds = %246
  %254 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %255 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @SetCRT2ToHiVision, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %281

260:                                              ; preds = %253
  %261 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %262 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %261, i32 0, i32 7
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @TVRPLLDIV2XO, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %260
  %268 = load i16, i16* @HiTVVCLKDIV2, align 2
  store i16 %268, i16* %10, align 2
  br label %271

269:                                              ; preds = %260
  %270 = load i16, i16* @HiTVVCLK, align 2
  store i16 %270, i16* %10, align 2
  br label %271

271:                                              ; preds = %269, %267
  %272 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %273 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %272, i32 0, i32 7
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @TVSetTVSimuMode, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %271
  %279 = load i16, i16* @HiTVSimuVCLK, align 2
  store i16 %279, i16* %10, align 2
  br label %280

280:                                              ; preds = %278, %271
  br label %313

281:                                              ; preds = %253
  %282 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %283 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %282, i32 0, i32 7
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @TVSetYPbPr750p, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %281
  %289 = load i16, i16* @YPbPr750pVCLK, align 2
  store i16 %289, i16* %10, align 2
  br label %312

290:                                              ; preds = %281
  %291 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %292 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %291, i32 0, i32 7
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @TVSetYPbPr525p, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %290
  %298 = load i16, i16* @TVVCLKDIV2, align 2
  store i16 %298, i16* %10, align 2
  br label %311

299:                                              ; preds = %290
  %300 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %301 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @TVRPLLDIV2XO, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %299
  %307 = load i16, i16* @TVVCLKDIV2, align 2
  store i16 %307, i16* %10, align 2
  br label %310

308:                                              ; preds = %299
  %309 = load i16, i16* @TVVCLK, align 2
  store i16 %309, i16* %10, align 2
  br label %310

310:                                              ; preds = %308, %306
  br label %311

311:                                              ; preds = %310, %297
  br label %312

312:                                              ; preds = %311, %288
  br label %313

313:                                              ; preds = %312, %280
  %314 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %315 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %314, i32 0, i32 3
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @SIS_315H, align 8
  %318 = icmp slt i64 %316, %317
  br i1 %318, label %319, label %325

319:                                              ; preds = %313
  %320 = load i64, i64* @TVCLKBASE_300, align 8
  %321 = load i16, i16* %10, align 2
  %322 = zext i16 %321 to i64
  %323 = add nsw i64 %322, %320
  %324 = trunc i64 %323 to i16
  store i16 %324, i16* %10, align 2
  br label %331

325:                                              ; preds = %313
  %326 = load i64, i64* @TVCLKBASE_315, align 8
  %327 = load i16, i16* %10, align 2
  %328 = zext i16 %327 to i64
  %329 = add nsw i64 %328, %326
  %330 = trunc i64 %329 to i16
  store i16 %330, i16* %10, align 2
  br label %331

331:                                              ; preds = %325, %319
  br label %368

332:                                              ; preds = %246
  %333 = load i16, i16* %12, align 2
  store i16 %333, i16* %10, align 2
  %334 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %335 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %334, i32 0, i32 3
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @SIS_315H, align 8
  %338 = icmp slt i64 %336, %337
  br i1 %338, label %339, label %367

339:                                              ; preds = %332
  %340 = load i16, i16* %6, align 2
  %341 = zext i16 %340 to i32
  %342 = icmp sgt i32 %341, 19
  br i1 %342, label %343, label %366

343:                                              ; preds = %339
  %344 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %345 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %344, i32 0, i32 3
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @SIS_630, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %360

349:                                              ; preds = %343
  %350 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %351 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %350, i32 0, i32 8
  %352 = load i32, i32* %351, align 8
  %353 = icmp sge i32 %352, 48
  br i1 %353, label %354, label %360

354:                                              ; preds = %349
  %355 = load i16, i16* %10, align 2
  %356 = zext i16 %355 to i32
  %357 = icmp eq i32 %356, 20
  br i1 %357, label %358, label %359

358:                                              ; preds = %354
  store i16 52, i16* %10, align 2
  br label %359

359:                                              ; preds = %358, %354
  br label %360

360:                                              ; preds = %359, %349, %343
  %361 = load i16, i16* %10, align 2
  %362 = zext i16 %361 to i32
  %363 = icmp eq i32 %362, 23
  br i1 %363, label %364, label %365

364:                                              ; preds = %360
  store i16 69, i16* %10, align 2
  br label %365

365:                                              ; preds = %364, %360
  br label %366

366:                                              ; preds = %365, %339
  br label %367

367:                                              ; preds = %366, %332
  br label %368

368:                                              ; preds = %367, %331
  br label %369

369:                                              ; preds = %368, %245
  br label %402

370:                                              ; preds = %96
  %371 = load i16, i16* %12, align 2
  store i16 %371, i16* %10, align 2
  %372 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %373 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %372, i32 0, i32 3
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @SIS_315H, align 8
  %376 = icmp slt i64 %374, %375
  br i1 %376, label %377, label %401

377:                                              ; preds = %370
  %378 = load i16, i16* %6, align 2
  %379 = zext i16 %378 to i32
  %380 = icmp sgt i32 %379, 19
  br i1 %380, label %381, label %400

381:                                              ; preds = %377
  %382 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %383 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %382, i32 0, i32 3
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* @SIS_630, align 8
  %386 = icmp ne i64 %384, %385
  br i1 %386, label %387, label %399

387:                                              ; preds = %381
  %388 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %389 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %388, i32 0, i32 3
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @SIS_300, align 8
  %392 = icmp ne i64 %390, %391
  br i1 %392, label %393, label %399

393:                                              ; preds = %387
  %394 = load i16, i16* %10, align 2
  %395 = zext i16 %394 to i32
  %396 = icmp eq i32 %395, 27
  br i1 %396, label %397, label %398

397:                                              ; preds = %393
  store i16 72, i16* %10, align 2
  br label %398

398:                                              ; preds = %397, %393
  br label %399

399:                                              ; preds = %398, %387, %381
  br label %400

400:                                              ; preds = %399, %377
  br label %401

401:                                              ; preds = %400, %370
  br label %402

402:                                              ; preds = %401, %369
  br label %643

403:                                              ; preds = %89
  %404 = load i16, i16* %9, align 2
  store i16 %404, i16* %10, align 2
  %405 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %406 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = load i32, i32* @ProgrammingCRT2, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %610

411:                                              ; preds = %403
  %412 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %413 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %412, i32 0, i32 9
  %414 = load i64, i64* %413, align 8
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %555

416:                                              ; preds = %411
  %417 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %418 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = load i32, i32* @SetCRT2ToTV, align 4
  %421 = and i32 %419, %420
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %555

423:                                              ; preds = %416
  %424 = load i16, i16* %10, align 2
  %425 = zext i16 %424 to i32
  %426 = and i32 %425, 31
  %427 = trunc i32 %426 to i16
  store i16 %427, i16* %10, align 2
  store i16 0, i16* %14, align 2
  %428 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %429 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %428, i32 0, i32 7
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* @TVSetCHOverScan, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %439

434:                                              ; preds = %423
  %435 = load i16, i16* %14, align 2
  %436 = zext i16 %435 to i32
  %437 = add nsw i32 %436, 1
  %438 = trunc i32 %437 to i16
  store i16 %438, i16* %14, align 2
  br label %439

439:                                              ; preds = %434, %423
  %440 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %441 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %440, i32 0, i32 7
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* @TVSetPAL, align 4
  %444 = and i32 %442, %443
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %505

446:                                              ; preds = %439
  %447 = load i16, i16* %14, align 2
  %448 = zext i16 %447 to i32
  %449 = add nsw i32 %448, 2
  %450 = trunc i32 %449 to i16
  store i16 %450, i16* %14, align 2
  %451 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %452 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %451, i32 0, i32 10
  %453 = load i64, i64* %452, align 8
  %454 = load i64, i64* @ModeVGA, align 8
  %455 = icmp sgt i64 %453, %454
  br i1 %455, label %456, label %463

456:                                              ; preds = %446
  %457 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %458 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %457, i32 0, i32 21
  %459 = load i64, i64* %458, align 8
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %456
  store i16 8, i16* %14, align 2
  br label %462

462:                                              ; preds = %461, %456
  br label %463

463:                                              ; preds = %462, %446
  %464 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %465 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %464, i32 0, i32 7
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* @TVSetPALM, align 4
  %468 = and i32 %466, %467
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %483

470:                                              ; preds = %463
  store i16 4, i16* %14, align 2
  %471 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %472 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %471, i32 0, i32 7
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* @TVSetCHOverScan, align 4
  %475 = and i32 %473, %474
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %482

477:                                              ; preds = %470
  %478 = load i16, i16* %14, align 2
  %479 = zext i16 %478 to i32
  %480 = add nsw i32 %479, 1
  %481 = trunc i32 %480 to i16
  store i16 %481, i16* %14, align 2
  br label %482

482:                                              ; preds = %477, %470
  br label %504

483:                                              ; preds = %463
  %484 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %485 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %484, i32 0, i32 7
  %486 = load i32, i32* %485, align 4
  %487 = load i32, i32* @TVSetPALN, align 4
  %488 = and i32 %486, %487
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %503

490:                                              ; preds = %483
  store i16 6, i16* %14, align 2
  %491 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %492 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %491, i32 0, i32 7
  %493 = load i32, i32* %492, align 4
  %494 = load i32, i32* @TVSetCHOverScan, align 4
  %495 = and i32 %493, %494
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %502

497:                                              ; preds = %490
  %498 = load i16, i16* %14, align 2
  %499 = zext i16 %498 to i32
  %500 = add nsw i32 %499, 1
  %501 = trunc i32 %500 to i16
  store i16 %501, i16* %14, align 2
  br label %502

502:                                              ; preds = %497, %490
  br label %503

503:                                              ; preds = %502, %483
  br label %504

504:                                              ; preds = %503, %482
  br label %505

505:                                              ; preds = %504, %439
  %506 = load i16, i16* %14, align 2
  %507 = zext i16 %506 to i32
  switch i32 %507, label %544 [
    i32 0, label %508
    i32 1, label %512
    i32 2, label %516
    i32 3, label %520
    i32 4, label %524
    i32 5, label %528
    i32 6, label %532
    i32 7, label %536
    i32 8, label %540
  ]

508:                                              ; preds = %505
  %509 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %510 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %509, i32 0, i32 11
  %511 = load i8*, i8** %510, align 8
  store i8* %511, i8** %15, align 8
  br label %548

512:                                              ; preds = %505
  %513 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %514 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %513, i32 0, i32 12
  %515 = load i8*, i8** %514, align 8
  store i8* %515, i8** %15, align 8
  br label %548

516:                                              ; preds = %505
  %517 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %518 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %517, i32 0, i32 13
  %519 = load i8*, i8** %518, align 8
  store i8* %519, i8** %15, align 8
  br label %548

520:                                              ; preds = %505
  %521 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %522 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %521, i32 0, i32 14
  %523 = load i8*, i8** %522, align 8
  store i8* %523, i8** %15, align 8
  br label %548

524:                                              ; preds = %505
  %525 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %526 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %525, i32 0, i32 15
  %527 = load i8*, i8** %526, align 8
  store i8* %527, i8** %15, align 8
  br label %548

528:                                              ; preds = %505
  %529 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %530 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %529, i32 0, i32 16
  %531 = load i8*, i8** %530, align 8
  store i8* %531, i8** %15, align 8
  br label %548

532:                                              ; preds = %505
  %533 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %534 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %533, i32 0, i32 17
  %535 = load i8*, i8** %534, align 8
  store i8* %535, i8** %15, align 8
  br label %548

536:                                              ; preds = %505
  %537 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %538 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %537, i32 0, i32 18
  %539 = load i8*, i8** %538, align 8
  store i8* %539, i8** %15, align 8
  br label %548

540:                                              ; preds = %505
  %541 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %542 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %541, i32 0, i32 19
  %543 = load i8*, i8** %542, align 8
  store i8* %543, i8** %15, align 8
  br label %548

544:                                              ; preds = %505
  %545 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %546 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %545, i32 0, i32 14
  %547 = load i8*, i8** %546, align 8
  store i8* %547, i8** %15, align 8
  br label %548

548:                                              ; preds = %544, %540, %536, %532, %528, %524, %520, %516, %512, %508
  %549 = load i8*, i8** %15, align 8
  %550 = load i16, i16* %10, align 2
  %551 = zext i16 %550 to i64
  %552 = getelementptr inbounds i8, i8* %549, i64 %551
  %553 = load i8, i8* %552, align 1
  %554 = zext i8 %553 to i16
  store i16 %554, i16* %10, align 2
  br label %609

555:                                              ; preds = %416, %411
  %556 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %557 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %556, i32 0, i32 2
  %558 = load i32, i32* %557, align 8
  %559 = load i32, i32* @SetCRT2ToLCD, align 4
  %560 = and i32 %558, %559
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %562, label %577

562:                                              ; preds = %555
  %563 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %564 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %563, i32 0, i32 3
  %565 = load i64, i64* %564, align 8
  %566 = load i64, i64* @SIS_315H, align 8
  %567 = icmp slt i64 %565, %566
  br i1 %567, label %568, label %572

568:                                              ; preds = %562
  %569 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %570 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %569, i32 0, i32 4
  %571 = load i16, i16* %570, align 8
  store i16 %571, i16* %10, align 2
  br label %576

572:                                              ; preds = %562
  %573 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %574 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %573, i32 0, i32 6
  %575 = load i16, i16* %574, align 8
  store i16 %575, i16* %10, align 2
  br label %576

576:                                              ; preds = %572, %568
  br label %608

577:                                              ; preds = %555
  %578 = load i16, i16* %12, align 2
  store i16 %578, i16* %10, align 2
  %579 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %580 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %579, i32 0, i32 3
  %581 = load i64, i64* %580, align 8
  %582 = load i64, i64* @SIS_315H, align 8
  %583 = icmp slt i64 %581, %582
  br i1 %583, label %584, label %607

584:                                              ; preds = %577
  %585 = load i16, i16* %6, align 2
  %586 = zext i16 %585 to i32
  %587 = icmp sgt i32 %586, 19
  br i1 %587, label %588, label %606

588:                                              ; preds = %584
  %589 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %590 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %589, i32 0, i32 3
  %591 = load i64, i64* %590, align 8
  %592 = load i64, i64* @SIS_630, align 8
  %593 = icmp eq i64 %591, %592
  br i1 %593, label %594, label %605

594:                                              ; preds = %588
  %595 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %596 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %595, i32 0, i32 8
  %597 = load i32, i32* %596, align 8
  %598 = icmp sge i32 %597, 48
  br i1 %598, label %599, label %605

599:                                              ; preds = %594
  %600 = load i16, i16* %10, align 2
  %601 = zext i16 %600 to i32
  %602 = icmp eq i32 %601, 20
  br i1 %602, label %603, label %604

603:                                              ; preds = %599
  store i16 46, i16* %10, align 2
  br label %604

604:                                              ; preds = %603, %599
  br label %605

605:                                              ; preds = %604, %594, %588
  br label %606

606:                                              ; preds = %605, %584
  br label %607

607:                                              ; preds = %606, %577
  br label %608

608:                                              ; preds = %607, %576
  br label %609

609:                                              ; preds = %608, %548
  br label %642

610:                                              ; preds = %403
  %611 = load i16, i16* %12, align 2
  store i16 %611, i16* %10, align 2
  %612 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %613 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %612, i32 0, i32 3
  %614 = load i64, i64* %613, align 8
  %615 = load i64, i64* @SIS_315H, align 8
  %616 = icmp slt i64 %614, %615
  br i1 %616, label %617, label %641

617:                                              ; preds = %610
  %618 = load i16, i16* %6, align 2
  %619 = zext i16 %618 to i32
  %620 = icmp sgt i32 %619, 19
  br i1 %620, label %621, label %640

621:                                              ; preds = %617
  %622 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %623 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %622, i32 0, i32 3
  %624 = load i64, i64* %623, align 8
  %625 = load i64, i64* @SIS_630, align 8
  %626 = icmp ne i64 %624, %625
  br i1 %626, label %627, label %639

627:                                              ; preds = %621
  %628 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %629 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %628, i32 0, i32 3
  %630 = load i64, i64* %629, align 8
  %631 = load i64, i64* @SIS_300, align 8
  %632 = icmp ne i64 %630, %631
  br i1 %632, label %633, label %639

633:                                              ; preds = %627
  %634 = load i16, i16* %10, align 2
  %635 = zext i16 %634 to i32
  %636 = icmp eq i32 %635, 27
  br i1 %636, label %637, label %638

637:                                              ; preds = %633
  store i16 72, i16* %10, align 2
  br label %638

638:                                              ; preds = %637, %633
  br label %639

639:                                              ; preds = %638, %627, %621
  br label %640

640:                                              ; preds = %639, %617
  br label %641

641:                                              ; preds = %640, %610
  br label %642

642:                                              ; preds = %641, %609
  br label %643

643:                                              ; preds = %642, %402
  %644 = load i16, i16* %10, align 2
  ret i16 %644
}

declare dso_local i32 @SiS_GetRegByte(i64) #1

declare dso_local zeroext i16 @SiS_GetRefCRTVCLK(%struct.SiS_Private*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
