; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8812ae_dm_txpower_tracking_callback_thermalmeter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8812ae_dm_txpower_tracking_callback_thermalmeter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_efuse = type { i32 }
%struct.rtl_dm = type { i32, i32, i32*, i64*, i64, i64, i64, i64, i64*, i64*, i64*, i64*, i32*, i32, i32, i32*, i32, i32 }
%struct.rtl_hal = type { i64 }

@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"pDM_Odm->BbSwingIdxCckBase: %d, pDM_Odm->BbSwingIdxOfdmBase[A]:%d, pDM_Odm->DefaultOfdmIndex: %d\0A\00", align 1
@RF90_PATH_A = common dso_local global i64 0, align 8
@RF_T_METER_8812A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Thermal Meter = 0x%X, EFUSE Thermal Base = 0x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"reload ofdm index for band switch\0A\00", align 1
@AVG_THERMAL_NUM_8812A = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"AVG Thermal Meter = 0x%X, EFUSE Thermal Base = 0x%X\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"(delta, delta_LCK, delta_IQK) = (%d, %d, %d)\0A\00", align 1
@IQK_THRESHOLD = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"delta_LCK(%d) >= Threshold_IQK(%d)\0A\00", align 1
@TXPWR_TRACK_TABLE_SIZE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"delta_swing_table_idx_tup_a[%d] = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [77 x i8] c"******Temp is higher and pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_A] = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"delta_swing_table_idx_tup_b[%d] = %d\0A\00", align 1
@RF90_PATH_B = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [77 x i8] c"******Temp is higher and pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_B] = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"delta_swing_table_idx_tdown_a[%d] = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [76 x i8] c"******Temp is lower and pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_A] = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"deltaSwingTableIdx_TDOWN_B[%d] = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [76 x i8] c"******Temp is lower and pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_B] = %d\0A\00", align 1
@MAX_PATH_NUM_8812A = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [99 x i8] c"============================= [Path-%c]Calculating PowerIndexOffset =============================\0A\00", align 1
@.str.15 = private unnamed_addr constant [78 x i8] c"[Path-%c] PowerIndexOffset(%d) =DeltaPowerIndex(%d) -DeltaPowerIndexLast(%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [66 x i8] c"The 'CCK' final index(%d) = BaseIndex(%d) + PowerIndexOffset(%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [71 x i8] c"The 'OFDM' final index(%d) = BaseIndex[%c](%d) + PowerIndexOffset(%d)\0A\00", align 1
@TXSCALE_TABLE_SIZE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [88 x i8] c"\0A\0A====================================================================================\0A\00", align 1
@.str.19 = private unnamed_addr constant [121 x i8] c"The thermal meter is unchanged or TxPowerTracking OFF(%d): ThermalValue: %d , pDM_Odm->RFCalibrateInfo.ThermalValue: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [69 x i8] c"TxPowerTracking: [CCK] Swing Current Index: %d,Swing Base Index: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [74 x i8] c"TxPowerTracking: [OFDM] Swing Current Index: %d,Swing Base Index[%c]: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [90 x i8] c"Temperature Increasing(A): delta_pi: %d , delta_t: %d, Now_t: %d,EFUSE_t: %d, Last_t: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [90 x i8] c"Temperature Increasing(B): delta_pi: %d ,delta_t: %d, Now_t: %d, EFUSE_t: %d, Last_t: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [91 x i8] c"Temperature Decreasing(A): delta_pi: %d , delta_t: %d, Now_t: %d, EFUSE_t: %d, Last_t: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [91 x i8] c"Temperature Decreasing(B): delta_pi: %d , delta_t: %d, Now_t: %d, EFUSE_t: %d, Last_t: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"Temperature(%d) higher than PG value(%d)\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"**********Enter POWER Tracking MIX_MODE**********\0A\00", align 1
@MIX_MODE = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [41 x i8] c"Temperature(%d) lower than PG value(%d)\0A\00", align 1
@.str.29 = private unnamed_addr constant [60 x i8] c"pDM_Odm->RFCalibrateInfo.ThermalValue =%d ThermalValue= %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [57 x i8] c"<===rtl8812ae_dm_txpower_tracking_callback_thermalmeter\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8812ae_dm_txpower_tracking_callback_thermalmeter(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_efuse*, align 8
  %5 = alloca %struct.rtl_dm*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %22 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %21)
  store %struct.rtl_priv* %22, %struct.rtl_priv** %3, align 8
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %24 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %23)
  %25 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %24)
  store %struct.rtl_efuse* %25, %struct.rtl_efuse** %4, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %27 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %26)
  %28 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %27)
  store %struct.rtl_dm* %28, %struct.rtl_dm** %5, align 8
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %30 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %29)
  %31 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %30)
  store %struct.rtl_hal* %31, %struct.rtl_hal** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 6, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %33 = call i32 @rtl8812ae_get_delta_swing_table(%struct.ieee80211_hw* %32, i64** %17, i64** %18, i64** %19, i64** %20)
  %34 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %35 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %37 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %38 = load i32, i32* @DBG_LOUD, align 4
  %39 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %40 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %43 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @RF90_PATH_A, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %49 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %48, i32 0, i32 17
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %47, i32 %50)
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %53 = load i64, i64* @RF90_PATH_A, align 8
  %54 = load i32, i32* @RF_T_METER_8812A, align 4
  %55 = call i64 @rtl_get_rfreg(%struct.ieee80211_hw* %52, i64 %53, i32 %54, i32 64512)
  store i64 %55, i64* %7, align 8
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %57 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %58 = load i32, i32* @DBG_LOUD, align 4
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %61 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %56, i32 %57, i32 %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %59, i32 %62)
  %64 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %65 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %64, i32 0, i32 16
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %1
  %69 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %70 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %75 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 255
  br i1 %77, label %78, label %79

78:                                               ; preds = %73, %68, %1
  br label %1006

