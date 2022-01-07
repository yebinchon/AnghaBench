; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_act_hid_a2dp_pan_edr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_act_hid_a2dp_pan_edr.c"
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
@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a2ant_act_hid_a2dp_pan_edr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_act_hid_a2dp_pan_edr(%struct.btc_coexist* %0) #0 {
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
  %56 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %54, i32 %55, i32 14)
  %57 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %58 = load i32, i32* @BTC_PS_LPS_ON, align 4
  %59 = call i32 @btc8821a2ant_power_save_state(%struct.btc_coexist* %57, i32 %58, i32 80, i32 4)
  br label %60

60:                                               ; preds = %53, %46
  %61 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %62 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %61, i32 0, i32 0
  %63 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %62, align 8
  %64 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %65 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %66 = call i32 %63(%struct.btc_coexist* %64, i32 %65, i64* %6)
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %60
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %70, %60
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %80 = call i32 @btc8821a2ant_tdma_duration_adjust(%struct.btc_coexist* %79, i32 1, i32 1, i32 3)
  br label %84

81:                                               ; preds = %74
  %82 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %83 = call i32 @btc8821a2ant_tdma_duration_adjust(%struct.btc_coexist* %82, i32 1, i32 0, i32 3)
  br label %84

84:                                               ; preds = %81, %78
  br label %88

85:                                               ; preds = %70
  %86 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %87 = call i32 @btc8821a2ant_tdma_duration_adjust(%struct.btc_coexist* %86, i32 1, i32 1, i32 3)
  br label %88

88:                                               ; preds = %85, %84
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %88
  %93 = load i64, i64* %3, align 8
  %94 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %3, align 8
  %98 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96, %92
  %101 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %102 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %101, i32 1, i32 1, i32 0, i32 0)
  %103 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %104 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %103, i32 1, i32 0, i32 0, i32 24)
  br label %110

105:                                              ; preds = %96
  %106 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %107 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %106, i32 1, i32 1, i32 0, i32 0)
  %108 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %109 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %108, i32 0, i32 0, i32 0, i32 24)
  br label %110

110:                                              ; preds = %105, %100
  br label %130

111:                                              ; preds = %88
  %112 = load i64, i64* %3, align 8
  %113 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load i64, i64* %3, align 8
  %117 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115, %111
  %120 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %121 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %120, i32 0, i32 1, i32 0, i32 0)
  %122 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %123 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %122, i32 1, i32 0, i32 0, i32 24)
  br label %129

124:                                              ; preds = %115
  %125 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %126 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %125, i32 0, i32 1, i32 0, i32 0)
  %127 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %128 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %127, i32 0, i32 0, i32 0, i32 24)
  br label %129

129:                                              ; preds = %124, %119
  br label %130

130:                                              ; preds = %129, %110
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
