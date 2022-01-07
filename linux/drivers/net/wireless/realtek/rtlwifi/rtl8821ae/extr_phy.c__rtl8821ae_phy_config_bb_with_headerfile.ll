; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_config_bb_with_headerfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_config_bb_with_headerfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i64 }

@BASEBAND_CONFIG_PHY_REG = common dso_local global i64 0, align 8
@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@RTL8812AE_PHY_REG_1TARRAYLEN = common dso_local global i32 0, align 4
@RTL8812AE_PHY_REG_ARRAY = common dso_local global i32* null, align 8
@RTL8821AE_PHY_REG_1TARRAYLEN = common dso_local global i32 0, align 4
@RTL8821AE_PHY_REG_ARRAY = common dso_local global i32* null, align 8
@_rtl8821ae_config_bb_reg = common dso_local global i32 0, align 4
@BASEBAND_CONFIG_AGC_TAB = common dso_local global i64 0, align 8
@RTL8812AE_AGC_TAB_1TARRAYLEN = common dso_local global i32 0, align 4
@RTL8812AE_AGC_TAB_ARRAY = common dso_local global i32* null, align 8
@RTL8821AE_AGC_TAB_1TARRAYLEN = common dso_local global i32 0, align 4
@RTL8821AE_AGC_TAB_ARRAY = common dso_local global i32* null, align 8
@rtl_set_bbreg_with_dwmask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i64)* @_rtl8821ae_phy_config_bb_with_headerfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8821ae_phy_config_bb_with_headerfile(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %6, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %13 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %12)
  store %struct.rtl_hal* %13, %struct.rtl_hal** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @BASEBAND_CONFIG_PHY_REG, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %19 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @RTL8812AE_PHY_REG_1TARRAYLEN, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32*, i32** @RTL8812AE_PHY_REG_ARRAY, align 8
  store i32* %25, i32** %8, align 8
  br label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @RTL8821AE_PHY_REG_1TARRAYLEN, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32*, i32** @RTL8821AE_PHY_REG_ARRAY, align 8
  store i32* %28, i32** %8, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @_rtl8821ae_config_bb_reg, align 4
  %34 = call i32 @__rtl8821ae_phy_config_with_headerfile(%struct.ieee80211_hw* %30, i32* %31, i32 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %59

35:                                               ; preds = %2
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @BASEBAND_CONFIG_AGC_TAB, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %41 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @RTL8812AE_AGC_TAB_1TARRAYLEN, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i32*, i32** @RTL8812AE_AGC_TAB_ARRAY, align 8
  store i32* %47, i32** %8, align 8
  br label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @RTL8821AE_AGC_TAB_1TARRAYLEN, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i32*, i32** @RTL8821AE_AGC_TAB_ARRAY, align 8
  store i32* %50, i32** %8, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @rtl_set_bbreg_with_dwmask, align 4
  %56 = call i32 @__rtl8821ae_phy_config_with_headerfile(%struct.ieee80211_hw* %52, i32* %53, i32 %54, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %59

57:                                               ; preds = %35
  br label %58

58:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %51, %29
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @__rtl8821ae_phy_config_with_headerfile(%struct.ieee80211_hw*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
