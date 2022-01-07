; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_txpower_tracking_callback_thermalmeter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_txpower_tracking_callback_thermalmeter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64*, i64, i64, i64 }
%struct.rtl_phy = type { i64, i64, i64, i64 }
%struct.rtl_hal = type { i32 }
%struct.rtl_efuse = type { i64 }

@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"rtl92c_dm_txpower_tracking_callback_thermalmeter\0A\00", align 1
@RF90_PATH_A = common dso_local global i32 0, align 4
@RF_T_METER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"Readback Thermal Meter = 0x%x pre thermal meter 0x%x eeprom_thermalmeter 0x%x\0A\00", align 1
@ROFDM0_XATXIQIMBALANCE = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@MASKOFDM_D = common dso_local global i64 0, align 8
@OFDM_TABLE_LENGTH = common dso_local global i32 0, align 4
@ofdmswing_table = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"Initial pathA ele_d reg0x%x = 0x%lx, ofdm_index=0x%x\0A\00", align 1
@ROFDM0_XBTXIQIMBALANCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Initial pathB ele_d reg0x%x = 0x%lx, ofdm_index=0x%x\0A\00", align 1
@RCCK0_TXFILTER2 = common dso_local global i32 0, align 4
@MASKCCK = common dso_local global i64 0, align 8
@CCK_TABLE_LENGTH = common dso_local global i32 0, align 4
@cckswing_table_ch14 = common dso_local global i32** null, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"Initial reg0x%x = 0x%lx, cck_index=0x%x, ch 14 %d\0A\00", align 1
@cckswing_table_ch1ch13 = common dso_local global i32** null, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"Initial reg0x%x = 0x%lx, cck_index=0x%x, ch14 %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [120 x i8] c"Readback Thermal Meter = 0x%x pre thermal meter 0x%x eeprom_thermalmeter 0x%x delta 0x%x delta_lck 0x%x delta_iqk 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"temp OFDM_A_index=0x%x, OFDM_B_index=0x%x, cck_index=0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"temp OFDM_A_index=0x%x, cck_index=0x%x\0A\00", align 1
@OFDM_TABLE_SIZE = common dso_local global i32 0, align 4
@CCK_TABLE_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [58 x i8] c"new OFDM_A_index=0x%x, OFDM_B_index=0x%x, cck_index=0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"new OFDM_A_index=0x%x, cck_index=0x%x\0A\00", align 1
@ROFDM0_XCTXAFE = common dso_local global i32 0, align 4
@MASKH4BITS = common dso_local global i32 0, align 4
@ROFDM0_ECCATHRESHOLD = common dso_local global i32 0, align 4
@ROFDM0_XDTXAFE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"<===\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92c_dm_txpower_tracking_callback_thermalmeter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92c_dm_txpower_tracking_callback_thermalmeter(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_phy*, align 8
  %6 = alloca %struct.rtl_efuse*, align 8
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
  %17 = alloca i64, align 8
  %18 = alloca [2 x i64], align 16
  %19 = alloca [2 x i64], align 16
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [3 x i32], align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %28 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %27)
  store %struct.rtl_priv* %28, %struct.rtl_priv** %3, align 8
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %30 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %29)
  %31 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %30)
  store %struct.rtl_hal* %31, %struct.rtl_hal** %4, align 8
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %33 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %32, i32 0, i32 1
  store %struct.rtl_phy* %33, %struct.rtl_phy** %5, align 8
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %35 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %34)
  %36 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %35)
  store %struct.rtl_efuse* %36, %struct.rtl_efuse** %6, align 8
  store i64 0, i64* %17, align 8
  %37 = bitcast [2 x i64]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %37, i8 0, i64 16, i1 false)
  store i64 0, i64* %20, align 8
  store i32 0, i32* %21, align 4
  %38 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %39 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IS_92C_SERIAL(i32 %40)
  store i32 %41, i32* %23, align 4
  %42 = bitcast [3 x i32]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %42, i8 0, i64 12, i1 false)
  store i64 6, i64* %25, align 8
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %44 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %47 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %48 = load i32, i32* @DBG_LOUD, align 4
  %49 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %51 = load i32, i32* @RF90_PATH_A, align 4
  %52 = load i32, i32* @RF_T_METER, align 4
  %53 = call i64 @rtl_get_rfreg(%struct.ieee80211_hw* %50, i32 %51, i32 %52, i32 31)
  store i64 %53, i64* %7, align 8
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %55 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %56 = load i32, i32* @DBG_LOUD, align 4
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %59 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %63 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i64 %57, i64 %61, i64 %64)
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %69 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  %72 = call i32 @rtl92c_phy_ap_calibrate(%struct.ieee80211_hw* %66, i64 %71)
  %73 = load i32, i32* %23, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %1
  store i64 2, i64* %26, align 8
  br label %77

76:                                               ; preds = %1
  store i64 1, i64* %26, align 8
  br label %77

77:                                               ; preds = %76, %75
  %78 = load i64, i64* %7, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %1235

80:                                               ; preds = %77
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %82 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %83 = load i32, i32* @MASKDWORD, align 4
  %84 = call i64 @rtl_get_bbreg(%struct.ieee80211_hw* %81, i32 %82, i32 %83)
  %85 = load i64, i64* @MASKOFDM_D, align 8
  %86 = and i64 %84, %85
  store i64 %86, i64* %12, align 8
  store i32 0, i32* %22, align 4
  br label %87

87:                                               ; preds = %114, %80
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* @OFDM_TABLE_LENGTH, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %117

91:                                               ; preds = %87
  %92 = load i64, i64* %12, align 8
  %93 = load i64*, i64** @ofdmswing_table, align 8
  %94 = load i32, i32* %22, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @MASKOFDM_D, align 8
  %99 = and i64 %97, %98
  %100 = icmp eq i64 %92, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %91
  %102 = load i32, i32* %22, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0
  store i64 %103, i64* %104, align 16
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %106 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %107 = load i32, i32* @DBG_LOUD, align 4
  %108 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %109 = load i64, i64* %12, align 8
  %110 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0
  %111 = load i64, i64* %110, align 16
  %112 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %105, i32 %106, i32 %107, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %108, i64 %109, i64 %111)
  br label %117

113:                                              ; preds = %91
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %22, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %22, align 4
  br label %87

117:                                              ; preds = %101, %87
  %118 = load i32, i32* %23, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %158

120:                                              ; preds = %117
  %121 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %122 = load i32, i32* @ROFDM0_XBTXIQIMBALANCE, align 4
  %123 = load i32, i32* @MASKDWORD, align 4
  %124 = call i64 @rtl_get_bbreg(%struct.ieee80211_hw* %121, i32 %122, i32 %123)
  %125 = load i64, i64* @MASKOFDM_D, align 8
  %126 = and i64 %124, %125
  store i64 %126, i64* %12, align 8
  store i32 0, i32* %22, align 4
  br label %127

127:                                              ; preds = %154, %120
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* @OFDM_TABLE_LENGTH, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %157

