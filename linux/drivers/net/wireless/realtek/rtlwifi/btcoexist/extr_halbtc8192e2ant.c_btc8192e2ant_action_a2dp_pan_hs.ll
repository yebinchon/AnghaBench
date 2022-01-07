; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_action_a2dp_pan_hs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_action_a2dp_pan_hs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i64*)* }

@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_MEDIUM = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_MEDIUM = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8192e2ant_action_a2dp_pan_hs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8192e2ant_action_a2dp_pan_hs(%struct.btc_coexist* %0) #0 {
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
  %21 = load i32, i32* @NORMAL_EXEC, align 4
  %22 = call i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist* %20, i32 %21, i32 2)
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26, %1
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %32 = call i32 @btc8192e2ant_tdma_duration_adjust(%struct.btc_coexist* %31, i32 0, i32 1, i32 2)
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %34 = load i32, i32* @NORMAL_EXEC, align 4
  %35 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %33, i32 %34, i32 0)
  br label %66

36:                                               ; preds = %26
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40, %36
  %45 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %46 = call i32 @btc8192e2ant_tdma_duration_adjust(%struct.btc_coexist* %45, i32 0, i32 0, i32 2)
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %48 = load i32, i32* @NORMAL_EXEC, align 4
  %49 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %47, i32 %48, i32 2)
  br label %65

50:                                               ; preds = %40
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54, %50
  %59 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %60 = call i32 @btc8192e2ant_tdma_duration_adjust(%struct.btc_coexist* %59, i32 0, i32 0, i32 2)
  %61 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %62 = load i32, i32* @NORMAL_EXEC, align 4
  %63 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %61, i32 %62, i32 4)
  br label %64

64:                                               ; preds = %58, %54
  br label %65

65:                                               ; preds = %64, %44
  br label %66

66:                                               ; preds = %65, %30
  %67 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %68 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %67, i32 0, i32 0
  %69 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %68, align 8
  %70 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %71 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %72 = call i32 %69(%struct.btc_coexist* %70, i32 %71, i64* %5)
  %73 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %66
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
  %86 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %85, i32 1, i32 0, i32 0, i32 0)
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %88 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %87, i32 1, i32 0, i32 1, i32 6)
  br label %94

89:                                               ; preds = %80
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %91 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %90, i32 1, i32 0, i32 0, i32 0)
  %92 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %93 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %92, i32 0, i32 0, i32 1, i32 6)
  br label %94

94:                                               ; preds = %89, %84
  br label %114

95:                                               ; preds = %66
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
  %105 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %104, i32 0, i32 0, i32 0, i32 0)
  %106 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %107 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %106, i32 1, i32 0, i32 1, i32 6)
  br label %113

108:                                              ; preds = %99
  %109 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %110 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %109, i32 0, i32 0, i32 0, i32 0)
  %111 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %112 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %111, i32 0, i32 0, i32 1, i32 6)
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

declare dso_local i32 @btc8192e2ant_tdma_duration_adjust(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
