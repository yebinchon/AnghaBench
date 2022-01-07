; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_action_hid_a2dp_pan_edr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_action_hid_a2dp_pan_edr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)* }

@BT_8723B_2ANT_WIFI_RSSI_COEXSWITCH_THRES = common dso_local global i64 0, align 8
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES = common dso_local global i64 0, align 8
@BTC_RF_A = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@BTC_PS_LPS_ON = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8723b2ant_action_hid_a2dp_pan_edr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8723b2ant_action_hid_a2dp_pan_edr(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %8 = load i64, i64* @BT_8723B_2ANT_WIFI_RSSI_COEXSWITCH_THRES, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %8, %11
  store i64 %12, i64* %7, align 8
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %14 = call i64 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist* %13, i32 0, i32 2, i64 15, i32 0)
  store i64 %14, i64* %3, align 8
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist* %15, i32 1, i32 2, i64 %16, i32 0)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* @BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @btc8723b2ant_bt_rssi_state(%struct.btc_coexist* %23, i32 2, i64 %24, i32 0)
  store i64 %25, i64* %5, align 8
  %26 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %27 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %26, i32 0, i32 1
  %28 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %27, align 8
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %30 = load i32, i32* @BTC_RF_A, align 4
  %31 = call i32 %28(%struct.btc_coexist* %29, i32 %30, i32 1, i32 1048575, i32 0)
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %33 = load i32, i32* @NORMAL_EXEC, align 4
  %34 = call i32 @btc8723b2ant_limited_rx(%struct.btc_coexist* %32, i32 %33, i32 0, i32 0, i32 8)
  %35 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %36 = load i32, i32* @NORMAL_EXEC, align 4
  %37 = call i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist* %35, i32 %36, i32 6)
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @BTC_RSSI_HIGH(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %43 = load i32, i32* @NORMAL_EXEC, align 4
  %44 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %42, i32 %43, i32 2)
  br label %49

45:                                               ; preds = %1
  %46 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %47 = load i32, i32* @NORMAL_EXEC, align 4
  %48 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %46, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @BTC_RSSI_HIGH(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @BTC_RSSI_HIGH(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %59 = load i32, i32* @NORMAL_EXEC, align 4
  %60 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %58, i32 %59, i32 7)
  %61 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %62 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %63 = call i32 @btc8723b2ant_power_save_state(%struct.btc_coexist* %61, i32 %62, i32 0, i32 0)
  br label %71

64:                                               ; preds = %53, %49
  %65 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %66 = load i32, i32* @NORMAL_EXEC, align 4
  %67 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %65, i32 %66, i32 14)
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %69 = load i32, i32* @BTC_PS_LPS_ON, align 4
  %70 = call i32 @btc8723b2ant_power_save_state(%struct.btc_coexist* %68, i32 %69, i32 80, i32 4)
  br label %71

71:                                               ; preds = %64, %57
  %72 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %73 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %72, i32 0, i32 0
  %74 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %73, align 8
  %75 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %76 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %77 = call i32 %74(%struct.btc_coexist* %75, i32 %76, i64* %6)
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %71
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %81, %71
  %86 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %87 = load i64, i64* %6, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %91 = call i32 @btc8723b2ant_tdma_duration_adjust(%struct.btc_coexist* %90, i32 1, i32 1, i32 2)
  br label %95

92:                                               ; preds = %85
  %93 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %94 = call i32 @btc8723b2ant_tdma_duration_adjust(%struct.btc_coexist* %93, i32 1, i32 0, i32 3)
  br label %95

95:                                               ; preds = %92, %89
  br label %99

96:                                               ; preds = %81
  %97 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %98 = call i32 @btc8723b2ant_tdma_duration_adjust(%struct.btc_coexist* %97, i32 1, i32 1, i32 3)
  br label %99

99:                                               ; preds = %96, %95
  %100 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %101 = load i64, i64* %6, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %105 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %104, i32 1, i32 1, i32 0, i32 0)
  br label %109

106:                                              ; preds = %99
  %107 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %108 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %107, i32 0, i32 1, i32 0, i32 0)
  br label %109

109:                                              ; preds = %106, %103
  ret void
}

declare dso_local i64 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i64, i32) #1

declare dso_local i64 @btc8723b2ant_bt_rssi_state(%struct.btc_coexist*, i32, i64, i32) #1

declare dso_local i32 @btc8723b2ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i64) #1

declare dso_local i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_tdma_duration_adjust(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