131:                                              ; preds = %127
  %132 = load i64, i64* %12, align 8
  %133 = load i64*, i64** @ofdmswing_table, align 8
  %134 = load i32, i32* %22, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @MASKOFDM_D, align 8
  %139 = and i64 %137, %138
  %140 = icmp eq i64 %132, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %131
  %142 = load i32, i32* %22, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 1
  store i64 %143, i64* %144, align 8
  %145 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %146 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %147 = load i32, i32* @DBG_LOUD, align 4
  %148 = load i32, i32* @ROFDM0_XBTXIQIMBALANCE, align 4
  %149 = load i64, i64* %12, align 8
  %150 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 1
  %151 = load i64, i64* %150, align 8
  %152 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %145, i32 %146, i32 %147, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %148, i64 %149, i64 %151)
  br label %157

153:                                              ; preds = %131
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %22, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %22, align 4
  br label %127

157:                                              ; preds = %141, %127
  br label %158

158:                                              ; preds = %157, %117
  %159 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %160 = load i32, i32* @RCCK0_TXFILTER2, align 4
  %161 = load i32, i32* @MASKDWORD, align 4
  %162 = call i64 @rtl_get_bbreg(%struct.ieee80211_hw* %159, i32 %160, i32 %161)
  %163 = load i64, i64* @MASKCCK, align 8
  %164 = and i64 %162, %163
  store i64 %164, i64* %13, align 8
  store i32 0, i32* %22, align 4
  br label %165

165:                                              ; preds = %228, %158
  %166 = load i32, i32* %22, align 4
  %167 = load i32, i32* @CCK_TABLE_LENGTH, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %231

169:                                              ; preds = %165
  %170 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %171 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 7
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %201

175:                                              ; preds = %169
  %176 = bitcast i64* %13 to i8*
  %177 = load i32**, i32*** @cckswing_table_ch14, align 8
  %178 = load i32, i32* %22, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %177, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  %183 = bitcast i32* %182 to i8*
  %184 = call i64 @memcmp(i8* %176, i8* %183, i32 4)
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %175
  %187 = load i32, i32* %22, align 4
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %20, align 8
  %189 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %190 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %191 = load i32, i32* @DBG_LOUD, align 4
  %192 = load i32, i32* @RCCK0_TXFILTER2, align 4
  %193 = load i64, i64* %13, align 8
  %194 = load i64, i64* %20, align 8
  %195 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %196 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 7
  %198 = load i64, i64* %197, align 8
  %199 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %189, i32 %190, i32 %191, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %192, i64 %193, i64 %194, i64 %198)
  br label %231

200:                                              ; preds = %175
  br label %227

201:                                              ; preds = %169
  %202 = bitcast i64* %13 to i8*
  %203 = load i32**, i32*** @cckswing_table_ch1ch13, align 8
  %204 = load i32, i32* %22, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32*, i32** %203, i64 %205
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 2
  %209 = bitcast i32* %208 to i8*
  %210 = call i64 @memcmp(i8* %202, i8* %209, i32 4)
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %201
  %213 = load i32, i32* %22, align 4
  %214 = sext i32 %213 to i64
  store i64 %214, i64* %20, align 8
  %215 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %216 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %217 = load i32, i32* @DBG_LOUD, align 4
  %218 = load i32, i32* @RCCK0_TXFILTER2, align 4
  %219 = load i64, i64* %13, align 8
  %220 = load i64, i64* %20, align 8
  %221 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %222 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 7
  %224 = load i64, i64* %223, align 8
  %225 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %215, i32 %216, i32 %217, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %218, i64 %219, i64 %220, i64 %224)
  br label %231

226:                                              ; preds = %201
  br label %227

227:                                              ; preds = %226, %200
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %22, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %22, align 4
  br label %165

231:                                              ; preds = %212, %186, %165
  %232 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %233 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %277, label %237

237:                                              ; preds = %231
  %238 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %239 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %242 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 1
  store i64 %240, i64* %243, align 8
  %244 = load i64, i64* %7, align 8
  %245 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %246 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 2
  store i64 %244, i64* %247, align 8
  %248 = load i64, i64* %7, align 8
  %249 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %250 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 3
  store i64 %248, i64* %251, align 8
  store i32 0, i32* %22, align 4
  br label %252

252:                                              ; preds = %269, %237
  %253 = load i32, i32* %22, align 4
  %254 = sext i32 %253 to i64
  %255 = load i64, i64* %26, align 8
  %256 = icmp slt i64 %254, %255
  br i1 %256, label %257, label %272

257:                                              ; preds = %252
  %258 = load i32, i32* %22, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %263 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 4
  %265 = load i64*, i64** %264, align 8
  %266 = load i32, i32* %22, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %265, i64 %267
  store i64 %261, i64* %268, align 8
  br label %269

269:                                              ; preds = %257
  %270 = load i32, i32* %22, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %22, align 4
  br label %252

272:                                              ; preds = %252
  %273 = load i64, i64* %20, align 8
  %274 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %275 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 5
  store i64 %273, i64* %276, align 8
  br label %277

277:                                              ; preds = %272, %231
  %278 = load i64, i64* %7, align 8
  %279 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %280 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = icmp sgt i64 %278, %282
  br i1 %283, label %284, label %291

284:                                              ; preds = %277
  %285 = load i64, i64* %7, align 8
  %286 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %287 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = sub nsw i64 %285, %289
  br label %298

291:                                              ; preds = %277
  %292 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %293 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* %7, align 8
  %297 = sub nsw i64 %295, %296
  br label %298

298:                                              ; preds = %291, %284
  %299 = phi i64 [ %290, %284 ], [ %297, %291 ]
  store i64 %299, i64* %8, align 8
  %300 = load i64, i64* %7, align 8
  %301 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %302 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = icmp sgt i64 %300, %304
  br i1 %305, label %306, label %313

306:                                              ; preds = %298
  %307 = load i64, i64* %7, align 8
  %308 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %309 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = sub nsw i64 %307, %311
  br label %320

313:                                              ; preds = %298
  %314 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %315 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* %7, align 8
  %319 = sub nsw i64 %317, %318
  br label %320

320:                                              ; preds = %313, %306
  %321 = phi i64 [ %312, %306 ], [ %319, %313 ]
  store i64 %321, i64* %9, align 8
  %322 = load i64, i64* %7, align 8
  %323 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %324 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i32 0, i32 3
  %326 = load i64, i64* %325, align 8
  %327 = icmp sgt i64 %322, %326
  br i1 %327, label %328, label %335

328:                                              ; preds = %320
  %329 = load i64, i64* %7, align 8
  %330 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %331 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i32 0, i32 3
  %333 = load i64, i64* %332, align 8
  %334 = sub nsw i64 %329, %333
  br label %342

335:                                              ; preds = %320
  %336 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %337 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 3
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* %7, align 8
  %341 = sub nsw i64 %339, %340
  br label %342

342:                                              ; preds = %335, %328
  %343 = phi i64 [ %334, %328 ], [ %341, %335 ]
  store i64 %343, i64* %10, align 8
  %344 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %345 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %346 = load i32, i32* @DBG_LOUD, align 4
  %347 = load i64, i64* %7, align 8
  %348 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %349 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %353 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* %8, align 8
  %356 = load i64, i64* %9, align 8
  %357 = load i64, i64* %10, align 8
  %358 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %344, i32 %345, i32 %346, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.6, i64 0, i64 0), i64 %347, i64 %351, i64 %354, i64 %355, i64 %356, i64 %357)
  %359 = load i64, i64* %9, align 8
  %360 = icmp sgt i64 %359, 1
  br i1 %360, label %361, label %368