79:                                               ; preds = %73
  %80 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %81 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %86 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %87 = load i32, i32* @DBG_LOUD, align 4
  %88 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %85, i32 %86, i32 %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %92 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %91, i32 0, i32 3
  %93 = load i64*, i64** %92, align 8
  %94 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %95 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i64, i64* %93, i64 %96
  store i64 %90, i64* %97, align 8
  %98 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %99 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %99, align 8
  %102 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %103 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @AVG_THERMAL_NUM_8812A, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %89
  %108 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %109 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %108, i32 0, i32 4
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %107, %89
  store i64 0, i64* %12, align 8
  br label %111

111:                                              ; preds = %135, %110
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* @AVG_THERMAL_NUM_8812A, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %138

115:                                              ; preds = %111
  %116 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %117 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %116, i32 0, i32 3
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* %12, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %115
  %124 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %125 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %124, i32 0, i32 3
  %126 = load i64*, i64** %125, align 8
  %127 = load i64, i64* %12, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %14, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %14, align 8
  %132 = load i64, i64* %13, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %13, align 8
  br label %134

134:                                              ; preds = %123, %115
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %12, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %12, align 8
  br label %111

138:                                              ; preds = %111
  %139 = load i64, i64* %13, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %138
  %142 = load i64, i64* %14, align 8
  %143 = load i64, i64* %13, align 8
  %144 = udiv i64 %142, %143
  store i64 %144, i64* %7, align 8
  %145 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %146 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %147 = load i32, i32* @DBG_LOUD, align 4
  %148 = load i64, i64* %7, align 8
  %149 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %150 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %145, i32 %146, i32 %147, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %148, i32 %151)
  br label %153

153:                                              ; preds = %141, %138
  %154 = load i64, i64* %7, align 8
  %155 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %156 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = icmp ugt i64 %154, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = load i64, i64* %7, align 8
  %161 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %162 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = sub i64 %160, %163
  br label %171

165:                                              ; preds = %153
  %166 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %167 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %166, i32 0, i32 5
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %7, align 8
  %170 = sub i64 %168, %169
  br label %171

171:                                              ; preds = %165, %159
  %172 = phi i64 [ %164, %159 ], [ %170, %165 ]
  store i64 %172, i64* %8, align 8
  %173 = load i64, i64* %7, align 8
  %174 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %175 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = icmp ugt i64 %173, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %171
  %179 = load i64, i64* %7, align 8
  %180 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %181 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %180, i32 0, i32 6
  %182 = load i64, i64* %181, align 8
  %183 = sub i64 %179, %182
  br label %190

184:                                              ; preds = %171
  %185 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %186 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %7, align 8
  %189 = sub i64 %187, %188
  br label %190

190:                                              ; preds = %184, %178
  %191 = phi i64 [ %183, %178 ], [ %189, %184 ]
  store i64 %191, i64* %9, align 8
  %192 = load i64, i64* %7, align 8
  %193 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %194 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %193, i32 0, i32 7
  %195 = load i64, i64* %194, align 8
  %196 = icmp ugt i64 %192, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %190
  %198 = load i64, i64* %7, align 8
  %199 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %200 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %199, i32 0, i32 7
  %201 = load i64, i64* %200, align 8
  %202 = sub i64 %198, %201
  br label %209

203:                                              ; preds = %190
  %204 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %205 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %204, i32 0, i32 7
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* %7, align 8
  %208 = sub i64 %206, %207
  br label %209

209:                                              ; preds = %203, %197
  %210 = phi i64 [ %202, %197 ], [ %208, %203 ]
  store i64 %210, i64* %10, align 8
  %211 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %212 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %213 = load i32, i32* @DBG_LOUD, align 4
  %214 = load i64, i64* %8, align 8
  %215 = load i64, i64* %9, align 8
  %216 = load i64, i64* %10, align 8
  %217 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %211, i32 %212, i32 %213, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 %214, i64 %215, i64 %216)
  %218 = load i64, i64* %9, align 8
  %219 = load i64, i64* @IQK_THRESHOLD, align 8
  %220 = icmp uge i64 %218, %219
  br i1 %220, label %221, label %233

221:                                              ; preds = %209
  %222 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %223 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %224 = load i32, i32* @DBG_LOUD, align 4
  %225 = load i64, i64* %9, align 8
  %226 = load i64, i64* @IQK_THRESHOLD, align 8
  %227 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %222, i32 %223, i32 %224, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %225, i64 %226)
  %228 = load i64, i64* %7, align 8
  %229 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %230 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %229, i32 0, i32 6
  store i64 %228, i64* %230, align 8
  %231 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %232 = call i32 @rtl8821ae_phy_lc_calibrate(%struct.ieee80211_hw* %231)
  br label %233

233:                                              ; preds = %221, %209
  %234 = load i64, i64* %8, align 8
  %235 = icmp ugt i64 %234, 0
  br i1 %235, label %236, label %716

236:                                              ; preds = %233
  %237 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %238 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %237, i32 0, i32 16
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %716

241:                                              ; preds = %236
  %242 = load i64, i64* %7, align 8
  %243 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %244 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = icmp ugt i64 %242, %246
  br i1 %247, label %248, label %255

248:                                              ; preds = %241
  %249 = load i64, i64* %7, align 8
  %250 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %251 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = sub i64 %249, %253
  br label %262

255:                                              ; preds = %241
  %256 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %257 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = load i64, i64* %7, align 8
  %261 = sub i64 %259, %260
  br label %262

262:                                              ; preds = %255, %248
  %263 = phi i64 [ %254, %248 ], [ %261, %255 ]
  store i64 %263, i64* %8, align 8
  %264 = load i64, i64* %8, align 8
  %265 = load i64, i64* @TXPWR_TRACK_TABLE_SIZE, align 8
  %266 = icmp uge i64 %264, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %262
  %268 = load i64, i64* @TXPWR_TRACK_TABLE_SIZE, align 8
  %269 = sub i64 %268, 1
  store i64 %269, i64* %8, align 8
  br label %270

270:                                              ; preds = %267, %262
  %271 = load i64, i64* %7, align 8
  %272 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %273 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  %276 = icmp ugt i64 %271, %275
  br i1 %276, label %277, label %374

