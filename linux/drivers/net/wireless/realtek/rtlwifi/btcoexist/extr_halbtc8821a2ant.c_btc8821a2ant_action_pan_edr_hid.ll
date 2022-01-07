; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_pan_edr_hid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_pan_edr_hid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i64*)* }

@BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_LEGACY = common dso_local global i64 0, align 8
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a2ant_action_pan_edr_hid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_action_pan_edr_hid(%struct.btc_coexist* %0) #0 {
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
  %12 = load i32, i32* @NORMAL_EXEC, align 4
  %13 = call i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist* %11, i32 %12, i32 6)
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @BTC_RSSI_HIGH(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %19 = load i32, i32* @NORMAL_EXEC, align 4
  %20 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %18, i32 %19, i32 1)
  br label %25

21:                                               ; preds = %1
  %22 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %23 = load i32, i32* @NORMAL_EXEC, align 4
  %24 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %22, i32 %23, i32 0)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %27 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %26, i32 0, i32 0
  %28 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %27, align 8
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %30 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %31 = call i32 %28(%struct.btc_coexist* %29, i32 %30, i64* %5)
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @BTC_WIFI_BW_LEGACY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %37 = load i32, i32* @NORMAL_EXEC, align 4
  %38 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %36, i32 %37, i32 1442797055, i32 1516198495, i32 65535, i32 3)
  br label %43

39:                                               ; preds = %25
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %41 = load i32, i32* @NORMAL_EXEC, align 4
  %42 = call i32 @btc8821a2ant_coex_table(%struct.btc_coexist* %40, i32 %41, i32 1442797055, i32 1516198495, i32 65535, i32 3)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %85

47:                                               ; preds = %43
  %48 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %49 = load i32, i32* @NORMAL_EXEC, align 4
  %50 = call i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist* %48, i32 %49, i32 3)
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54, %47
  %59 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %60 = load i32, i32* @NORMAL_EXEC, align 4
  %61 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %59, i32 %60, i32 1, i32 10)
  br label %66

62:                                               ; preds = %54
  %63 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %64 = load i32, i32* @NORMAL_EXEC, align 4
  %65 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %63, i32 %64, i32 1, i32 14)
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70, %66
  %75 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %76 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %75, i32 1, i32 1, i32 0, i32 0)
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %78 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %77, i32 1, i32 0, i32 0, i32 24)
  br label %84

79:                                               ; preds = %70
  %80 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %81 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %80, i32 1, i32 1, i32 0, i32 0)
  %82 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %83 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %82, i32 0, i32 0, i32 0, i32 24)
  br label %84

84:                                               ; preds = %79, %74
  br label %123

85:                                               ; preds = %43
  %86 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %87 = load i32, i32* @NORMAL_EXEC, align 4
  %88 = call i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist* %86, i32 %87, i32 6)
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %85
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92, %85
  %97 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %98 = load i32, i32* @NORMAL_EXEC, align 4
  %99 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %97, i32 %98, i32 1, i32 10)
  br label %104

100:                                              ; preds = %92
  %101 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %102 = load i32, i32* @NORMAL_EXEC, align 4
  %103 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %101, i32 %102, i32 1, i32 14)
  br label %104

104:                                              ; preds = %100, %96
  %105 = load i64, i64* %3, align 8
  %106 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i64, i64* %3, align 8
  %110 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108, %104
  %113 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %114 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %113, i32 0, i32 1, i32 0, i32 0)
  %115 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %116 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %115, i32 1, i32 0, i32 0, i32 24)
  br label %122

117:                                              ; preds = %108
  %118 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %119 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %118, i32 0, i32 1, i32 0, i32 0)
  %120 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %121 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %120, i32 0, i32 0, i32 0, i32 24)
  br label %122

122:                                              ; preds = %117, %112
  br label %123

123:                                              ; preds = %122, %84
  ret void
}

declare dso_local i64 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i64 @btc8821a2ant_bt_rssi_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i64) #1

declare dso_local i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_coex_table(%struct.btc_coexist*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
