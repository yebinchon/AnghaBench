; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c_phy_PathA_IQK_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c_phy_PathA_IQK_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@bMaskDWord = common dso_local global i32 0, align 4
@ODM_COMP_CALIBRATION = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Path A IQK!\0A\00", align 1
@rFPGA0_IQK = common dso_local global i32 0, align 4
@bMaskH3Bytes = common dso_local global i32 0, align 4
@ODM_RF_PATH_A = common dso_local global i32 0, align 4
@RF_WE_LUT = common dso_local global i32 0, align 4
@RF_RCK_OS = common dso_local global i32 0, align 4
@bRFRegOffsetMask = common dso_local global i32 0, align 4
@RF_TXPA_G1 = common dso_local global i32 0, align 4
@RF_TXPA_G2 = common dso_local global i32 0, align 4
@rTx_IQK = common dso_local global i32 0, align 4
@rRx_IQK = common dso_local global i32 0, align 4
@rTx_IQK_Tone_A = common dso_local global i32 0, align 4
@rRx_IQK_Tone_A = common dso_local global i32 0, align 4
@rTx_IQK_Tone_B = common dso_local global i32 0, align 4
@rRx_IQK_Tone_B = common dso_local global i32 0, align 4
@rTx_IQK_PI_A = common dso_local global i32 0, align 4
@rRx_IQK_PI_A = common dso_local global i32 0, align 4
@rTx_IQK_PI_B = common dso_local global i32 0, align 4
@rRx_IQK_PI_B = common dso_local global i32 0, align 4
@rIQK_AGC_Rsp = common dso_local global i32 0, align 4
@rIQK_AGC_Pts = common dso_local global i32 0, align 4
@IQK_DELAY_TIME_8723B = common dso_local global i32 0, align 4
@rRx_Power_After_IQK_A_2 = common dso_local global i32 0, align 4
@rTx_Power_Before_IQK_A = common dso_local global i32 0, align 4
@rTx_Power_After_IQK_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"0xeac = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"0xe94 = 0x%x, 0xe9c = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"0xe90(before IQK) = 0x%x, 0xe98(afer IQK) = 0x%x\0A\00", align 1
@BIT28 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.adapter*, i32, i64)* @phy_PathA_IQK_8723B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @phy_PathA_IQK_8723B(%struct.adapter* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.hal_com_data*, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %13, align 8
  %16 = load %struct.adapter*, %struct.adapter** %5, align 8
  %17 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %16)
  store %struct.hal_com_data* %17, %struct.hal_com_data** %14, align 8
  %18 = load %struct.hal_com_data*, %struct.hal_com_data** %14, align 8
  %19 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %18, i32 0, i32 0
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %15, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @bMaskDWord, align 4
  %24 = call i32 @PHY_QueryBBReg(i32 %22, i32 2376, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %26 = load i32, i32* @ODM_COMP_CALIBRATION, align 4
  %27 = load i32, i32* @ODM_DBG_LOUD, align 4
  %28 = call i32 @ODM_RT_TRACE(%struct.TYPE_3__* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @rFPGA0_IQK, align 4
  %33 = load i32, i32* @bMaskH3Bytes, align 4
  %34 = call i32 @PHY_SetBBReg(i32 %31, i32 %32, i32 %33, i32 0)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ODM_RF_PATH_A, align 4
  %39 = load i32, i32* @RF_WE_LUT, align 4
  %40 = call i32 @PHY_SetRFReg(i32 %37, i32 %38, i32 %39, i32 524288, i32 1)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ODM_RF_PATH_A, align 4
  %45 = load i32, i32* @RF_RCK_OS, align 4
  %46 = load i32, i32* @bRFRegOffsetMask, align 4
  %47 = call i32 @PHY_SetRFReg(i32 %43, i32 %44, i32 %45, i32 %46, i32 98304)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ODM_RF_PATH_A, align 4
  %52 = load i32, i32* @RF_TXPA_G1, align 4
  %53 = load i32, i32* @bRFRegOffsetMask, align 4
  %54 = call i32 @PHY_SetRFReg(i32 %50, i32 %51, i32 %52, i32 %53, i32 63)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ODM_RF_PATH_A, align 4
  %59 = load i32, i32* @RF_TXPA_G2, align 4
  %60 = load i32, i32* @bRFRegOffsetMask, align 4
  %61 = call i32 @PHY_SetRFReg(i32 %57, i32 %58, i32 %59, i32 %60, i32 819079)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @rTx_IQK, align 4
  %66 = load i32, i32* @bMaskDWord, align 4
  %67 = call i32 @PHY_SetBBReg(i32 %64, i32 %65, i32 %66, i32 16808960)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @rRx_IQK, align 4
  %72 = load i32, i32* @bMaskDWord, align 4
  %73 = call i32 @PHY_SetBBReg(i32 %70, i32 %71, i32 %72, i32 16795648)
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @rTx_IQK_Tone_A, align 4
  %78 = load i32, i32* @bMaskDWord, align 4
  %79 = call i32 @PHY_SetBBReg(i32 %76, i32 %77, i32 %78, i32 402689052)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @rRx_IQK_Tone_A, align 4
  %84 = load i32, i32* @bMaskDWord, align 4
  %85 = call i32 @PHY_SetBBReg(i32 %82, i32 %83, i32 %84, i32 939559964)
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @rTx_IQK_Tone_B, align 4
  %90 = load i32, i32* @bMaskDWord, align 4
  %91 = call i32 @PHY_SetBBReg(i32 %88, i32 %89, i32 %90, i32 939559964)
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @rRx_IQK_Tone_B, align 4
  %96 = load i32, i32* @bMaskDWord, align 4
  %97 = call i32 @PHY_SetBBReg(i32 %94, i32 %95, i32 %96, i32 939559964)
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @rTx_IQK_PI_A, align 4
  %102 = load i32, i32* @bMaskDWord, align 4
  %103 = call i32 @PHY_SetBBReg(i32 %100, i32 %101, i32 %102, i32 -2112683030)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @rRx_IQK_PI_A, align 4
  %108 = load i32, i32* @bMaskDWord, align 4
  %109 = call i32 @PHY_SetBBReg(i32 %106, i32 %107, i32 %108, i32 672202752)
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @rTx_IQK_PI_B, align 4
  %114 = load i32, i32* @bMaskDWord, align 4
  %115 = call i32 @PHY_SetBBReg(i32 %112, i32 %113, i32 %114, i32 -2112815104)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @rRx_IQK_PI_B, align 4
  %120 = load i32, i32* @bMaskDWord, align 4
  %121 = call i32 @PHY_SetBBReg(i32 %118, i32 %119, i32 %120, i32 672202752)
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @rIQK_AGC_Rsp, align 4
  %126 = load i32, i32* @bMaskDWord, align 4
  %127 = call i32 @PHY_SetBBReg(i32 %124, i32 %125, i32 %126, i32 4598033)
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @rFPGA0_IQK, align 4
  %132 = load i32, i32* @bMaskH3Bytes, align 4
  %133 = call i32 @PHY_SetBBReg(i32 %130, i32 %131, i32 %132, i32 8421376)
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %3
  %137 = load i64, i64* %7, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136, %3
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @bMaskDWord, align 4
  %144 = call i32 @PHY_SetBBReg(i32 %142, i32 2376, i32 %143, i32 0)
  br label %151

145:                                              ; preds = %136
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @bMaskDWord, align 4
  %150 = call i32 @PHY_SetBBReg(i32 %148, i32 2376, i32 %149, i32 640)
  br label %151

151:                                              ; preds = %145, %139
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @bMaskDWord, align 4
  %156 = call i32 @PHY_SetBBReg(i32 %154, i32 1892, i32 %155, i32 2048)
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @rIQK_AGC_Pts, align 4
  %161 = load i32, i32* @bMaskDWord, align 4
  %162 = call i32 @PHY_SetBBReg(i32 %159, i32 %160, i32 %161, i32 -117440512)
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @rIQK_AGC_Pts, align 4
  %167 = load i32, i32* @bMaskDWord, align 4
  %168 = call i32 @PHY_SetBBReg(i32 %165, i32 %166, i32 %167, i32 -134217728)
  %169 = load i32, i32* @IQK_DELAY_TIME_8723B, align 4
  %170 = call i32 @mdelay(i32 %169)
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @bMaskDWord, align 4
  %175 = load i32, i32* %12, align 4
  %176 = call i32 @PHY_SetBBReg(i32 %173, i32 2376, i32 %174, i32 %175)
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @bMaskDWord, align 4
  %181 = call i32 @PHY_SetBBReg(i32 %179, i32 1892, i32 %180, i32 6144)
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @rFPGA0_IQK, align 4
  %186 = load i32, i32* @bMaskH3Bytes, align 4
  %187 = call i32 @PHY_SetBBReg(i32 %184, i32 %185, i32 %186, i32 0)
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @rRx_Power_After_IQK_A_2, align 4
  %192 = load i32, i32* @bMaskDWord, align 4
  %193 = call i32 @PHY_QueryBBReg(i32 %190, i32 %191, i32 %192)
  store i32 %193, i32* %8, align 4
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @rTx_Power_Before_IQK_A, align 4
  %198 = load i32, i32* @bMaskDWord, align 4
  %199 = call i32 @PHY_QueryBBReg(i32 %196, i32 %197, i32 %198)
  store i32 %199, i32* %9, align 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @rTx_Power_After_IQK_A, align 4
  %204 = load i32, i32* @bMaskDWord, align 4
  %205 = call i32 @PHY_QueryBBReg(i32 %202, i32 %203, i32 %204)
  store i32 %205, i32* %10, align 4
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %207 = load i32, i32* @ODM_COMP_CALIBRATION, align 4
  %208 = load i32, i32* @ODM_DBG_LOUD, align 4
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = inttoptr i64 %210 to i8*
  %212 = call i32 @ODM_RT_TRACE(%struct.TYPE_3__* %206, i32 %207, i32 %208, i8* %211)
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %214 = load i32, i32* @ODM_COMP_CALIBRATION, align 4
  %215 = load i32, i32* @ODM_DBG_LOUD, align 4
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = inttoptr i64 %218 to i8*
  %220 = call i32 @ODM_RT_TRACE(%struct.TYPE_3__* %213, i32 %214, i32 %215, i8* %219)
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %222 = load i32, i32* @ODM_COMP_CALIBRATION, align 4
  %223 = load i32, i32* @ODM_DBG_LOUD, align 4
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @bMaskDWord, align 4
  %228 = call i32 @PHY_QueryBBReg(i32 %226, i32 3728, i32 %227)
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @bMaskDWord, align 4
  %233 = call i32 @PHY_QueryBBReg(i32 %231, i32 3736, i32 %232)
  %234 = sext i32 %233 to i64
  %235 = inttoptr i64 %234 to i8*
  %236 = call i32 @ODM_RT_TRACE(%struct.TYPE_3__* %221, i32 %222, i32 %223, i8* %235)
  %237 = load i32, i32* %10, align 4
  %238 = and i32 %237, 67043328
  %239 = ashr i32 %238, 16
  store i32 %239, i32* %11, align 4
  %240 = load i32, i32* %11, align 4
  %241 = and i32 %240, 512
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %151
  %244 = load i32, i32* %11, align 4
  %245 = sub nsw i32 1024, %244
  store i32 %245, i32* %11, align 4
  br label %246

246:                                              ; preds = %243, %151
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* @BIT28, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %277, label %251

251:                                              ; preds = %246
  %252 = load i32, i32* %9, align 4
  %253 = and i32 %252, 67043328
  %254 = ashr i32 %253, 16
  %255 = icmp ne i32 %254, 322
  br i1 %255, label %256, label %277

256:                                              ; preds = %251
  %257 = load i32, i32* %10, align 4
  %258 = and i32 %257, 67043328
  %259 = ashr i32 %258, 16
  %260 = icmp ne i32 %259, 66
  br i1 %260, label %261, label %277

261:                                              ; preds = %256
  %262 = load i32, i32* %9, align 4
  %263 = and i32 %262, 67043328
  %264 = ashr i32 %263, 16
  %265 = icmp slt i32 %264, 272
  br i1 %265, label %266, label %277

266:                                              ; preds = %261
  %267 = load i32, i32* %9, align 4
  %268 = and i32 %267, 67043328
  %269 = ashr i32 %268, 16
  %270 = icmp sgt i32 %269, 240
  br i1 %270, label %271, label %277

271:                                              ; preds = %266
  %272 = load i32, i32* %11, align 4
  %273 = icmp slt i32 %272, 15
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = load i64, i64* %13, align 8
  %276 = or i64 %275, 1
  store i64 %276, i64* %13, align 8
  br label %279

277:                                              ; preds = %271, %266, %261, %256, %251, %246
  %278 = load i64, i64* %13, align 8
  store i64 %278, i64* %4, align 8
  br label %281

279:                                              ; preds = %274
  %280 = load i64, i64* %13, align 8
  store i64 %280, i64* %4, align 8
  br label %281

281:                                              ; preds = %279, %277
  %282 = load i64, i64* %4, align 8
  ret i64 %282
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @PHY_QueryBBReg(i32, i32, i32) #1

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_3__*, i32, i32, i8*) #1

declare dso_local i32 @PHY_SetBBReg(i32, i32, i32, i32) #1

declare dso_local i32 @PHY_SetRFReg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
