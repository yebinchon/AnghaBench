; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_dm_txpower_track_cb_therm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_dm_txpower_track_cb_therm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32, i32, i64, i64 }
%struct.rtl_efuse = type { i32 }
%struct.rtl_dm = type { i32*, i32, i32, i32*, i64, i32*, i32, i32, i32*, i32, i64, i32, i32, i32, i64, i64 }
%struct.rtl_hal = type { i32 }

@__const.dm_txpower_track_cb_therm.delta_swing_table_idx = private unnamed_addr constant [2 x [15 x i32]] [[15 x i32] [i32 0, i32 0, i32 2, i32 3, i32 4, i32 4, i32 5, i32 6, i32 7, i32 7, i32 8, i32 9, i32 10, i32 10, i32 11], [15 x i32] [i32 0, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -4, i32 -4, i32 -4, i32 -5, i32 -7, i32 -8, i32 -9, i32 -9, i32 -10]], align 16
@__const.dm_txpower_track_cb_therm.thermal_threshold = private unnamed_addr constant [2 x [15 x i32]] [[15 x i32] [i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 27], [15 x i32] [i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 25, i32 25, i32 25]], align 16
@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"dm_txpower_track_cb_therm\0A\00", align 1
@RF90_PATH_A = common dso_local global i64 0, align 8
@RF_T_METER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"Readback Thermal Meter = 0x%x pre thermal meter 0x%x eeprom_thermalmeter 0x%x\0A\00", align 1
@ROFDM0_XATXIQIMBALANCE = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@MASKOFDM_D = common dso_local global i64 0, align 8
@OFDM_TABLE_LENGTH = common dso_local global i32 0, align 4
@ofdmswing_table = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"Initial pathA ele_d reg0x%x = 0x%lx, ofdm_index = 0x%x\0A\00", align 1
@RCCK0_TXFILTER2 = common dso_local global i32 0, align 4
@MASKCCK = common dso_local global i64 0, align 8
@CCK_TABLE_LENGTH = common dso_local global i32 0, align 4
@cck_tbl_ch14 = common dso_local global i32** null, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"Initial reg0x%x = 0x%lx, cck_index = 0x%x, ch 14 %d\0A\00", align 1
@cck_tbl_ch1_13 = common dso_local global i32** null, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"Initial reg0x%x = 0x%lx, cck_index = 0x%x, ch14 %d\0A\00", align 1
@AVG_THERMAL_NUM_88E = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [120 x i8] c"Readback Thermal Meter = 0x%x pre thermal meter 0x%x eeprom_thermalmeter 0x%x delta 0x%x delta_lck 0x%x delta_iqk 0x%x\0A\00", align 1
@INDEX_MAPPING_NUM = common dso_local global i32 0, align 4
@OFDM_TABLE_SIZE = common dso_local global i32 0, align 4
@CCK_TABLE_SIZE = common dso_local global i32 0, align 4
@TXAGC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @dm_txpower_track_cb_therm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_txpower_track_cb_therm(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_efuse*, align 8
  %5 = alloca %struct.rtl_dm*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [2 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x i32], align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [2 x [15 x i32]], align 16
  %24 = alloca [2 x [15 x i32]], align 16
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %26 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %25)
  store %struct.rtl_priv* %26, %struct.rtl_priv** %3, align 8
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %28 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %27)
  %29 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %28)
  store %struct.rtl_efuse* %29, %struct.rtl_efuse** %4, align 8
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %31 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %30)
  %32 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %31)
  store %struct.rtl_dm* %32, %struct.rtl_dm** %5, align 8
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %34 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %33)
  %35 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %34)
  store %struct.rtl_hal* %35, %struct.rtl_hal** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %36 = bitcast [2 x i32]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %36, i8 0, i64 8, i1 false)
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 6, i32* %21, align 4
  store i32 1, i32* %22, align 4
  %37 = bitcast [2 x [15 x i32]]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %37, i8* align 16 bitcast ([2 x [15 x i32]]* @__const.dm_txpower_track_cb_therm.delta_swing_table_idx to i8*), i64 120, i1 false)
  %38 = bitcast [2 x [15 x i32]]* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %38, i8* align 16 bitcast ([2 x [15 x i32]]* @__const.dm_txpower_track_cb_therm.thermal_threshold to i8*), i64 120, i1 false)
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %40 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %43 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %44 = load i32, i32* @DBG_LOUD, align 4
  %45 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %47 = load i64, i64* @RF90_PATH_A, align 8
  %48 = load i32, i32* @RF_T_METER, align 4
  %49 = call i64 @rtl_get_rfreg(%struct.ieee80211_hw* %46, i64 %47, i32 %48, i32 64512)
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %1
  br label %685

