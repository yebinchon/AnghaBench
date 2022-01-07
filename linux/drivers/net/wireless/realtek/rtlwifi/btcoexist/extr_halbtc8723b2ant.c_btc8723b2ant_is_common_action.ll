; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_is_common_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_is_common_action.c"
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
@BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE = common dso_local global i64 0, align 8
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"[BTCoex], Wifi connected + BT non connected-idle!!\0A\00", align 1
@BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"[BTCoex], Wifi connected + BT connected-idle!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"[BTCoex], Wifi Connected-Busy + BT Busy!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"[BTCoex], Wifi Connected-Idle + BT Busy!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btc_coexist*)* @btc8723b2ant_is_common_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc8723b2ant_is_common_action(%struct.btc_coexist* %0) #0 {
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
  %18 = call i32 %15(%struct.btc_coexist* %16, i32 %17, i32* %8)
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
  br i1 %32, label %67, label %33

33:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  %34 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %35 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %34, i32 0, i32 0
  %36 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %35, align 8
  %37 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %38 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %39 = call i32 %36(%struct.btc_coexist* %37, i32 %38, i32* %9)
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %41 = load i32, i32* @NORMAL_EXEC, align 4
  %42 = call i32 @btc8723b2ant_limited_rx(%struct.btc_coexist* %40, i32 %41, i32 0, i32 0, i32 8)
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
  %55 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %53, i32 %54, i32 0)
  %56 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %57 = load i32, i32* @NORMAL_EXEC, align 4
  %58 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %56, i32 %57, i32 0, i32 1)
  %59 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %60 = load i32, i32* @NORMAL_EXEC, align 4
  %61 = call i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist* %59, i32 %60, i32 6)
  %62 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %63 = load i32, i32* @NORMAL_EXEC, align 4
  %64 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %62, i32 %63, i32 0)
  %65 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %66 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %65, i32 0, i32 0, i32 0, i32 0)
  store i32 1, i32* %5, align 4
  br label %175

67:                                               ; preds = %1
  %68 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %107

73:                                               ; preds = %67
  store i32 0, i32* %9, align 4
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %75 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %74, i32 0, i32 0
  %76 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %75, align 8
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %78 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %79 = call i32 %76(%struct.btc_coexist* %77, i32 %78, i32* %9)
  %80 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %81 = load i32, i32* @NORMAL_EXEC, align 4
  %82 = call i32 @btc8723b2ant_limited_rx(%struct.btc_coexist* %80, i32 %81, i32 0, i32 0, i32 8)
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %84 = load i32, i32* @COMP_BT_COEXIST, align 4
  %85 = load i32, i32* @DBG_LOUD, align 4
  %86 = call i32 @RT_TRACE(%struct.rtl_priv* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %88 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %87, i32 0, i32 1
  %89 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %88, align 8
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %91 = load i32, i32* @BTC_RF_A, align 4
  %92 = call i32 %89(%struct.btc_coexist* %90, i32 %91, i32 1, i32 1048575, i32 0)
  %93 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %94 = load i32, i32* @NORMAL_EXEC, align 4
  %95 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %93, i32 %94, i32 0)
  %96 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %97 = load i32, i32* @NORMAL_EXEC, align 4
  %98 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %96, i32 %97, i32 0, i32 1)
  %99 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %100 = load i32, i32* @NORMAL_EXEC, align 4
  %101 = call i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist* %99, i32 %100, i32 11)
  %102 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %103 = load i32, i32* @NORMAL_EXEC, align 4
  %104 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %102, i32 %103, i32 0)
  %105 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %106 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %105, i32 0, i32 0, i32 0, i32 0)
  store i32 1, i32* %5, align 4
  br label %174

107:                                              ; preds = %67
  %108 = load i64, i64* @BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE, align 8
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %108, %111
  br i1 %112, label %113, label %151

113:                                              ; preds = %107
  store i32 1, i32* %9, align 4
  %114 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %115 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %114, i32 0, i32 0
  %116 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %115, align 8
  %117 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %118 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %119 = call i32 %116(%struct.btc_coexist* %117, i32 %118, i32* %9)
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %177

123:                                              ; preds = %113
  %124 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %125 = load i32, i32* @COMP_BT_COEXIST, align 4
  %126 = load i32, i32* @DBG_LOUD, align 4
  %127 = call i32 @RT_TRACE(%struct.rtl_priv* %124, i32 %125, i32 %126, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %128 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %129 = load i32, i32* @NORMAL_EXEC, align 4
  %130 = call i32 @btc8723b2ant_limited_rx(%struct.btc_coexist* %128, i32 %129, i32 0, i32 0, i32 8)
  %131 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %132 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %131, i32 0, i32 1
  %133 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %132, align 8
  %134 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %135 = load i32, i32* @BTC_RF_A, align 4
  %136 = call i32 %133(%struct.btc_coexist* %134, i32 %135, i32 1, i32 1048575, i32 0)
  %137 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %138 = load i32, i32* @NORMAL_EXEC, align 4
  %139 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %137, i32 %138, i32 0)
  %140 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %141 = load i32, i32* @NORMAL_EXEC, align 4
  %142 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %140, i32 %141, i32 0, i32 1)
  %143 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %144 = load i32, i32* @NORMAL_EXEC, align 4
  %145 = call i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist* %143, i32 %144, i32 11)
  %146 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %147 = load i32, i32* @NORMAL_EXEC, align 4
  %148 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %146, i32 %147, i32 0)
  %149 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %150 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %149, i32 1, i32 0, i32 0, i32 0)
  store i32 1, i32* %5, align 4
  br label %173

151:                                              ; preds = %107
  store i32 1, i32* %9, align 4
  %152 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %153 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %152, i32 0, i32 0
  %154 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %153, align 8
  %155 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %156 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %157 = call i32 %154(%struct.btc_coexist* %155, i32 %156, i32* %9)
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %151
  %161 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %162 = load i32, i32* @COMP_BT_COEXIST, align 4
  %163 = load i32, i32* @DBG_LOUD, align 4
  %164 = call i32 @RT_TRACE(%struct.rtl_priv* %161, i32 %162, i32 %163, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %172

165:                                              ; preds = %151
  %166 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %167 = load i32, i32* @COMP_BT_COEXIST, align 4
  %168 = load i32, i32* @DBG_LOUD, align 4
  %169 = call i32 @RT_TRACE(%struct.rtl_priv* %166, i32 %167, i32 %168, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %170 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %171 = call i32 @btc8723b2ant_action_wifi_idle_process(%struct.btc_coexist* %170)
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %165, %160
  br label %173

173:                                              ; preds = %172, %123
  br label %174

174:                                              ; preds = %173, %73
  br label %175

175:                                              ; preds = %174, %33
  %176 = load i32, i32* %5, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %175, %122
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32 @btc8723b2ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_action_wifi_idle_process(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
