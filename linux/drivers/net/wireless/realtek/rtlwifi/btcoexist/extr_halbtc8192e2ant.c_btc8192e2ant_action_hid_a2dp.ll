; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_action_hid_a2dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_action_hid_a2dp.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8192e2ant_action_hid_a2dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8192e2ant_action_hid_a2dp(%struct.btc_coexist* %0) #0 {
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
  %18 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %17, i32 0, i32 0
  %19 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %18, align 8
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %21 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %22 = call i32 %19(%struct.btc_coexist* %20, i32 %21, i64* %5)
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %24 = load i32, i32* @NORMAL_EXEC, align 4
  %25 = call i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist* %23, i32 %24, i32 3)
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %1
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29, %1
  %34 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %35 = load i32, i32* @NORMAL_EXEC, align 4
  %36 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %34, i32 %35, i32 0)
  %37 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %38 = call i32 @btc8192e2ant_tdma_duration_adjust(%struct.btc_coexist* %37, i32 1, i32 1, i32 2)
  br label %69

39:                                               ; preds = %29
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43, %39
  %48 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %49 = load i32, i32* @NORMAL_EXEC, align 4
  %50 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %48, i32 %49, i32 2)
  %51 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %52 = call i32 @btc8192e2ant_tdma_duration_adjust(%struct.btc_coexist* %51, i32 1, i32 0, i32 2)
  br label %68

53:                                               ; preds = %43
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57, %53
  %62 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %63 = load i32, i32* @NORMAL_EXEC, align 4
  %64 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %62, i32 %63, i32 4)
  %65 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %66 = call i32 @btc8192e2ant_tdma_duration_adjust(%struct.btc_coexist* %65, i32 1, i32 0, i32 2)
  br label %67

67:                                               ; preds = %61, %57
  br label %68

68:                                               ; preds = %67, %47
  br label %69

69:                                               ; preds = %68, %33
  %70 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %71 = load i64, i64* %5, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %69
  %74 = load i64, i64* %3, align 8
  %75 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i64, i64* %3, align 8
  %79 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77, %73
  %82 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %83 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %82, i32 1, i32 1, i32 0, i32 0)
  %84 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %85 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %84, i32 1, i32 0, i32 0, i32 24)
  br label %91

86:                                               ; preds = %77
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %88 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %87, i32 1, i32 1, i32 0, i32 0)
  %89 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %90 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %89, i32 0, i32 0, i32 0, i32 24)
  br label %91

91:                                               ; preds = %86, %81
  br label %111

92:                                               ; preds = %69
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
  %102 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %101, i32 0, i32 1, i32 0, i32 0)
  %103 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %104 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %103, i32 1, i32 0, i32 0, i32 24)
  br label %110

105:                                              ; preds = %96
  %106 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %107 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %106, i32 0, i32 1, i32 0, i32 0)
  %108 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %109 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %108, i32 0, i32 0, i32 0, i32 24)
  br label %110

110:                                              ; preds = %105, %100
  br label %111

111:                                              ; preds = %110, %91
  ret void
}

declare dso_local i64 @btc8192e2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i64 @btc8192e2ant_bt_rssi_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_switch_ss_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i32) #1

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