54:                                               ; preds = %1
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %56 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %57 = load i32, i32* @DBG_LOUD, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %60 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %64 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %62, i32 %65)
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %68 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %69 = load i32, i32* @MASKDWORD, align 4
  %70 = call i64 @rtl_get_bbreg(%struct.ieee80211_hw* %67, i32 %68, i32 %69)
  %71 = load i64, i64* @MASKOFDM_D, align 8
  %72 = and i64 %70, %71
  store i64 %72, i64* %14, align 8
  store i32 0, i32* %20, align 4
  br label %73

73:                                               ; preds = %105, %54
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* @OFDM_TABLE_LENGTH, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %108

77:                                               ; preds = %73
  %78 = load i64, i64* %14, align 8
  %79 = load i64*, i64** @ofdmswing_table, align 8
  %80 = load i32, i32* %20, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MASKOFDM_D, align 8
  %85 = and i64 %83, %84
  %86 = icmp eq i64 %78, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %77
  %88 = load i32, i32* %20, align 4
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %20, align 4
  %91 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %92 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @RF90_PATH_A, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 %90, i32* %95, align 4
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %97 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %98 = load i32, i32* @DBG_LOUD, align 4
  %99 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %100 = load i64, i64* %14, align 8
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %96, i32 %97, i32 %98, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %99, i64 %100, i32 %102)
  br label %108

104:                                              ; preds = %77
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %20, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %20, align 4
  br label %73

108:                                              ; preds = %87, %73
  %109 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %110 = load i32, i32* @RCCK0_TXFILTER2, align 4
  %111 = load i32, i32* @MASKDWORD, align 4
  %112 = call i64 @rtl_get_bbreg(%struct.ieee80211_hw* %109, i32 %110, i32 %111)
  %113 = load i64, i64* @MASKCCK, align 8
  %114 = and i64 %112, %113
  store i64 %114, i64* %15, align 8
  store i32 0, i32* %20, align 4
  br label %115

115:                                              ; preds = %178, %108
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* @CCK_TABLE_LENGTH, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %181

119:                                              ; preds = %115
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %121 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 8
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %151

125:                                              ; preds = %119
  %126 = load i32**, i32*** @cck_tbl_ch14, align 8
  %127 = load i32, i32* %20, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = call i64 @memcmp(i64* %15, i32* %131, i32 4)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %125
  %135 = load i32, i32* %20, align 4
  store i32 %135, i32* %19, align 4
  %136 = load i32, i32* %20, align 4
  %137 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %138 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  %139 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %140 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %141 = load i32, i32* @DBG_LOUD, align 4
  %142 = load i32, i32* @RCCK0_TXFILTER2, align 4
  %143 = load i64, i64* %15, align 8
  %144 = load i32, i32* %19, align 4
  %145 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %146 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 8
  %148 = load i64, i64* %147, align 8
  %149 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %139, i32 %140, i32 %141, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %142, i64 %143, i32 %144, i64 %148)
  br label %181

150:                                              ; preds = %125
  br label %177

151:                                              ; preds = %119
  %152 = load i32**, i32*** @cck_tbl_ch1_13, align 8
  %153 = load i32, i32* %20, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %152, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = call i64 @memcmp(i64* %15, i32* %157, i32 4)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %176

