; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_NoiseMonitor.c_odm_InbandNoise_Monitor_NSeries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_NoiseMonitor.c_odm_InbandNoise_Monitor_NSeries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i32* }
%struct.noise_level = type { i64*, i32*, i32*, i32* }

@jiffies = common dso_local global i32 0, align 4
@ODM_1T2R = common dso_local global i64 0, align 8
@ODM_2T2R = common dso_local global i64 0, align 8
@ODM_COMP_COMMON = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"odm_DebugControlInbandNoise_Nseries() ==>\0A\00", align 1
@ODM_PAUSE_DIG = common dso_local global i32 0, align 4
@rFPGA0_TxGainStage = common dso_local global i32 0, align 4
@BIT25 = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Noise Floor Report (0x8f8) = 0x%08x\0A\00", align 1
@ODM_RF_PATH_A = common dso_local global i64 0, align 8
@ODM_RF_PATH_B = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"value_a = 0x%x(%d), value_b = 0x%x(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"sval_a = %d, sval_b = %d\0A\00", align 1
@ValidCnt = common dso_local global i32 0, align 4
@Valid_Max = common dso_local global i32 0, align 4
@Valid_Min = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"RF_Path:%d Valid sval = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Sum of sval = %d,\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"After divided, RF_Path:%d , sum = %d\0A\00", align 1
@rOFDM0_XAAGCCore1 = common dso_local global i32 0, align 4
@bMaskByte0 = common dso_local global i32 0, align 4
@BIT7 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"0x%x = 0x%02x(%d)\0A\00", align 1
@rOFDM0_XBAGCCore1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"noise_a = %d, noise_b = %d\0A\00", align 1
@ODM_RESUME_DIG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [43 x i8] c"odm_DebugControlInbandNoise_Nseries() <==\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i64, i64, i32)* @odm_InbandNoise_Monitor_NSeries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @odm_InbandNoise_Monitor_NSeries(%struct.TYPE_7__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.noise_level, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* @jiffies, align 4
  store i32 %19, i32* %17, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ODM_1T2R, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ODM_2T2R, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %4
  store i64 2, i64* %10, align 8
  br label %36

35:                                               ; preds = %28
  store i64 1, i64* %10, align 8
  br label %36

36:                                               ; preds = %35, %34
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = load i32, i32* @ODM_COMP_COMMON, align 4
  %39 = load i32, i32* @ODM_DBG_LOUD, align 4
  %40 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @memset(%struct.noise_level* %15, i32 0, i32 32)
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = load i32, i32* @ODM_PAUSE_DIG, align 4
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @odm_PauseDIG(%struct.TYPE_7__* %45, i32 %46, i64 %47)
  br label %49

49:                                               ; preds = %44, %36
  %50 = load i32, i32* @jiffies, align 4
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %49, %301
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @rFPGA0_TxGainStage, align 4
  %56 = load i32, i32* @BIT25, align 4
  %57 = call i32 @PHY_SetBBReg(i32 %54, i32 %55, i32 %56, i32 1)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @bMaskDWord, align 4
  %62 = call i32 @PHY_QueryBBReg(i32 %60, i32 2296, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = load i32, i32* @ODM_COMP_COMMON, align 4
  %65 = load i32, i32* @ODM_DBG_LOUD, align 4
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %63, i32 %64, i32 %65, i8* %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @rFPGA0_TxGainStage, align 4
  %74 = load i32, i32* @BIT25, align 4
  %75 = call i32 @PHY_SetBBReg(i32 %72, i32 %73, i32 %74, i32 0)
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, 255
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @ODM_RF_PATH_A, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64 %78, i64* %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = and i32 %83, 65280
  %85 = ashr i32 %84, 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* @ODM_RF_PATH_B, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  store i64 %86, i64* %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = load i32, i32* @ODM_COMP_COMMON, align 4
  %93 = load i32, i32* @ODM_DBG_LOUD, align 4
  %94 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* @ODM_RF_PATH_A, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* @ODM_RF_PATH_A, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* @ODM_RF_PATH_B, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* @ODM_RF_PATH_B, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %91, i32 %92, i32 %93, i8* %114)
  %116 = load i64, i64* @ODM_RF_PATH_A, align 8
  store i64 %116, i64* %11, align 8
  br label %117