277:                                              ; preds = %270
  %278 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %279 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %280 = load i32, i32* @DBG_LOUD, align 4
  %281 = load i64, i64* %8, align 8
  %282 = load i64*, i64** %17, align 8
  %283 = load i64, i64* %8, align 8
  %284 = getelementptr inbounds i64, i64* %282, i64 %283
  %285 = load i64, i64* %284, align 8
  %286 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %278, i32 %279, i32 %280, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i64 %281, i64 %285)
  %287 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %288 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %287, i32 0, i32 9
  %289 = load i64*, i64** %288, align 8
  %290 = load i64, i64* @RF90_PATH_A, align 8
  %291 = getelementptr inbounds i64, i64* %289, i64 %290
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %294 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %293, i32 0, i32 8
  %295 = load i64*, i64** %294, align 8
  %296 = load i64, i64* @RF90_PATH_A, align 8
  %297 = getelementptr inbounds i64, i64* %295, i64 %296
  store i64 %292, i64* %297, align 8
  %298 = load i64*, i64** %17, align 8
  %299 = load i64, i64* %8, align 8
  %300 = getelementptr inbounds i64, i64* %298, i64 %299
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %303 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %302, i32 0, i32 9
  %304 = load i64*, i64** %303, align 8
  %305 = load i64, i64* @RF90_PATH_A, align 8
  %306 = getelementptr inbounds i64, i64* %304, i64 %305
  store i64 %301, i64* %306, align 8
  %307 = load i64*, i64** %17, align 8
  %308 = load i64, i64* %8, align 8
  %309 = getelementptr inbounds i64, i64* %307, i64 %308
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %312 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %311, i32 0, i32 10
  %313 = load i64*, i64** %312, align 8
  %314 = load i64, i64* @RF90_PATH_A, align 8
  %315 = getelementptr inbounds i64, i64* %313, i64 %314
  store i64 %310, i64* %315, align 8
  %316 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %317 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %318 = load i32, i32* @DBG_LOUD, align 4
  %319 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %320 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %319, i32 0, i32 10
  %321 = load i64*, i64** %320, align 8
  %322 = load i64, i64* @RF90_PATH_A, align 8
  %323 = getelementptr inbounds i64, i64* %321, i64 %322
  %324 = load i64, i64* %323, align 8
  %325 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %316, i32 %317, i32 %318, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0), i64 %324)
  %326 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %327 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %328 = load i32, i32* @DBG_LOUD, align 4
  %329 = load i64, i64* %8, align 8
  %330 = load i64*, i64** %19, align 8
  %331 = load i64, i64* %8, align 8
  %332 = getelementptr inbounds i64, i64* %330, i64 %331
  %333 = load i64, i64* %332, align 8
  %334 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %326, i32 %327, i32 %328, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i64 %329, i64 %333)
  %335 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %336 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %335, i32 0, i32 9
  %337 = load i64*, i64** %336, align 8
  %338 = load i64, i64* @RF90_PATH_B, align 8
  %339 = getelementptr inbounds i64, i64* %337, i64 %338
  %340 = load i64, i64* %339, align 8
  %341 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %342 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %341, i32 0, i32 8
  %343 = load i64*, i64** %342, align 8
  %344 = load i64, i64* @RF90_PATH_B, align 8
  %345 = getelementptr inbounds i64, i64* %343, i64 %344
  store i64 %340, i64* %345, align 8
  %346 = load i64*, i64** %19, align 8
  %347 = load i64, i64* %8, align 8
  %348 = getelementptr inbounds i64, i64* %346, i64 %347
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %351 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %350, i32 0, i32 9
  %352 = load i64*, i64** %351, align 8
  %353 = load i64, i64* @RF90_PATH_B, align 8
  %354 = getelementptr inbounds i64, i64* %352, i64 %353
  store i64 %349, i64* %354, align 8
  %355 = load i64*, i64** %19, align 8
  %356 = load i64, i64* %8, align 8
  %357 = getelementptr inbounds i64, i64* %355, i64 %356
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %360 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %359, i32 0, i32 10
  %361 = load i64*, i64** %360, align 8
  %362 = load i64, i64* @RF90_PATH_B, align 8
  %363 = getelementptr inbounds i64, i64* %361, i64 %362
  store i64 %358, i64* %363, align 8
  %364 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %365 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %366 = load i32, i32* @DBG_LOUD, align 4
  %367 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %368 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %367, i32 0, i32 10
  %369 = load i64*, i64** %368, align 8
  %370 = load i64, i64* @RF90_PATH_B, align 8
  %371 = getelementptr inbounds i64, i64* %369, i64 %370
  %372 = load i64, i64* %371, align 8
  %373 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %364, i32 %365, i32 %366, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.9, i64 0, i64 0), i64 %372)
  br label %475