361:                                              ; preds = %342
  %362 = load i64, i64* %7, align 8
  %363 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %364 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %364, i32 0, i32 2
  store i64 %362, i64* %365, align 8
  %366 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %367 = call i32 @rtl92c_phy_lc_calibrate(%struct.ieee80211_hw* %366)
  br label %368

368:                                              ; preds = %361, %342
  %369 = load i64, i64* %8, align 8
  %370 = icmp sgt i64 %369, 0
  br i1 %370, label %371, label %833

371:                                              ; preds = %368
  %372 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %373 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %373, i32 0, i32 6
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %833

377:                                              ; preds = %371
  %378 = load i64, i64* %7, align 8
  %379 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %380 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %380, i32 0, i32 1
  %382 = load i64, i64* %381, align 8
  %383 = icmp sgt i64 %378, %382
  br i1 %383, label %384, label %411

384:                                              ; preds = %377
  store i32 0, i32* %22, align 4
  br label %385

385:                                              ; preds = %401, %384
  %386 = load i32, i32* %22, align 4
  %387 = sext i32 %386 to i64
  %388 = load i64, i64* %26, align 8
  %389 = icmp slt i64 %387, %388
  br i1 %389, label %390, label %404

390:                                              ; preds = %385
  %391 = load i64, i64* %8, align 8
  %392 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %393 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %393, i32 0, i32 4
  %395 = load i64*, i64** %394, align 8
  %396 = load i32, i32* %22, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i64, i64* %395, i64 %397
  %399 = load i64, i64* %398, align 8
  %400 = sub nsw i64 %399, %391
  store i64 %400, i64* %398, align 8
  br label %401

401:                                              ; preds = %390
  %402 = load i32, i32* %22, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %22, align 4
  br label %385

404:                                              ; preds = %385
  %405 = load i64, i64* %8, align 8
  %406 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %407 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %407, i32 0, i32 5
  %409 = load i64, i64* %408, align 8
  %410 = sub nsw i64 %409, %405
  store i64 %410, i64* %408, align 8
  br label %438

411:                                              ; preds = %377
  store i32 0, i32* %22, align 4
  br label %412

412:                                              ; preds = %428, %411
  %413 = load i32, i32* %22, align 4
  %414 = sext i32 %413 to i64
  %415 = load i64, i64* %26, align 8
  %416 = icmp slt i64 %414, %415
  br i1 %416, label %417, label %431

417:                                              ; preds = %412
  %418 = load i64, i64* %8, align 8
  %419 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %420 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %420, i32 0, i32 4
  %422 = load i64*, i64** %421, align 8
  %423 = load i32, i32* %22, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i64, i64* %422, i64 %424
  %426 = load i64, i64* %425, align 8
  %427 = add nsw i64 %426, %418
  store i64 %427, i64* %425, align 8
  br label %428

428:                                              ; preds = %417
  %429 = load i32, i32* %22, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %22, align 4
  br label %412

431:                                              ; preds = %412
  %432 = load i64, i64* %8, align 8
  %433 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %434 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %434, i32 0, i32 5
  %436 = load i64, i64* %435, align 8
  %437 = add nsw i64 %436, %432
  store i64 %437, i64* %435, align 8
  br label %438

438:                                              ; preds = %431, %404
  %439 = load i32, i32* %23, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %462

441:                                              ; preds = %438
  %442 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %443 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %444 = load i32, i32* @DBG_LOUD, align 4
  %445 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %446 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %446, i32 0, i32 4
  %448 = load i64*, i64** %447, align 8
  %449 = getelementptr inbounds i64, i64* %448, i64 0
  %450 = load i64, i64* %449, align 8
  %451 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %452 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %452, i32 0, i32 4
  %454 = load i64*, i64** %453, align 8
  %455 = getelementptr inbounds i64, i64* %454, i64 1
  %456 = load i64, i64* %455, align 8
  %457 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %458 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %458, i32 0, i32 5
  %460 = load i64, i64* %459, align 8
  %461 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %442, i32 %443, i32 %444, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i64 %450, i64 %456, i64 %460)
  br label %477

462:                                              ; preds = %438
  %463 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %464 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %465 = load i32, i32* @DBG_LOUD, align 4
  %466 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %467 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %467, i32 0, i32 4
  %469 = load i64*, i64** %468, align 8
  %470 = getelementptr inbounds i64, i64* %469, i64 0
  %471 = load i64, i64* %470, align 8
  %472 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %473 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %473, i32 0, i32 5
  %475 = load i64, i64* %474, align 8
  %476 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %463, i32 %464, i32 %465, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i64 %471, i64 %475)
  br label %477

477:                                              ; preds = %462, %441
  %478 = load i64, i64* %7, align 8
  %479 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %480 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %479, i32 0, i32 0
  %481 = load i64, i64* %480, align 8
  %482 = icmp sgt i64 %478, %481
  br i1 %482, label %483, label %512

483:                                              ; preds = %477
  store i32 0, i32* %22, align 4
  br label %484

484:                                              ; preds = %502, %483
  %485 = load i32, i32* %22, align 4
  %486 = sext i32 %485 to i64
  %487 = load i64, i64* %26, align 8
  %488 = icmp slt i64 %486, %487
  br i1 %488, label %489, label %505

489:                                              ; preds = %484
  %490 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %491 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %490, i32 0, i32 0
  %492 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %491, i32 0, i32 4
  %493 = load i64*, i64** %492, align 8
  %494 = load i32, i32* %22, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i64, i64* %493, i64 %495
  %497 = load i64, i64* %496, align 8
  %498 = add nsw i64 %497, 1
  %499 = load i32, i32* %22, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %500
  store i64 %498, i64* %501, align 8
  br label %502

502:                                              ; preds = %489
  %503 = load i32, i32* %22, align 4
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %22, align 4
  br label %484

505:                                              ; preds = %484
  %506 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %507 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %507, i32 0, i32 5
  %509 = load i64, i64* %508, align 8
  %510 = add nsw i64 %509, 1
  %511 = trunc i64 %510 to i32
  store i32 %511, i32* %21, align 4
  br label %539

512:                                              ; preds = %477
  store i32 0, i32* %22, align 4
  br label %513

513:                                              ; preds = %530, %512
  %514 = load i32, i32* %22, align 4
  %515 = sext i32 %514 to i64
  %516 = load i64, i64* %26, align 8
  %517 = icmp slt i64 %515, %516
  br i1 %517, label %518, label %533

518:                                              ; preds = %513
  %519 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %520 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %520, i32 0, i32 4
  %522 = load i64*, i64** %521, align 8
  %523 = load i32, i32* %22, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i64, i64* %522, i64 %524
  %526 = load i64, i64* %525, align 8
  %527 = load i32, i32* %22, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %528
  store i64 %526, i64* %529, align 8
  br label %530

530:                                              ; preds = %518
  %531 = load i32, i32* %22, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %22, align 4
  br label %513

533:                                              ; preds = %513
  %534 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %535 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %535, i32 0, i32 5
  %537 = load i64, i64* %536, align 8
  %538 = trunc i64 %537 to i32
  store i32 %538, i32* %21, align 4
  br label %539

539:                                              ; preds = %533, %505
  store i32 0, i32* %22, align 4
  br label %540