117:                                              ; preds = %138, %51
  %118 = load i64, i64* %11, align 8
  %119 = load i64, i64* %10, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %141

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load i64, i64* %11, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* %11, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32 %127, i32* %131, align 4
  %132 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* %11, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = sdiv i32 %136, 2
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %121
  %139 = load i64, i64* %11, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %11, align 8
  br label %117

141:                                              ; preds = %117
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %143 = load i32, i32* @ODM_COMP_COMMON, align 4
  %144 = load i32, i32* @ODM_DBG_LOUD, align 4
  %145 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @ODM_RF_PATH_A, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* @ODM_RF_PATH_B, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  %157 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %142, i32 %143, i32 %144, i8* %156)
  %158 = load i64, i64* @ODM_RF_PATH_A, align 8
  store i64 %158, i64* %11, align 8
  br label %159

159:                                              ; preds = %252, %141
  %160 = load i64, i64* %11, align 8
  %161 = load i64, i64* %10, align 8
  %162 = icmp ult i64 %160, %161
  br i1 %162, label %163, label %255

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* %11, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @ValidCnt, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %251

171:                                              ; preds = %163
  %172 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load i64, i64* %11, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @Valid_Max, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %251

179:                                              ; preds = %171
  %180 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* %11, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @Valid_Min, align 4
  %186 = icmp sge i32 %184, %185
  br i1 %186, label %187, label %251

187:                                              ; preds = %179
  %188 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* %11, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* %11, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* %11, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, %198
  store i32 %204, i32* %202, align 4
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %206 = load i32, i32* @ODM_COMP_COMMON, align 4
  %207 = load i32, i32* @ODM_DBG_LOUD, align 4
  %208 = load i64, i64* %11, align 8
  %209 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i64, i64* %11, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = inttoptr i64 %214 to i8*
  %216 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %205, i32 %206, i32 %207, i8* %215)
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %218 = load i32, i32* @ODM_COMP_COMMON, align 4
  %219 = load i32, i32* @ODM_DBG_LOUD, align 4
  %220 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = load i64, i64* %11, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = inttoptr i64 %225 to i8*
  %227 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %217, i32 %218, i32 %219, i8* %226)
  %228 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = load i64, i64* %11, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @ValidCnt, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %250

235:                                              ; preds = %187
  %236 = load i64, i64* %14, align 8
  %237 = add i64 %236, 1
  store i64 %237, i64* %14, align 8
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %239 = load i32, i32* @ODM_COMP_COMMON, align 4
  %240 = load i32, i32* @ODM_DBG_LOUD, align 4
  %241 = load i64, i64* %11, align 8
  %242 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = load i64, i64* %11, align 8
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = inttoptr i64 %247 to i8*
  %249 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %238, i32 %239, i32 %240, i8* %248)
  br label %250

250:                                              ; preds = %235, %187
  br label %251

251:                                              ; preds = %250, %179, %171, %163
  br label %252

252:                                              ; preds = %251
  %253 = load i64, i64* %11, align 8
  %254 = add i64 %253, 1
  store i64 %254, i64* %11, align 8
  br label %159

255:                                              ; preds = %159
  %256 = load i64, i64* %14, align 8
  %257 = load i64, i64* %10, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %266, label %259

259:                                              ; preds = %255
  %260 = load i32, i32* @jiffies, align 4
  %261 = load i32, i32* %16, align 4
  %262 = sub nsw i32 %260, %261
  %263 = call i32 @jiffies_to_msecs(i32 %262)
  %264 = load i32, i32* %8, align 4
  %265 = icmp sgt i32 %263, %264
  br i1 %265, label %266, label %301

