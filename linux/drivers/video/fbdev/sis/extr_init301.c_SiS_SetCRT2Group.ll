; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetCRT2Group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetCRT2Group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i8*, i32, i32, i32, i64, i32, i32, i32, i32, i64, i32, i64, i64, i64, i32 }

@ProgrammingCRT2 = common dso_local global i32 0, align 4
@LowModeTests = common dso_local global i32 0, align 4
@SIS_730 = common dso_local global i64 0, align 8
@DisableCRT2Display = common dso_local global i32 0, align 4
@VB_NoLCD = common dso_local global i32 0, align 4
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@SIS_315H = common dso_local global i64 0, align 8
@VB_SIS30xBLV = common dso_local global i32 0, align 4
@VB_SISVB = common dso_local global i32 0, align 4
@SetDOSMode = common dso_local global i32 0, align 4
@SetInSlaveMode = common dso_local global i32 0, align 4
@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@SetCRT2ToTV = common dso_local global i32 0, align 4
@CUT_BARCO1024 = common dso_local global i64 0, align 8
@CUT_BARCO1366 = common dso_local global i64 0, align 8
@SIS_661 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SiS_SetCRT2Group(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  %8 = load i32, i32* @ProgrammingCRT2, align 4
  %9 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %10 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %14 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %13, i32 0, i32 14
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %19 = call i32 @SiS_SearchModeID(%struct.SiS_Private* %18, i16* %5, i16* %6)
  br label %21

20:                                               ; preds = %2
  store i16 0, i16* %6, align 2
  br label %21

21:                                               ; preds = %20, %17
  %22 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %23 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %22, i32 0, i32 2
  store i32 4, i32* %23, align 4
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %25 = call i32 @SiS_UnLockCRT2(%struct.SiS_Private* %24)
  %26 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %27 = load i16, i16* %5, align 2
  %28 = load i16, i16* %6, align 2
  %29 = call zeroext i16 @SiS_GetRatePtr(%struct.SiS_Private* %26, i16 zeroext %27, i16 zeroext %28)
  store i16 %29, i16* %7, align 2
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %31 = load i16, i16* %5, align 2
  %32 = call i32 @SiS_SaveCRT2Info(%struct.SiS_Private* %30, i16 zeroext %31)
  %33 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %34 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @LowModeTests, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %21
  %40 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %41 = call i32 @SiS_DisableBridge(%struct.SiS_Private* %40)
  %42 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %43 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %48 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SIS_730, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %54 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @SiS_SetReg(i32 %55, i32 0, i32 128)
  br label %57

57:                                               ; preds = %52, %46, %39
  %58 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %59 = load i16, i16* %5, align 2
  %60 = load i16, i16* %6, align 2
  %61 = call i32 @SiS_SetCRT2ModeRegs(%struct.SiS_Private* %58, i16 zeroext %59, i16 zeroext %60)
  br label %62

62:                                               ; preds = %57, %21
  %63 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %64 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @DisableCRT2Display, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %71 = call i32 @SiS_LockCRT2(%struct.SiS_Private* %70)
  %72 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %73 = call i32 @SiS_DisplayOn(%struct.SiS_Private* %72)
  store i32 1, i32* %3, align 4
  br label %321

74:                                               ; preds = %62
  %75 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %76 = load i16, i16* %5, align 2
  %77 = load i16, i16* %6, align 2
  %78 = load i16, i16* %7, align 2
  %79 = call i32 @SiS_GetCRT2Data(%struct.SiS_Private* %75, i16 zeroext %76, i16 zeroext %77, i16 zeroext %78)
  %80 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %81 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %80, i32 0, i32 12
  store i64 0, i64* %81, align 8
  %82 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %83 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %82, i32 0, i32 13
  store i64 0, i64* %83, align 8
  %84 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %85 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %115, label %88

88:                                               ; preds = %74
  %89 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %90 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @VB_NoLCD, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %97 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SetCRT2ToLCD, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %115, label %102

102:                                              ; preds = %95, %88
  %103 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %104 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @SIS_315H, align 8
  %107 = icmp sge i64 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %102
  %109 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %110 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @VB_SIS30xBLV, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108, %95, %74
  %116 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %117 = load i16, i16* %5, align 2
  %118 = load i16, i16* %6, align 2
  %119 = load i16, i16* %7, align 2
  %120 = call i32 @SiS_GetLVDSDesData(%struct.SiS_Private* %116, i16 zeroext %117, i16 zeroext %118, i16 zeroext %119)
  br label %121

121:                                              ; preds = %115, %108, %102
  %122 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %123 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @LowModeTests, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %130 = load i16, i16* %5, align 2
  %131 = load i16, i16* %6, align 2
  %132 = load i16, i16* %7, align 2
  %133 = call i32 @SiS_SetGroup1(%struct.SiS_Private* %129, i16 zeroext %130, i16 zeroext %131, i16 zeroext %132)
  br label %134

134:                                              ; preds = %128, %121
  %135 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %136 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @VB_SISVB, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %221

141:                                              ; preds = %134
  %142 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %143 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @LowModeTests, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %220

148:                                              ; preds = %141
  %149 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %150 = load i16, i16* %5, align 2
  %151 = load i16, i16* %6, align 2
  %152 = load i16, i16* %7, align 2
  %153 = call i32 @SiS_SetGroup2(%struct.SiS_Private* %149, i16 zeroext %150, i16 zeroext %151, i16 zeroext %152)
  %154 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %155 = load i16, i16* %5, align 2
  %156 = load i16, i16* %6, align 2
  %157 = call i32 @SiS_SetGroup3(%struct.SiS_Private* %154, i16 zeroext %155, i16 zeroext %156)
  %158 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %159 = load i16, i16* %5, align 2
  %160 = load i16, i16* %6, align 2
  %161 = load i16, i16* %7, align 2
  %162 = call i32 @SiS_SetGroup4(%struct.SiS_Private* %158, i16 zeroext %159, i16 zeroext %160, i16 zeroext %161)
  %163 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %164 = load i16, i16* %5, align 2
  %165 = load i16, i16* %6, align 2
  %166 = call i32 @SiS_SetGroup5(%struct.SiS_Private* %163, i16 zeroext %164, i16 zeroext %165)
  %167 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %168 = load i16, i16* %5, align 2
  %169 = load i16, i16* %7, align 2
  %170 = call i32 @SiS_SetCRT2Sync(%struct.SiS_Private* %167, i16 zeroext %168, i16 zeroext %169)
  %171 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %172 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @VB_NoLCD, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %219

177:                                              ; preds = %148
  %178 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %179 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @SetCRT2ToLCD, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %219

184:                                              ; preds = %177
  %185 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %186 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @SetDOSMode, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %184
  %192 = load i16, i16* %5, align 2
  %193 = zext i16 %192 to i32
  %194 = icmp eq i32 %193, 3
  br i1 %194, label %213, label %195

195:                                              ; preds = %191
  %196 = load i16, i16* %5, align 2
  %197 = zext i16 %196 to i32
  %198 = icmp eq i32 %197, 16
  br i1 %198, label %213, label %199

199:                                              ; preds = %195, %184
  %200 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %201 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @SetInSlaveMode, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %199
  %207 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %208 = load i16, i16* %5, align 2
  %209 = load i16, i16* %6, align 2
  %210 = load i16, i16* %7, align 2
  %211 = call i32 @SiS_ModCRT1CRTC(%struct.SiS_Private* %207, i16 zeroext %208, i16 zeroext %209, i16 zeroext %210)
  br label %212

212:                                              ; preds = %206, %199
  br label %213

213:                                              ; preds = %212, %195, %191
  %214 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %215 = load i16, i16* %5, align 2
  %216 = load i16, i16* %6, align 2
  %217 = load i16, i16* %7, align 2
  %218 = call i32 @SiS_SetCRT2ECLK(%struct.SiS_Private* %214, i16 zeroext %215, i16 zeroext %216, i16 zeroext %217)
  br label %219

219:                                              ; preds = %213, %177, %148
  br label %220

220:                                              ; preds = %219, %141
  br label %279

221:                                              ; preds = %134
  %222 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %223 = load i16, i16* %5, align 2
  %224 = load i16, i16* %7, align 2
  %225 = call i32 @SiS_SetCRT2Sync(%struct.SiS_Private* %222, i16 zeroext %223, i16 zeroext %224)
  %226 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %227 = load i16, i16* %5, align 2
  %228 = load i16, i16* %6, align 2
  %229 = load i16, i16* %7, align 2
  %230 = call i32 @SiS_ModCRT1CRTC(%struct.SiS_Private* %226, i16 zeroext %227, i16 zeroext %228, i16 zeroext %229)
  %231 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %232 = load i16, i16* %5, align 2
  %233 = load i16, i16* %6, align 2
  %234 = load i16, i16* %7, align 2
  %235 = call i32 @SiS_SetCRT2ECLK(%struct.SiS_Private* %231, i16 zeroext %232, i16 zeroext %233, i16 zeroext %234)
  %236 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %237 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @LowModeTests, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %278

242:                                              ; preds = %221
  %243 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %244 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %243, i32 0, i32 7
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %277

247:                                              ; preds = %242
  %248 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %249 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @SetCRT2ToLCD, align 4
  %252 = load i32, i32* @SetCRT2ToLCDA, align 4
  %253 = or i32 %251, %252
  %254 = and i32 %250, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %247
  %257 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %258 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 8
  %260 = icmp eq i32 %259, 2
  br i1 %260, label %261, label %262

261:                                              ; preds = %256
  br label %262

262:                                              ; preds = %261, %256
  br label %263

263:                                              ; preds = %262, %247
  %264 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %265 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @SetCRT2ToTV, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %263
  %271 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %272 = load i16, i16* %5, align 2
  %273 = load i16, i16* %6, align 2
  %274 = load i16, i16* %7, align 2
  %275 = call i32 @SiS_SetCHTVReg(%struct.SiS_Private* %271, i16 zeroext %272, i16 zeroext %273, i16 zeroext %274)
  br label %276

276:                                              ; preds = %270, %263
  br label %277

277:                                              ; preds = %276, %242
  br label %278

278:                                              ; preds = %277, %221
  br label %279

279:                                              ; preds = %278, %220
  %280 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %281 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @LowModeTests, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %279
  %287 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %288 = call i32 @SiS_EnableBridge(%struct.SiS_Private* %287)
  br label %289

289:                                              ; preds = %286, %279
  %290 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %291 = call i32 @SiS_DisplayOn(%struct.SiS_Private* %290)
  %292 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %293 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %292, i32 0, i32 7
  %294 = load i32, i32* %293, align 8
  %295 = icmp eq i32 %294, 1
  br i1 %295, label %296, label %310

296:                                              ; preds = %289
  %297 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %298 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %297, i32 0, i32 5
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @SetCRT2ToTV, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %296
  %304 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %305 = call i32 @SiS_SetRegSR11ANDOR(%struct.SiS_Private* %304, i32 255, i32 12)
  br label %309

306:                                              ; preds = %296
  %307 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %308 = call i32 @SiS_SetCH70xxANDOR(%struct.SiS_Private* %307, i32 14, i32 1, i32 248)
  br label %309

309:                                              ; preds = %306, %303
  br label %310

310:                                              ; preds = %309, %289
  %311 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %312 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @LowModeTests, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %310
  %318 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %319 = call i32 @SiS_LockCRT2(%struct.SiS_Private* %318)
  br label %320

320:                                              ; preds = %317, %310
  store i32 1, i32* %3, align 4
  br label %321

321:                                              ; preds = %320, %69
  %322 = load i32, i32* %3, align 4
  ret i32 %322
}

declare dso_local i32 @SiS_SearchModeID(%struct.SiS_Private*, i16*, i16*) #1

declare dso_local i32 @SiS_UnLockCRT2(%struct.SiS_Private*) #1

declare dso_local zeroext i16 @SiS_GetRatePtr(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SaveCRT2Info(%struct.SiS_Private*, i16 zeroext) #1

declare dso_local i32 @SiS_DisableBridge(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i32) #1

declare dso_local i32 @SiS_SetCRT2ModeRegs(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_LockCRT2(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_DisplayOn(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_GetCRT2Data(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_GetLVDSDesData(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetGroup1(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetGroup2(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetGroup3(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetGroup4(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetGroup5(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetCRT2Sync(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_ModCRT1CRTC(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetCRT2ECLK(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetCHTVReg(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_EnableBridge(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetRegSR11ANDOR(%struct.SiS_Private*, i32, i32) #1

declare dso_local i32 @SiS_SetCH70xxANDOR(%struct.SiS_Private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
