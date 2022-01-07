; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_action_sco_pan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_action_sco_pan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i64*)* }

@BTC_RSSI_STATE_STAY_LOW = common dso_local global i64 0, align 8
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_MEDIUM = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_MEDIUM = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8192e2ant_action_sco_pan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8192e2ant_action_sco_pan(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %6 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  store i64 %6, i64* %4, align 8
  %7 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %8 = call i64 @btc8192e2ant_wifi_rssi_state(%struct.btc_coexist* %7, i32 0, i32 2, i32 15, i32 0)
  store i64 %8, i64* %3, align 8
  %9 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %10 = load i32, i32* @NORMAL_EXEC, align 4
  %11 = call i32 @btc8192e2ant_switch_ss_type(%struct.btc_coexist* %9, i32 %10, i32 1)
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %13 = load i32, i32* @NORMAL_EXEC, align 4
  %14 = call i32 @btc8192e2ant_limited_rx(%struct.btc_coexist* %12, i32 %13, i32 0, i32 0, i32 8)
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %16 = load i32, i32* @NORMAL_EXEC, align 4
  %17 = call i32 @btc8192e2ant_fw_dac_swing_lvl(%struct.btc_coexist* %15, i32 %16, i32 6)
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %19 = load i32, i32* @NORMAL_EXEC, align 4
  %20 = call i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist* %18, i32 %19, i32 4)
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %22 = call i64 @btc8192e2ant_bt_rssi_state(%struct.btc_coexist* %21, i32 3, i32 34, i32 42)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26, %1
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %32 = load i32, i32* @NORMAL_EXEC, align 4
  %33 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %31, i32 %32, i32 0)
  %34 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %35 = load i32, i32* @NORMAL_EXEC, align 4
  %36 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %34, i32 %35, i32 1, i32 14)
  br label %69

37:                                               ; preds = %26
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41, %37
  %46 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %47 = load i32, i32* @NORMAL_EXEC, align 4
  %48 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %46, i32 %47, i32 2)
  %49 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %50 = load i32, i32* @NORMAL_EXEC, align 4
  %51 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %49, i32 %50, i32 1, i32 10)
  br label %68

52:                                               ; preds = %41
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56, %52
  %61 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %62 = load i32, i32* @NORMAL_EXEC, align 4
  %63 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %61, i32 %62, i32 4)
  %64 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %65 = load i32, i32* @NORMAL_EXEC, align 4
  %66 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %64, i32 %65, i32 1, i32 10)
  br label %67

67:                                               ; preds = %60, %56
  br label %68

68:                                               ; preds = %67, %45
  br label %69

69:                                               ; preds = %68, %30
  %70 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %71 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %70, i32 0, i32 0
  %72 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %71, align 8
  %73 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %74 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %75 = call i32 %72(%struct.btc_coexist* %73, i32 %74, i64* %5)
  %76 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %77 = load i64, i64* %5, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %69
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
  %91 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %90, i32 1, i32 0, i32 0, i32 6)
  br label %97

92:                                               ; preds = %83
  %93 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %94 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %93, i32 1, i32 1, i32 0, i32 0)
  %95 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %96 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %95, i32 0, i32 0, i32 0, i32 6)
  br label %97

97:                                               ; preds = %92, %87
  br label %117

98:                                               ; preds = %69
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
  %110 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %109, i32 1, i32 0, i32 0, i32 6)
  br label %116

111:                                              ; preds = %102
  %112 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %113 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %112, i32 0, i32 1, i32 0, i32 0)
  %114 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %115 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %114, i32 0, i32 0, i32 0, i32 6)
  br label %116

116:                                              ; preds = %111, %106
  br label %117

117:                                              ; preds = %116, %97
  ret void
}

declare dso_local i64 @btc8192e2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_switch_ss_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i64 @btc8192e2ant_bt_rssi_state(%struct.btc_coexist*, i32, i32, i32) #1

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