374:                                              ; preds = %270
  %375 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %376 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %377 = load i32, i32* @DBG_LOUD, align 4
  %378 = load i64, i64* %8, align 8
  %379 = load i64*, i64** %18, align 8
  %380 = load i64, i64* %8, align 8
  %381 = getelementptr inbounds i64, i64* %379, i64 %380
  %382 = load i64, i64* %381, align 8
  %383 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %375, i32 %376, i32 %377, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i64 %378, i64 %382)
  %384 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %385 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %384, i32 0, i32 9
  %386 = load i64*, i64** %385, align 8
  %387 = load i64, i64* @RF90_PATH_A, align 8
  %388 = getelementptr inbounds i64, i64* %386, i64 %387
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %391 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %390, i32 0, i32 8
  %392 = load i64*, i64** %391, align 8
  %393 = load i64, i64* @RF90_PATH_A, align 8
  %394 = getelementptr inbounds i64, i64* %392, i64 %393
  store i64 %389, i64* %394, align 8
  %395 = load i64*, i64** %18, align 8
  %396 = load i64, i64* %8, align 8
  %397 = getelementptr inbounds i64, i64* %395, i64 %396
  %398 = load i64, i64* %397, align 8
  %399 = mul i64 -1, %398
  %400 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %401 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %400, i32 0, i32 9
  %402 = load i64*, i64** %401, align 8
  %403 = load i64, i64* @RF90_PATH_A, align 8
  %404 = getelementptr inbounds i64, i64* %402, i64 %403
  store i64 %399, i64* %404, align 8
  %405 = load i64*, i64** %18, align 8
  %406 = load i64, i64* %8, align 8
  %407 = getelementptr inbounds i64, i64* %405, i64 %406
  %408 = load i64, i64* %407, align 8
  %409 = mul i64 -1, %408
  %410 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %411 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %410, i32 0, i32 10
  %412 = load i64*, i64** %411, align 8
  %413 = load i64, i64* @RF90_PATH_A, align 8
  %414 = getelementptr inbounds i64, i64* %412, i64 %413
  store i64 %409, i64* %414, align 8
  %415 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %416 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %417 = load i32, i32* @DBG_LOUD, align 4
  %418 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %419 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %418, i32 0, i32 10
  %420 = load i64*, i64** %419, align 8
  %421 = load i64, i64* @RF90_PATH_A, align 8
  %422 = getelementptr inbounds i64, i64* %420, i64 %421
  %423 = load i64, i64* %422, align 8
  %424 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %415, i32 %416, i32 %417, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.11, i64 0, i64 0), i64 %423)
  %425 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %426 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %427 = load i32, i32* @DBG_LOUD, align 4
  %428 = load i64, i64* %8, align 8
  %429 = load i64*, i64** %20, align 8
  %430 = load i64, i64* %8, align 8
  %431 = getelementptr inbounds i64, i64* %429, i64 %430
  %432 = load i64, i64* %431, align 8
  %433 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %425, i32 %426, i32 %427, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i64 %428, i64 %432)
  %434 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %435 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %434, i32 0, i32 9
  %436 = load i64*, i64** %435, align 8
  %437 = load i64, i64* @RF90_PATH_B, align 8
  %438 = getelementptr inbounds i64, i64* %436, i64 %437
  %439 = load i64, i64* %438, align 8
  %440 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %441 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %440, i32 0, i32 8
  %442 = load i64*, i64** %441, align 8
  %443 = load i64, i64* @RF90_PATH_B, align 8
  %444 = getelementptr inbounds i64, i64* %442, i64 %443
  store i64 %439, i64* %444, align 8
  %445 = load i64*, i64** %20, align 8
  %446 = load i64, i64* %8, align 8
  %447 = getelementptr inbounds i64, i64* %445, i64 %446
  %448 = load i64, i64* %447, align 8
  %449 = mul i64 -1, %448
  %450 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %451 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %450, i32 0, i32 9
  %452 = load i64*, i64** %451, align 8
  %453 = load i64, i64* @RF90_PATH_B, align 8
  %454 = getelementptr inbounds i64, i64* %452, i64 %453
  store i64 %449, i64* %454, align 8
  %455 = load i64*, i64** %20, align 8
  %456 = load i64, i64* %8, align 8
  %457 = getelementptr inbounds i64, i64* %455, i64 %456
  %458 = load i64, i64* %457, align 8
  %459 = mul i64 -1, %458
  %460 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %461 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %460, i32 0, i32 10
  %462 = load i64*, i64** %461, align 8
  %463 = load i64, i64* @RF90_PATH_B, align 8
  %464 = getelementptr inbounds i64, i64* %462, i64 %463
  store i64 %459, i64* %464, align 8
  %465 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %466 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %467 = load i32, i32* @DBG_LOUD, align 4
  %468 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %469 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %468, i32 0, i32 10
  %470 = load i64*, i64** %469, align 8
  %471 = load i64, i64* @RF90_PATH_B, align 8
  %472 = getelementptr inbounds i64, i64* %470, i64 %471
  %473 = load i64, i64* %472, align 8
  %474 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %465, i32 %466, i32 %467, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.13, i64 0, i64 0), i64 %473)
  br label %475

475:                                              ; preds = %374, %277
  %476 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %476, i64* %11, align 8
  br label %477

477:                                              ; preds = %687, %475
  %478 = load i64, i64* %11, align 8
  %479 = load i64, i64* @MAX_PATH_NUM_8812A, align 8
  %480 = icmp ult i64 %478, %479
  br i1 %480, label %481, label %690

481:                                              ; preds = %477
  %482 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %483 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %484 = load i32, i32* @DBG_LOUD, align 4
  %485 = load i64, i64* %11, align 8
  %486 = load i64, i64* @RF90_PATH_A, align 8
  %487 = icmp eq i64 %485, %486
  %488 = zext i1 %487 to i64
  %489 = select i1 %487, i32 65, i32 66
  %490 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %482, i32 %483, i32 %484, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.14, i64 0, i64 0), i32 %489)
  %491 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %492 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %491, i32 0, i32 9
  %493 = load i64*, i64** %492, align 8
  %494 = load i64, i64* %11, align 8
  %495 = getelementptr inbounds i64, i64* %493, i64 %494
  %496 = load i64, i64* %495, align 8
  %497 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %498 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %497, i32 0, i32 8
  %499 = load i64*, i64** %498, align 8
  %500 = load i64, i64* %11, align 8
  %501 = getelementptr inbounds i64, i64* %499, i64 %500
  %502 = load i64, i64* %501, align 8
  %503 = icmp eq i64 %496, %502
  br i1 %503, label %504, label %510

504:                                              ; preds = %481
  %505 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %506 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %505, i32 0, i32 11
  %507 = load i64*, i64** %506, align 8
  %508 = load i64, i64* %11, align 8
  %509 = getelementptr inbounds i64, i64* %507, i64 %508
  store i64 0, i64* %509, align 8
  br label %529

510:                                              ; preds = %481
  %511 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %512 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %511, i32 0, i32 9
  %513 = load i64*, i64** %512, align 8
  %514 = load i64, i64* %11, align 8
  %515 = getelementptr inbounds i64, i64* %513, i64 %514
  %516 = load i64, i64* %515, align 8
  %517 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %518 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %517, i32 0, i32 8
  %519 = load i64*, i64** %518, align 8
  %520 = load i64, i64* %11, align 8
  %521 = getelementptr inbounds i64, i64* %519, i64 %520
  %522 = load i64, i64* %521, align 8
  %523 = sub i64 %516, %522
  %524 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %525 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %524, i32 0, i32 11
  %526 = load i64*, i64** %525, align 8
  %527 = load i64, i64* %11, align 8
  %528 = getelementptr inbounds i64, i64* %526, i64 %527
  store i64 %523, i64* %528, align 8
  br label %529

