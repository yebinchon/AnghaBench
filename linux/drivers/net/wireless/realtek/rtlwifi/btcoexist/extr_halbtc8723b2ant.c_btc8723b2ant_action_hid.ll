; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_action_hid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_action_hid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)* }

@BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES = common dso_local global i64 0, align 8
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@BTC_RF_A = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_LEGACY = common dso_local global i64 0, align 8
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8723b2ant_action_hid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8723b2ant_action_hid(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %7 = load i64, i64* @BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %7, %10
  store i64 %11, i64* %6, align 8
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %13 = call i64 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist* %12, i32 0, i32 2, i32 15, i32 0)
  store i64 %13, i64* %3, align 8
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @btc8723b2ant_bt_rssi_state(%struct.btc_coexist* %14, i32 2, i64 %15, i32 0)
  store i64 %16, i64* %4, align 8
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %18 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %17, i32 0, i32 1
  %19 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %18, align 8
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %21 = load i32, i32* @BTC_RF_A, align 4
  %22 = call i32 %19(%struct.btc_coexist* %20, i32 %21, i32 1, i32 1048575, i32 0)
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %24 = load i32, i32* @NORMAL_EXEC, align 4
  %25 = call i32 @btc8723b2ant_limited_rx(%struct.btc_coexist* %23, i32 %24, i32 0, i32 0, i32 8)
  %26 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %27 = load i32, i32* @NORMAL_EXEC, align 4
  %28 = call i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist* %26, i32 %27, i32 6)
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @BTC_RSSI_HIGH(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %34 = load i32, i32* @NORMAL_EXEC, align 4
  %35 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %33, i32 %34, i32 2)
  br label %40

36:                                               ; preds = %1
  %37 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %38 = load i32, i32* @NORMAL_EXEC, align 4
  %39 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %37, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %42 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %41, i32 0, i32 0
  %43 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %42, align 8
  %44 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %45 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %46 = call i32 %43(%struct.btc_coexist* %44, i32 %45, i64* %5)
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @BTC_WIFI_BW_LEGACY, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %52 = load i32, i32* @NORMAL_EXEC, align 4
  %53 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %51, i32 %52, i32 7)
  br label %58

54:                                               ; preds = %40
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %56 = load i32, i32* @NORMAL_EXEC, align 4
  %57 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %55, i32 %56, i32 9)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %60 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %61 = call i32 @btc8723b2ant_power_save_state(%struct.btc_coexist* %59, i32 %60, i32 0, i32 0)
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %58
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65, %58
  %70 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %71 = load i32, i32* @NORMAL_EXEC, align 4
  %72 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %70, i32 %71, i32 1, i32 9)
  br label %77

73:                                               ; preds = %65
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %75 = load i32, i32* @NORMAL_EXEC, align 4
  %76 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %74, i32 %75, i32 1, i32 13)
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %83 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %82, i32 1, i32 1, i32 0, i32 0)
  br label %87

84:                                               ; preds = %77
  %85 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %86 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %85, i32 0, i32 1, i32 0, i32 0)
  br label %87

87:                                               ; preds = %84, %81
  ret void
}

declare dso_local i64 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i64 @btc8723b2ant_bt_rssi_state(%struct.btc_coexist*, i32, i64, i32) #1

declare dso_local i32 @btc8723b2ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i64) #1

declare dso_local i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
