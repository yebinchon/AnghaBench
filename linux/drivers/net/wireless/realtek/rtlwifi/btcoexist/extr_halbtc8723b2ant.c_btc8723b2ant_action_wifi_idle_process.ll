; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_action_wifi_idle_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_action_wifi_idle_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BT_8723B_2ANT_WIFI_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@BTC_GET_U1_AP_NUM = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"[BTCoex], Wifi  idle process for BT HID+A2DP exist!!\0A\00", align 1
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btc_coexist*)* @btc8723b2ant_action_wifi_idle_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc8723b2ant_action_wifi_idle_process(%struct.btc_coexist* %0) #0 {
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
  %11 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %10, i32 0, i32 1
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  store %struct.rtl_priv* %12, %struct.rtl_priv** %4, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @BT_8723B_2ANT_WIFI_RSSI_COEXSWITCH_THRES, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %13, %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %23 = call i32 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist* %22, i32 0, i32 2, i32 15, i32 0)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist* %24, i32 1, i32 2, i32 %25, i32 0)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @btc8723b2ant_bt_rssi_state(%struct.btc_coexist* %36, i32 2, i32 %37, i32 0)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %40 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %39, i32 0, i32 0
  %41 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %40, align 8
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %43 = load i32, i32* @BTC_GET_U1_AP_NUM, align 4
  %44 = call i32 %41(%struct.btc_coexist* %42, i32 %43, i32* %8)
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @BTC_RSSI_HIGH(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %48
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %53
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %60 = load i32, i32* @COMP_BT_COEXIST, align 4
  %61 = load i32, i32* @DBG_LOUD, align 4
  %62 = call i32 @RT_TRACE(%struct.rtl_priv* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %64 = load i32, i32* @NORMAL_EXEC, align 4
  %65 = call i32 @btc8723b2ant_dac_swing(%struct.btc_coexist* %63, i32 %64, i32 1, i32 6)
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %67 = load i32, i32* @NORMAL_EXEC, align 4
  %68 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %66, i32 %67, i32 0)
  %69 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %70 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %69, i32 0, i32 0, i32 0, i32 0)
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %72 = load i32, i32* @NORMAL_EXEC, align 4
  %73 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %71, i32 %72, i32 0)
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %75 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %76 = call i32 @btc8723b2ant_power_save_state(%struct.btc_coexist* %74, i32 %75, i32 0, i32 0)
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %78 = load i32, i32* @NORMAL_EXEC, align 4
  %79 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %77, i32 %78, i32 0, i32 1)
  store i32 1, i32* %2, align 4
  br label %84

80:                                               ; preds = %53, %48, %1
  %81 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %82 = load i32, i32* @NORMAL_EXEC, align 4
  %83 = call i32 @btc8723b2ant_dac_swing(%struct.btc_coexist* %81, i32 %82, i32 1, i32 24)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %80, %58
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_bt_rssi_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8723b2ant_dac_swing(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