160:                                              ; preds = %151
  %161 = load i32, i32* %20, align 4
  store i32 %161, i32* %19, align 4
  %162 = load i32, i32* %20, align 4
  %163 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %164 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 8
  %165 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %166 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %167 = load i32, i32* @DBG_LOUD, align 4
  %168 = load i32, i32* @RCCK0_TXFILTER2, align 4
  %169 = load i64, i64* %15, align 8
  %170 = load i32, i32* %19, align 4
  %171 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %172 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 8
  %174 = load i64, i64* %173, align 8
  %175 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %165, i32 %166, i32 %167, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %168, i64 %169, i32 %170, i64 %174)
  br label %181

176:                                              ; preds = %151
  br label %177

177:                                              ; preds = %176, %150
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %20, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %20, align 4
  br label %115

181:                                              ; preds = %160, %134, %115
  %182 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %183 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %225, label %186

186:                                              ; preds = %181
  %187 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %188 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %191 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  store i32 %189, i32* %192, align 4
  %193 = load i32, i32* %7, align 4
  %194 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %195 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 2
  store i32 %193, i32* %196, align 8
  %197 = load i32, i32* %7, align 4
  %198 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %199 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 3
  store i32 %197, i32* %200, align 4
  store i32 0, i32* %20, align 4
  br label %201

201:                                              ; preds = %217, %186
  %202 = load i32, i32* %20, align 4
  %203 = load i32, i32* %22, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %220

205:                                              ; preds = %201
  %206 = load i32, i32* %20, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %211 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 4
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %20, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %209, i32* %216, align 4
  br label %217

217:                                              ; preds = %205
  %218 = load i32, i32* %20, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %20, align 4
  br label %201

220:                                              ; preds = %201
  %221 = load i32, i32* %19, align 4
  %222 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %223 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 5
  store i32 %221, i32* %224, align 8
  br label %225

225:                                              ; preds = %220, %181
  %226 = load i32, i32* %7, align 4
  %227 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %228 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %227, i32 0, i32 3
  %229 = load i32*, i32** %228, align 8
  %230 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %231 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds i32, i32* %229, i64 %232
  store i32 %226, i32* %233, align 4
  %234 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %235 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = add i64 %236, 1
  store i64 %237, i64* %235, align 8
  %238 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %239 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = load i32, i32* @AVG_THERMAL_NUM_88E, align 4
  %242 = sext i32 %241 to i64
  %243 = icmp eq i64 %240, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %225
  %245 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %246 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %245, i32 0, i32 4
  store i64 0, i64* %246, align 8
  br label %247

247:                                              ; preds = %244, %225
  store i32 0, i32* %20, align 4
  br label %248

248:                                              ; preds = %274, %247
  %249 = load i32, i32* %20, align 4
  %250 = load i32, i32* @AVG_THERMAL_NUM_88E, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %277

252:                                              ; preds = %248
  %253 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %254 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %253, i32 0, i32 3
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %20, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %273

261:                                              ; preds = %252
  %262 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %263 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %262, i32 0, i32 3
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %20, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %13, align 4
  %270 = add nsw i32 %269, %268
  store i32 %270, i32* %13, align 4
  %271 = load i32, i32* %12, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %12, align 4
  br label %273

273:                                              ; preds = %261, %252
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %20, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %20, align 4
  br label %248

277:                                              ; preds = %248
  %278 = load i32, i32* %12, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %277
  %281 = load i32, i32* %13, align 4
  %282 = load i32, i32* %12, align 4
  %283 = sdiv i32 %281, %282
  store i32 %283, i32* %7, align 4
  br label %284

284:                                              ; preds = %280, %277
  %285 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %286 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %314

289:                                              ; preds = %284
  %290 = load i32, i32* %7, align 4
  %291 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %292 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = icmp sgt i32 %290, %293
  br i1 %294, label %295, label %301

295:                                              ; preds = %289
  %296 = load i32, i32* %7, align 4
  %297 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %298 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = sub nsw i32 %296, %299
  br label %307

301:                                              ; preds = %289
  %302 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %303 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %7, align 4
  %306 = sub nsw i32 %304, %305
  br label %307

307:                                              ; preds = %301, %295
  %308 = phi i32 [ %300, %295 ], [ %306, %301 ]
  store i32 %308, i32* %8, align 4
  %309 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %310 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %309, i32 0, i32 0
  store i32 0, i32* %310, align 4
  %311 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %312 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 6
  store i32 0, i32* %313, align 4
  br label %364

