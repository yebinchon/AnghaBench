; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_a2dp_pan_hs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_a2dp_pan_hs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)* }

@BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@BTC_RF_A = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@BTC_PS_LPS_ON = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a2ant_action_a2dp_pan_hs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_action_a2dp_pan_hs(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %7 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %8 = call i64 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist* %7, i32 0, i32 2, i32 15, i32 0)
  store i64 %8, i64* %3, align 8
  %9 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %10 = load i32, i32* @BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES, align 4
  %11 = call i64 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist* %9, i32 1, i32 2, i32 %10, i32 0)
  store i64 %11, i64* %4, align 8
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %13 = load i32, i32* @BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES, align 4
  %14 = call i64 @btc8821a2ant_bt_rssi_state(%struct.btc_coexist* %12, i32 2, i32 %13, i32 0)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %16 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %15, i32 0, i32 1
  %17 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %16, align 8
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %19 = load i32, i32* @BTC_RF_A, align 4
  %20 = call i32 %17(%struct.btc_coexist* %18, i32 %19, i32 1, i32 1048575, i32 0)
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %22 = load i32, i32* @NORMAL_EXEC, align 4
  %23 = call i32 @btc8821a2ant_limited_rx(%struct.btc_coexist* %21, i32 %22, i32 0, i32 0, i32 8)
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %25 = load i32, i32* @NORMAL_EXEC, align 4
  %26 = call i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist* %24, i32 %25, i32 6)
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @BTC_RSSI_HIGH(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %32 = load i32, i32* @NORMAL_EXEC, align 4
  %33 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %31, i32 %32, i32 2)
  br label %38

34:                                               ; preds = %1
  %35 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %36 = load i32, i32* @NORMAL_EXEC, align 4
  %37 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @BTC_RSSI_HIGH(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @BTC_RSSI_HIGH(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %48 = load i32, i32* @NORMAL_EXEC, align 4
  %49 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %47, i32 %48, i32 7)
  %50 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %51 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %52 = call i32 @btc8821a2ant_power_save_state(%struct.btc_coexist* %50, i32 %51, i32 0, i32 0)
  br label %60

53:                                               ; preds = %42, %38
  %54 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %55 = load i32, i32* @NORMAL_EXEC, align 4
  %56 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %54, i32 %55, i32 13)
  %57 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %58 = load i32, i32* @BTC_PS_LPS_ON, align 4
  %59 = call i32 @btc8821a2ant_power_save_state(%struct.btc_coexist* %57, i32 %58, i32 80, i32 4)
  br label %60

60:                                               ; preds = %53, %46
  %61 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %62 = call i32 @btc8821a2ant_tdma_duration_adjust(%struct.btc_coexist* %61, i32 0, i32 1, i32 2)
  %63 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %64 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %63, i32 0, i32 0
  %65 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %64, align 8
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %67 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %68 = call i32 %65(%struct.btc_coexist* %66, i32 %67, i64* %6)
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %60
  %73 = load i64, i64* %3, align 8
  %74 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76, %72
  %81 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %82 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %81, i32 1, i32 0, i32 0, i32 0)
  %83 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %84 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %83, i32 1, i32 0, i32 0, i32 24)
  br label %90

85:                                               ; preds = %76
  %86 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %87 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %86, i32 1, i32 0, i32 0, i32 0)
  %88 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %89 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %88, i32 0, i32 0, i32 0, i32 24)
  br label %90

90:                                               ; preds = %85, %80
  br label %110

91:                                               ; preds = %60
  %92 = load i64, i64* %3, align 8
  %93 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i64, i64* %3, align 8
  %97 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95, %91
  %100 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %101 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %100, i32 0, i32 0, i32 0, i32 0)
  %102 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %103 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %102, i32 1, i32 0, i32 0, i32 24)
  br label %109

104:                                              ; preds = %95
  %105 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %106 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %105, i32 0, i32 0, i32 0, i32 0)
  %107 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %108 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %107, i32 0, i32 0, i32 0, i32 24)
  br label %109

109:                                              ; preds = %104, %99
  br label %110

110:                                              ; preds = %109, %90
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

declare dso_local i32 @btc8821a2ant_tdma_duration_adjust(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
