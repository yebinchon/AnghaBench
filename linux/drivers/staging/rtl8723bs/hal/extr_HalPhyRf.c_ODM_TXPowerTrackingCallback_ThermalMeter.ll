; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf.c_ODM_TXPowerTrackingCallback_ThermalMeter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf.c_ODM_TXPowerTrackingCallback_ThermalMeter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32*, i64*, i32, i32*, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32, i64*, i64, i64, i64, i64, i64*, i64*, i64*, i32*, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_12__ = type { i64, i64, i32, i32, i32, i32 (%struct.TYPE_13__*, i32, i64, i64)*, i32 (%struct.TYPE_13__*)*, i32, i32 (%struct.TYPE_13__*, i64**, i64**, i64**, i64**)* }

@ODM_COMP_TX_PWR_TRACK = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [145 x i8] c"===>ODM_TXPowerTrackingCallback_ThermalMeter,\0ApDM_Odm->BbSwingIdxCckBase: %d, pDM_Odm->BbSwingIdxOfdmBase[A]: %d, pDM_Odm->DefaultOfdmIndex: %d\0A\00", align 1
@ODM_RF_PATH_A = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"reload ofdm index for band switch\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"AVG Thermal Meter = 0x%X, EFUSE Thermal Base = 0x%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"(delta, delta_LCK, delta_IQK) = (%d, %d, %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"delta_LCK(%d) >= Threshold_IQK(%d)\0A\00", align 1
@TXPWR_TRACK_TABLE_SIZE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"deltaSwingTableIdx_TUP_A[%d] = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"******Temp is higher and pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_A] = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"deltaSwingTableIdx_TUP_B[%d] = %d\0A\00", align 1
@ODM_RF_PATH_B = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [77 x i8] c"******Temp is higher and pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_B] = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"deltaSwingTableIdx_TDOWN_A[%d] = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [76 x i8] c"******Temp is lower and pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_A] = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"deltaSwingTableIdx_TDOWN_B[%d] = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [76 x i8] c"******Temp is lower and pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_B] = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [109 x i8] c"\0A\0A ================================ [Path-%c] Calculating PowerIndexOffset ================================\0A\00", align 1
@.str.14 = private unnamed_addr constant [80 x i8] c"[Path-%c] PowerIndexOffset(%d) = DeltaPowerIndex(%d) - DeltaPowerIndexLast(%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [66 x i8] c"The 'CCK' final index(%d) = BaseIndex(%d) + PowerIndexOffset(%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [71 x i8] c"The 'OFDM' final index(%d) = BaseIndex[%c](%d) + PowerIndexOffset(%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [109 x i8] c"\0A\0A ========================================================================================================\0A\00", align 1
@.str.18 = private unnamed_addr constant [121 x i8] c"The thermal meter is unchanged or TxPowerTracking OFF(%d): ThermalValue: %d , pDM_Odm->RFCalibrateInfo.ThermalValue: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [70 x i8] c"TxPowerTracking: [CCK] Swing Current Index: %d, Swing Base Index: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [75 x i8] c"TxPowerTracking: [OFDM] Swing Current Index: %d, Swing Base Index[%c]: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [91 x i8] c"Temperature Increasing(A): delta_pi: %d , delta_t: %d, Now_t: %d, EFUSE_t: %d, Last_t: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [91 x i8] c"Temperature Increasing(B): delta_pi: %d , delta_t: %d, Now_t: %d, EFUSE_t: %d, Last_t: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [91 x i8] c"Temperature Decreasing(A): delta_pi: %d , delta_t: %d, Now_t: %d, EFUSE_t: %d, Last_t: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [91 x i8] c"Temperature Decreasing(B): delta_pi: %d , delta_t: %d, Now_t: %d, EFUSE_t: %d, Last_t: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"Temperature(%d) higher than PG value(%d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"**********Enter POWER Tracking MIX_MODE**********\0A\00", align 1
@MIX_MODE = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [41 x i8] c"Temperature(%d) lower than PG value(%d)\0A\00", align 1
@.str.28 = private unnamed_addr constant [62 x i8] c"pDM_Odm->RFCalibrateInfo.ThermalValue = %d ThermalValue = %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"<===ODM_TXPowerTrackingCallback_ThermalMeter\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_TXPowerTrackingCallback_ThermalMeter(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_com_data*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_12__, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %20)
  store %struct.hal_com_data* %21, %struct.hal_com_data** %3, align 8
  %22 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %23 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %22, i32 0, i32 1
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = call i32 @ConfigureTxpowerTrack(%struct.TYPE_13__* %24, %struct.TYPE_12__* %15)
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 8
  %27 = load i32 (%struct.TYPE_13__*, i64**, i64**, i64**, i64**)*, i32 (%struct.TYPE_13__*, i64**, i64**, i64**, i64**)** %26, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = call i32 %27(%struct.TYPE_13__* %28, i64** %16, i64** %17, i64** %18, i64** %19)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 15
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %40 = load i32, i32* @ODM_DBG_LOUD, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @ODM_RF_PATH_A, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %38, i32 %39, i32 %40, i8* %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* @ODM_RF_PATH_A, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @PHY_QueryRFReg(i32 %58, i64 %59, i32 %61, i32 64512)
  store i64 %62, i64* %5, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 13
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %1
  %69 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %70 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %75 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 255
  br i1 %77, label %78, label %79

78:                                               ; preds = %73, %68, %1
  br label %1150

79:                                               ; preds = %73
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 14
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %88 = load i32, i32* @ODM_DBG_LOUD, align 4
  %89 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %86, i32 %87, i32 %88, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %85, %79
  %91 = load i64, i64* %5, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i64, i64* %95, i64 %99
  store i64 %91, i64* %100, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %103, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %109, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %90
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  br label %117

117:                                              ; preds = %113, %90
  store i64 0, i64* %10, align 8
  br label %118

118:                                              ; preds = %145, %117
  %119 = load i64, i64* %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ult i64 %119, %121
  br i1 %122, label %123, label %148

123:                                              ; preds = %118
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = load i64, i64* %10, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %123
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* %10, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %12, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* %12, align 8
  %142 = load i64, i64* %11, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %11, align 8
  br label %144

144:                                              ; preds = %132, %123
  br label %145

145:                                              ; preds = %144
  %146 = load i64, i64* %10, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %10, align 8
  br label %118

148:                                              ; preds = %118
  %149 = load i64, i64* %11, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %148
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* %11, align 8
  %154 = udiv i64 %152, %153
  store i64 %154, i64* %5, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %156 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %157 = load i32, i32* @ODM_DBG_LOUD, align 4
  %158 = load i64, i64* %5, align 8
  %159 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %160 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i8*
  %164 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %155, i32 %156, i32 %157, i8* %163)
  br label %165

165:                                              ; preds = %151, %148
  %166 = load i64, i64* %5, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp ugt i64 %166, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %165
  %173 = load i64, i64* %5, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = sub i64 %173, %177
  br label %186

179:                                              ; preds = %165
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 5
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %5, align 8
  %185 = sub i64 %183, %184
  br label %186

186:                                              ; preds = %179, %172
  %187 = phi i64 [ %178, %172 ], [ %185, %179 ]
  store i64 %187, i64* %6, align 8
  %188 = load i64, i64* %5, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = icmp ugt i64 %188, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %186
  %195 = load i64, i64* %5, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = sub i64 %195, %199
  br label %208

201:                                              ; preds = %186
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* %5, align 8
  %207 = sub i64 %205, %206
  br label %208

208:                                              ; preds = %201, %194
  %209 = phi i64 [ %200, %194 ], [ %207, %201 ]
  store i64 %209, i64* %7, align 8
  %210 = load i64, i64* %5, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 5
  %214 = load i64, i64* %213, align 8
  %215 = icmp ugt i64 %210, %214
  br i1 %215, label %216, label %223

216:                                              ; preds = %208
  %217 = load i64, i64* %5, align 8
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 5
  %221 = load i64, i64* %220, align 8
  %222 = sub i64 %217, %221
  br label %230

223:                                              ; preds = %208
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 5
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 5
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* %5, align 8
  %229 = sub i64 %227, %228
  br label %230

230:                                              ; preds = %223, %216
  %231 = phi i64 [ %222, %216 ], [ %229, %223 ]
  store i64 %231, i64* %8, align 8
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %233 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %234 = load i32, i32* @ODM_DBG_LOUD, align 4
  %235 = load i64, i64* %6, align 8
  %236 = load i64, i64* %7, align 8
  %237 = load i64, i64* %8, align 8
  %238 = inttoptr i64 %237 to i8*
  %239 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %232, i32 %233, i32 %234, i8* %238)
  %240 = load i64, i64* %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = icmp uge i64 %240, %242
  br i1 %243, label %244, label %266

