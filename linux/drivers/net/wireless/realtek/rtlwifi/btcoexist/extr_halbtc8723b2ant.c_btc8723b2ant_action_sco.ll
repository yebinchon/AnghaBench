; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_action_sco.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_action_sco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)* }

@BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES = common dso_local global i64 0, align 8
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@BTC_RF_A = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_LEGACY = common dso_local global i64 0, align 8
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8723b2ant_action_sco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8723b2ant_action_sco(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %7 = call i32 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist* %6, i32 0, i32 2, i32 15, i32 0)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %9 = load i64, i64* @BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = call i32 @btc8723b2ant_bt_rssi_state(%struct.btc_coexist* %8, i32 2, i64 %13, i32 0)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %16 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %15, i32 0, i32 1
  %17 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %16, align 8
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %19 = load i32, i32* @BTC_RF_A, align 4
  %20 = call i32 %17(%struct.btc_coexist* %18, i32 %19, i32 1, i32 1048575, i32 0)
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %22 = load i32, i32* @NORMAL_EXEC, align 4
  %23 = call i32 @btc8723b2ant_limited_rx(%struct.btc_coexist* %21, i32 %22, i32 0, i32 0, i32 8)
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %25 = load i32, i32* @NORMAL_EXEC, align 4
  %26 = call i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist* %24, i32 %25, i32 4)
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @BTC_RSSI_HIGH(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %32 = load i32, i32* @NORMAL_EXEC, align 4
  %33 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %31, i32 %32, i32 2)
  br label %38

34:                                               ; preds = %1
  %35 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %36 = load i32, i32* @NORMAL_EXEC, align 4
  %37 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %40 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %39, i32 0, i32 0
  %41 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %40, align 8
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %43 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %44 = call i32 %41(%struct.btc_coexist* %42, i32 %43, i64* %5)
  %45 = load i64, i64* @BTC_WIFI_BW_LEGACY, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %50 = load i32, i32* @NORMAL_EXEC, align 4
  %51 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %49, i32 %50, i32 2)
  br label %56

52:                                               ; preds = %38
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %54 = load i32, i32* @NORMAL_EXEC, align 4
  %55 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %53, i32 %54, i32 8)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %58 = load i32, i32* @NORMAL_EXEC, align 4
  %59 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %57, i32 %58, i32 0, i32 0)
  %60 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %65 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %64, i32 1, i32 1, i32 0, i32 0)
  br label %69

66:                                               ; preds = %56
  %67 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %68 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %67, i32 0, i32 1, i32 0, i32 0)
  br label %69

69:                                               ; preds = %66, %63
  ret void
}

declare dso_local i32 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_bt_rssi_state(%struct.btc_coexist*, i32, i64, i32) #1

declare dso_local i32 @btc8723b2ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i32) #1

declare dso_local i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