314:                                              ; preds = %284
  %315 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %316 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i32 0, i32 6
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %343

320:                                              ; preds = %314
  %321 = load i32, i32* %7, align 4
  %322 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %323 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = icmp sgt i32 %321, %325
  br i1 %326, label %327, label %334

327:                                              ; preds = %320
  %328 = load i32, i32* %7, align 4
  %329 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %330 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = sub nsw i32 %328, %332
  br label %341

334:                                              ; preds = %320
  %335 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %336 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* %7, align 4
  %340 = sub nsw i32 %338, %339
  br label %341

341:                                              ; preds = %334, %327
  %342 = phi i32 [ %333, %327 ], [ %340, %334 ]
  store i32 %342, i32* %8, align 4
  br label %363

343:                                              ; preds = %314
  %344 = load i32, i32* %7, align 4
  %345 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %346 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = icmp sgt i32 %344, %347
  br i1 %348, label %349, label %355

349:                                              ; preds = %343
  %350 = load i32, i32* %7, align 4
  %351 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %352 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = sub nsw i32 %350, %353
  br label %361

355:                                              ; preds = %343
  %356 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %357 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* %7, align 4
  %360 = sub nsw i32 %358, %359
  br label %361

361:                                              ; preds = %355, %349
  %362 = phi i32 [ %354, %349 ], [ %360, %355 ]
  store i32 %362, i32* %8, align 4
  br label %363

363:                                              ; preds = %361, %341
  br label %364

364:                                              ; preds = %363, %307
  %365 = load i32, i32* %7, align 4
  %366 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %367 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = icmp sgt i32 %365, %369
  br i1 %370, label %371, label %378

371:                                              ; preds = %364
  %372 = load i32, i32* %7, align 4
  %373 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %374 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = sub nsw i32 %372, %376
  br label %385

378:                                              ; preds = %364
  %379 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %380 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* %7, align 4
  %384 = sub nsw i32 %382, %383
  br label %385

385:                                              ; preds = %378, %371
  %386 = phi i32 [ %377, %371 ], [ %384, %378 ]
  store i32 %386, i32* %9, align 4
  %387 = load i32, i32* %7, align 4
  %388 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %389 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %389, i32 0, i32 3
  %391 = load i32, i32* %390, align 4
  %392 = icmp sgt i32 %387, %391
  br i1 %392, label %393, label %400

393:                                              ; preds = %385
  %394 = load i32, i32* %7, align 4
  %395 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %396 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %396, i32 0, i32 3
  %398 = load i32, i32* %397, align 4
  %399 = sub nsw i32 %394, %398
  br label %407

400:                                              ; preds = %385
  %401 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %402 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* %7, align 4
  %406 = sub nsw i32 %404, %405
  br label %407

407:                                              ; preds = %400, %393
  %408 = phi i32 [ %399, %393 ], [ %406, %400 ]
  store i32 %408, i32* %10, align 4
  %409 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %410 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %411 = load i32, i32* @DBG_LOUD, align 4
  %412 = load i32, i32* %7, align 4
  %413 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %414 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %418 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* %8, align 4
  %421 = load i32, i32* %9, align 4
  %422 = load i32, i32* %10, align 4
  %423 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %409, i32 %410, i32 %411, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.5, i64 0, i64 0), i32 %412, i32 %416, i32 %419, i32 %420, i32 %421, i32 %422)
  %424 = load i32, i32* %9, align 4
  %425 = icmp sge i32 %424, 8
  br i1 %425, label %426, label %433

426:                                              ; preds = %407
  %427 = load i32, i32* %7, align 4
  %428 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %429 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %429, i32 0, i32 2
  store i32 %427, i32* %430, align 8
  %431 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %432 = call i32 @rtl88e_phy_lc_calibrate(%struct.ieee80211_hw* %431)
  br label %433

433:                                              ; preds = %426, %407
  %434 = load i32, i32* %8, align 4
  %435 = icmp sgt i32 %434, 0
  br i1 %435, label %436, label %659