244:                                              ; preds = %230
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %246 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %247 = load i32, i32* @ODM_DBG_LOUD, align 4
  %248 = load i64, i64* %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = inttoptr i64 %250 to i8*
  %252 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %245, i32 %246, i32 %247, i8* %251)
  %253 = load i64, i64* %5, align 8
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 5
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 4
  store i64 %253, i64* %256, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 6
  %258 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %257, align 8
  %259 = icmp ne i32 (%struct.TYPE_13__*)* %258, null
  br i1 %259, label %260, label %265

260:                                              ; preds = %244
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 6
  %262 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %261, align 8
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %264 = call i32 %262(%struct.TYPE_13__* %263)
  br label %265

265:                                              ; preds = %260, %244
  br label %266

266:                                              ; preds = %265, %230
  %267 = load i64, i64* %6, align 8
  %268 = icmp ugt i64 %267, 0
  br i1 %268, label %269, label %805

269:                                              ; preds = %266
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 5
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 13
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %805

275:                                              ; preds = %269
  %276 = load i64, i64* %5, align 8
  %277 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %278 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = sext i32 %279 to i64
  %281 = icmp ugt i64 %276, %280
  br i1 %281, label %282, label %289

282:                                              ; preds = %275
  %283 = load i64, i64* %5, align 8
  %284 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %285 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = sext i32 %286 to i64
  %288 = sub i64 %283, %287
  br label %296

289:                                              ; preds = %275
  %290 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %291 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = sext i32 %292 to i64
  %294 = load i64, i64* %5, align 8
  %295 = sub i64 %293, %294
  br label %296

296:                                              ; preds = %289, %282
  %297 = phi i64 [ %288, %282 ], [ %295, %289 ]
  store i64 %297, i64* %6, align 8
  %298 = load i64, i64* %6, align 8
  %299 = load i64, i64* @TXPWR_TRACK_TABLE_SIZE, align 8
  %300 = icmp uge i64 %298, %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %296
  %302 = load i64, i64* @TXPWR_TRACK_TABLE_SIZE, align 8
  %303 = sub i64 %302, 1
  store i64 %303, i64* %6, align 8
  br label %304

304:                                              ; preds = %301, %296
  %305 = load i64, i64* %5, align 8
  %306 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %307 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = sext i32 %308 to i64
  %310 = icmp ugt i64 %305, %309
  br i1 %310, label %311, label %423

311:                                              ; preds = %304
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %313 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %314 = load i32, i32* @ODM_DBG_LOUD, align 4
  %315 = load i64, i64* %6, align 8
  %316 = load i64*, i64** %16, align 8
  %317 = load i64, i64* %6, align 8
  %318 = getelementptr inbounds i64, i64* %316, i64 %317
  %319 = load i64, i64* %318, align 8
  %320 = inttoptr i64 %319 to i8*
  %321 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %312, i32 %313, i32 %314, i8* %320)
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 5
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 7
  %325 = load i64*, i64** %324, align 8
  %326 = load i64, i64* @ODM_RF_PATH_A, align 8
  %327 = getelementptr inbounds i64, i64* %325, i64 %326
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 5
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 6
  %332 = load i64*, i64** %331, align 8
  %333 = load i64, i64* @ODM_RF_PATH_A, align 8
  %334 = getelementptr inbounds i64, i64* %332, i64 %333
  store i64 %328, i64* %334, align 8
  %335 = load i64*, i64** %16, align 8
  %336 = load i64, i64* %6, align 8
  %337 = getelementptr inbounds i64, i64* %335, i64 %336
  %338 = load i64, i64* %337, align 8
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 5
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 7
  %342 = load i64*, i64** %341, align 8
  %343 = load i64, i64* @ODM_RF_PATH_A, align 8
  %344 = getelementptr inbounds i64, i64* %342, i64 %343
  store i64 %338, i64* %344, align 8
  %345 = load i64*, i64** %16, align 8
  %346 = load i64, i64* %6, align 8
  %347 = getelementptr inbounds i64, i64* %345, i64 %346
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 2
  %351 = load i64*, i64** %350, align 8
  %352 = load i64, i64* @ODM_RF_PATH_A, align 8
  %353 = getelementptr inbounds i64, i64* %351, i64 %352
  store i64 %348, i64* %353, align 8
  %354 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %355 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %356 = load i32, i32* @ODM_DBG_LOUD, align 4
  %357 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 2
  %359 = load i64*, i64** %358, align 8
  %360 = load i64, i64* @ODM_RF_PATH_A, align 8
  %361 = getelementptr inbounds i64, i64* %359, i64 %360
  %362 = load i64, i64* %361, align 8
  %363 = inttoptr i64 %362 to i8*
  %364 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %354, i32 %355, i32 %356, i8* %363)
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = icmp sgt i32 %366, 1
  br i1 %367, label %368, label %422

