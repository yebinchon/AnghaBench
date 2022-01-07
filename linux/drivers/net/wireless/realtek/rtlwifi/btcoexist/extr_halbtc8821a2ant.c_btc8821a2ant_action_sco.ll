; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_sco.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_sco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, %struct.btc_bt_link_info }
%struct.btc_bt_link_info = type { i64 }

@BTC_RF_A = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_LEGACY = common dso_local global i64 0, align 8
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a2ant_action_sco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_action_sco(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.btc_bt_link_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %7 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %8 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %7, i32 0, i32 2
  store %struct.btc_bt_link_info* %8, %struct.btc_bt_link_info** %3, align 8
  %9 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %10 = call i64 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist* %9, i32 0, i32 2, i32 15, i32 0)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %12 = call i64 @btc8821a2ant_bt_rssi_state(%struct.btc_coexist* %11, i32 2, i32 35, i32 0)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %14 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %13, i32 0, i32 1
  %15 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %14, align 8
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %17 = load i32, i32* @BTC_RF_A, align 4
  %18 = call i32 %15(%struct.btc_coexist* %16, i32 %17, i32 1, i32 1048575, i32 0)
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %20 = load i32, i32* @NORMAL_EXEC, align 4
  %21 = call i32 @btc8821a2ant_limited_rx(%struct.btc_coexist* %19, i32 %20, i32 0, i32 0, i32 8)
  %22 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %23 = load i32, i32* @NORMAL_EXEC, align 4
  %24 = call i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist* %22, i32 %23, i32 4)
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @BTC_RSSI_HIGH(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %30 = load i32, i32* @NORMAL_EXEC, align 4
  %31 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %29, i32 %30, i32 1)
  br label %36

32:                                               ; preds = %1
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %34 = load i32, i32* @NORMAL_EXEC, align 4
  %35 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %33, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %38 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %37, i32 0, i32 0
  %39 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %38, align 8
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %41 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %42 = call i32 %39(%struct.btc_coexist* %40, i32 %41, i64* %6)
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @BTC_WIFI_BW_LEGACY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %48 = load i32, i32* @NORMAL_EXEC, align 4
  %49 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %47, i32 %48, i32 2)
  br label %73

50:                                               ; preds = %36
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %56 = load i32, i32* @NORMAL_EXEC, align 4
  %57 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %55, i32 %56, i32 8)
  br label %72

58:                                               ; preds = %50
  %59 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %3, align 8
  %60 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %65 = load i32, i32* @NORMAL_EXEC, align 4
  %66 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %64, i32 %65, i32 17)
  br label %71

67:                                               ; preds = %58
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %69 = load i32, i32* @NORMAL_EXEC, align 4
  %70 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %68, i32 %69, i32 12)
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %54
  br label %73

73:                                               ; preds = %72, %46
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %75 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %76 = call i32 @btc8821a2ant_power_save_state(%struct.btc_coexist* %74, i32 %75, i32 0, i32 0)
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %78 = load i32, i32* @NORMAL_EXEC, align 4
  %79 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %77, i32 %78, i32 0, i32 0)
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %73
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* %4, align 8
  %89 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87, %83
  %92 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %93 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %92, i32 1, i32 1, i32 0, i32 0)
  %94 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %95 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %94, i32 1, i32 0, i32 1, i32 24)
  br label %101

96:                                               ; preds = %87
  %97 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %98 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %97, i32 1, i32 1, i32 0, i32 0)
  %99 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %100 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %99, i32 0, i32 0, i32 1, i32 24)
  br label %101

101:                                              ; preds = %96, %91
  br label %121

102:                                              ; preds = %73
  %103 = load i64, i64* %4, align 8
  %104 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i64, i64* %4, align 8
  %108 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106, %102
  %111 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %112 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %111, i32 0, i32 1, i32 0, i32 0)
  %113 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %114 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %113, i32 1, i32 0, i32 1, i32 24)
  br label %120

115:                                              ; preds = %106
  %116 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %117 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %116, i32 0, i32 1, i32 0, i32 0)
  %118 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %119 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %118, i32 0, i32 0, i32 1, i32 24)
  br label %120

120:                                              ; preds = %115, %110
  br label %121

121:                                              ; preds = %120, %101
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