540:                                              ; preds = %660, %539
  %541 = load i32, i32* %22, align 4
  %542 = sext i32 %541 to i64
  %543 = load i64, i64* %26, align 8
  %544 = icmp slt i64 %542, %543
  br i1 %544, label %545, label %663

545:                                              ; preds = %540
  %546 = load i32, i32* %22, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %547
  %549 = load i32, i32* %548, align 4
  %550 = icmp sge i32 %549, 0
  br i1 %550, label %551, label %596

551:                                              ; preds = %545
  %552 = load i32, i32* %22, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %553
  %555 = load i32, i32* %554, align 4
  %556 = icmp sle i32 %555, 26
  br i1 %556, label %557, label %596

557:                                              ; preds = %551
  %558 = load i64, i64* %7, align 8
  %559 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %560 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %559, i32 0, i32 0
  %561 = load i64, i64* %560, align 8
  %562 = icmp sgt i64 %558, %561
  br i1 %562, label %563, label %579

563:                                              ; preds = %557
  %564 = load i64, i64* %8, align 8
  %565 = icmp slt i64 %564, 5
  br i1 %565, label %566, label %572

566:                                              ; preds = %563
  %567 = load i32, i32* %22, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %568
  %570 = load i64, i64* %569, align 8
  %571 = sub nsw i64 %570, 1
  store i64 %571, i64* %569, align 8
  br label %578

572:                                              ; preds = %563
  %573 = load i32, i32* %22, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %574
  %576 = load i64, i64* %575, align 8
  %577 = sub nsw i64 %576, 2
  store i64 %577, i64* %575, align 8
  br label %578

578:                                              ; preds = %572, %566
  br label %595

579:                                              ; preds = %557
  %580 = load i64, i64* %8, align 8
  %581 = icmp sgt i64 %580, 5
  br i1 %581, label %582, label %594

582:                                              ; preds = %579
  %583 = load i64, i64* %7, align 8
  %584 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %585 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %584, i32 0, i32 0
  %586 = load i64, i64* %585, align 8
  %587 = icmp slt i64 %583, %586
  br i1 %587, label %588, label %594

588:                                              ; preds = %582
  %589 = load i32, i32* %22, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %590
  %592 = load i64, i64* %591, align 8
  %593 = add nsw i64 %592, 1
  store i64 %593, i64* %591, align 8
  br label %594

594:                                              ; preds = %588, %582, %579
  br label %595

595:                                              ; preds = %594, %578
  br label %659

596:                                              ; preds = %551, %545
  %597 = load i32, i32* %22, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %598
  %600 = load i32, i32* %599, align 4
  %601 = icmp sge i32 %600, 27
  br i1 %601, label %602, label %630

602:                                              ; preds = %596
  %603 = load i32, i32* %22, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %604
  %606 = load i32, i32* %605, align 4
  %607 = icmp sle i32 %606, 32
  br i1 %607, label %608, label %630

608:                                              ; preds = %602
  %609 = load i64, i64* %7, align 8
  %610 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %611 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %610, i32 0, i32 0
  %612 = load i64, i64* %611, align 8
  %613 = icmp sgt i64 %609, %612
  br i1 %613, label %614, label %630

614:                                              ; preds = %608
  %615 = load i64, i64* %8, align 8
  %616 = icmp slt i64 %615, 5
  br i1 %616, label %617, label %623

617:                                              ; preds = %614
  %618 = load i32, i32* %22, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %619
  %621 = load i64, i64* %620, align 8
  %622 = sub nsw i64 %621, 1
  store i64 %622, i64* %620, align 8
  br label %629

623:                                              ; preds = %614
  %624 = load i32, i32* %22, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %625
  %627 = load i64, i64* %626, align 8
  %628 = sub nsw i64 %627, 2
  store i64 %628, i64* %626, align 8
  br label %629

629:                                              ; preds = %623, %617
  br label %658

630:                                              ; preds = %608, %602, %596
  %631 = load i32, i32* %22, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %632
  %634 = load i32, i32* %633, align 4
  %635 = icmp sge i32 %634, 32
  br i1 %635, label %636, label %657

636:                                              ; preds = %630
  %637 = load i32, i32* %22, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %638
  %640 = load i32, i32* %639, align 4
  %641 = icmp sle i32 %640, 38
  br i1 %641, label %642, label %657

642:                                              ; preds = %636
  %643 = load i64, i64* %7, align 8
  %644 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %645 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %644, i32 0, i32 0
  %646 = load i64, i64* %645, align 8
  %647 = icmp sgt i64 %643, %646
  br i1 %647, label %648, label %657

648:                                              ; preds = %642
  %649 = load i64, i64* %8, align 8
  %650 = icmp sgt i64 %649, 5
  br i1 %650, label %651, label %657

651:                                              ; preds = %648
  %652 = load i32, i32* %22, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %653
  %655 = load i64, i64* %654, align 8
  %656 = sub nsw i64 %655, 1
  store i64 %656, i64* %654, align 8
  br label %657

657:                                              ; preds = %651, %648, %642, %636, %630
  br label %658

658:                                              ; preds = %657, %629
  br label %659

659:                                              ; preds = %658, %595
  br label %660

660:                                              ; preds = %659
  %661 = load i32, i32* %22, align 4
  %662 = add nsw i32 %661, 1
  store i32 %662, i32* %22, align 4
  br label %540

663:                                              ; preds = %540
  %664 = load i32, i32* %22, align 4
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %665
  %667 = load i32, i32* %666, align 4
  %668 = icmp sge i32 %667, 0
  br i1 %668, label %669, label %705

669:                                              ; preds = %663
  %670 = load i32, i32* %22, align 4
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %671
  %673 = load i32, i32* %672, align 4
  %674 = icmp sle i32 %673, 26
  br i1 %674, label %675, label %705

675:                                              ; preds = %669
  %676 = load i64, i64* %7, align 8
  %677 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %678 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %677, i32 0, i32 0
  %679 = load i64, i64* %678, align 8
  %680 = icmp sgt i64 %676, %679
  br i1 %680, label %681, label %691

681:                                              ; preds = %675
  %682 = load i64, i64* %8, align 8
  %683 = icmp slt i64 %682, 5
  br i1 %683, label %684, label %687

684:                                              ; preds = %681
  %685 = load i32, i32* %21, align 4
  %686 = sub nsw i32 %685, 1
  store i32 %686, i32* %21, align 4
  br label %690

687:                                              ; preds = %681
  %688 = load i32, i32* %21, align 4
  %689 = sub nsw i32 %688, 2
  store i32 %689, i32* %21, align 4
  br label %690

690:                                              ; preds = %687, %684
  br label %704

691:                                              ; preds = %675
  %692 = load i64, i64* %8, align 8
  %693 = icmp sgt i64 %692, 5
  br i1 %693, label %694, label %703

694:                                              ; preds = %691
  %695 = load i64, i64* %7, align 8
  %696 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %697 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %696, i32 0, i32 0
  %698 = load i64, i64* %697, align 8
  %699 = icmp slt i64 %695, %698
  br i1 %699, label %700, label %703

700:                                              ; preds = %694
  %701 = load i32, i32* %21, align 4
  %702 = add nsw i32 %701, 1
  store i32 %702, i32* %21, align 4
  br label %703

703:                                              ; preds = %700, %694, %691
  br label %704

704:                                              ; preds = %703, %690
  br label %759