529:                                              ; preds = %510, %504
  %530 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %531 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %532 = load i32, i32* @DBG_LOUD, align 4
  %533 = load i64, i64* %11, align 8
  %534 = load i64, i64* @RF90_PATH_A, align 8
  %535 = icmp eq i64 %533, %534
  %536 = zext i1 %535 to i64
  %537 = select i1 %535, i32 65, i32 66
  %538 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %539 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %538, i32 0, i32 11
  %540 = load i64*, i64** %539, align 8
  %541 = load i64, i64* %11, align 8
  %542 = getelementptr inbounds i64, i64* %540, i64 %541
  %543 = load i64, i64* %542, align 8
  %544 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %545 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %544, i32 0, i32 9
  %546 = load i64*, i64** %545, align 8
  %547 = load i64, i64* %11, align 8
  %548 = getelementptr inbounds i64, i64* %546, i64 %547
  %549 = load i64, i64* %548, align 8
  %550 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %551 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %550, i32 0, i32 8
  %552 = load i64*, i64** %551, align 8
  %553 = load i64, i64* %11, align 8
  %554 = getelementptr inbounds i64, i64* %552, i64 %553
  %555 = load i64, i64* %554, align 8
  %556 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %530, i32 %531, i32 %532, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.15, i64 0, i64 0), i32 %537, i64 %543, i64 %549, i64 %555)
  %557 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %558 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %557, i32 0, i32 2
  %559 = load i32*, i32** %558, align 8
  %560 = load i64, i64* %11, align 8
  %561 = getelementptr inbounds i32, i32* %559, i64 %560
  %562 = load i32, i32* %561, align 4
  %563 = sext i32 %562 to i64
  %564 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %565 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %564, i32 0, i32 11
  %566 = load i64*, i64** %565, align 8
  %567 = load i64, i64* %11, align 8
  %568 = getelementptr inbounds i64, i64* %566, i64 %567
  %569 = load i64, i64* %568, align 8
  %570 = add nsw i64 %563, %569
  %571 = trunc i64 %570 to i32
  %572 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %573 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %572, i32 0, i32 12
  %574 = load i32*, i32** %573, align 8
  %575 = load i64, i64* %11, align 8
  %576 = getelementptr inbounds i32, i32* %574, i64 %575
  store i32 %571, i32* %576, align 4
  %577 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %578 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %577, i32 0, i32 1
  %579 = load i32, i32* %578, align 4
  %580 = sext i32 %579 to i64
  %581 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %582 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %581, i32 0, i32 11
  %583 = load i64*, i64** %582, align 8
  %584 = load i64, i64* %11, align 8
  %585 = getelementptr inbounds i64, i64* %583, i64 %584
  %586 = load i64, i64* %585, align 8
  %587 = add nsw i64 %580, %586
  %588 = trunc i64 %587 to i32
  %589 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %590 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %589, i32 0, i32 13
  store i32 %588, i32* %590, align 8
  %591 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %592 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %591, i32 0, i32 13
  %593 = load i32, i32* %592, align 8
  %594 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %595 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %594, i32 0, i32 14
  store i32 %593, i32* %595, align 4
  %596 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %597 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %596, i32 0, i32 12
  %598 = load i32*, i32** %597, align 8
  %599 = load i64, i64* %11, align 8
  %600 = getelementptr inbounds i32, i32* %598, i64 %599
  %601 = load i32, i32* %600, align 4
  %602 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %603 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %602, i32 0, i32 15
  %604 = load i32*, i32** %603, align 8
  %605 = load i64, i64* %11, align 8
  %606 = getelementptr inbounds i32, i32* %604, i64 %605
  store i32 %601, i32* %606, align 4
  %607 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %608 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %609 = load i32, i32* @DBG_LOUD, align 4
  %610 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %611 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %610, i32 0, i32 14
  %612 = load i32, i32* %611, align 4
  %613 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %614 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %613, i32 0, i32 1
  %615 = load i32, i32* %614, align 4
  %616 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %617 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %616, i32 0, i32 11
  %618 = load i64*, i64** %617, align 8
  %619 = load i64, i64* %11, align 8
  %620 = getelementptr inbounds i64, i64* %618, i64 %619
  %621 = load i64, i64* %620, align 8
  %622 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %607, i32 %608, i32 %609, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.16, i64 0, i64 0), i32 %612, i32 %615, i64 %621)
  %623 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %624 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %625 = load i32, i32* @DBG_LOUD, align 4
  %626 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %627 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %626, i32 0, i32 15
  %628 = load i32*, i32** %627, align 8
  %629 = load i64, i64* %11, align 8
  %630 = getelementptr inbounds i32, i32* %628, i64 %629
  %631 = load i32, i32* %630, align 4
  %632 = load i64, i64* %11, align 8
  %633 = load i64, i64* @RF90_PATH_A, align 8
  %634 = icmp eq i64 %632, %633
  %635 = zext i1 %634 to i64
  %636 = select i1 %634, i32 65, i32 66
  %637 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %638 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %637, i32 0, i32 2
  %639 = load i32*, i32** %638, align 8
  %640 = load i64, i64* %11, align 8
  %641 = getelementptr inbounds i32, i32* %639, i64 %640
  %642 = load i32, i32* %641, align 4
  %643 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %644 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %643, i32 0, i32 11
  %645 = load i64*, i64** %644, align 8
  %646 = load i64, i64* %11, align 8
  %647 = getelementptr inbounds i64, i64* %645, i64 %646
  %648 = load i64, i64* %647, align 8
  %649 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %623, i32 %624, i32 %625, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.17, i64 0, i64 0), i32 %631, i32 %636, i32 %642, i64 %648)
  %650 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %651 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %650, i32 0, i32 12
  %652 = load i32*, i32** %651, align 8
  %653 = load i64, i64* %11, align 8
  %654 = getelementptr inbounds i32, i32* %652, i64 %653
  %655 = load i32, i32* %654, align 4
  %656 = load i32, i32* @TXSCALE_TABLE_SIZE, align 4
  %657 = sub nsw i32 %656, 1
  %658 = icmp sgt i32 %655, %657
  br i1 %658, label %659, label %667

