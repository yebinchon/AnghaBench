; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_reset_action_profile_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_reset_action_profile_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BT_COEX_STATE_PROFILE_HID = common dso_local global i32 0, align 4
@BT_COEX_STATE_PROFILE_A2DP = common dso_local global i32 0, align 4
@BT_COEX_STATE_PROFILE_PAN = common dso_local global i32 0, align 4
@BT_COEX_STATE_PROFILE_SCO = common dso_local global i32 0, align 4
@BT_COEX_STATE_BTINFO_COMMON = common dso_local global i32 0, align 4
@BT_COEX_STATE_BTINFO_B_HID_SCOESCO = common dso_local global i32 0, align 4
@BT_COEX_STATE_BTINFO_B_FTP_A2DP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8723e_dm_bt_reset_action_profile_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_dm_bt_reset_action_profile_state(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %4)
  store %struct.rtl_priv* %5, %struct.rtl_priv** %3, align 8
  %6 = load i32, i32* @BT_COEX_STATE_PROFILE_HID, align 4
  %7 = load i32, i32* @BT_COEX_STATE_PROFILE_A2DP, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @BT_COEX_STATE_PROFILE_PAN, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @BT_COEX_STATE_PROFILE_SCO, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %13
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @BT_COEX_STATE_BTINFO_COMMON, align 4
  %20 = load i32, i32* @BT_COEX_STATE_BTINFO_B_HID_SCOESCO, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @BT_COEX_STATE_BTINFO_B_FTP_A2DP, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %26 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %24
  store i32 %29, i32* %27, align 4
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
