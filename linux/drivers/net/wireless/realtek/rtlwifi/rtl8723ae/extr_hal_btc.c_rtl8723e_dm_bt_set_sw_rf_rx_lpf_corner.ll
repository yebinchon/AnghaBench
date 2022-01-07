; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_set_sw_rf_rx_lpf_corner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_set_sw_rf_rx_lpf_corner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@BT_RF_RX_LPF_CORNER_SHRINK = common dso_local global i64 0, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Shrink RF Rx LPF corner!!\0A\00", align 1
@RF90_PATH_A = common dso_local global i32 0, align 4
@BT_RF_RX_LPF_CORNER_RESUME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Resume RF Rx LPF corner!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64)* @rtl8723e_dm_bt_set_sw_rf_rx_lpf_corner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_dm_bt_set_sw_rf_rx_lpf_corner(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %5, align 8
  %8 = load i64, i64* @BT_RF_RX_LPF_CORNER_SHRINK, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %13 = load i32, i32* @COMP_BT_COEXIST, align 4
  %14 = load i32, i32* @DBG_TRACE, align 4
  %15 = call i32 @RT_TRACE(%struct.rtl_priv* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = load i32, i32* @RF90_PATH_A, align 4
  %18 = call i32 @rtl8723e_phy_set_rf_reg(%struct.ieee80211_hw* %16, i32 %17, i32 30, i32 1048575, i32 987127)
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %20 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %39

22:                                               ; preds = %2
  %23 = load i64, i64* @BT_RF_RX_LPF_CORNER_RESUME, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %28 = load i32, i32* @COMP_BT_COEXIST, align 4
  %29 = load i32, i32* @DBG_TRACE, align 4
  %30 = call i32 @RT_TRACE(%struct.rtl_priv* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %32 = load i32, i32* @RF90_PATH_A, align 4
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %34 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rtl8723e_phy_set_rf_reg(%struct.ieee80211_hw* %31, i32 %32, i32 30, i32 1048575, i32 %36)
  br label %38

38:                                               ; preds = %26, %22
  br label %39

39:                                               ; preds = %38, %11
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl8723e_phy_set_rf_reg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