266:                                              ; preds = %259, %255
  %267 = load i64, i64* @ODM_RF_PATH_A, align 8
  store i64 %267, i64* %11, align 8
  br label %268

268:                                              ; preds = %297, %266
  %269 = load i64, i64* %11, align 8
  %270 = load i64, i64* %10, align 8
  %271 = icmp ult i64 %269, %270
  br i1 %271, label %272, label %300

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 2
  %274 = load i32*, i32** %273, align 8
  %275 = load i64, i64* %11, align 8
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %291

279:                                              ; preds = %272
  %280 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 2
  %281 = load i32*, i32** %280, align 8
  %282 = load i64, i64* %11, align 8
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 3
  %286 = load i32*, i32** %285, align 8
  %287 = load i64, i64* %11, align 8
  %288 = getelementptr inbounds i32, i32* %286, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = sdiv i32 %289, %284
  store i32 %290, i32* %288, align 4
  br label %296

291:                                              ; preds = %272
  %292 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 3
  %293 = load i32*, i32** %292, align 8
  %294 = load i64, i64* %11, align 8
  %295 = getelementptr inbounds i32, i32* %293, i64 %294
  store i32 0, i32* %295, align 4
  br label %296

296:                                              ; preds = %291, %279
  br label %297

297:                                              ; preds = %296
  %298 = load i64, i64* %11, align 8
  %299 = add i64 %298, 1
  store i64 %299, i64* %11, align 8
  br label %268

300:                                              ; preds = %268
  br label %302

301:                                              ; preds = %259
  br label %51

302:                                              ; preds = %300
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %307 = load i32, i32* @bMaskByte0, align 4
  %308 = call i32 @PHY_QueryBBReg(i32 %305, i32 %306, i32 %307)
  %309 = sext i32 %308 to i64
  store i64 %309, i64* %12, align 8
  %310 = load i64, i64* @BIT7, align 8
  %311 = xor i64 %310, -1
  %312 = load i64, i64* %12, align 8
  %313 = and i64 %312, %311
  store i64 %313, i64* %12, align 8
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %315 = load i32, i32* @ODM_COMP_COMMON, align 4
  %316 = load i32, i32* @ODM_DBG_LOUD, align 4
  %317 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %318 = load i64, i64* %12, align 8
  %319 = load i64, i64* %12, align 8
  %320 = inttoptr i64 %319 to i8*
  %321 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %314, i32 %315, i32 %316, i8* %320)
  %322 = load i64, i64* %12, align 8
  %323 = add i64 -110, %322
  %324 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 3
  %325 = load i32*, i32** %324, align 8
  %326 = load i64, i64* @ODM_RF_PATH_A, align 8
  %327 = getelementptr inbounds i32, i32* %325, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = add i64 %323, %329
  %331 = trunc i64 %330 to i32
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 1
  %335 = load i32*, i32** %334, align 8
  %336 = load i64, i64* @ODM_RF_PATH_A, align 8
  %337 = getelementptr inbounds i32, i32* %335, i64 %336
  store i32 %331, i32* %337, align 4
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 1
  %341 = load i32*, i32** %340, align 8
  %342 = load i64, i64* @ODM_RF_PATH_A, align 8
  %343 = getelementptr inbounds i32, i32* %341, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = sext i32 %344 to i64
  %346 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = add i64 %349, %345
  store i64 %350, i64* %348, align 8
  %351 = load i64, i64* %10, align 8
  %352 = icmp eq i64 %351, 2
  br i1 %352, label %353, label %402

