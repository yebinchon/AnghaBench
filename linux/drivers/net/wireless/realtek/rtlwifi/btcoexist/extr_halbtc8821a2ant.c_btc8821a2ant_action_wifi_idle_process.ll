; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_wifi_idle_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_wifi_idle_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@BTC_GET_U1_AP_NUM = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"[BTCoex], Wifi  idle process for BT HID+A2DP exist!!\0A\00", align 1
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"[BTCoex], Wifi  idle process for BT PAN exist!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btc_coexist*)* @btc8821a2ant_action_wifi_idle_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc8821a2ant_action_wifi_idle_process(%struct.btc_coexist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  %9 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %10 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %9, i32 0, i32 1
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  store %struct.rtl_priv* %11, %struct.rtl_priv** %4, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %13 = call i32 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist* %12, i32 0, i32 2, i32 15, i32 0)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %15 = load i32, i32* @BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES, align 4
  %16 = sub nsw i32 %15, 20
  %17 = call i32 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist* %14, i32 1, i32 2, i32 %16, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %19 = load i32, i32* @BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES, align 4
  %20 = call i32 @btc8821a2ant_bt_rssi_state(%struct.btc_coexist* %18, i32 2, i32 %19, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %22 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %21, i32 0, i32 0
  %23 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %22, align 8
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %25 = load i32, i32* @BTC_GET_U1_AP_NUM, align 4
  %26 = call i32 %23(%struct.btc_coexist* %24, i32 %25, i32* %8)
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @BTC_RSSI_HIGH(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %30
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %35
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %42 = load i32, i32* @COMP_BT_COEXIST, align 4
  %43 = load i32, i32* @DBG_LOUD, align 4
  %44 = call i32 @RT_TRACE(%struct.rtl_priv* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %46 = load i32, i32* @NORMAL_EXEC, align 4
  %47 = call i32 @btc8821a2ant_dac_swing(%struct.btc_coexist* %45, i32 %46, i32 1, i32 6)
  %48 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %49 = load i32, i32* @NORMAL_EXEC, align 4
  %50 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %48, i32 %49, i32 0)
  %51 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %52 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %51, i32 0, i32 0, i32 0, i32 0)
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %54 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %53, i32 0, i32 0, i32 0, i32 24)
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %56 = load i32, i32* @NORMAL_EXEC, align 4
  %57 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %55, i32 %56, i32 0)
  %58 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %59 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %60 = call i32 @btc8821a2ant_power_save_state(%struct.btc_coexist* %58, i32 %59, i32 0, i32 0)
  %61 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %62 = load i32, i32* @NORMAL_EXEC, align 4
  %63 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %61, i32 %62, i32 0, i32 1)
  store i32 1, i32* %2, align 4
  br label %98

64:                                               ; preds = %35, %30, %1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %93

69:                                               ; preds = %64
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %71 = load i32, i32* @COMP_BT_COEXIST, align 4
  %72 = load i32, i32* @DBG_LOUD, align 4
  %73 = call i32 @RT_TRACE(%struct.rtl_priv* %70, i32 %71, i32 %72, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %75 = load i32, i32* @NORMAL_EXEC, align 4
  %76 = call i32 @btc8821a2ant_dac_swing(%struct.btc_coexist* %74, i32 %75, i32 1, i32 6)
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %78 = load i32, i32* @NORMAL_EXEC, align 4
  %79 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %77, i32 %78, i32 0)
  %80 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %81 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %80, i32 0, i32 0, i32 0, i32 0)
  %82 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %83 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %82, i32 0, i32 0, i32 0, i32 24)
  %84 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %85 = load i32, i32* @NORMAL_EXEC, align 4
  %86 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %84, i32 %85, i32 0)
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %88 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %89 = call i32 @btc8821a2ant_power_save_state(%struct.btc_coexist* %87, i32 %88, i32 0, i32 0)
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %91 = load i32, i32* @NORMAL_EXEC, align 4
  %92 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %90, i32 %91, i32 0, i32 1)
  store i32 1, i32* %2, align 4
  br label %98

93:                                               ; preds = %64
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %96 = load i32, i32* @NORMAL_EXEC, align 4
  %97 = call i32 @btc8821a2ant_dac_swing(%struct.btc_coexist* %95, i32 %96, i32 1, i32 24)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %69, %40
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_bt_rssi_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8821a2ant_dac_swing(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