705:                                              ; preds = %669, %663
  %706 = load i32, i32* %22, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %707
  %709 = load i32, i32* %708, align 4
  %710 = icmp sge i32 %709, 27
  br i1 %710, label %711, label %733

711:                                              ; preds = %705
  %712 = load i32, i32* %22, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %713
  %715 = load i32, i32* %714, align 4
  %716 = icmp sle i32 %715, 32
  br i1 %716, label %717, label %733

717:                                              ; preds = %711
  %718 = load i64, i64* %7, align 8
  %719 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %720 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %719, i32 0, i32 0
  %721 = load i64, i64* %720, align 8
  %722 = icmp sgt i64 %718, %721
  br i1 %722, label %723, label %733

723:                                              ; preds = %717
  %724 = load i64, i64* %8, align 8
  %725 = icmp slt i64 %724, 5
  br i1 %725, label %726, label %729

726:                                              ; preds = %723
  %727 = load i32, i32* %21, align 4
  %728 = sub nsw i32 %727, 1
  store i32 %728, i32* %21, align 4
  br label %732

729:                                              ; preds = %723
  %730 = load i32, i32* %21, align 4
  %731 = sub nsw i32 %730, 2
  store i32 %731, i32* %21, align 4
  br label %732

732:                                              ; preds = %729, %726
  br label %758

733:                                              ; preds = %717, %711, %705
  %734 = load i32, i32* %22, align 4
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %735
  %737 = load i32, i32* %736, align 4
  %738 = icmp sge i32 %737, 32
  br i1 %738, label %739, label %757

739:                                              ; preds = %733
  %740 = load i32, i32* %22, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %741
  %743 = load i32, i32* %742, align 4
  %744 = icmp sle i32 %743, 38
  br i1 %744, label %745, label %757

745:                                              ; preds = %739
  %746 = load i64, i64* %7, align 8
  %747 = load %struct.rtl_efuse*, %struct.rtl_efuse** %6, align 8
  %748 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %747, i32 0, i32 0
  %749 = load i64, i64* %748, align 8
  %750 = icmp sgt i64 %746, %749
  br i1 %750, label %751, label %757

751:                                              ; preds = %745
  %752 = load i64, i64* %8, align 8
  %753 = icmp sgt i64 %752, 5
  br i1 %753, label %754, label %757

754:                                              ; preds = %751
  %755 = load i32, i32* %21, align 4
  %756 = sub nsw i32 %755, 1
  store i32 %756, i32* %21, align 4
  br label %757

757:                                              ; preds = %754, %751, %745, %739, %733
  br label %758

758:                                              ; preds = %757, %732
  br label %759

759:                                              ; preds = %758, %704
  store i32 0, i32* %22, align 4
  br label %760

760:                                              ; preds = %795, %759
  %761 = load i32, i32* %22, align 4
  %762 = sext i32 %761 to i64
  %763 = load i64, i64* %26, align 8
  %764 = icmp slt i64 %762, %763
  br i1 %764, label %765, label %798

765:                                              ; preds = %760
  %766 = load i32, i32* %22, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %767
  %769 = load i64, i64* %768, align 8
  %770 = load i32, i32* @OFDM_TABLE_SIZE, align 4
  %771 = sub nsw i32 %770, 1
  %772 = sext i32 %771 to i64
  %773 = icmp sgt i64 %769, %772
  br i1 %773, label %774, label %781

774:                                              ; preds = %765
  %775 = load i32, i32* @OFDM_TABLE_SIZE, align 4
  %776 = sub nsw i32 %775, 1
  %777 = sext i32 %776 to i64
  %778 = load i32, i32* %22, align 4
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %779
  store i64 %777, i64* %780, align 8
  br label %794

781:                                              ; preds = %765
  %782 = load i32, i32* %22, align 4
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %783
  %785 = load i64, i64* %784, align 8
  %786 = load i64, i64* %25, align 8
  %787 = icmp slt i64 %785, %786
  br i1 %787, label %788, label %793

788:                                              ; preds = %781
  %789 = load i64, i64* %25, align 8
  %790 = load i32, i32* %22, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 %791
  store i64 %789, i64* %792, align 8
  br label %793

793:                                              ; preds = %788, %781
  br label %794

794:                                              ; preds = %793, %774
  br label %795

795:                                              ; preds = %794
  %796 = load i32, i32* %22, align 4
  %797 = add nsw i32 %796, 1
  store i32 %797, i32* %22, align 4
  br label %760

798:                                              ; preds = %760
  %799 = load i32, i32* %21, align 4
  %800 = load i32, i32* @CCK_TABLE_SIZE, align 4
  %801 = sub nsw i32 %800, 1
  %802 = icmp sgt i32 %799, %801
  br i1 %802, label %803, label %806

803:                                              ; preds = %798
  %804 = load i32, i32* @CCK_TABLE_SIZE, align 4
  %805 = sub nsw i32 %804, 1
  store i32 %805, i32* %21, align 4
  br label %811

806:                                              ; preds = %798
  %807 = load i32, i32* %21, align 4
  %808 = icmp slt i32 %807, 0
  br i1 %808, label %809, label %810

809:                                              ; preds = %806
  store i32 0, i32* %21, align 4
  br label %810

810:                                              ; preds = %809, %806
  br label %811

811:                                              ; preds = %810, %803
  %812 = load i32, i32* %23, align 4
  %813 = icmp ne i32 %812, 0
  br i1 %813, label %814, label %824

814:                                              ; preds = %811
  %815 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %816 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %817 = load i32, i32* @DBG_LOUD, align 4
  %818 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 0
  %819 = load i64, i64* %818, align 16
  %820 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 1
  %821 = load i64, i64* %820, align 8
  %822 = load i32, i32* %21, align 4
  %823 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %815, i32 %816, i32 %817, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0), i64 %819, i64 %821, i32 %822)
  br label %832

824:                                              ; preds = %811
  %825 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %826 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %827 = load i32, i32* @DBG_LOUD, align 4
  %828 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 0
  %829 = load i64, i64* %828, align 16
  %830 = load i32, i32* %21, align 4
  %831 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %825, i32 %826, i32 %827, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i64 %829, i32 %830)
  br label %832

832:                                              ; preds = %824, %814
  br label %833

833:                                              ; preds = %832, %371, %368
  %834 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %835 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %834, i32 0, i32 0
  %836 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %835, i32 0, i32 6
  %837 = load i64, i64* %836, align 8
  %838 = icmp ne i64 %837, 0
  br i1 %838, label %839, label %1213

839:                                              ; preds = %833
  %840 = load i64, i64* %8, align 8
  %841 = icmp ne i64 %840, 0
  br i1 %841, label %842, label %1213

842:                                              ; preds = %839
  %843 = load i64*, i64** @ofdmswing_table, align 8
  %844 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 0
  %845 = load i64, i64* %844, align 16
  %846 = getelementptr inbounds i64, i64* %843, i64 %845
  %847 = load i64, i64* %846, align 8
  %848 = and i64 %847, 4290772992
  %849 = ashr i64 %848, 22
  store i64 %849, i64* %12, align 8
  %850 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %851 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %850, i32 0, i32 0
  %852 = load i64, i64* %851, align 8
  store i64 %852, i64* %14, align 8
  %853 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %854 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %853, i32 0, i32 1
  %855 = load i64, i64* %854, align 8
  store i64 %855, i64* %16, align 8
  %856 = load i64, i64* %14, align 8
  %857 = icmp ne i64 %856, 0
  br i1 %857, label %858, label %928