436:                                              ; preds = %433
  %437 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %438 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %438, i32 0, i32 7
  %440 = load i64, i64* %439, align 8
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %659

442:                                              ; preds = %436
  %443 = load i32, i32* %7, align 4
  %444 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %445 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 4
  %447 = icmp sgt i32 %443, %446
  br i1 %447, label %448, label %454

448:                                              ; preds = %442
  %449 = load i32, i32* %7, align 4
  %450 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %451 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  %453 = sub nsw i32 %449, %452
  br label %460

454:                                              ; preds = %442
  %455 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %456 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = load i32, i32* %7, align 4
  %459 = sub nsw i32 %457, %458
  br label %460

460:                                              ; preds = %454, %448
  %461 = phi i32 [ %453, %448 ], [ %459, %454 ]
  store i32 %461, i32* %8, align 4
  %462 = load i32, i32* %7, align 4
  %463 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %464 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 4
  %466 = icmp sgt i32 %462, %465
  br i1 %466, label %467, label %506

467:                                              ; preds = %460
  %468 = load i32, i32* %11, align 4
  %469 = load i32, i32* @INDEX_MAPPING_NUM, align 4
  %470 = load i32, i32* %8, align 4
  %471 = call i32 @CAL_SWING_OFF(i32 %468, i32 1, i32 %469, i32 %470)
  store i32 0, i32* %20, align 4
  br label %472

472:                                              ; preds = %493, %467
  %473 = load i32, i32* %20, align 4
  %474 = load i32, i32* %22, align 4
  %475 = icmp slt i32 %473, %474
  br i1 %475, label %476, label %496

476:                                              ; preds = %472
  %477 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %478 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %477, i32 0, i32 5
  %479 = load i32*, i32** %478, align 8
  %480 = load i32, i32* %20, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %479, i64 %481
  %483 = load i32, i32* %482, align 4
  %484 = getelementptr inbounds [2 x [15 x i32]], [2 x [15 x i32]]* %23, i64 0, i64 1
  %485 = load i32, i32* %11, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [15 x i32], [15 x i32]* %484, i64 0, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = add nsw i32 %483, %488
  %490 = load i32, i32* %20, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %491
  store i32 %489, i32* %492, align 4
  br label %493

493:                                              ; preds = %476
  %494 = load i32, i32* %20, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %20, align 4
  br label %472

496:                                              ; preds = %472
  %497 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %498 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %497, i32 0, i32 6
  %499 = load i32, i32* %498, align 8
  %500 = getelementptr inbounds [2 x [15 x i32]], [2 x [15 x i32]]* %23, i64 0, i64 1
  %501 = load i32, i32* %11, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [15 x i32], [15 x i32]* %500, i64 0, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = add nsw i32 %499, %504
  store i32 %505, i32* %17, align 4
  br label %545

506:                                              ; preds = %460
  %507 = load i32, i32* %11, align 4
  %508 = load i32, i32* @INDEX_MAPPING_NUM, align 4
  %509 = load i32, i32* %8, align 4
  %510 = call i32 @CAL_SWING_OFF(i32 %507, i32 0, i32 %508, i32 %509)
  store i32 0, i32* %20, align 4
  br label %511

511:                                              ; preds = %532, %506
  %512 = load i32, i32* %20, align 4
  %513 = load i32, i32* %22, align 4
  %514 = icmp slt i32 %512, %513
  br i1 %514, label %515, label %535

515:                                              ; preds = %511
  %516 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %517 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %516, i32 0, i32 5
  %518 = load i32*, i32** %517, align 8
  %519 = load i32, i32* %20, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i32, i32* %518, i64 %520
  %522 = load i32, i32* %521, align 4
  %523 = getelementptr inbounds [2 x [15 x i32]], [2 x [15 x i32]]* %23, i64 0, i64 0
  %524 = load i32, i32* %11, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds [15 x i32], [15 x i32]* %523, i64 0, i64 %525
  %527 = load i32, i32* %526, align 4
  %528 = add nsw i32 %522, %527
  %529 = load i32, i32* %20, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %530
  store i32 %528, i32* %531, align 4
  br label %532

