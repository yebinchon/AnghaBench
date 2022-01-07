; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_is_common_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_is_common_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@BTC_SET_ACT_DISABLE_LOW_POWER = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[BTCoex], Wifi non-connected idle!!\0A\00", align 1
@BTC_RF_A = common dso_local global i32 0, align 4
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@BT_8821A_2ANT_BT_STATUS_IDLE = common dso_local global i64 0, align 8
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"[BTCoex], Wifi connected + BT non connected-idle!!\0A\00", align 1
@BT_8821A_2ANT_BT_STATUS_CON_IDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"[BTCoex], Wifi connected + BT connected-idle!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"[BTCoex], Wifi Connected-Busy + BT Busy!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"[BTCoex], Wifi Connected-Idle + BT Busy!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btc_coexist*)* @btc8821a2ant_is_common_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc8821a2ant_is_common_action(%struct.btc_coexist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %11 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %10, i32 0, i32 3
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  store %struct.rtl_priv* %12, %struct.rtl_priv** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %14 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %13, i32 0, i32 2
  %15 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %14, align 8
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %17 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %18 = call i32 %15(%struct.btc_coexist* %16, i32 %17, i32* %9)
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %20 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %19, i32 0, i32 2
  %21 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %20, align 8
  %22 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %23 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %24 = call i32 %21(%struct.btc_coexist* %22, i32 %23, i32* %6)
  %25 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %26 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %25, i32 0, i32 2
  %27 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %26, align 8
  %28 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %29 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %30 = call i32 %27(%struct.btc_coexist* %28, i32 %29, i32* %7)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %72, label %33

33:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  %34 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %35 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %34, i32 0, i32 0
  %36 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %35, align 8
  %37 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %38 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %39 = call i32 %36(%struct.btc_coexist* %37, i32 %38, i32* %8)
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %41 = load i32, i32* @NORMAL_EXEC, align 4
  %42 = call i32 @btc8821a2ant_limited_rx(%struct.btc_coexist* %40, i32 %41, i32 0, i32 0, i32 8)
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %44 = load i32, i32* @COMP_BT_COEXIST, align 4
  %45 = load i32, i32* @DBG_LOUD, align 4
  %46 = call i32 @RT_TRACE(%struct.rtl_priv* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %48 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %47, i32 0, i32 1
  %49 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %48, align 8
  %50 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %51 = load i32, i32* @BTC_RF_A, align 4
  %52 = call i32 %49(%struct.btc_coexist* %50, i32 %51, i32 1, i32 1048575, i32 0)
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %54 = load i32, i32* @NORMAL_EXEC, align 4
  %55 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %53, i32 %54, i32 0)
  %56 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %57 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %58 = call i32 @btc8821a2ant_power_save_state(%struct.btc_coexist* %56, i32 %57, i32 0, i32 0)
  %59 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %60 = load i32, i32* @NORMAL_EXEC, align 4
  %61 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %59, i32 %60, i32 0, i32 1)
  %62 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %63 = load i32, i32* @NORMAL_EXEC, align 4
  %64 = call i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist* %62, i32 %63, i32 6)
  %65 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %66 = load i32, i32* @NORMAL_EXEC, align 4
  %67 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %65, i32 %66, i32 0)
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %69 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %68, i32 0, i32 0, i32 0, i32 0)
  %70 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %71 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %70, i32 0, i32 0, i32 0, i32 24)
  store i32 1, i32* %5, align 4
  br label %190

72:                                               ; preds = %1
  %73 = load i64, i64* @BT_8821A_2ANT_BT_STATUS_IDLE, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %117

78:                                               ; preds = %72
  store i32 0, i32* %8, align 4
  %79 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %80 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %79, i32 0, i32 0
  %81 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %80, align 8
  %82 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %83 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %84 = call i32 %81(%struct.btc_coexist* %82, i32 %83, i32* %8)
  %85 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %86 = load i32, i32* @NORMAL_EXEC, align 4
  %87 = call i32 @btc8821a2ant_limited_rx(%struct.btc_coexist* %85, i32 %86, i32 0, i32 0, i32 8)
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %89 = load i32, i32* @COMP_BT_COEXIST, align 4
  %90 = load i32, i32* @DBG_LOUD, align 4
  %91 = call i32 @RT_TRACE(%struct.rtl_priv* %88, i32 %89, i32 %90, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %93 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %92, i32 0, i32 1
  %94 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %93, align 8
  %95 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %96 = load i32, i32* @BTC_RF_A, align 4
  %97 = call i32 %94(%struct.btc_coexist* %95, i32 %96, i32 1, i32 1048575, i32 0)
  %98 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %99 = load i32, i32* @NORMAL_EXEC, align 4
  %100 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %98, i32 %99, i32 0)
  %101 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %102 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %103 = call i32 @btc8821a2ant_power_save_state(%struct.btc_coexist* %101, i32 %102, i32 0, i32 0)
  %104 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %105 = load i32, i32* @NORMAL_EXEC, align 4
  %106 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %104, i32 %105, i32 0, i32 1)
  %107 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %108 = load i32, i32* @NORMAL_EXEC, align 4
  %109 = call i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist* %107, i32 %108, i32 11)
  %110 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %111 = load i32, i32* @NORMAL_EXEC, align 4
  %112 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %110, i32 %111, i32 0)
  %113 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %114 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %113, i32 0, i32 0, i32 0, i32 0)
  %115 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %116 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %115, i32 0, i32 0, i32 0, i32 24)
  store i32 1, i32* %5, align 4
  br label %189

