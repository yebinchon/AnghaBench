; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_action_pan_edr_hid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_action_pan_edr_hid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i64*)* }

@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_MEDIUM = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_MEDIUM = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8192e2ant_action_pan_edr_hid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8192e2ant_action_pan_edr_hid(%struct.btc_coexist* %0) #0 {
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
  %12 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %11, i32 0, i32 0
  %13 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %12, align 8
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %15 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %16 = call i32 %13(%struct.btc_coexist* %14, i32 %15, i64* %5)
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %18 = load i32, i32* @NORMAL_EXEC, align 4
  %19 = call i32 @btc8192e2ant_switch_ss_type(%struct.btc_coexist* %17, i32 %18, i32 1)
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %21 = load i32, i32* @NORMAL_EXEC, align 4
  %22 = call i32 @btc8192e2ant_limited_rx(%struct.btc_coexist* %20, i32 %21, i32 0, i32 0, i32 8)
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %24 = load i32, i32* @NORMAL_EXEC, align 4
  %25 = call i32 @btc8192e2ant_fw_dac_swing_lvl(%struct.btc_coexist* %23, i32 %24, i32 6)
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
  br i1 %35, label %36, label %43

36:                                               ; preds = %32, %1
  %37 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %38 = load i32, i32* @NORMAL_EXEC, align 4
  %39 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %37, i32 %38, i32 0)
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %41 = load i32, i32* @NORMAL_EXEC, align 4
  %42 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %40, i32 %41, i32 1, i32 14)
  br label %75

43:                                               ; preds = %32
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47, %43
  %52 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %53 = load i32, i32* @NORMAL_EXEC, align 4
  %54 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %52, i32 %53, i32 2)
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %56 = load i32, i32* @NORMAL_EXEC, align 4
  %57 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %55, i32 %56, i32 1, i32 10)
  br label %74

58:                                               ; preds = %47
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62, %58
  %67 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %68 = load i32, i32* @NORMAL_EXEC, align 4
  %69 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %67, i32 %68, i32 4)
  %70 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %71 = load i32, i32* @NORMAL_EXEC, align 4
  %72 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %70, i32 %71, i32 1, i32 10)
  br label %73

73:                                               ; preds = %66, %62
  br label %74

74:                                               ; preds = %73, %51
  br label %75

75:                                               ; preds = %74, %36
  %76 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %77 = load i64, i64* %5, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %75
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* %3, align 8
  %85 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83, %79
  %88 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %89 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %88, i32 1, i32 1, i32 0, i32 0)
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %91 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %90, i32 1, i32 0, i32 0, i32 24)
  br label %97

92:                                               ; preds = %83
  %93 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %94 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %93, i32 1, i32 1, i32 0, i32 0)
  %95 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %96 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %95, i32 0, i32 0, i32 0, i32 24)
  br label %97

97:                                               ; preds = %92, %87
  br label %117

98:                                               ; preds = %75
  %99 = load i64, i64* %3, align 8
  %100 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i64, i64* %3, align 8
  %104 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102, %98
  %107 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %108 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %107, i32 0, i32 1, i32 0, i32 0)
  %109 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %110 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %109, i32 1, i32 0, i32 0, i32 24)
  br label %116

111:                                              ; preds = %102
  %112 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %113 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %112, i32 0, i32 1, i32 0, i32 0)
  %114 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %115 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %114, i32 0, i32 0, i32 0, i32 24)
  br label %116

116:                                              ; preds = %111, %106
  br label %117

117:                                              ; preds = %116, %97
  ret void
}

declare dso_local i64 @btc8192e2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i64 @btc8192e2ant_bt_rssi_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_switch_ss_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