368:                                              ; preds = %311
  %369 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %370 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %371 = load i32, i32* @ODM_DBG_LOUD, align 4
  %372 = load i64, i64* %6, align 8
  %373 = load i64*, i64** %18, align 8
  %374 = load i64, i64* %6, align 8
  %375 = getelementptr inbounds i64, i64* %373, i64 %374
  %376 = load i64, i64* %375, align 8
  %377 = inttoptr i64 %376 to i8*
  %378 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %369, i32 %370, i32 %371, i8* %377)
  %379 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i32 0, i32 5
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 7
  %382 = load i64*, i64** %381, align 8
  %383 = load i64, i64* @ODM_RF_PATH_B, align 8
  %384 = getelementptr inbounds i64, i64* %382, i64 %383
  %385 = load i64, i64* %384, align 8
  %386 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %386, i32 0, i32 5
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %387, i32 0, i32 6
  %389 = load i64*, i64** %388, align 8
  %390 = load i64, i64* @ODM_RF_PATH_B, align 8
  %391 = getelementptr inbounds i64, i64* %389, i64 %390
  store i64 %385, i64* %391, align 8
  %392 = load i64*, i64** %18, align 8
  %393 = load i64, i64* %6, align 8
  %394 = getelementptr inbounds i64, i64* %392, i64 %393
  %395 = load i64, i64* %394, align 8
  %396 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %396, i32 0, i32 5
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %397, i32 0, i32 7
  %399 = load i64*, i64** %398, align 8
  %400 = load i64, i64* @ODM_RF_PATH_B, align 8
  %401 = getelementptr inbounds i64, i64* %399, i64 %400
  store i64 %395, i64* %401, align 8
  %402 = load i64*, i64** %18, align 8
  %403 = load i64, i64* %6, align 8
  %404 = getelementptr inbounds i64, i64* %402, i64 %403
  %405 = load i64, i64* %404, align 8
  %406 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %406, i32 0, i32 2
  %408 = load i64*, i64** %407, align 8
  %409 = load i64, i64* @ODM_RF_PATH_B, align 8
  %410 = getelementptr inbounds i64, i64* %408, i64 %409
  store i64 %405, i64* %410, align 8
  %411 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %412 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %413 = load i32, i32* @ODM_DBG_LOUD, align 4
  %414 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %414, i32 0, i32 2
  %416 = load i64*, i64** %415, align 8
  %417 = load i64, i64* @ODM_RF_PATH_B, align 8
  %418 = getelementptr inbounds i64, i64* %416, i64 %417
  %419 = load i64, i64* %418, align 8
  %420 = inttoptr i64 %419 to i8*
  %421 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %411, i32 %412, i32 %413, i8* %420)
  br label %422

422:                                              ; preds = %368, %311
  br label %539

423:                                              ; preds = %304
  %424 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %425 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %426 = load i32, i32* @ODM_DBG_LOUD, align 4
  %427 = load i64, i64* %6, align 8
  %428 = load i64*, i64** %17, align 8
  %429 = load i64, i64* %6, align 8
  %430 = getelementptr inbounds i64, i64* %428, i64 %429
  %431 = load i64, i64* %430, align 8
  %432 = inttoptr i64 %431 to i8*
  %433 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %424, i32 %425, i32 %426, i8* %432)
  %434 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %434, i32 0, i32 5
  %436 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %435, i32 0, i32 7
  %437 = load i64*, i64** %436, align 8
  %438 = load i64, i64* @ODM_RF_PATH_A, align 8
  %439 = getelementptr inbounds i64, i64* %437, i64 %438
  %440 = load i64, i64* %439, align 8
  %441 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %442 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %441, i32 0, i32 5
  %443 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %442, i32 0, i32 6
  %444 = load i64*, i64** %443, align 8
  %445 = load i64, i64* @ODM_RF_PATH_A, align 8
  %446 = getelementptr inbounds i64, i64* %444, i64 %445
  store i64 %440, i64* %446, align 8
  %447 = load i64*, i64** %17, align 8
  %448 = load i64, i64* %6, align 8
  %449 = getelementptr inbounds i64, i64* %447, i64 %448
  %450 = load i64, i64* %449, align 8
  %451 = mul i64 -1, %450
  %452 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %453 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %452, i32 0, i32 5
  %454 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %453, i32 0, i32 7
  %455 = load i64*, i64** %454, align 8
  %456 = load i64, i64* @ODM_RF_PATH_A, align 8
  %457 = getelementptr inbounds i64, i64* %455, i64 %456
  store i64 %451, i64* %457, align 8
  %458 = load i64*, i64** %17, align 8
  %459 = load i64, i64* %6, align 8
  %460 = getelementptr inbounds i64, i64* %458, i64 %459
  %461 = load i64, i64* %460, align 8
  %462 = mul i64 -1, %461
  %463 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %464 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %463, i32 0, i32 2
  %465 = load i64*, i64** %464, align 8
  %466 = load i64, i64* @ODM_RF_PATH_A, align 8
  %467 = getelementptr inbounds i64, i64* %465, i64 %466
  store i64 %462, i64* %467, align 8
  %468 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %469 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %470 = load i32, i32* @ODM_DBG_LOUD, align 4
  %471 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %472 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %471, i32 0, i32 2
  %473 = load i64*, i64** %472, align 8
  %474 = load i64, i64* @ODM_RF_PATH_A, align 8
  %475 = getelementptr inbounds i64, i64* %473, i64 %474
  %476 = load i64, i64* %475, align 8
  %477 = inttoptr i64 %476 to i8*
  %478 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %468, i32 %469, i32 %470, i8* %477)
  %479 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %480 = load i32, i32* %479, align 8
  %481 = icmp sgt i32 %480, 1
  br i1 %481, label %482, label %538

