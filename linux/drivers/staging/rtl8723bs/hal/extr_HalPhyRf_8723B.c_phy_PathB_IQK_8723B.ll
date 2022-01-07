; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c_phy_PathB_IQK_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c_phy_PathB_IQK_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ODM_COMP_CALIBRATION = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Path B IQK!\0A\00", align 1
@bMaskDWord = common dso_local global i32 0, align 4
@rFPGA0_IQK = common dso_local global i32 0, align 4
@bMaskH3Bytes = common dso_local global i32 0, align 4
@ODM_RF_PATH_A = common dso_local global i32 0, align 4
@bRFRegOffsetMask = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @phy_PathB_IQK_8723B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_PathB_IQK_8723B(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hal_com_data*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %11)
  store %struct.hal_com_data* %12, %struct.hal_com_data** %9, align 8
  %13 = load %struct.hal_com_data*, %struct.hal_com_data** %9, align 8
  %14 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %13, i32 0, i32 0
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %10, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %16 = load i32, i32* @ODM_COMP_CALIBRATION, align 4
  %17 = load i32, i32* @ODM_DBG_LOUD, align 4
  %18 = call i32 @ODM_RT_TRACE(%struct.TYPE_3__* %15, i32 %16, i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @bMaskDWord, align 4
  %23 = call i32 @PHY_QueryBBReg(i32 %21, i32 2376, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @rFPGA0_IQK, align 4
  %28 = load i32, i32* @bMaskH3Bytes, align 4
  %29 = call i32 @PHY_SetBBReg(i32 %26, i32 %27, i32 %28, i32 0)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ODM_RF_PATH_A, align 4
  %34 = call i32 @PHY_SetRFReg(i32 %32, i32 %33, i32 237, i32 32, i32 1)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ODM_RF_PATH_A, align 4
  %39 = load i32, i32* @bRFRegOffsetMask, align 4
  %40 = call i32 @PHY_SetRFReg(i32 %37, i32 %38, i32 67, i32 %39, i32 200641)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @rTx_IQK, align 4
  %45 = load i32, i32* @bMaskDWord, align 4
  %46 = call i32 @PHY_SetBBReg(i32 %43, i32 %44, i32 %45, i32 16808960)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @rRx_IQK, align 4
  %51 = load i32, i32* @bMaskDWord, align 4
  %52 = call i32 @PHY_SetBBReg(i32 %49, i32 %50, i32 %51, i32 16795648)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @rTx_IQK_Tone_A, align 4
  %57 = load i32, i32* @bMaskDWord, align 4
  %58 = call i32 @PHY_SetBBReg(i32 %55, i32 %56, i32 %57, i32 402689052)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @rRx_IQK_Tone_A, align 4
  %63 = load i32, i32* @bMaskDWord, align 4
  %64 = call i32 @PHY_SetBBReg(i32 %61, i32 %62, i32 %63, i32 939559964)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @rTx_IQK_Tone_B, align 4
  %69 = load i32, i32* @bMaskDWord, align 4
  %70 = call i32 @PHY_SetBBReg(i32 %67, i32 %68, i32 %69, i32 939559964)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @rRx_IQK_Tone_B, align 4
  %75 = load i32, i32* @bMaskDWord, align 4
  %76 = call i32 @PHY_SetBBReg(i32 %73, i32 %74, i32 %75, i32 939559964)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @rTx_IQK_PI_A, align 4
  %81 = load i32, i32* @bMaskDWord, align 4
  %82 = call i32 @PHY_SetBBReg(i32 %79, i32 %80, i32 %81, i32 -2112683030)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @rRx_IQK_PI_A, align 4
  %87 = load i32, i32* @bMaskDWord, align 4
  %88 = call i32 @PHY_SetBBReg(i32 %85, i32 %86, i32 %87, i32 672202752)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @rTx_IQK_PI_B, align 4
  %93 = load i32, i32* @bMaskDWord, align 4
  %94 = call i32 @PHY_SetBBReg(i32 %91, i32 %92, i32 %93, i32 -2112815104)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @rRx_IQK_PI_B, align 4
  %99 = load i32, i32* @bMaskDWord, align 4
  %100 = call i32 @PHY_SetBBReg(i32 %97, i32 %98, i32 %99, i32 672202752)
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @rIQK_AGC_Rsp, align 4
  %105 = load i32, i32* @bMaskDWord, align 4
  %106 = call i32 @PHY_SetBBReg(i32 %103, i32 %104, i32 %105, i32 4598033)
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @rFPGA0_IQK, align 4
  %111 = load i32, i32* @bMaskH3Bytes, align 4
  %112 = call i32 @PHY_SetBBReg(i32 %109, i32 %110, i32 %111, i32 8421376)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @bMaskDWord, align 4
  %117 = call i32 @PHY_SetBBReg(i32 %115, i32 2376, i32 %116, i32 640)
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @bMaskDWord, align 4
  %122 = call i32 @PHY_SetBBReg(i32 %120, i32 1892, i32 %121, i32 2048)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @rIQK_AGC_Pts, align 4
  %127 = load i32, i32* @bMaskDWord, align 4
  %128 = call i32 @PHY_SetBBReg(i32 %125, i32 %126, i32 %127, i32 -117440512)
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @rIQK_AGC_Pts, align 4
  %133 = load i32, i32* @bMaskDWord, align 4
  %134 = call i32 @PHY_SetBBReg(i32 %131, i32 %132, i32 %133, i32 -134217728)
  %135 = load i32, i32* @IQK_DELAY_TIME_8723B, align 4
  %136 = call i32 @mdelay(i32 %135)
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @bMaskDWord, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @PHY_SetBBReg(i32 %139, i32 2376, i32 %140, i32 %141)
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @bMaskDWord, align 4
  %147 = call i32 @PHY_SetBBReg(i32 %145, i32 1892, i32 %146, i32 6144)
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @rFPGA0_IQK, align 4
  %152 = load i32, i32* @bMaskH3Bytes, align 4
  %153 = call i32 @PHY_SetBBReg(i32 %150, i32 %151, i32 %152, i32 0)
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @rRx_Power_After_IQK_A_2, align 4
  %158 = load i32, i32* @bMaskDWord, align 4
  %159 = call i32 @PHY_QueryBBReg(i32 %156, i32 %157, i32 %158)
  store i32 %159, i32* %3, align 4
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @rTx_Power_Before_IQK_A, align 4
  %164 = load i32, i32* @bMaskDWord, align 4
  %165 = call i32 @PHY_QueryBBReg(i32 %162, i32 %163, i32 %164)
  store i32 %165, i32* %4, align 4
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @rTx_Power_After_IQK_A, align 4
  %170 = load i32, i32* @bMaskDWord, align 4
  %171 = call i32 @PHY_QueryBBReg(i32 %168, i32 %169, i32 %170)
  store i32 %171, i32* %5, align 4
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %173 = load i32, i32* @ODM_COMP_CALIBRATION, align 4
  %174 = load i32, i32* @ODM_DBG_LOUD, align 4
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = inttoptr i64 %176 to i8*
  %178 = call i32 @ODM_RT_TRACE(%struct.TYPE_3__* %172, i32 %173, i32 %174, i8* %177)
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %180 = load i32, i32* @ODM_COMP_CALIBRATION, align 4
  %181 = load i32, i32* @ODM_DBG_LOUD, align 4
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = inttoptr i64 %184 to i8*
  %186 = call i32 @ODM_RT_TRACE(%struct.TYPE_3__* %179, i32 %180, i32 %181, i8* %185)
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %188 = load i32, i32* @ODM_COMP_CALIBRATION, align 4
  %189 = load i32, i32* @ODM_DBG_LOUD, align 4
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @bMaskDWord, align 4
  %194 = call i32 @PHY_QueryBBReg(i32 %192, i32 3728, i32 %193)
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @bMaskDWord, align 4
  %199 = call i32 @PHY_QueryBBReg(i32 %197, i32 3736, i32 %198)
  %200 = sext i32 %199 to i64
  %201 = inttoptr i64 %200 to i8*
  %202 = call i32 @ODM_RT_TRACE(%struct.TYPE_3__* %187, i32 %188, i32 %189, i8* %201)
  %203 = load i32, i32* %5, align 4
  %204 = and i32 %203, 67043328
  %205 = ashr i32 %204, 16
  store i32 %205, i32* %6, align 4
  %206 = load i32, i32* %6, align 4
  %207 = and i32 %206, 512
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %1
  %210 = load i32, i32* %6, align 4
  %211 = sub nsw i32 1024, %210
  store i32 %211, i32* %6, align 4
  br label %212

212:                                              ; preds = %209, %1
  %213 = load i32, i32* %3, align 4
  %214 = load i32, i32* @BIT28, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %243, label %217

217:                                              ; preds = %212
  %218 = load i32, i32* %4, align 4
  %219 = and i32 %218, 67043328
  %220 = ashr i32 %219, 16
  %221 = icmp ne i32 %220, 322
  br i1 %221, label %222, label %243

222:                                              ; preds = %217
  %223 = load i32, i32* %5, align 4
  %224 = and i32 %223, 67043328
  %225 = ashr i32 %224, 16
  %226 = icmp ne i32 %225, 66
  br i1 %226, label %227, label %243

227:                                              ; preds = %222
  %228 = load i32, i32* %4, align 4
  %229 = and i32 %228, 67043328
  %230 = ashr i32 %229, 16
  %231 = icmp slt i32 %230, 272
  br i1 %231, label %232, label %243

232:                                              ; preds = %227
  %233 = load i32, i32* %4, align 4
  %234 = and i32 %233, 67043328
  %235 = ashr i32 %234, 16
  %236 = icmp sgt i32 %235, 240
  br i1 %236, label %237, label %243

237:                                              ; preds = %232
  %238 = load i32, i32* %6, align 4
  %239 = icmp slt i32 %238, 15
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load i32, i32* %8, align 4
  %242 = or i32 %241, 1
  store i32 %242, i32* %8, align 4
  br label %243

243:                                              ; preds = %240, %237, %232, %227, %222, %217, %212
  %244 = load i32, i32* %8, align 4
  ret i32 %244
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_3__*, i32, i32, i8*) #1

declare dso_local i32 @PHY_QueryBBReg(i32, i32, i32) #1

declare dso_local i32 @PHY_SetBBReg(i32, i32, i32, i32) #1

declare dso_local i32 @PHY_SetRFReg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
