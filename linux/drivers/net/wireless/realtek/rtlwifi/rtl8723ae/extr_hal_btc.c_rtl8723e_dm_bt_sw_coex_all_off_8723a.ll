; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_sw_coex_all_off_8723a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_sw_coex_all_off_8723a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@BT_AGCTABLE_OFF = common dso_local global i32 0, align 4
@BT_BB_BACKOFF_OFF = common dso_local global i32 0, align 4
@BT_TX_RATE_ADAPTIVE_NORMAL = common dso_local global i32 0, align 4
@BT_RF_RX_LPF_CORNER_RESUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723e_dm_bt_sw_coex_all_off_8723a(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %3 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %4 = load i32, i32* @BT_AGCTABLE_OFF, align 4
  %5 = call i32 @rtl8723e_dm_bt_agc_table(%struct.ieee80211_hw* %3, i32 %4)
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = load i32, i32* @BT_BB_BACKOFF_OFF, align 4
  %8 = call i32 @rtl8723e_dm_bt_bb_back_off_level(%struct.ieee80211_hw* %6, i32 %7)
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call i32 @rtl8723e_dm_bt_reject_ap_aggregated_packet(%struct.ieee80211_hw* %9, i32 0)
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = load i32, i32* @BT_TX_RATE_ADAPTIVE_NORMAL, align 4
  %13 = call i32 @dm_bt_set_sw_penalty_tx_rate_adapt(%struct.ieee80211_hw* %11, i32 %12)
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = load i32, i32* @BT_RF_RX_LPF_CORNER_RESUME, align 4
  %16 = call i32 @rtl8723e_dm_bt_set_sw_rf_rx_lpf_corner(%struct.ieee80211_hw* %14, i32 %15)
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = call i32 @rtl8723e_dm_bt_set_sw_full_time_dac_swing(%struct.ieee80211_hw* %17, i32 0, i32 192)
  ret void
}

declare dso_local i32 @rtl8723e_dm_bt_agc_table(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_bb_back_off_level(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_reject_ap_aggregated_packet(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @dm_bt_set_sw_penalty_tx_rate_adapt(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_set_sw_rf_rx_lpf_corner(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8723e_dm_bt_set_sw_full_time_dac_swing(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