532:                                              ; preds = %515
  %533 = load i32, i32* %20, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %20, align 4
  br label %511

535:                                              ; preds = %511
  %536 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %537 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %536, i32 0, i32 6
  %538 = load i32, i32* %537, align 8
  %539 = getelementptr inbounds [2 x [15 x i32]], [2 x [15 x i32]]* %23, i64 0, i64 0
  %540 = load i32, i32* %11, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds [15 x i32], [15 x i32]* %539, i64 0, i64 %541
  %543 = load i32, i32* %542, align 4
  %544 = add nsw i32 %538, %543
  store i32 %544, i32* %17, align 4
  br label %545

545:                                              ; preds = %535, %496
  store i32 0, i32* %20, align 4
  br label %546

546:                                              ; preds = %581, %545
  %547 = load i32, i32* %20, align 4
  %548 = load i32, i32* %22, align 4
  %549 = icmp slt i32 %547, %548
  br i1 %549, label %550, label %584

550:                                              ; preds = %546
  %551 = load i32, i32* %20, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %552
  %554 = load i32, i32* %553, align 4
  %555 = load i32, i32* @OFDM_TABLE_SIZE, align 4
  %556 = sub nsw i32 %555, 1
  %557 = icmp sgt i32 %554, %556
  br i1 %557, label %558, label %564

558:                                              ; preds = %550
  %559 = load i32, i32* @OFDM_TABLE_SIZE, align 4
  %560 = sub nsw i32 %559, 1
  %561 = load i32, i32* %20, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %562
  store i32 %560, i32* %563, align 4
  br label %580

564:                                              ; preds = %550
  %565 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %566 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %565, i32 0, i32 5
  %567 = load i32*, i32** %566, align 8
  %568 = load i32, i32* %20, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32, i32* %567, i64 %569
  %571 = load i32, i32* %570, align 4
  %572 = load i32, i32* %21, align 4
  %573 = icmp slt i32 %571, %572
  br i1 %573, label %574, label %579

574:                                              ; preds = %564
  %575 = load i32, i32* %21, align 4
  %576 = load i32, i32* %20, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %577
  store i32 %575, i32* %578, align 4
  br label %579

579:                                              ; preds = %574, %564
  br label %580

580:                                              ; preds = %579, %558
  br label %581

581:                                              ; preds = %580
  %582 = load i32, i32* %20, align 4
  %583 = add nsw i32 %582, 1
  store i32 %583, i32* %20, align 4
  br label %546

584:                                              ; preds = %546
  %585 = load i32, i32* %17, align 4
  %586 = load i32, i32* @CCK_TABLE_SIZE, align 4
  %587 = sub nsw i32 %586, 1
  %588 = icmp sgt i32 %585, %587
  br i1 %588, label %589, label %592

589:                                              ; preds = %584
  %590 = load i32, i32* @CCK_TABLE_SIZE, align 4
  %591 = sub nsw i32 %590, 1
  store i32 %591, i32* %17, align 4
  br label %597

592:                                              ; preds = %584
  %593 = load i32, i32* %17, align 4
  %594 = icmp slt i32 %593, 0
  br i1 %594, label %595, label %596

595:                                              ; preds = %592
  store i32 0, i32* %17, align 4
  br label %596

596:                                              ; preds = %595, %592
  br label %597

597:                                              ; preds = %596, %589
  %598 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %599 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %598, i32 0, i32 0
  %600 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %599, i32 0, i32 7
  %601 = load i64, i64* %600, align 8
  %602 = icmp ne i64 %601, 0
  br i1 %602, label %603, label %658