117:                                              ; preds = %72
  %118 = load i64, i64* @BT_8821A_2ANT_BT_STATUS_CON_IDLE, align 8
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %118, %121
  br i1 %122, label %123, label %166

123:                                              ; preds = %117
  store i32 1, i32* %8, align 4
  %124 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %125 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %124, i32 0, i32 0
  %126 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %125, align 8
  %127 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %128 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %129 = call i32 %126(%struct.btc_coexist* %127, i32 %128, i32* %8)
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %192

133:                                              ; preds = %123
  %134 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %135 = load i32, i32* @COMP_BT_COEXIST, align 4
  %136 = load i32, i32* @DBG_LOUD, align 4
  %137 = call i32 @RT_TRACE(%struct.rtl_priv* %134, i32 %135, i32 %136, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %138 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %139 = load i32, i32* @NORMAL_EXEC, align 4
  %140 = call i32 @btc8821a2ant_limited_rx(%struct.btc_coexist* %138, i32 %139, i32 0, i32 0, i32 8)
  %141 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %142 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %141, i32 0, i32 1
  %143 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %142, align 8
  %144 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %145 = load i32, i32* @BTC_RF_A, align 4
  %146 = call i32 %143(%struct.btc_coexist* %144, i32 %145, i32 1, i32 1048575, i32 0)
  %147 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %148 = load i32, i32* @NORMAL_EXEC, align 4
  %149 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %147, i32 %148, i32 0)
  %150 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %151 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %152 = call i32 @btc8821a2ant_power_save_state(%struct.btc_coexist* %150, i32 %151, i32 0, i32 0)
  %153 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %154 = load i32, i32* @NORMAL_EXEC, align 4
  %155 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %153, i32 %154, i32 0, i32 1)
  %156 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %157 = load i32, i32* @NORMAL_EXEC, align 4
  %158 = call i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist* %156, i32 %157, i32 11)
  %159 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %160 = load i32, i32* @NORMAL_EXEC, align 4
  %161 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %159, i32 %160, i32 0)
  %162 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %163 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %162, i32 1, i32 0, i32 0, i32 0)
  %164 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %165 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %164, i32 0, i32 0, i32 0, i32 24)
  store i32 1, i32* %5, align 4
  br label %188

166:                                              ; preds = %117
  store i32 1, i32* %8, align 4
  %167 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %168 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %167, i32 0, i32 0
  %169 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %168, align 8
  %170 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %171 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %172 = call i32 %169(%struct.btc_coexist* %170, i32 %171, i32* %8)
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %166
  %176 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %177 = load i32, i32* @COMP_BT_COEXIST, align 4
  %178 = load i32, i32* @DBG_LOUD, align 4
  %179 = call i32 @RT_TRACE(%struct.rtl_priv* %176, i32 %177, i32 %178, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %187

180:                                              ; preds = %166
  %181 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %182 = load i32, i32* @COMP_BT_COEXIST, align 4
  %183 = load i32, i32* @DBG_LOUD, align 4
  %184 = call i32 @RT_TRACE(%struct.rtl_priv* %181, i32 %182, i32 %183, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %185 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %186 = call i32 @btc8821a2ant_action_wifi_idle_process(%struct.btc_coexist* %185)
  store i32 %186, i32* %5, align 4
  br label %187

187:                                              ; preds = %180, %175
  br label %188

188:                                              ; preds = %187, %133
  br label %189

189:                                              ; preds = %188, %78
  br label %190

190:                                              ; preds = %189, %33
  %191 = load i32, i32* %5, align 4
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %190, %132
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i32 @btc8821a2ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_action_wifi_idle_process(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