858:                                              ; preds = %842
  %859 = load i64, i64* %14, align 8
  %860 = and i64 %859, 512
  %861 = icmp ne i64 %860, 0
  br i1 %861, label %862, label %865

862:                                              ; preds = %858
  %863 = load i64, i64* %14, align 8
  %864 = or i64 %863, 4294966272
  store i64 %864, i64* %14, align 8
  br label %865

865:                                              ; preds = %862, %858
  %866 = load i64, i64* %14, align 8
  %867 = load i64, i64* %12, align 8
  %868 = mul nsw i64 %866, %867
  %869 = ashr i64 %868, 8
  %870 = and i64 %869, 1023
  store i64 %870, i64* %11, align 8
  %871 = load i64, i64* %16, align 8
  %872 = and i64 %871, 512
  %873 = icmp ne i64 %872, 0
  br i1 %873, label %874, label %877

874:                                              ; preds = %865
  %875 = load i64, i64* %16, align 8
  %876 = or i64 %875, 4294966272
  store i64 %876, i64* %16, align 8
  br label %877

877:                                              ; preds = %874, %865
  %878 = load i64, i64* %16, align 8
  %879 = load i64, i64* %12, align 8
  %880 = mul nsw i64 %878, %879
  %881 = ashr i64 %880, 8
  %882 = and i64 %881, 1023
  store i64 %882, i64* %17, align 8
  %883 = load i64, i64* %12, align 8
  %884 = shl i64 %883, 22
  %885 = load i64, i64* %17, align 8
  %886 = and i64 %885, 63
  %887 = shl i64 %886, 16
  %888 = or i64 %884, %887
  %889 = load i64, i64* %11, align 8
  %890 = or i64 %888, %889
  store i64 %890, i64* %15, align 8
  %891 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %892 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %893 = load i32, i32* @MASKDWORD, align 4
  %894 = load i64, i64* %15, align 8
  %895 = trunc i64 %894 to i32
  %896 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %891, i32 %892, i32 %893, i32 %895)
  %897 = load i64, i64* %17, align 8
  %898 = and i64 %897, 960
  %899 = ashr i64 %898, 6
  store i64 %899, i64* %15, align 8
  %900 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %901 = load i32, i32* @ROFDM0_XCTXAFE, align 4
  %902 = load i32, i32* @MASKH4BITS, align 4
  %903 = load i64, i64* %15, align 8
  %904 = trunc i64 %903 to i32
  %905 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %900, i32 %901, i32 %902, i32 %904)
  %906 = load i64, i64* %14, align 8
  %907 = load i64, i64* %12, align 8
  %908 = mul nsw i64 %906, %907
  %909 = ashr i64 %908, 7
  %910 = and i64 %909, 1
  store i64 %910, i64* %15, align 8
  %911 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %912 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  %913 = call i32 @BIT(i32 31)
  %914 = load i64, i64* %15, align 8
  %915 = trunc i64 %914 to i32
  %916 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %911, i32 %912, i32 %913, i32 %915)
  %917 = load i64, i64* %16, align 8
  %918 = load i64, i64* %12, align 8
  %919 = mul nsw i64 %917, %918
  %920 = ashr i64 %919, 7
  %921 = and i64 %920, 1
  store i64 %921, i64* %15, align 8
  %922 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %923 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  %924 = call i32 @BIT(i32 29)
  %925 = load i64, i64* %15, align 8
  %926 = trunc i64 %925 to i32
  %927 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %922, i32 %923, i32 %924, i32 %926)
  br label %949

928:                                              ; preds = %842
  %929 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %930 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %931 = load i32, i32* @MASKDWORD, align 4
  %932 = load i64*, i64** @ofdmswing_table, align 8
  %933 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 0
  %934 = load i64, i64* %933, align 16
  %935 = getelementptr inbounds i64, i64* %932, i64 %934
  %936 = load i64, i64* %935, align 8
  %937 = trunc i64 %936 to i32
  %938 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %929, i32 %930, i32 %931, i32 %937)
  %939 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %940 = load i32, i32* @ROFDM0_XCTXAFE, align 4
  %941 = load i32, i32* @MASKH4BITS, align 4
  %942 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %939, i32 %940, i32 %941, i32 0)
  %943 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %944 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  %945 = call i32 @BIT(i32 31)
  %946 = call i32 @BIT(i32 29)
  %947 = or i32 %945, %946
  %948 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %943, i32 %944, i32 %947, i32 0)
  br label %949

949:                                              ; preds = %928, %877
  %950 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %951 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %950, i32 0, i32 0
  %952 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %951, i32 0, i32 7
  %953 = load i64, i64* %952, align 8
  %954 = icmp ne i64 %953, 0
  br i1 %954, label %1028, label %955

955:                                              ; preds = %949
  %956 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %957 = load i32**, i32*** @cckswing_table_ch1ch13, align 8
  %958 = load i32, i32* %21, align 4
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds i32*, i32** %957, i64 %959
  %961 = load i32*, i32** %960, align 8
  %962 = getelementptr inbounds i32, i32* %961, i64 0
  %963 = load i32, i32* %962, align 4
  %964 = call i32 @rtl_write_byte(%struct.rtl_priv* %956, i32 2594, i32 %963)
  %965 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %966 = load i32**, i32*** @cckswing_table_ch1ch13, align 8
  %967 = load i32, i32* %21, align 4
  %968 = sext i32 %967 to i64
  %969 = getelementptr inbounds i32*, i32** %966, i64 %968
  %970 = load i32*, i32** %969, align 8
  %971 = getelementptr inbounds i32, i32* %970, i64 1
  %972 = load i32, i32* %971, align 4
  %973 = call i32 @rtl_write_byte(%struct.rtl_priv* %965, i32 2595, i32 %972)
  %974 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %975 = load i32**, i32*** @cckswing_table_ch1ch13, align 8
  %976 = load i32, i32* %21, align 4
  %977 = sext i32 %976 to i64
  %978 = getelementptr inbounds i32*, i32** %975, i64 %977
  %979 = load i32*, i32** %978, align 8
  %980 = getelementptr inbounds i32, i32* %979, i64 2
  %981 = load i32, i32* %980, align 4
  %982 = call i32 @rtl_write_byte(%struct.rtl_priv* %974, i32 2596, i32 %981)
  %983 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %984 = load i32**, i32*** @cckswing_table_ch1ch13, align 8
  %985 = load i32, i32* %21, align 4
  %986 = sext i32 %985 to i64
  %987 = getelementptr inbounds i32*, i32** %984, i64 %986
  %988 = load i32*, i32** %987, align 8
  %989 = getelementptr inbounds i32, i32* %988, i64 3
  %990 = load i32, i32* %989, align 4
  %991 = call i32 @rtl_write_byte(%struct.rtl_priv* %983, i32 2597, i32 %990)
  %992 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %993 = load i32**, i32*** @cckswing_table_ch1ch13, align 8
  %994 = load i32, i32* %21, align 4
  %995 = sext i32 %994 to i64
  %996 = getelementptr inbounds i32*, i32** %993, i64 %995
  %997 = load i32*, i32** %996, align 8
  %998 = getelementptr inbounds i32, i32* %997, i64 4
  %999 = load i32, i32* %998, align 4
  %1000 = call i32 @rtl_write_byte(%struct.rtl_priv* %992, i32 2598, i32 %999)
  %1001 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %1002 = load i32**, i32*** @cckswing_table_ch1ch13, align 8
  %1003 = load i32, i32* %21, align 4
  %1004 = sext i32 %1003 to i64
  %1005 = getelementptr inbounds i32*, i32** %1002, i64 %1004
  %1006 = load i32*, i32** %1005, align 8
  %1007 = getelementptr inbounds i32, i32* %1006, i64 5
  %1008 = load i32, i32* %1007, align 4
  %1009 = call i32 @rtl_write_byte(%struct.rtl_priv* %1001, i32 2599, i32 %1008)
  %1010 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %1011 = load i32**, i32*** @cckswing_table_ch1ch13, align 8
  %1012 = load i32, i32* %21, align 4
  %1013 = sext i32 %1012 to i64
  %1014 = getelementptr inbounds i32*, i32** %1011, i64 %1013
  %1015 = load i32*, i32** %1014, align 8
  %1016 = getelementptr inbounds i32, i32* %1015, i64 6
  %1017 = load i32, i32* %1016, align 4
  %1018 = call i32 @rtl_write_byte(%struct.rtl_priv* %1010, i32 2600, i32 %1017)
  %1019 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %1020 = load i32**, i32*** @cckswing_table_ch1ch13, align 8
  %1021 = load i32, i32* %21, align 4
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds i32*, i32** %1020, i64 %1022
  %1024 = load i32*, i32** %1023, align 8
  %1025 = getelementptr inbounds i32, i32* %1024, i64 7
  %1026 = load i32, i32* %1025, align 4
  %1027 = call i32 @rtl_write_byte(%struct.rtl_priv* %1019, i32 2601, i32 %1026)
  br label %1101

