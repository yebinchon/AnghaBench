; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_action_pan_edr_a2dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_action_pan_edr_a2dp.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8723b2ant_action_pan_edr_a2dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8723b2ant_action_pan_edr_a2dp(%struct.btc_coexist* %0) #0 {
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
  %34 = call i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist* %32, i32 %33, i32 6)
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @BTC_RSSI_HIGH(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %40 = load i32, i32* @NORMAL_EXEC, align 4
  %41 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %39, i32 %40, i32 2)
  br label %46

42:                                               ; preds = %1
  %43 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %44 = load i32, i32* @NORMAL_EXEC, align 4
  %45 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @BTC_RSSI_HIGH(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @BTC_RSSI_HIGH(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %56 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %57 = call i32 @btc8723b2ant_power_save_state(%struct.btc_coexist* %55, i32 %56, i32 0, i32 0)
  br label %62

58:                                               ; preds = %50, %46
  %59 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %60 = load i32, i32* @BTC_PS_LPS_ON, align 4
  %61 = call i32 @btc8723b2ant_power_save_state(%struct.btc_coexist* %59, i32 %60, i32 80, i32 4)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %64 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %63, i32 0, i32 0
  %65 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %64, align 8
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %67 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %68 = call i32 %65(%struct.btc_coexist* %66, i32 %67, i64* %6)
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %62
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %72, %62
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %78 = load i32, i32* @NORMAL_EXEC, align 4
  %79 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %77, i32 %78, i32 12)
  %80 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %85 = call i32 @btc8723b2ant_tdma_duration_adjust(%struct.btc_coexist* %84, i32 0, i32 1, i32 3)
  br label %89

86:                                               ; preds = %76
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %88 = call i32 @btc8723b2ant_tdma_duration_adjust(%struct.btc_coexist* %87, i32 0, i32 0, i32 3)
  br label %89

89:                                               ; preds = %86, %83
  br label %97

90:                                               ; preds = %72
  %91 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %92 = load i32, i32* @NORMAL_EXEC, align 4
  %93 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %91, i32 %92, i32 7)
  %94 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %95 = load i32, i32* @NORMAL_EXEC, align 4
  %96 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %94, i32 %95, i32 1, i32 3)
  br label %97

97:                                               ; preds = %90, %89
  %98 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %99 = load i64, i64* %6, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %103 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %102, i32 1, i32 0, i32 0, i32 0)
  br label %107

104:                                              ; preds = %97
  %105 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %106 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %105, i32 0, i32 0, i32 0, i32 0)
  br label %107

107:                                              ; preds = %104, %101
  ret void
}

declare dso_local i64 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i64, i32) #1

declare dso_local i64 @btc8723b2ant_bt_rssi_state(%struct.btc_coexist*, i32, i64, i32) #1

declare dso_local i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i64) #1

declare dso_local i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_tdma_duration_adjust(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