482:                                              ; preds = %423
  %483 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %484 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %485 = load i32, i32* @ODM_DBG_LOUD, align 4
  %486 = load i64, i64* %6, align 8
  %487 = load i64*, i64** %19, align 8
  %488 = load i64, i64* %6, align 8
  %489 = getelementptr inbounds i64, i64* %487, i64 %488
  %490 = load i64, i64* %489, align 8
  %491 = inttoptr i64 %490 to i8*
  %492 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %483, i32 %484, i32 %485, i8* %491)
  %493 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %494 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %493, i32 0, i32 5
  %495 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %494, i32 0, i32 7
  %496 = load i64*, i64** %495, align 8
  %497 = load i64, i64* @ODM_RF_PATH_B, align 8
  %498 = getelementptr inbounds i64, i64* %496, i64 %497
  %499 = load i64, i64* %498, align 8
  %500 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %501 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %500, i32 0, i32 5
  %502 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %501, i32 0, i32 6
  %503 = load i64*, i64** %502, align 8
  %504 = load i64, i64* @ODM_RF_PATH_B, align 8
  %505 = getelementptr inbounds i64, i64* %503, i64 %504
  store i64 %499, i64* %505, align 8
  %506 = load i64*, i64** %19, align 8
  %507 = load i64, i64* %6, align 8
  %508 = getelementptr inbounds i64, i64* %506, i64 %507
  %509 = load i64, i64* %508, align 8
  %510 = mul i64 -1, %509
  %511 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %512 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %511, i32 0, i32 5
  %513 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %512, i32 0, i32 7
  %514 = load i64*, i64** %513, align 8
  %515 = load i64, i64* @ODM_RF_PATH_B, align 8
  %516 = getelementptr inbounds i64, i64* %514, i64 %515
  store i64 %510, i64* %516, align 8
  %517 = load i64*, i64** %19, align 8
  %518 = load i64, i64* %6, align 8
  %519 = getelementptr inbounds i64, i64* %517, i64 %518
  %520 = load i64, i64* %519, align 8
  %521 = mul i64 -1, %520
  %522 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %523 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %522, i32 0, i32 2
  %524 = load i64*, i64** %523, align 8
  %525 = load i64, i64* @ODM_RF_PATH_B, align 8
  %526 = getelementptr inbounds i64, i64* %524, i64 %525
  store i64 %521, i64* %526, align 8
  %527 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %528 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %529 = load i32, i32* @ODM_DBG_LOUD, align 4
  %530 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %531 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %530, i32 0, i32 2
  %532 = load i64*, i64** %531, align 8
  %533 = load i64, i64* @ODM_RF_PATH_B, align 8
  %534 = getelementptr inbounds i64, i64* %532, i64 %533
  %535 = load i64, i64* %534, align 8
  %536 = inttoptr i64 %535 to i8*
  %537 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %527, i32 %528, i32 %529, i8* %536)
  br label %538

538:                                              ; preds = %482, %423
  br label %539

539:                                              ; preds = %538, %422
  %540 = load i64, i64* @ODM_RF_PATH_A, align 8
  store i64 %540, i64* %9, align 8
  br label %541

541:                                              ; preds = %781, %539
  %542 = load i64, i64* %9, align 8
  %543 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %544 = load i32, i32* %543, align 8
  %545 = sext i32 %544 to i64
  %546 = icmp ult i64 %542, %545
  br i1 %546, label %547, label %784

547:                                              ; preds = %541
  %548 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %549 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %550 = load i32, i32* @ODM_DBG_LOUD, align 4
  %551 = load i64, i64* %9, align 8
  %552 = load i64, i64* @ODM_RF_PATH_A, align 8
  %553 = icmp eq i64 %551, %552
  %554 = zext i1 %553 to i64
  %555 = select i1 %553, i32 65, i32 66
  %556 = sext i32 %555 to i64
  %557 = inttoptr i64 %556 to i8*
  %558 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %548, i32 %549, i32 %550, i8* %557)
  %559 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %560 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %559, i32 0, i32 5
  %561 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %560, i32 0, i32 7
  %562 = load i64*, i64** %561, align 8
  %563 = load i64, i64* %9, align 8
  %564 = getelementptr inbounds i64, i64* %562, i64 %563
  %565 = load i64, i64* %564, align 8
  %566 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %567 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %566, i32 0, i32 5
  %568 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %567, i32 0, i32 6
  %569 = load i64*, i64** %568, align 8
  %570 = load i64, i64* %9, align 8
  %571 = getelementptr inbounds i64, i64* %569, i64 %570
  %572 = load i64, i64* %571, align 8
  %573 = icmp eq i64 %565, %572
  br i1 %573, label %574, label %581

574:                                              ; preds = %547
  %575 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %576 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %575, i32 0, i32 5
  %577 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %576, i32 0, i32 8
  %578 = load i64*, i64** %577, align 8
  %579 = load i64, i64* %9, align 8
  %580 = getelementptr inbounds i64, i64* %578, i64 %579
  store i64 0, i64* %580, align 8
  br label %603

581:                                              ; preds = %547
  %582 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %583 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %582, i32 0, i32 5
  %584 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %583, i32 0, i32 7
  %585 = load i64*, i64** %584, align 8
  %586 = load i64, i64* %9, align 8
  %587 = getelementptr inbounds i64, i64* %585, i64 %586
  %588 = load i64, i64* %587, align 8
  %589 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %590 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %589, i32 0, i32 5
  %591 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %590, i32 0, i32 6
  %592 = load i64*, i64** %591, align 8
  %593 = load i64, i64* %9, align 8
  %594 = getelementptr inbounds i64, i64* %592, i64 %593
  %595 = load i64, i64* %594, align 8
  %596 = sub i64 %588, %595
  %597 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %598 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %597, i32 0, i32 5
  %599 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %598, i32 0, i32 8
  %600 = load i64*, i64** %599, align 8
  %601 = load i64, i64* %9, align 8
  %602 = getelementptr inbounds i64, i64* %600, i64 %601
  store i64 %596, i64* %602, align 8
  br label %603