659:                                              ; preds = %529
  %660 = load i32, i32* @TXSCALE_TABLE_SIZE, align 4
  %661 = sub nsw i32 %660, 1
  %662 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %663 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %662, i32 0, i32 12
  %664 = load i32*, i32** %663, align 8
  %665 = load i64, i64* %11, align 8
  %666 = getelementptr inbounds i32, i32* %664, i64 %665
  store i32 %661, i32* %666, align 4
  br label %686

667:                                              ; preds = %529
  %668 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %669 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %668, i32 0, i32 12
  %670 = load i32*, i32** %669, align 8
  %671 = load i64, i64* %11, align 8
  %672 = getelementptr inbounds i32, i32* %670, i64 %671
  %673 = load i32, i32* %672, align 4
  %674 = sext i32 %673 to i64
  %675 = load i64, i64* %15, align 8
  %676 = icmp ult i64 %674, %675
  br i1 %676, label %677, label %685

677:                                              ; preds = %667
  %678 = load i64, i64* %15, align 8
  %679 = trunc i64 %678 to i32
  %680 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %681 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %680, i32 0, i32 12
  %682 = load i32*, i32** %681, align 8
  %683 = load i64, i64* %11, align 8
  %684 = getelementptr inbounds i32, i32* %682, i64 %683
  store i32 %679, i32* %684, align 4
  br label %685

685:                                              ; preds = %677, %667
  br label %686

686:                                              ; preds = %685, %659
  br label %687

687:                                              ; preds = %686
  %688 = load i64, i64* %11, align 8
  %689 = add i64 %688, 1
  store i64 %689, i64* %11, align 8
  br label %477

690:                                              ; preds = %477
  %691 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %692 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %693 = load i32, i32* @DBG_LOUD, align 4
  %694 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %691, i32 %692, i32 %693, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.18, i64 0, i64 0))
  %695 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %696 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %695, i32 0, i32 13
  %697 = load i32, i32* %696, align 8
  %698 = load i32, i32* @TXSCALE_TABLE_SIZE, align 4
  %699 = sub nsw i32 %698, 1
  %700 = icmp sgt i32 %697, %699
  br i1 %700, label %701, label %706

701:                                              ; preds = %690
  %702 = load i32, i32* @TXSCALE_TABLE_SIZE, align 4
  %703 = sub nsw i32 %702, 1
  %704 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %705 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %704, i32 0, i32 13
  store i32 %703, i32* %705, align 8
  br label %715

706:                                              ; preds = %690
  %707 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %708 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %707, i32 0, i32 13
  %709 = load i32, i32* %708, align 8
  %710 = icmp slt i32 %709, 0
  br i1 %710, label %711, label %714

711:                                              ; preds = %706
  %712 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %713 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %712, i32 0, i32 13
  store i32 0, i32* %713, align 8
  br label %714

714:                                              ; preds = %711, %706
  br label %715

715:                                              ; preds = %714, %701
  br label %743

716:                                              ; preds = %236, %233
  %717 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %718 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %719 = load i32, i32* @DBG_LOUD, align 4
  %720 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %721 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %720, i32 0, i32 16
  %722 = load i32, i32* %721, align 8
  %723 = load i64, i64* %7, align 8
  %724 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %725 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %724, i32 0, i32 5
  %726 = load i64, i64* %725, align 8
  %727 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %717, i32 %718, i32 %719, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.19, i64 0, i64 0), i32 %722, i64 %723, i64 %726)
  %728 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %728, i64* %11, align 8
  br label %729

729:                                              ; preds = %739, %716
  %730 = load i64, i64* %11, align 8
  %731 = load i64, i64* @MAX_PATH_NUM_8812A, align 8
  %732 = icmp ult i64 %730, %731
  br i1 %732, label %733, label %742

733:                                              ; preds = %729
  %734 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %735 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %734, i32 0, i32 11
  %736 = load i64*, i64** %735, align 8
  %737 = load i64, i64* %11, align 8
  %738 = getelementptr inbounds i64, i64* %736, i64 %737
  store i64 0, i64* %738, align 8
  br label %739

739:                                              ; preds = %733
  %740 = load i64, i64* %11, align 8
  %741 = add i64 %740, 1
  store i64 %741, i64* %11, align 8
  br label %729

742:                                              ; preds = %729
  br label %743

743:                                              ; preds = %742, %715
  %744 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %745 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %746 = load i32, i32* @DBG_LOUD, align 4
  %747 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %748 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %747, i32 0, i32 13
  %749 = load i32, i32* %748, align 8
  %750 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %751 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %750, i32 0, i32 1
  %752 = load i32, i32* %751, align 4
  %753 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %744, i32 %745, i32 %746, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.20, i64 0, i64 0), i32 %749, i32 %752)
  %754 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %754, i64* %11, align 8
  br label %755

755:                                              ; preds = %781, %743
  %756 = load i64, i64* %11, align 8
  %757 = load i64, i64* @MAX_PATH_NUM_8812A, align 8
  %758 = icmp ult i64 %756, %757
  br i1 %758, label %759, label %784

759:                                              ; preds = %755
  %760 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %761 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %762 = load i32, i32* @DBG_LOUD, align 4
  %763 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %764 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %763, i32 0, i32 12
  %765 = load i32*, i32** %764, align 8
  %766 = load i64, i64* %11, align 8
  %767 = getelementptr inbounds i32, i32* %765, i64 %766
  %768 = load i32, i32* %767, align 4
  %769 = load i64, i64* %11, align 8
  %770 = load i64, i64* @RF90_PATH_A, align 8
  %771 = icmp eq i64 %769, %770
  %772 = zext i1 %771 to i64
  %773 = select i1 %771, i32 65, i32 66
  %774 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %775 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %774, i32 0, i32 2
  %776 = load i32*, i32** %775, align 8
  %777 = load i64, i64* %11, align 8
  %778 = getelementptr inbounds i32, i32* %776, i64 %777
  %779 = load i32, i32* %778, align 4
  %780 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %760, i32 %761, i32 %762, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.21, i64 0, i64 0), i32 %768, i32 %773, i32 %779)
  br label %781

