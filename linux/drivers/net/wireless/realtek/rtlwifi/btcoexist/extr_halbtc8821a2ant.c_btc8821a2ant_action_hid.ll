; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_hid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_hid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)* }

@BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@BTC_RF_A = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_LEGACY = common dso_local global i64 0, align 8
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a2ant_action_hid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_action_hid(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %7 = call i64 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist* %6, i32 0, i32 2, i32 15, i32 0)
  store i64 %7, i64* %3, align 8
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %9 = load i32, i32* @BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES, align 4
  %10 = call i64 @btc8821a2ant_bt_rssi_state(%struct.btc_coexist* %8, i32 2, i32 %9, i32 0)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %12 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %11, i32 0, i32 1
  %13 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %12, align 8
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %15 = load i32, i32* @BTC_RF_A, align 4
  %16 = call i32 %13(%struct.btc_coexist* %14, i32 %15, i32 1, i32 1048575, i32 0)
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %18 = load i32, i32* @NORMAL_EXEC, align 4
  %19 = call i32 @btc8821a2ant_limited_rx(%struct.btc_coexist* %17, i32 %18, i32 0, i32 0, i32 8)
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %21 = load i32, i32* @NORMAL_EXEC, align 4
  %22 = call i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist* %20, i32 %21, i32 6)
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @BTC_RSSI_HIGH(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %28 = load i32, i32* @NORMAL_EXEC, align 4
  %29 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %27, i32 %28, i32 1)
  br label %34

30:                                               ; preds = %1
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %32 = load i32, i32* @NORMAL_EXEC, align 4
  %33 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %36 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %35, i32 0, i32 0
  %37 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %36, align 8
  %38 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %39 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %40 = call i32 %37(%struct.btc_coexist* %38, i32 %39, i64* %5)
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @BTC_WIFI_BW_LEGACY, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %46 = load i32, i32* @NORMAL_EXEC, align 4
  %47 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %45, i32 %46, i32 7)
  br label %52

48:                                               ; preds = %34
  %49 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %50 = load i32, i32* @NORMAL_EXEC, align 4
  %51 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %49, i32 %50, i32 2)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %54 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %55 = call i32 @btc8821a2ant_power_save_state(%struct.btc_coexist* %53, i32 %54, i32 0, i32 0)
  %56 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %57 = load i32, i32* @NORMAL_EXEC, align 4
  %58 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %56, i32 %57, i32 1, i32 24)
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %52
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66, %62
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %72 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %71, i32 1, i32 1, i32 0, i32 0)
  %73 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %74 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %73, i32 1, i32 0, i32 0, i32 24)
  br label %80

75:                                               ; preds = %66
  %76 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %77 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %76, i32 1, i32 1, i32 0, i32 0)
  %78 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %79 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %78, i32 0, i32 0, i32 0, i32 24)
  br label %80

80:                                               ; preds = %75, %70
  br label %100

81:                                               ; preds = %52
  %82 = load i64, i64* %3, align 8
  %83 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %3, align 8
  %87 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85, %81
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %91 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %90, i32 0, i32 1, i32 0, i32 0)
  %92 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %93 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %92, i32 1, i32 0, i32 0, i32 24)
  br label %99

94:                                               ; preds = %85
  %95 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %96 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %95, i32 0, i32 1, i32 0, i32 0)
  %97 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %98 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %97, i32 0, i32 0, i32 0, i32 24)
  br label %99

99:                                               ; preds = %94, %89
  br label %100

100:                                              ; preds = %99, %80
  ret void
}

declare dso_local i64 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i64 @btc8821a2ant_bt_rssi_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i64) #1

declare dso_local i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