603:                                              ; preds = %581, %574
  %604 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %605 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %606 = load i32, i32* @ODM_DBG_LOUD, align 4
  %607 = load i64, i64* %9, align 8
  %608 = load i64, i64* @ODM_RF_PATH_A, align 8
  %609 = icmp eq i64 %607, %608
  %610 = zext i1 %609 to i64
  %611 = select i1 %609, i32 65, i32 66
  %612 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %613 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %612, i32 0, i32 5
  %614 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %613, i32 0, i32 8
  %615 = load i64*, i64** %614, align 8
  %616 = load i64, i64* %9, align 8
  %617 = getelementptr inbounds i64, i64* %615, i64 %616
  %618 = load i64, i64* %617, align 8
  %619 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %620 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %619, i32 0, i32 5
  %621 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %620, i32 0, i32 7
  %622 = load i64*, i64** %621, align 8
  %623 = load i64, i64* %9, align 8
  %624 = getelementptr inbounds i64, i64* %622, i64 %623
  %625 = load i64, i64* %624, align 8
  %626 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %627 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %626, i32 0, i32 5
  %628 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %627, i32 0, i32 6
  %629 = load i64*, i64** %628, align 8
  %630 = load i64, i64* %9, align 8
  %631 = getelementptr inbounds i64, i64* %629, i64 %630
  %632 = load i64, i64* %631, align 8
  %633 = inttoptr i64 %632 to i8*
  %634 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %604, i32 %605, i32 %606, i8* %633)
  %635 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %636 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %635, i32 0, i32 1
  %637 = load i32*, i32** %636, align 8
  %638 = load i64, i64* %9, align 8
  %639 = getelementptr inbounds i32, i32* %637, i64 %638
  %640 = load i32, i32* %639, align 4
  %641 = sext i32 %640 to i64
  %642 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %643 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %642, i32 0, i32 5
  %644 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %643, i32 0, i32 8
  %645 = load i64*, i64** %644, align 8
  %646 = load i64, i64* %9, align 8
  %647 = getelementptr inbounds i64, i64* %645, i64 %646
  %648 = load i64, i64* %647, align 8
  %649 = add nsw i64 %641, %648
  %650 = trunc i64 %649 to i32
  %651 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %652 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %651, i32 0, i32 5
  %653 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %652, i32 0, i32 9
  %654 = load i32*, i32** %653, align 8
  %655 = load i64, i64* %9, align 8
  %656 = getelementptr inbounds i32, i32* %654, i64 %655
  store i32 %650, i32* %656, align 4
  %657 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %658 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 8
  %660 = sext i32 %659 to i64
  %661 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %662 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %661, i32 0, i32 5
  %663 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %662, i32 0, i32 8
  %664 = load i64*, i64** %663, align 8
  %665 = load i64, i64* %9, align 8
  %666 = getelementptr inbounds i64, i64* %664, i64 %665
  %667 = load i64, i64* %666, align 8
  %668 = add nsw i64 %660, %667
  %669 = trunc i64 %668 to i32
  %670 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %671 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %670, i32 0, i32 5
  %672 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %671, i32 0, i32 10
  store i32 %669, i32* %672, align 8
  %673 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %674 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %673, i32 0, i32 5
  %675 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %674, i32 0, i32 10
  %676 = load i32, i32* %675, align 8
  %677 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %678 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %677, i32 0, i32 3
  store i32 %676, i32* %678, align 8
  %679 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %680 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %679, i32 0, i32 5
  %681 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %680, i32 0, i32 9
  %682 = load i32*, i32** %681, align 8
  %683 = load i64, i64* %9, align 8
  %684 = getelementptr inbounds i32, i32* %682, i64 %683
  %685 = load i32, i32* %684, align 4
  %686 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %687 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %686, i32 0, i32 4
  %688 = load i32*, i32** %687, align 8
  %689 = load i64, i64* %9, align 8
  %690 = getelementptr inbounds i32, i32* %688, i64 %689
  store i32 %685, i32* %690, align 4
  %691 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %692 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %693 = load i32, i32* @ODM_DBG_LOUD, align 4
  %694 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %695 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %694, i32 0, i32 3
  %696 = load i32, i32* %695, align 8
  %697 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %698 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %697, i32 0, i32 0
  %699 = load i32, i32* %698, align 8
  %700 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %701 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %700, i32 0, i32 5
  %702 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %701, i32 0, i32 8
  %703 = load i64*, i64** %702, align 8
  %704 = load i64, i64* %9, align 8
  %705 = getelementptr inbounds i64, i64* %703, i64 %704
  %706 = load i64, i64* %705, align 8
  %707 = inttoptr i64 %706 to i8*
  %708 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %691, i32 %692, i32 %693, i8* %707)
  %709 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %710 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %711 = load i32, i32* @ODM_DBG_LOUD, align 4
  %712 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %713 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %712, i32 0, i32 4
  %714 = load i32*, i32** %713, align 8
  %715 = load i64, i64* %9, align 8
  %716 = getelementptr inbounds i32, i32* %714, i64 %715
  %717 = load i32, i32* %716, align 4
  %718 = load i64, i64* %9, align 8
  %719 = load i64, i64* @ODM_RF_PATH_A, align 8
  %720 = icmp eq i64 %718, %719
  %721 = zext i1 %720 to i64
  %722 = select i1 %720, i32 65, i32 66
  %723 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %724 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %723, i32 0, i32 1
  %725 = load i32*, i32** %724, align 8
  %726 = load i64, i64* %9, align 8
  %727 = getelementptr inbounds i32, i32* %725, i64 %726
  %728 = load i32, i32* %727, align 4
  %729 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %730 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %729, i32 0, i32 5
  %731 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %730, i32 0, i32 8
  %732 = load i64*, i64** %731, align 8
  %733 = load i64, i64* %9, align 8
  %734 = getelementptr inbounds i64, i64* %732, i64 %733
  %735 = load i64, i64* %734, align 8
  %736 = inttoptr i64 %735 to i8*
  %737 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %709, i32 %710, i32 %711, i8* %736)
  %738 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %739 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %738, i32 0, i32 5
  %740 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %739, i32 0, i32 9
  %741 = load i32*, i32** %740, align 8
  %742 = load i64, i64* %9, align 8
  %743 = getelementptr inbounds i32, i32* %741, i64 %742
  %744 = load i32, i32* %743, align 4
  %745 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  %746 = load i32, i32* %745, align 4
  %747 = sub nsw i32 %746, 1
  %748 = icmp sgt i32 %744, %747
  br i1 %748, label %749, label %759

749:                                              ; preds = %603
  %750 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  %751 = load i32, i32* %750, align 4
  %752 = sub nsw i32 %751, 1
  %753 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %754 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %753, i32 0, i32 5
  %755 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %754, i32 0, i32 9
  %756 = load i32*, i32** %755, align 8
  %757 = load i64, i64* %9, align 8
  %758 = getelementptr inbounds i32, i32* %756, i64 %757
  store i32 %752, i32* %758, align 4
  br label %780