781:                                              ; preds = %759
  %782 = load i64, i64* %11, align 8
  %783 = add i64 %782, 1
  store i64 %783, i64* %11, align 8
  br label %755

784:                                              ; preds = %755
  %785 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %786 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %785, i32 0, i32 11
  %787 = load i64*, i64** %786, align 8
  %788 = load i64, i64* @RF90_PATH_A, align 8
  %789 = getelementptr inbounds i64, i64* %787, i64 %788
  %790 = load i64, i64* %789, align 8
  %791 = icmp ne i64 %790, 0
  br i1 %791, label %800, label %792

792:                                              ; preds = %784
  %793 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %794 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %793, i32 0, i32 11
  %795 = load i64*, i64** %794, align 8
  %796 = load i64, i64* @RF90_PATH_B, align 8
  %797 = getelementptr inbounds i64, i64* %795, i64 %796
  %798 = load i64, i64* %797, align 8
  %799 = icmp ne i64 %798, 0
  br i1 %799, label %800, label %992

800:                                              ; preds = %792, %784
  %801 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %802 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %801, i32 0, i32 16
  %803 = load i32, i32* %802, align 8
  %804 = icmp ne i32 %803, 0
  br i1 %804, label %805, label %992

805:                                              ; preds = %800
  %806 = load i64, i64* %7, align 8
  %807 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %808 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %807, i32 0, i32 5
  %809 = load i64, i64* %808, align 8
  %810 = icmp ugt i64 %806, %809
  br i1 %810, label %811, label %848

811:                                              ; preds = %805
  %812 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %813 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %814 = load i32, i32* @DBG_LOUD, align 4
  %815 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %816 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %815, i32 0, i32 11
  %817 = load i64*, i64** %816, align 8
  %818 = load i64, i64* @RF90_PATH_A, align 8
  %819 = getelementptr inbounds i64, i64* %817, i64 %818
  %820 = load i64, i64* %819, align 8
  %821 = load i64, i64* %8, align 8
  %822 = load i64, i64* %7, align 8
  %823 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %824 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %823, i32 0, i32 0
  %825 = load i32, i32* %824, align 4
  %826 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %827 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %826, i32 0, i32 5
  %828 = load i64, i64* %827, align 8
  %829 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %812, i32 %813, i32 %814, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.22, i64 0, i64 0), i64 %820, i64 %821, i64 %822, i32 %825, i64 %828)
  %830 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %831 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %832 = load i32, i32* @DBG_LOUD, align 4
  %833 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %834 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %833, i32 0, i32 11
  %835 = load i64*, i64** %834, align 8
  %836 = load i64, i64* @RF90_PATH_B, align 8
  %837 = getelementptr inbounds i64, i64* %835, i64 %836
  %838 = load i64, i64* %837, align 8
  %839 = load i64, i64* %8, align 8
  %840 = load i64, i64* %7, align 8
  %841 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %842 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %841, i32 0, i32 0
  %843 = load i32, i32* %842, align 4
  %844 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %845 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %844, i32 0, i32 5
  %846 = load i64, i64* %845, align 8
  %847 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %830, i32 %831, i32 %832, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.23, i64 0, i64 0), i64 %838, i64 %839, i64 %840, i32 %843, i64 %846)
  br label %892

848:                                              ; preds = %805
  %849 = load i64, i64* %7, align 8
  %850 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %851 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %850, i32 0, i32 5
  %852 = load i64, i64* %851, align 8
  %853 = icmp ult i64 %849, %852
  br i1 %853, label %854, label %891

854:                                              ; preds = %848
  %855 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %856 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %857 = load i32, i32* @DBG_LOUD, align 4
  %858 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %859 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %858, i32 0, i32 11
  %860 = load i64*, i64** %859, align 8
  %861 = load i64, i64* @RF90_PATH_A, align 8
  %862 = getelementptr inbounds i64, i64* %860, i64 %861
  %863 = load i64, i64* %862, align 8
  %864 = load i64, i64* %8, align 8
  %865 = load i64, i64* %7, align 8
  %866 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %867 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %866, i32 0, i32 0
  %868 = load i32, i32* %867, align 4
  %869 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %870 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %869, i32 0, i32 5
  %871 = load i64, i64* %870, align 8
  %872 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %855, i32 %856, i32 %857, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.24, i64 0, i64 0), i64 %863, i64 %864, i64 %865, i32 %868, i64 %871)
  %873 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %874 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %875 = load i32, i32* @DBG_LOUD, align 4
  %876 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %877 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %876, i32 0, i32 11
  %878 = load i64*, i64** %877, align 8
  %879 = load i64, i64* @RF90_PATH_B, align 8
  %880 = getelementptr inbounds i64, i64* %878, i64 %879
  %881 = load i64, i64* %880, align 8
  %882 = load i64, i64* %8, align 8
  %883 = load i64, i64* %7, align 8
  %884 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %885 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %884, i32 0, i32 0
  %886 = load i32, i32* %885, align 4
  %887 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %888 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %887, i32 0, i32 5
  %889 = load i64, i64* %888, align 8
  %890 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %873, i32 %874, i32 %875, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.25, i64 0, i64 0), i64 %881, i64 %882, i64 %883, i32 %886, i64 %889)
  br label %891

891:                                              ; preds = %854, %848
  br label %892

892:                                              ; preds = %891, %811
  %893 = load i64, i64* %7, align 8
  %894 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %895 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %894, i32 0, i32 0
  %896 = load i32, i32* %895, align 4
  %897 = sext i32 %896 to i64
  %898 = icmp ugt i64 %893, %897
  br i1 %898, label %899, label %926