1028:                                             ; preds = %949
  %1029 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %1030 = load i32**, i32*** @cckswing_table_ch14, align 8
  %1031 = load i32, i32* %21, align 4
  %1032 = sext i32 %1031 to i64
  %1033 = getelementptr inbounds i32*, i32** %1030, i64 %1032
  %1034 = load i32*, i32** %1033, align 8
  %1035 = getelementptr inbounds i32, i32* %1034, i64 0
  %1036 = load i32, i32* %1035, align 4
  %1037 = call i32 @rtl_write_byte(%struct.rtl_priv* %1029, i32 2594, i32 %1036)
  %1038 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %1039 = load i32**, i32*** @cckswing_table_ch14, align 8
  %1040 = load i32, i32* %21, align 4
  %1041 = sext i32 %1040 to i64
  %1042 = getelementptr inbounds i32*, i32** %1039, i64 %1041
  %1043 = load i32*, i32** %1042, align 8
  %1044 = getelementptr inbounds i32, i32* %1043, i64 1
  %1045 = load i32, i32* %1044, align 4
  %1046 = call i32 @rtl_write_byte(%struct.rtl_priv* %1038, i32 2595, i32 %1045)
  %1047 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %1048 = load i32**, i32*** @cckswing_table_ch14, align 8
  %1049 = load i32, i32* %21, align 4
  %1050 = sext i32 %1049 to i64
  %1051 = getelementptr inbounds i32*, i32** %1048, i64 %1050
  %1052 = load i32*, i32** %1051, align 8
  %1053 = getelementptr inbounds i32, i32* %1052, i64 2
  %1054 = load i32, i32* %1053, align 4
  %1055 = call i32 @rtl_write_byte(%struct.rtl_priv* %1047, i32 2596, i32 %1054)
  %1056 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %1057 = load i32**, i32*** @cckswing_table_ch14, align 8
  %1058 = load i32, i32* %21, align 4
  %1059 = sext i32 %1058 to i64
  %1060 = getelementptr inbounds i32*, i32** %1057, i64 %1059
  %1061 = load i32*, i32** %1060, align 8
  %1062 = getelementptr inbounds i32, i32* %1061, i64 3
  %1063 = load i32, i32* %1062, align 4
  %1064 = call i32 @rtl_write_byte(%struct.rtl_priv* %1056, i32 2597, i32 %1063)
  %1065 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %1066 = load i32**, i32*** @cckswing_table_ch14, align 8
  %1067 = load i32, i32* %21, align 4
  %1068 = sext i32 %1067 to i64
  %1069 = getelementptr inbounds i32*, i32** %1066, i64 %1068
  %1070 = load i32*, i32** %1069, align 8
  %1071 = getelementptr inbounds i32, i32* %1070, i64 4
  %1072 = load i32, i32* %1071, align 4
  %1073 = call i32 @rtl_write_byte(%struct.rtl_priv* %1065, i32 2598, i32 %1072)
  %1074 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %1075 = load i32**, i32*** @cckswing_table_ch14, align 8
  %1076 = load i32, i32* %21, align 4
  %1077 = sext i32 %1076 to i64
  %1078 = getelementptr inbounds i32*, i32** %1075, i64 %1077
  %1079 = load i32*, i32** %1078, align 8
  %1080 = getelementptr inbounds i32, i32* %1079, i64 5
  %1081 = load i32, i32* %1080, align 4
  %1082 = call i32 @rtl_write_byte(%struct.rtl_priv* %1074, i32 2599, i32 %1081)
  %1083 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %1084 = load i32**, i32*** @cckswing_table_ch14, align 8
  %1085 = load i32, i32* %21, align 4
  %1086 = sext i32 %1085 to i64
  %1087 = getelementptr inbounds i32*, i32** %1084, i64 %1086
  %1088 = load i32*, i32** %1087, align 8
  %1089 = getelementptr inbounds i32, i32* %1088, i64 6
  %1090 = load i32, i32* %1089, align 4
  %1091 = call i32 @rtl_write_byte(%struct.rtl_priv* %1083, i32 2600, i32 %1090)
  %1092 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %1093 = load i32**, i32*** @cckswing_table_ch14, align 8
  %1094 = load i32, i32* %21, align 4
  %1095 = sext i32 %1094 to i64
  %1096 = getelementptr inbounds i32*, i32** %1093, i64 %1095
  %1097 = load i32*, i32** %1096, align 8
  %1098 = getelementptr inbounds i32, i32* %1097, i64 7
  %1099 = load i32, i32* %1098, align 4
  %1100 = call i32 @rtl_write_byte(%struct.rtl_priv* %1092, i32 2601, i32 %1099)
  br label %1101

1101:                                             ; preds = %1028, %955
  %1102 = load i32, i32* %23, align 4
  %1103 = icmp ne i32 %1102, 0
  br i1 %1103, label %1104, label %1212

1104:                                             ; preds = %1101
  %1105 = load i64*, i64** @ofdmswing_table, align 8
  %1106 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 1
  %1107 = load i64, i64* %1106, align 8
  %1108 = getelementptr inbounds i64, i64* %1105, i64 %1107
  %1109 = load i64, i64* %1108, align 8
  %1110 = and i64 %1109, 4290772992
  %1111 = ashr i64 %1110, 22
  store i64 %1111, i64* %12, align 8
  %1112 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %1113 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %1112, i32 0, i32 2
  %1114 = load i64, i64* %1113, align 8
  store i64 %1114, i64* %14, align 8
  %1115 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %1116 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %1115, i32 0, i32 3
  %1117 = load i64, i64* %1116, align 8
  store i64 %1117, i64* %16, align 8
  %1118 = load i64, i64* %14, align 8
  %1119 = icmp ne i64 %1118, 0
  br i1 %1119, label %1120, label %1190