759:                                              ; preds = %603
  %760 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %761 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %760, i32 0, i32 5
  %762 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %761, i32 0, i32 9
  %763 = load i32*, i32** %762, align 8
  %764 = load i64, i64* %9, align 8
  %765 = getelementptr inbounds i32, i32* %763, i64 %764
  %766 = load i32, i32* %765, align 4
  %767 = sext i32 %766 to i64
  %768 = load i64, i64* %13, align 8
  %769 = icmp ult i64 %767, %768
  br i1 %769, label %770, label %779

770:                                              ; preds = %759
  %771 = load i64, i64* %13, align 8
  %772 = trunc i64 %771 to i32
  %773 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %774 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %773, i32 0, i32 5
  %775 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %774, i32 0, i32 9
  %776 = load i32*, i32** %775, align 8
  %777 = load i64, i64* %9, align 8
  %778 = getelementptr inbounds i32, i32* %776, i64 %777
  store i32 %772, i32* %778, align 4
  br label %779

779:                                              ; preds = %770, %759
  br label %780

780:                                              ; preds = %779, %749
  br label %781

781:                                              ; preds = %780
  %782 = load i64, i64* %9, align 8
  %783 = add i64 %782, 1
  store i64 %783, i64* %9, align 8
  br label %541

784:                                              ; preds = %541
  %785 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %786 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %787 = load i32, i32* @ODM_DBG_LOUD, align 4
  %788 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %785, i32 %786, i32 %787, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.17, i64 0, i64 0))
  %789 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %790 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %789, i32 0, i32 5
  %791 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %790, i32 0, i32 10
  %792 = load i32, i32* %791, align 8
  %793 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %794 = load i32, i32* %793, align 8
  %795 = sub nsw i32 %794, 1
  %796 = icmp sgt i32 %792, %795
  br i1 %796, label %797, label %804

797:                                              ; preds = %784
  %798 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %799 = load i32, i32* %798, align 8
  %800 = sub nsw i32 %799, 1
  %801 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %802 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %801, i32 0, i32 5
  %803 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %802, i32 0, i32 10
  store i32 %800, i32* %803, align 8
  br label %804

804:                                              ; preds = %797, %784
  br label %838

805:                                              ; preds = %269, %266
  %806 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %807 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %808 = load i32, i32* @ODM_DBG_LOUD, align 4
  %809 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %810 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %809, i32 0, i32 5
  %811 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %810, i32 0, i32 13
  %812 = load i64, i64* %811, align 8
  %813 = load i64, i64* %5, align 8
  %814 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %815 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %814, i32 0, i32 5
  %816 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %815, i32 0, i32 3
  %817 = load i64, i64* %816, align 8
  %818 = inttoptr i64 %817 to i8*
  %819 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %806, i32 %807, i32 %808, i8* %818)
  %820 = load i64, i64* @ODM_RF_PATH_A, align 8
  store i64 %820, i64* %9, align 8
  br label %821

821:                                              ; preds = %834, %805
  %822 = load i64, i64* %9, align 8
  %823 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %824 = load i32, i32* %823, align 8
  %825 = sext i32 %824 to i64
  %826 = icmp ult i64 %822, %825
  br i1 %826, label %827, label %837

827:                                              ; preds = %821
  %828 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %829 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %828, i32 0, i32 5
  %830 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %829, i32 0, i32 8
  %831 = load i64*, i64** %830, align 8
  %832 = load i64, i64* %9, align 8
  %833 = getelementptr inbounds i64, i64* %831, i64 %832
  store i64 0, i64* %833, align 8
  br label %834

834:                                              ; preds = %827
  %835 = load i64, i64* %9, align 8
  %836 = add i64 %835, 1
  store i64 %836, i64* %9, align 8
  br label %821

837:                                              ; preds = %821
  br label %838

838:                                              ; preds = %837, %804
  %839 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %840 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %841 = load i32, i32* @ODM_DBG_LOUD, align 4
  %842 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %843 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %842, i32 0, i32 5
  %844 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %843, i32 0, i32 10
  %845 = load i32, i32* %844, align 8
  %846 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %847 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %846, i32 0, i32 0
  %848 = load i32, i32* %847, align 8
  %849 = sext i32 %848 to i64
  %850 = inttoptr i64 %849 to i8*
  %851 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %839, i32 %840, i32 %841, i8* %850)
  %852 = load i64, i64* @ODM_RF_PATH_A, align 8
  store i64 %852, i64* %9, align 8
  br label %853

853:                                              ; preds = %884, %838
  %854 = load i64, i64* %9, align 8
  %855 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %856 = load i32, i32* %855, align 8
  %857 = sext i32 %856 to i64
  %858 = icmp ult i64 %854, %857
  br i1 %858, label %859, label %887

859:                                              ; preds = %853
  %860 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %861 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %862 = load i32, i32* @ODM_DBG_LOUD, align 4
  %863 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %864 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %863, i32 0, i32 5
  %865 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %864, i32 0, i32 9
  %866 = load i32*, i32** %865, align 8
  %867 = load i64, i64* %9, align 8
  %868 = getelementptr inbounds i32, i32* %866, i64 %867
  %869 = load i32, i32* %868, align 4
  %870 = load i64, i64* %9, align 8
  %871 = load i64, i64* @ODM_RF_PATH_A, align 8
  %872 = icmp eq i64 %870, %871
  %873 = zext i1 %872 to i64
  %874 = select i1 %872, i32 65, i32 66
  %875 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %876 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %875, i32 0, i32 1
  %877 = load i32*, i32** %876, align 8
  %878 = load i64, i64* %9, align 8
  %879 = getelementptr inbounds i32, i32* %877, i64 %878
  %880 = load i32, i32* %879, align 4
  %881 = sext i32 %880 to i64
  %882 = inttoptr i64 %881 to i8*
  %883 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %860, i32 %861, i32 %862, i8* %882)
  br label %884

884:                                              ; preds = %859
  %885 = load i64, i64* %9, align 8
  %886 = add i64 %885, 1
  store i64 %886, i64* %9, align 8
  br label %853

887:                                              ; preds = %853
  %888 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %889 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %888, i32 0, i32 5
  %890 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %889, i32 0, i32 8
  %891 = load i64*, i64** %890, align 8
  %892 = load i64, i64* @ODM_RF_PATH_A, align 8
  %893 = getelementptr inbounds i64, i64* %891, i64 %892
  %894 = load i64, i64* %893, align 8
  %895 = icmp ne i64 %894, 0
  br i1 %895, label %905, label %896

