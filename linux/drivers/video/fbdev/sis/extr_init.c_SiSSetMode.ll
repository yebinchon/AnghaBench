; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiSSetMode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiSSetMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VB_SIS30xBLV = common dso_local global i32 0, align 4
@SIS_315H = common dso_local global i64 0, align 8
@SetSimuScanMode = common dso_local global i32 0, align 4
@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@SwitchCRT2 = common dso_local global i32 0, align 4
@VB_SISVB = common dso_local global i32 0, align 4
@SIS_630 = common dso_local global i64 0, align 8
@SIS_730 = common dso_local global i64 0, align 8
@IS_SIS650 = common dso_local global i64 0, align 8
@SetCRT2ToLCD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SiSSetMode(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  %10 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  %11 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %12 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %11, i32 0, i32 20
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  store i8 0, i8* %9, align 1
  %14 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %15 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %19 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %18, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %21 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i16 254, i16* %5, align 2
  br label %38

25:                                               ; preds = %2
  %26 = load i16, i16* %5, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 128
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %32 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %31, i32 0, i32 2
  store i32 1, i32* %32, align 8
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i16, i16* %5, align 2
  %35 = zext i16 %34 to i32
  %36 = and i32 %35, 127
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %5, align 2
  br label %38

38:                                               ; preds = %33, %24
  %39 = load i16, i16* %5, align 2
  store i16 %39, i16* %7, align 2
  %40 = load i16, i16* %5, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp eq i32 %41, 91
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i16 86, i16* %5, align 2
  br label %44

44:                                               ; preds = %43, %38
  %45 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %46 = call i32 @SiSInitPtr(%struct.SiS_Private* %45)
  %47 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @SiSRegInit(%struct.SiS_Private* %47, i32 %48)
  %50 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %51 = call i32 @SiS_GetSysFlags(%struct.SiS_Private* %50)
  %52 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %53 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %52, i32 0, i32 3
  store i32 17, i32* %53, align 4
  %54 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %55 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @SiS_GetReg(i32 %56, i32 5)
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %10, align 2
  %59 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %60 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @SiS_SetReg(i32 %61, i32 5, i32 134)
  %63 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %64 = call i32 @SiSInitPCIetc(%struct.SiS_Private* %63)
  %65 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %66 = call i32 @SiSSetLVDSetc(%struct.SiS_Private* %65)
  %67 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %68 = call i32 @SiSDetermineROMUsage(%struct.SiS_Private* %67)
  %69 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %70 = call i32 @SiS_UnLockCRT2(%struct.SiS_Private* %69)
  %71 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %72 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %44
  %76 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %77 = call i32 @SiS_SearchModeID(%struct.SiS_Private* %76, i16* %5, i16* %8)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %293

80:                                               ; preds = %75
  br label %82

81:                                               ; preds = %44
  store i16 0, i16* %8, align 2
  br label %82

82:                                               ; preds = %81, %80
  %83 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %84 = call i32 @SiS_GetVBType(%struct.SiS_Private* %83)
  %85 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %86 = call i32 @SiS_InitVB(%struct.SiS_Private* %85)
  %87 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %88 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @VB_SIS30xBLV, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %122

93:                                               ; preds = %82
  %94 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %95 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SIS_315H, align 8
  %98 = icmp sge i64 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %93
  %100 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %101 = call i32 @SiS_ResetVB(%struct.SiS_Private* %100)
  %102 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %103 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %102, i32 0, i32 10
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @SiS_SetRegOR(i32 %104, i32 50, i32 16)
  %106 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %107 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %106, i32 0, i32 19
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @SiS_SetRegOR(i32 %108, i32 0, i32 12)
  %110 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %111 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %110, i32 0, i32 11
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @SiS_GetReg(i32 %112, i32 56)
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %9, align 1
  br label %121

115:                                              ; preds = %93
  %116 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %117 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %116, i32 0, i32 11
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @SiS_GetReg(i32 %118, i32 53)
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %9, align 1
  br label %121

121:                                              ; preds = %115, %99
  br label %122

122:                                              ; preds = %121, %82
  %123 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %124 = load i16, i16* %5, align 2
  %125 = load i16, i16* %8, align 2
  %126 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %127 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 0, i32 1
  %132 = call i32 @SiS_GetVBInfo(%struct.SiS_Private* %123, i16 zeroext %124, i16 zeroext %125, i32 %131)
  %133 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %134 = call i32 @SiS_SetYPbPr(%struct.SiS_Private* %133)
  %135 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %136 = load i16, i16* %5, align 2
  %137 = load i16, i16* %8, align 2
  %138 = call i32 @SiS_SetTVMode(%struct.SiS_Private* %135, i16 zeroext %136, i16 zeroext %137)
  %139 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %140 = load i16, i16* %5, align 2
  %141 = load i16, i16* %8, align 2
  %142 = call i32 @SiS_GetLCDResInfo(%struct.SiS_Private* %139, i16 zeroext %140, i16 zeroext %141)
  %143 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %144 = load i16, i16* %5, align 2
  %145 = call i32 @SiS_SetLowModeTest(%struct.SiS_Private* %143, i16 zeroext %144)
  %146 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %147 = load i16, i16* %5, align 2
  %148 = load i16, i16* %8, align 2
  %149 = call i32 @SiS_CheckMemorySize(%struct.SiS_Private* %146, i16 zeroext %147, i16 zeroext %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %122
  store i32 0, i32* %3, align 4
  br label %293

152:                                              ; preds = %122
  %153 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %154 = call i32 @SiS_OpenCRTC(%struct.SiS_Private* %153)
  %155 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %156 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %152
  %160 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %161 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %160, i32 0, i32 1
  store i32 1, i32* %161, align 4
  %162 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %163 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %162, i32 0, i32 17
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %166 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %165, i32 0, i32 18
  store i32 %164, i32* %166, align 8
  %167 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %168 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %167, i32 0, i32 15
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %171 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %170, i32 0, i32 16
  store i32 %169, i32* %171, align 8
  br label %175

172:                                              ; preds = %152
  %173 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %174 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %173, i32 0, i32 1
  store i32 0, i32* %174, align 4
  br label %175

175:                                              ; preds = %172, %159
  %176 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %177 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @SetSimuScanMode, align 4
  %180 = load i32, i32* @SetCRT2ToLCDA, align 4
  %181 = or i32 %179, %180
  %182 = and i32 %178, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %175
  %185 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %186 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @SwitchCRT2, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %184, %175
  %192 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %193 = load i16, i16* %5, align 2
  %194 = load i16, i16* %8, align 2
  %195 = call i32 @SiS_SetCRT1Group(%struct.SiS_Private* %192, i16 zeroext %193, i16 zeroext %194)
  br label %196

196:                                              ; preds = %191, %184
  %197 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %198 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @SetSimuScanMode, align 4
  %201 = load i32, i32* @SwitchCRT2, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @SetCRT2ToLCDA, align 4
  %204 = or i32 %202, %203
  %205 = and i32 %199, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %234

207:                                              ; preds = %196
  %208 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %209 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @VB_SISVB, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %229, label %214

214:                                              ; preds = %207
  %215 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %216 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %229, label %219

219:                                              ; preds = %214
  %220 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %221 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %220, i32 0, i32 8
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %219
  %225 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %226 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %225, i32 0, i32 9
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %224, %219, %214, %207
  %230 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %231 = load i16, i16* %7, align 2
  %232 = call i32 @SiS_SetCRT2Group(%struct.SiS_Private* %230, i16 zeroext %231)
  br label %233

233:                                              ; preds = %229, %224
  br label %234

234:                                              ; preds = %233, %196
  %235 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %236 = call i32 @SiS_HandleCRT1(%struct.SiS_Private* %235)
  %237 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %238 = call i32 @SiS_StrangeStuff(%struct.SiS_Private* %237)
  %239 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %240 = call i32 @SiS_DisplayOn(%struct.SiS_Private* %239)
  %241 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %242 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %241, i32 0, i32 14
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @SiS_SetRegByte(i32 %243, i32 255)
  %245 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %246 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @VB_SIS30xBLV, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %279

251:                                              ; preds = %234
  %252 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %253 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %252, i32 0, i32 5
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @SIS_315H, align 8
  %256 = icmp sge i64 %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %251
  br label %278

258:                                              ; preds = %251
  %259 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %260 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %259, i32 0, i32 5
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @SIS_630, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %270, label %264

264:                                              ; preds = %258
  %265 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %266 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %265, i32 0, i32 5
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @SIS_730, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %277

270:                                              ; preds = %264, %258
  %271 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %272 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %271, i32 0, i32 11
  %273 = load i32, i32* %272, align 4
  %274 = load i8, i8* %9, align 1
  %275 = zext i8 %274 to i32
  %276 = call i32 @SiS_SetReg(i32 %273, i32 53, i32 %275)
  br label %277

277:                                              ; preds = %270, %264
  br label %278

278:                                              ; preds = %277, %257
  br label %279

279:                                              ; preds = %278, %234
  %280 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %281 = call i32 @SiS_CloseCRTC(%struct.SiS_Private* %280)
  %282 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %283 = call i32 @SiS_Handle760(%struct.SiS_Private* %282)
  %284 = load i16, i16* %10, align 2
  %285 = zext i16 %284 to i32
  %286 = icmp ne i32 %285, 161
  br i1 %286, label %287, label %292

287:                                              ; preds = %279
  %288 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %289 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %288, i32 0, i32 10
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @SiS_SetReg(i32 %290, i32 5, i32 0)
  br label %292

292:                                              ; preds = %287, %279
  store i32 1, i32* %3, align 4
  br label %293

293:                                              ; preds = %292, %151, %79
  %294 = load i32, i32* %3, align 4
  ret i32 %294
}

declare dso_local i32 @SiSInitPtr(%struct.SiS_Private*) #1

declare dso_local i32 @SiSRegInit(%struct.SiS_Private*, i32) #1

declare dso_local i32 @SiS_GetSysFlags(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_GetReg(i32, i32) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i32) #1

declare dso_local i32 @SiSInitPCIetc(%struct.SiS_Private*) #1

declare dso_local i32 @SiSSetLVDSetc(%struct.SiS_Private*) #1

declare dso_local i32 @SiSDetermineROMUsage(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_UnLockCRT2(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SearchModeID(%struct.SiS_Private*, i16*, i16*) #1

declare dso_local i32 @SiS_GetVBType(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_InitVB(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_ResetVB(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetRegOR(i32, i32, i32) #1

declare dso_local i32 @SiS_GetVBInfo(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i32) #1

declare dso_local i32 @SiS_SetYPbPr(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetTVMode(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_GetLCDResInfo(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetLowModeTest(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local i32 @SiS_CheckMemorySize(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_OpenCRTC(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetCRT1Group(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetCRT2Group(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local i32 @SiS_HandleCRT1(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_StrangeStuff(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_DisplayOn(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetRegByte(i32, i32) #1

declare dso_local i32 @SiS_CloseCRTC(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_Handle760(%struct.SiS_Private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
