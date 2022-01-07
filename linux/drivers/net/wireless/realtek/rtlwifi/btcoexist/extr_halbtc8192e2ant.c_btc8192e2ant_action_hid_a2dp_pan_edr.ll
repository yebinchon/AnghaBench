; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_action_hid_a2dp_pan_edr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_action_hid_a2dp_pan_edr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i64*)* }

@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_MEDIUM = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_MEDIUM = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8192e2ant_action_hid_a2dp_pan_edr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8192e2ant_action_hid_a2dp_pan_edr(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %6 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  store i64 %6, i64* %4, align 8
  %7 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %8 = call i64 @btc8192e2ant_wifi_rssi_state(%struct.btc_coexist* %7, i32 0, i32 2, i32 15, i32 0)
  store i64 %8, i64* %3, align 8
  %9 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %10 = call i64 @btc8192e2ant_bt_rssi_state(%struct.btc_coexist* %9, i32 3, i32 34, i32 42)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %12 = load i32, i32* @NORMAL_EXEC, align 4
  %13 = call i32 @btc8192e2ant_switch_ss_type(%struct.btc_coexist* %11, i32 %12, i32 1)
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %15 = load i32, i32* @NORMAL_EXEC, align 4
  %16 = call i32 @btc8192e2ant_limited_rx(%struct.btc_coexist* %14, i32 %15, i32 0, i32 0, i32 8)
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %18 = load i32, i32* @NORMAL_EXEC, align 4
  %19 = call i32 @btc8192e2ant_fw_dac_swing_lvl(%struct.btc_coexist* %17, i32 %18, i32 6)
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %21 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %20, i32 0, i32 0
  %22 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %21, align 8
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %24 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %25 = call i32 %22(%struct.btc_coexist* %23, i32 %24, i64* %5)
  %26 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %27 = load i32, i32* @NORMAL_EXEC, align 4
  %28 = call i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist* %26, i32 %27, i32 3)
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %1
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32, %1
  %37 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %38 = load i32, i32* @NORMAL_EXEC, align 4
  %39 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %37, i32 %38, i32 0)
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %41 = call i32 @btc8192e2ant_tdma_duration_adjust(%struct.btc_coexist* %40, i32 1, i32 1, i32 3)
  br label %72

42:                                               ; preds = %32
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46, %42
  %51 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %52 = load i32, i32* @NORMAL_EXEC, align 4
  %53 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %51, i32 %52, i32 2)
  %54 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %55 = call i32 @btc8192e2ant_tdma_duration_adjust(%struct.btc_coexist* %54, i32 1, i32 0, i32 3)
  br label %71

56:                                               ; preds = %46
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60, %56
  %65 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %66 = load i32, i32* @NORMAL_EXEC, align 4
  %67 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %65, i32 %66, i32 4)
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %69 = call i32 @btc8192e2ant_tdma_duration_adjust(%struct.btc_coexist* %68, i32 1, i32 0, i32 3)
  br label %70

70:                                               ; preds = %64, %60
  br label %71

71:                                               ; preds = %70, %50
  br label %72

72:                                               ; preds = %71, %36
  %73 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %72
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80, %76
  %85 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %86 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %85, i32 1, i32 1, i32 0, i32 0)
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %88 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %87, i32 1, i32 0, i32 0, i32 24)
  br label %94

89:                                               ; preds = %80
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %91 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %90, i32 1, i32 1, i32 0, i32 0)
  %92 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %93 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %92, i32 0, i32 0, i32 0, i32 24)
  br label %94

94:                                               ; preds = %89, %84
  br label %114

95:                                               ; preds = %72
  %96 = load i64, i64* %3, align 8
  %97 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i64, i64* %3, align 8
  %101 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99, %95
  %104 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %105 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %104, i32 0, i32 1, i32 0, i32 0)
  %106 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %107 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %106, i32 1, i32 0, i32 0, i32 24)
  br label %113

108:                                              ; preds = %99
  %109 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %110 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %109, i32 0, i32 1, i32 0, i32 0)
  %111 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %112 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %111, i32 0, i32 0, i32 0, i32 24)
  br label %113

113:                                              ; preds = %108, %103
  br label %114

114:                                              ; preds = %113, %94
  ret void
}

declare dso_local i64 @btc8192e2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i64 @btc8192e2ant_bt_rssi_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_switch_ss_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_tdma_duration_adjust(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