896:                                              ; preds = %887
  %897 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %898 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %897, i32 0, i32 5
  %899 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %898, i32 0, i32 8
  %900 = load i64*, i64** %899, align 8
  %901 = load i64, i64* @ODM_RF_PATH_B, align 8
  %902 = getelementptr inbounds i64, i64* %900, i64 %901
  %903 = load i64, i64* %902, align 8
  %904 = icmp ne i64 %903, 0
  br i1 %904, label %905, label %1142

905:                                              ; preds = %896, %887
  %906 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %907 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %906, i32 0, i32 5
  %908 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %907, i32 0, i32 13
  %909 = load i64, i64* %908, align 8
  %910 = icmp ne i64 %909, 0
  br i1 %910, label %911, label %1142

911:                                              ; preds = %905
  %912 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %913 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %912, i32 0, i32 5
  %914 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %913, i32 0, i32 11
  store i32 1, i32* %914, align 4
  %915 = load i64, i64* %5, align 8
  %916 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %917 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %916, i32 0, i32 5
  %918 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %917, i32 0, i32 3
  %919 = load i64, i64* %918, align 8
  %920 = icmp ugt i64 %915, %919
  br i1 %920, label %921, label %969

921:                                              ; preds = %911
  %922 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %923 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %924 = load i32, i32* @ODM_DBG_LOUD, align 4
  %925 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %926 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %925, i32 0, i32 5
  %927 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %926, i32 0, i32 8
  %928 = load i64*, i64** %927, align 8
  %929 = load i64, i64* @ODM_RF_PATH_A, align 8
  %930 = getelementptr inbounds i64, i64* %928, i64 %929
  %931 = load i64, i64* %930, align 8
  %932 = load i64, i64* %6, align 8
  %933 = load i64, i64* %5, align 8
  %934 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %935 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %934, i32 0, i32 0
  %936 = load i32, i32* %935, align 8
  %937 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %938 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %937, i32 0, i32 5
  %939 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %938, i32 0, i32 3
  %940 = load i64, i64* %939, align 8
  %941 = inttoptr i64 %940 to i8*
  %942 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %922, i32 %923, i32 %924, i8* %941)
  %943 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %944 = load i32, i32* %943, align 8
  %945 = icmp sgt i32 %944, 1
  br i1 %945, label %946, label %968

946:                                              ; preds = %921
  %947 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %948 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %949 = load i32, i32* @ODM_DBG_LOUD, align 4
  %950 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %951 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %950, i32 0, i32 5
  %952 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %951, i32 0, i32 8
  %953 = load i64*, i64** %952, align 8
  %954 = load i64, i64* @ODM_RF_PATH_B, align 8
  %955 = getelementptr inbounds i64, i64* %953, i64 %954
  %956 = load i64, i64* %955, align 8
  %957 = load i64, i64* %6, align 8
  %958 = load i64, i64* %5, align 8
  %959 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %960 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %959, i32 0, i32 0
  %961 = load i32, i32* %960, align 8
  %962 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %963 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %962, i32 0, i32 5
  %964 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %963, i32 0, i32 3
  %965 = load i64, i64* %964, align 8
  %966 = inttoptr i64 %965 to i8*
  %967 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %947, i32 %948, i32 %949, i8* %966)
  br label %968

968:                                              ; preds = %946, %921
  br label %1025

969:                                              ; preds = %911
  %970 = load i64, i64* %5, align 8
  %971 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %972 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %971, i32 0, i32 5
  %973 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %972, i32 0, i32 3
  %974 = load i64, i64* %973, align 8
  %975 = icmp ult i64 %970, %974
  br i1 %975, label %976, label %1024

976:                                              ; preds = %969
  %977 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %978 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %979 = load i32, i32* @ODM_DBG_LOUD, align 4
  %980 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %981 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %980, i32 0, i32 5
  %982 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %981, i32 0, i32 8
  %983 = load i64*, i64** %982, align 8
  %984 = load i64, i64* @ODM_RF_PATH_A, align 8
  %985 = getelementptr inbounds i64, i64* %983, i64 %984
  %986 = load i64, i64* %985, align 8
  %987 = load i64, i64* %6, align 8
  %988 = load i64, i64* %5, align 8
  %989 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %990 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %989, i32 0, i32 0
  %991 = load i32, i32* %990, align 8
  %992 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %993 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %992, i32 0, i32 5
  %994 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %993, i32 0, i32 3
  %995 = load i64, i64* %994, align 8
  %996 = inttoptr i64 %995 to i8*
  %997 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %977, i32 %978, i32 %979, i8* %996)
  %998 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %999 = load i32, i32* %998, align 8
  %1000 = icmp sgt i32 %999, 1
  br i1 %1000, label %1001, label %1023

1001:                                             ; preds = %976
  %1002 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %1003 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %1004 = load i32, i32* @ODM_DBG_LOUD, align 4
  %1005 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %1006 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1005, i32 0, i32 5
  %1007 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1006, i32 0, i32 8
  %1008 = load i64*, i64** %1007, align 8
  %1009 = load i64, i64* @ODM_RF_PATH_B, align 8
  %1010 = getelementptr inbounds i64, i64* %1008, i64 %1009
  %1011 = load i64, i64* %1010, align 8
  %1012 = load i64, i64* %6, align 8
  %1013 = load i64, i64* %5, align 8
  %1014 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %1015 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %1014, i32 0, i32 0
  %1016 = load i32, i32* %1015, align 8
  %1017 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %1018 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1017, i32 0, i32 5
  %1019 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1018, i32 0, i32 3
  %1020 = load i64, i64* %1019, align 8
  %1021 = inttoptr i64 %1020 to i8*
  %1022 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %1002, i32 %1003, i32 %1004, i8* %1021)
  br label %1023

1023:                                             ; preds = %1001, %976
  br label %1024

1024:                                             ; preds = %1023, %969
  br label %1025

1025:                                             ; preds = %1024, %968
  %1026 = load i64, i64* %5, align 8
  %1027 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %1028 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %1027, i32 0, i32 0
  %1029 = load i32, i32* %1028, align 8
  %1030 = sext i32 %1029 to i64
  %1031 = icmp ugt i64 %1026, %1030
  br i1 %1031, label %1032, label %1065