899:                                              ; preds = %892
  %900 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %901 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %902 = load i32, i32* @DBG_LOUD, align 4
  %903 = load i64, i64* %7, align 8
  %904 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %905 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %904, i32 0, i32 0
  %906 = load i32, i32* %905, align 4
  %907 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %900, i32 %901, i32 %902, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0), i64 %903, i32 %906)
  %908 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %909 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %910 = load i32, i32* @DBG_LOUD, align 4
  %911 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %908, i32 %909, i32 %910, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0))
  %912 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %912, i64* %11, align 8
  br label %913

913:                                              ; preds = %922, %899
  %914 = load i64, i64* %11, align 8
  %915 = load i64, i64* @MAX_PATH_NUM_8812A, align 8
  %916 = icmp ult i64 %914, %915
  br i1 %916, label %917, label %925

917:                                              ; preds = %913
  %918 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %919 = load i32, i32* @MIX_MODE, align 4
  %920 = load i64, i64* %11, align 8
  %921 = call i32 @rtl8812ae_dm_txpwr_track_set_pwr(%struct.ieee80211_hw* %918, i32 %919, i64 %920, i64 0)
  br label %922

922:                                              ; preds = %917
  %923 = load i64, i64* %11, align 8
  %924 = add i64 %923, 1
  store i64 %924, i64* %11, align 8
  br label %913

925:                                              ; preds = %913
  br label %954

926:                                              ; preds = %892
  %927 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %928 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %929 = load i32, i32* @DBG_LOUD, align 4
  %930 = load i64, i64* %7, align 8
  %931 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %932 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %931, i32 0, i32 0
  %933 = load i32, i32* %932, align 4
  %934 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %927, i32 %928, i32 %929, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0), i64 %930, i32 %933)
  %935 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %936 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %937 = load i32, i32* @DBG_LOUD, align 4
  %938 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %935, i32 %936, i32 %937, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0))
  %939 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %939, i64* %11, align 8
  br label %940

940:                                              ; preds = %950, %926
  %941 = load i64, i64* %11, align 8
  %942 = load i64, i64* @MAX_PATH_NUM_8812A, align 8
  %943 = icmp ult i64 %941, %942
  br i1 %943, label %944, label %953

944:                                              ; preds = %940
  %945 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %946 = load i32, i32* @MIX_MODE, align 4
  %947 = load i64, i64* %11, align 8
  %948 = load i64, i64* %16, align 8
  %949 = call i32 @rtl8812ae_dm_txpwr_track_set_pwr(%struct.ieee80211_hw* %945, i32 %946, i64 %947, i64 %948)
  br label %950

950:                                              ; preds = %944
  %951 = load i64, i64* %11, align 8
  %952 = add i64 %951, 1
  store i64 %952, i64* %11, align 8
  br label %940

953:                                              ; preds = %940
  br label %954

954:                                              ; preds = %953, %925
  %955 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %956 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %955, i32 0, i32 14
  %957 = load i32, i32* %956, align 4
  %958 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %959 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %958, i32 0, i32 1
  store i32 %957, i32* %959, align 4
  %960 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %960, i64* %11, align 8
  br label %961

961:                                              ; preds = %977, %954
  %962 = load i64, i64* %11, align 8
  %963 = load i64, i64* @MAX_PATH_NUM_8812A, align 8
  %964 = icmp ult i64 %962, %963
  br i1 %964, label %965, label %980

965:                                              ; preds = %961
  %966 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %967 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %966, i32 0, i32 15
  %968 = load i32*, i32** %967, align 8
  %969 = load i64, i64* %11, align 8
  %970 = getelementptr inbounds i32, i32* %968, i64 %969
  %971 = load i32, i32* %970, align 4
  %972 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %973 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %972, i32 0, i32 2
  %974 = load i32*, i32** %973, align 8
  %975 = load i64, i64* %11, align 8
  %976 = getelementptr inbounds i32, i32* %974, i64 %975
  store i32 %971, i32* %976, align 4
  br label %977

977:                                              ; preds = %965
  %978 = load i64, i64* %11, align 8
  %979 = add i64 %978, 1
  store i64 %979, i64* %11, align 8
  br label %961

980:                                              ; preds = %961
  %981 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %982 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %983 = load i32, i32* @DBG_LOUD, align 4
  %984 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %985 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %984, i32 0, i32 5
  %986 = load i64, i64* %985, align 8
  %987 = load i64, i64* %7, align 8
  %988 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %981, i32 %982, i32 %983, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.29, i64 0, i64 0), i64 %986, i64 %987)
  %989 = load i64, i64* %7, align 8
  %990 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %991 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %990, i32 0, i32 5
  store i64 %989, i64* %991, align 8
  br label %992

992:                                              ; preds = %980, %800, %792
  %993 = load i64, i64* %10, align 8
  %994 = load i64, i64* @IQK_THRESHOLD, align 8
  %995 = icmp uge i64 %993, %994
  br i1 %995, label %996, label %1001

996:                                              ; preds = %992
  %997 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %998 = load i64, i64* %10, align 8
  %999 = load i64, i64* %7, align 8
  %1000 = call i32 @rtl8812ae_do_iqk(%struct.ieee80211_hw* %997, i64 %998, i64 %999, i32 8)
  br label %1001

1001:                                             ; preds = %996, %992
  %1002 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %1003 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %1004 = load i32, i32* @DBG_LOUD, align 4
  %1005 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %1002, i32 %1003, i32 %1004, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.30, i64 0, i64 0))
  br label %1006

1006:                                             ; preds = %1001, %78
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @rtl8812ae_get_delta_swing_table(%struct.ieee80211_hw*, i64**, i64**, i64**, i64**) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i64 @rtl_get_rfreg(%struct.ieee80211_hw*, i64, i32, i32) #1

declare dso_local i32 @rtl8821ae_phy_lc_calibrate(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8812ae_dm_txpwr_track_set_pwr(%struct.ieee80211_hw*, i32, i64, i64) #1

declare dso_local i32 @rtl8812ae_do_iqk(%struct.ieee80211_hw*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