603:                                              ; preds = %597
  %604 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %605 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %604, i32 0, i32 7
  store i32 1, i32* %605, align 4
  %606 = load i64, i64* @RF90_PATH_A, align 8
  %607 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %606
  %608 = load i32, i32* %607, align 4
  %609 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %610 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %609, i32 0, i32 8
  %611 = load i32*, i32** %610, align 8
  %612 = load i64, i64* @RF90_PATH_A, align 8
  %613 = getelementptr inbounds i32, i32* %611, i64 %612
  store i32 %608, i32* %613, align 4
  %614 = load i32, i32* %17, align 4
  %615 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %616 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %615, i32 0, i32 9
  store i32 %614, i32* %616, align 8
  %617 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %618 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %617, i32 0, i32 10
  %619 = load i64, i64* %618, align 8
  %620 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %621 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %620, i32 0, i32 8
  %622 = load i32*, i32** %621, align 8
  %623 = getelementptr inbounds i32, i32* %622, i64 0
  %624 = load i32, i32* %623, align 4
  %625 = sext i32 %624 to i64
  %626 = icmp ne i64 %619, %625
  br i1 %626, label %627, label %638

627:                                              ; preds = %603
  %628 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %629 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %628, i32 0, i32 8
  %630 = load i32*, i32** %629, align 8
  %631 = getelementptr inbounds i32, i32* %630, i64 0
  %632 = load i32, i32* %631, align 4
  %633 = sext i32 %632 to i64
  %634 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %635 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %634, i32 0, i32 10
  store i64 %633, i64* %635, align 8
  %636 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %637 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %636, i32 0, i32 11
  store i32 1, i32* %637, align 8
  br label %638

638:                                              ; preds = %627, %603
  %639 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %640 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %639, i32 0, i32 12
  %641 = load i32, i32* %640, align 4
  %642 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %643 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %642, i32 0, i32 9
  %644 = load i32, i32* %643, align 8
  %645 = icmp ne i32 %641, %644
  br i1 %645, label %646, label %654

646:                                              ; preds = %638
  %647 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %648 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %647, i32 0, i32 9
  %649 = load i32, i32* %648, align 8
  %650 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %651 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %650, i32 0, i32 12
  store i32 %649, i32* %651, align 4
  %652 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %653 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %652, i32 0, i32 13
  store i32 1, i32* %653, align 8
  br label %654

654:                                              ; preds = %646, %638
  %655 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %656 = load i32, i32* @TXAGC, align 4
  %657 = call i32 @dm_tx_pwr_track_set_pwr(%struct.ieee80211_hw* %655, i32 %656, i32 0, i32 0)
  br label %658

658:                                              ; preds = %654, %597
  br label %659

659:                                              ; preds = %658, %436, %433
  %660 = load i32, i32* %10, align 4
  %661 = icmp sge i32 %660, 8
  br i1 %661, label %662, label %669

662:                                              ; preds = %659
  %663 = load i32, i32* %7, align 4
  %664 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %665 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %664, i32 0, i32 0
  %666 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %665, i32 0, i32 3
  store i32 %663, i32* %666, align 4
  %667 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %668 = call i32 @rtl88e_phy_iq_calibrate(%struct.ieee80211_hw* %667, i32 0)
  br label %669

669:                                              ; preds = %662, %659
  %670 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %671 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %670, i32 0, i32 15
  %672 = load i64, i64* %671, align 8
  %673 = icmp ne i64 %672, 0
  br i1 %673, label %674, label %678

674:                                              ; preds = %669
  %675 = load i32, i32* %7, align 4
  %676 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %677 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %676, i32 0, i32 2
  store i32 %675, i32* %677, align 4
  br label %678

678:                                              ; preds = %674, %669
  %679 = load %struct.rtl_dm*, %struct.rtl_dm** %5, align 8
  %680 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %679, i32 0, i32 14
  store i64 0, i64* %680, align 8
  %681 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %682 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %683 = load i32, i32* @DBG_LOUD, align 4
  %684 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %681, i32 %682, i32 %683, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %685

685:                                              ; preds = %678, %53
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i64 @rtl_get_rfreg(%struct.ieee80211_hw*, i64, i32, i32) #1

declare dso_local i64 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i64 @memcmp(i64*, i32*, i32) #1

declare dso_local i32 @rtl88e_phy_lc_calibrate(%struct.ieee80211_hw*) #1

declare dso_local i32 @CAL_SWING_OFF(i32, i32, i32, i32) #1

declare dso_local i32 @dm_tx_pwr_track_set_pwr(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl88e_phy_iq_calibrate(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