1032:                                             ; preds = %1025
  %1033 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %1034 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %1035 = load i32, i32* @ODM_DBG_LOUD, align 4
  %1036 = load i64, i64* %5, align 8
  %1037 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %1038 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %1037, i32 0, i32 0
  %1039 = load i32, i32* %1038, align 8
  %1040 = sext i32 %1039 to i64
  %1041 = inttoptr i64 %1040 to i8*
  %1042 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %1033, i32 %1034, i32 %1035, i8* %1041)
  %1043 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %1044 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %1045 = load i32, i32* @ODM_DBG_LOUD, align 4
  %1046 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %1043, i32 %1044, i32 %1045, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i64 0, i64 0))
  %1047 = load i64, i64* @ODM_RF_PATH_A, align 8
  store i64 %1047, i64* %9, align 8
  br label %1048

1048:                                             ; preds = %1061, %1032
  %1049 = load i64, i64* %9, align 8
  %1050 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %1051 = load i32, i32* %1050, align 8
  %1052 = sext i32 %1051 to i64
  %1053 = icmp ult i64 %1049, %1052
  br i1 %1053, label %1054, label %1064

1054:                                             ; preds = %1048
  %1055 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 5
  %1056 = load i32 (%struct.TYPE_13__*, i32, i64, i64)*, i32 (%struct.TYPE_13__*, i32, i64, i64)** %1055, align 8
  %1057 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %1058 = load i32, i32* @MIX_MODE, align 4
  %1059 = load i64, i64* %9, align 8
  %1060 = call i32 %1056(%struct.TYPE_13__* %1057, i32 %1058, i64 %1059, i64 0)
  br label %1061

1061:                                             ; preds = %1054
  %1062 = load i64, i64* %9, align 8
  %1063 = add i64 %1062, 1
  store i64 %1063, i64* %9, align 8
  br label %1048

1064:                                             ; preds = %1048
  br label %1099

1065:                                             ; preds = %1025
  %1066 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %1067 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %1068 = load i32, i32* @ODM_DBG_LOUD, align 4
  %1069 = load i64, i64* %5, align 8
  %1070 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %1071 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %1070, i32 0, i32 0
  %1072 = load i32, i32* %1071, align 8
  %1073 = sext i32 %1072 to i64
  %1074 = inttoptr i64 %1073 to i8*
  %1075 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %1066, i32 %1067, i32 %1068, i8* %1074)
  %1076 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %1077 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %1078 = load i32, i32* @ODM_DBG_LOUD, align 4
  %1079 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %1076, i32 %1077, i32 %1078, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i64 0, i64 0))
  %1080 = load i64, i64* @ODM_RF_PATH_A, align 8
  store i64 %1080, i64* %9, align 8
  br label %1081

1081:                                             ; preds = %1095, %1065
  %1082 = load i64, i64* %9, align 8
  %1083 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %1084 = load i32, i32* %1083, align 8
  %1085 = sext i32 %1084 to i64
  %1086 = icmp ult i64 %1082, %1085
  br i1 %1086, label %1087, label %1098

1087:                                             ; preds = %1081
  %1088 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 5
  %1089 = load i32 (%struct.TYPE_13__*, i32, i64, i64)*, i32 (%struct.TYPE_13__*, i32, i64, i64)** %1088, align 8
  %1090 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %1091 = load i32, i32* @MIX_MODE, align 4
  %1092 = load i64, i64* %9, align 8
  %1093 = load i64, i64* %14, align 8
  %1094 = call i32 %1089(%struct.TYPE_13__* %1090, i32 %1091, i64 %1092, i64 %1093)
  br label %1095

1095:                                             ; preds = %1087
  %1096 = load i64, i64* %9, align 8
  %1097 = add i64 %1096, 1
  store i64 %1097, i64* %9, align 8
  br label %1081

1098:                                             ; preds = %1081
  br label %1099

1099:                                             ; preds = %1098, %1064
  %1100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %1101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1100, i32 0, i32 3
  %1102 = load i32, i32* %1101, align 8
  %1103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %1104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1103, i32 0, i32 0
  store i32 %1102, i32* %1104, align 8
  %1105 = load i64, i64* @ODM_RF_PATH_A, align 8
  store i64 %1105, i64* %9, align 8
  br label %1106

1106:                                             ; preds = %1124, %1099
  %1107 = load i64, i64* %9, align 8
  %1108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %1109 = load i32, i32* %1108, align 8
  %1110 = sext i32 %1109 to i64
  %1111 = icmp ult i64 %1107, %1110
  br i1 %1111, label %1112, label %1127

1112:                                             ; preds = %1106
  %1113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %1114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1113, i32 0, i32 4
  %1115 = load i32*, i32** %1114, align 8
  %1116 = load i64, i64* %9, align 8
  %1117 = getelementptr inbounds i32, i32* %1115, i64 %1116
  %1118 = load i32, i32* %1117, align 4
  %1119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %1120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1119, i32 0, i32 1
  %1121 = load i32*, i32** %1120, align 8
  %1122 = load i64, i64* %9, align 8
  %1123 = getelementptr inbounds i32, i32* %1121, i64 %1122
  store i32 %1118, i32* %1123, align 4
  br label %1124

1124:                                             ; preds = %1112
  %1125 = load i64, i64* %9, align 8
  %1126 = add i64 %1125, 1
  store i64 %1126, i64* %9, align 8
  br label %1106

1127:                                             ; preds = %1106
  %1128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %1129 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %1130 = load i32, i32* @ODM_DBG_LOUD, align 4
  %1131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %1132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1131, i32 0, i32 5
  %1133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1132, i32 0, i32 3
  %1134 = load i64, i64* %1133, align 8
  %1135 = load i64, i64* %5, align 8
  %1136 = inttoptr i64 %1135 to i8*
  %1137 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %1128, i32 %1129, i32 %1130, i8* %1136)
  %1138 = load i64, i64* %5, align 8
  %1139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %1140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1139, i32 0, i32 5
  %1141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1140, i32 0, i32 3
  store i64 %1138, i64* %1141, align 8
  br label %1142

1142:                                             ; preds = %1127, %905, %896
  %1143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %1144 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %1145 = load i32, i32* @ODM_DBG_LOUD, align 4
  %1146 = call i32 @ODM_RT_TRACE(%struct.TYPE_13__* %1143, i32 %1144, i32 %1145, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i64 0, i64 0))
  %1147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %1148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1147, i32 0, i32 5
  %1149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1148, i32 0, i32 12
  store i64 0, i64* %1149, align 8
  br label %1150

1150:                                             ; preds = %1142, %78
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @ConfigureTxpowerTrack(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_13__*, i32, i32, i8*) #1

declare dso_local i64 @PHY_QueryRFReg(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