1120:                                             ; preds = %1104
  %1121 = load i64, i64* %14, align 8
  %1122 = and i64 %1121, 512
  %1123 = icmp ne i64 %1122, 0
  br i1 %1123, label %1124, label %1127

1124:                                             ; preds = %1120
  %1125 = load i64, i64* %14, align 8
  %1126 = or i64 %1125, 4294966272
  store i64 %1126, i64* %14, align 8
  br label %1127

1127:                                             ; preds = %1124, %1120
  %1128 = load i64, i64* %14, align 8
  %1129 = load i64, i64* %12, align 8
  %1130 = mul nsw i64 %1128, %1129
  %1131 = ashr i64 %1130, 8
  %1132 = and i64 %1131, 1023
  store i64 %1132, i64* %11, align 8
  %1133 = load i64, i64* %16, align 8
  %1134 = and i64 %1133, 512
  %1135 = icmp ne i64 %1134, 0
  br i1 %1135, label %1136, label %1139

1136:                                             ; preds = %1127
  %1137 = load i64, i64* %16, align 8
  %1138 = or i64 %1137, 4294966272
  store i64 %1138, i64* %16, align 8
  br label %1139

1139:                                             ; preds = %1136, %1127
  %1140 = load i64, i64* %16, align 8
  %1141 = load i64, i64* %12, align 8
  %1142 = mul nsw i64 %1140, %1141
  %1143 = ashr i64 %1142, 8
  %1144 = and i64 %1143, 1023
  store i64 %1144, i64* %17, align 8
  %1145 = load i64, i64* %12, align 8
  %1146 = shl i64 %1145, 22
  %1147 = load i64, i64* %17, align 8
  %1148 = and i64 %1147, 63
  %1149 = shl i64 %1148, 16
  %1150 = or i64 %1146, %1149
  %1151 = load i64, i64* %11, align 8
  %1152 = or i64 %1150, %1151
  store i64 %1152, i64* %15, align 8
  %1153 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %1154 = load i32, i32* @ROFDM0_XBTXIQIMBALANCE, align 4
  %1155 = load i32, i32* @MASKDWORD, align 4
  %1156 = load i64, i64* %15, align 8
  %1157 = trunc i64 %1156 to i32
  %1158 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %1153, i32 %1154, i32 %1155, i32 %1157)
  %1159 = load i64, i64* %17, align 8
  %1160 = and i64 %1159, 960
  %1161 = ashr i64 %1160, 6
  store i64 %1161, i64* %15, align 8
  %1162 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %1163 = load i32, i32* @ROFDM0_XDTXAFE, align 4
  %1164 = load i32, i32* @MASKH4BITS, align 4
  %1165 = load i64, i64* %15, align 8
  %1166 = trunc i64 %1165 to i32
  %1167 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %1162, i32 %1163, i32 %1164, i32 %1166)
  %1168 = load i64, i64* %14, align 8
  %1169 = load i64, i64* %12, align 8
  %1170 = mul nsw i64 %1168, %1169
  %1171 = ashr i64 %1170, 7
  %1172 = and i64 %1171, 1
  store i64 %1172, i64* %15, align 8
  %1173 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %1174 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  %1175 = call i32 @BIT(i32 27)
  %1176 = load i64, i64* %15, align 8
  %1177 = trunc i64 %1176 to i32
  %1178 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %1173, i32 %1174, i32 %1175, i32 %1177)
  %1179 = load i64, i64* %16, align 8
  %1180 = load i64, i64* %12, align 8
  %1181 = mul nsw i64 %1179, %1180
  %1182 = ashr i64 %1181, 7
  %1183 = and i64 %1182, 1
  store i64 %1183, i64* %15, align 8
  %1184 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %1185 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  %1186 = call i32 @BIT(i32 25)
  %1187 = load i64, i64* %15, align 8
  %1188 = trunc i64 %1187 to i32
  %1189 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %1184, i32 %1185, i32 %1186, i32 %1188)
  br label %1211

1190:                                             ; preds = %1104
  %1191 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %1192 = load i32, i32* @ROFDM0_XBTXIQIMBALANCE, align 4
  %1193 = load i32, i32* @MASKDWORD, align 4
  %1194 = load i64*, i64** @ofdmswing_table, align 8
  %1195 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 1
  %1196 = load i64, i64* %1195, align 8
  %1197 = getelementptr inbounds i64, i64* %1194, i64 %1196
  %1198 = load i64, i64* %1197, align 8
  %1199 = trunc i64 %1198 to i32
  %1200 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %1191, i32 %1192, i32 %1193, i32 %1199)
  %1201 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %1202 = load i32, i32* @ROFDM0_XDTXAFE, align 4
  %1203 = load i32, i32* @MASKH4BITS, align 4
  %1204 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %1201, i32 %1202, i32 %1203, i32 0)
  %1205 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %1206 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  %1207 = call i32 @BIT(i32 27)
  %1208 = call i32 @BIT(i32 25)
  %1209 = or i32 %1207, %1208
  %1210 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %1205, i32 %1206, i32 %1209, i32 0)
  br label %1211

1211:                                             ; preds = %1190, %1139
  br label %1212

1212:                                             ; preds = %1211, %1101
  br label %1213

1213:                                             ; preds = %1212, %839, %833
  %1214 = load i64, i64* %10, align 8
  %1215 = icmp sgt i64 %1214, 3
  br i1 %1215, label %1216, label %1223

1216:                                             ; preds = %1213
  %1217 = load i64, i64* %7, align 8
  %1218 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %1219 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %1218, i32 0, i32 0
  %1220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1219, i32 0, i32 3
  store i64 %1217, i64* %1220, align 8
  %1221 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %1222 = call i32 @rtl92c_phy_iq_calibrate(%struct.ieee80211_hw* %1221, i32 0)
  br label %1223

1223:                                             ; preds = %1216, %1213
  %1224 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %1225 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %1224, i32 0, i32 0
  %1226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1225, i32 0, i32 6
  %1227 = load i64, i64* %1226, align 8
  %1228 = icmp ne i64 %1227, 0
  br i1 %1228, label %1229, label %1234

1229:                                             ; preds = %1223
  %1230 = load i64, i64* %7, align 8
  %1231 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %1232 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %1231, i32 0, i32 0
  %1233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1232, i32 0, i32 1
  store i64 %1230, i64* %1233, align 8
  br label %1234

1234:                                             ; preds = %1229, %1223
  br label %1235

1235:                                             ; preds = %1234, %77
  %1236 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %1237 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %1238 = load i32, i32* @DBG_LOUD, align 4
  %1239 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %1236, i32 %1237, i32 %1238, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @IS_92C_SERIAL(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i64 @rtl_get_rfreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl92c_phy_ap_calibrate(%struct.ieee80211_hw*, i64) #1

declare dso_local i64 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @rtl92c_phy_lc_calibrate(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl92c_phy_iq_calibrate(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
