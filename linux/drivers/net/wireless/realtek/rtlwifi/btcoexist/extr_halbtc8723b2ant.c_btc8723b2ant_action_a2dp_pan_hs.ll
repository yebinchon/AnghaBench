; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_action_a2dp_pan_hs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_action_a2dp_pan_hs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)* }

@BT_8723B_2ANT_WIFI_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@BTC_RF_A = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@BTC_PS_LPS_ON = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8723b2ant_action_a2dp_pan_hs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8723b2ant_action_a2dp_pan_hs(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %8 = load i32, i32* @BT_8723B_2ANT_WIFI_RSSI_COEXSWITCH_THRES, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %8, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %14 = call i32 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist* %13, i32 0, i32 2, i32 15, i32 0)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist* %15, i32 1, i32 2, i32 %16, i32 0)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @btc8723b2ant_bt_rssi_state(%struct.btc_coexist* %23, i32 2, i32 %24, i32 0)
  store i32 %25, i32* %5, align 4
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
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @BTC_RSSI_HIGH(i32 %38)
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
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @BTC_RSSI_HIGH(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @BTC_RSSI_HIGH(i32 %54)
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
  %67 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %65, i32 %66, i32 13)
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %69 = load i32, i32* @BTC_PS_LPS_ON, align 4
  %70 = call i32 @btc8723b2ant_power_save_state(%struct.btc_coexist* %68, i32 %69, i32 80, i32 4)
  br label %71

71:                                               ; preds = %64, %57
  %72 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %73 = call i32 @btc8723b2ant_tdma_duration_adjust(%struct.btc_coexist* %72, i32 0, i32 1, i32 2)
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %75 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %74, i32 0, i32 0
  %76 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %75, align 8
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %78 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %79 = call i32 %76(%struct.btc_coexist* %77, i32 %78, i64* %6)
  %80 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %85 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %84, i32 1, i32 0, i32 0, i32 0)
  br label %89

86:                                               ; preds = %71
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %88 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %87, i32 0, i32 0, i32 0, i32 0)
  br label %89

89:                                               ; preds = %86, %83
  ret void
}

declare dso_local i32 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_bt_rssi_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i32) #1

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
