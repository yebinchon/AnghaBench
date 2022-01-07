; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_pan_hs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_pan_hs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)* }

@BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@BTC_RF_A = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a2ant_action_pan_hs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_action_pan_hs(%struct.btc_coexist* %0) #0 {
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
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %40 = load i32, i32* @NORMAL_EXEC, align 4
  %41 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %39, i32 %40, i32 7)
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %43 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %44 = call i32 @btc8821a2ant_power_save_state(%struct.btc_coexist* %42, i32 %43, i32 0, i32 0)
  %45 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %46 = load i32, i32* @NORMAL_EXEC, align 4
  %47 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %45, i32 %46, i32 0, i32 1)
  %48 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %49 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %48, i32 0, i32 0
  %50 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %49, align 8
  %51 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %52 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %53 = call i32 %50(%struct.btc_coexist* %51, i32 %52, i64* %6)
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %38
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61, %57
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %67 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %66, i32 1, i32 0, i32 0, i32 0)
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %69 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %68, i32 1, i32 0, i32 0, i32 24)
  br label %75

70:                                               ; preds = %61
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %72 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %71, i32 1, i32 0, i32 0, i32 0)
  %73 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %74 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %73, i32 0, i32 0, i32 0, i32 24)
  br label %75

75:                                               ; preds = %70, %65
  br label %95

76:                                               ; preds = %38
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
  %86 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %85, i32 0, i32 0, i32 0, i32 0)
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %88 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %87, i32 1, i32 0, i32 0, i32 24)
  br label %94

89:                                               ; preds = %80
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %91 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %90, i32 0, i32 0, i32 0, i32 0)
  %92 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %93 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %92, i32 0, i32 0, i32 0, i32 24)
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %94, %75
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