353:                                              ; preds = %302
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %358 = load i32, i32* @bMaskByte0, align 4
  %359 = call i32 @PHY_QueryBBReg(i32 %356, i32 %357, i32 %358)
  %360 = sext i32 %359 to i64
  store i64 %360, i64* %13, align 8
  %361 = load i64, i64* @BIT7, align 8
  %362 = xor i64 %361, -1
  %363 = load i64, i64* %13, align 8
  %364 = and i64 %363, %362
  store i64 %364, i64* %13, align 8
  %365 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %366 = load i32, i32* @ODM_COMP_COMMON, align 4
  %367 = load i32, i32* @ODM_DBG_LOUD, align 4
  %368 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %369 = load i64, i64* %13, align 8
  %370 = load i64, i64* %13, align 8
  %371 = inttoptr i64 %370 to i8*
  %372 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %365, i32 %366, i32 %367, i8* %371)
  %373 = load i64, i64* %13, align 8
  %374 = add i64 -110, %373
  %375 = getelementptr inbounds %struct.noise_level, %struct.noise_level* %15, i32 0, i32 3
  %376 = load i32*, i32** %375, align 8
  %377 = load i64, i64* @ODM_RF_PATH_B, align 8
  %378 = getelementptr inbounds i32, i32* %376, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = sext i32 %379 to i64
  %381 = add i64 %374, %380
  %382 = trunc i64 %381 to i32
  %383 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i32 0, i32 1
  %386 = load i32*, i32** %385, align 8
  %387 = load i64, i64* @ODM_RF_PATH_B, align 8
  %388 = getelementptr inbounds i32, i32* %386, i64 %387
  store i32 %382, i32* %388, align 4
  %389 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i32 0, i32 1
  %392 = load i32*, i32** %391, align 8
  %393 = load i64, i64* @ODM_RF_PATH_B, align 8
  %394 = getelementptr inbounds i32, i32* %392, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = sext i32 %395 to i64
  %397 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = add i64 %400, %396
  store i64 %401, i64* %399, align 8
  br label %402

402:                                              ; preds = %353, %302
  %403 = load i64, i64* %10, align 8
  %404 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = udiv i64 %407, %403
  store i64 %408, i64* %406, align 8
  %409 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %410 = load i32, i32* @ODM_COMP_COMMON, align 4
  %411 = load i32, i32* @ODM_DBG_LOUD, align 4
  %412 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %412, i32 0, i32 1
  %414 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %413, i32 0, i32 1
  %415 = load i32*, i32** %414, align 8
  %416 = load i64, i64* @ODM_RF_PATH_A, align 8
  %417 = getelementptr inbounds i32, i32* %415, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %420, i32 0, i32 1
  %422 = load i32*, i32** %421, align 8
  %423 = load i64, i64* @ODM_RF_PATH_B, align 8
  %424 = getelementptr inbounds i32, i32* %422, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = sext i32 %425 to i64
  %427 = inttoptr i64 %426 to i8*
  %428 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %409, i32 %410, i32 %411, i8* %427)
  %429 = load i64, i64* %6, align 8
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %436

431:                                              ; preds = %402
  %432 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %433 = load i32, i32* @ODM_RESUME_DIG, align 4
  %434 = load i64, i64* %7, align 8
  %435 = call i32 @odm_PauseDIG(%struct.TYPE_7__* %432, i32 %433, i64 %434)
  br label %436

436:                                              ; preds = %431, %402
  %437 = load i32, i32* @jiffies, align 4
  %438 = load i32, i32* %17, align 4
  %439 = sub nsw i32 %437, %438
  %440 = call i32 @jiffies_to_msecs(i32 %439)
  store i32 %440, i32* %18, align 4
  %441 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %442 = load i32, i32* @ODM_COMP_COMMON, align 4
  %443 = load i32, i32* @ODM_DBG_LOUD, align 4
  %444 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %441, i32 %442, i32 %443, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %445 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %446 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %445, i32 0, i32 1
  %447 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  ret i64 %448
}

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_7__*, i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.noise_level*, i32, i32) #1

declare dso_local i32 @odm_PauseDIG(%struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @PHY_SetBBReg(i32, i32, i32, i32) #1

declare dso_local i32 @PHY_QueryBBReg(i32, i32, i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
