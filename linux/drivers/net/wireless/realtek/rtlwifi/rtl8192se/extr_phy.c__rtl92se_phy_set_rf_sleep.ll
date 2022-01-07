; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c__rtl92se_phy_set_rf_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c__rtl92se_phy_set_rf_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@LDOV12D_CTRL = common dso_local global i32 0, align 4
@SPS1_CTRL = common dso_local global i32 0, align 4
@TXPAUSE = common dso_local global i32 0, align 4
@CMDR = common dso_local global i32 0, align 4
@PHY_CCA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92se_phy_set_rf_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92se_phy_set_rf_sleep(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %8 = load i32, i32* @LDOV12D_CTRL, align 4
  %9 = call i32 @rtl_read_byte(%struct.rtl_priv* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = call i32 @BIT(i32 0)
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = load i32, i32* @LDOV12D_CTRL, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @rtl_write_byte(%struct.rtl_priv* %13, i32 %14, i32 %15)
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = load i32, i32* @SPS1_CTRL, align 4
  %19 = call i32 @rtl_write_byte(%struct.rtl_priv* %17, i32 %18, i32 0)
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = load i32, i32* @TXPAUSE, align 4
  %22 = call i32 @rtl_write_byte(%struct.rtl_priv* %20, i32 %21, i32 255)
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %24 = load i32, i32* @CMDR, align 4
  %25 = call i32 @rtl_write_word(%struct.rtl_priv* %23, i32 %24, i32 22524)
  %26 = call i32 @udelay(i32 100)
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %28 = load i32, i32* @CMDR, align 4
  %29 = call i32 @rtl_write_word(%struct.rtl_priv* %27, i32 %28, i32 30716)
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %31 = load i32, i32* @PHY_CCA, align 4
  %32 = call i32 @rtl_write_byte(%struct.rtl_priv* %30, i32 %31, i32 0)
  %33 = call i32 @udelay(i32 10)
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %35 = load i32, i32* @CMDR, align 4
  %36 = call i32 @rtl_write_word(%struct.rtl_priv* %34, i32 %35, i32 14332)
  %37 = call i32 @udelay(i32 10)
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %39 = load i32, i32* @CMDR, align 4
  %40 = call i32 @rtl_write_word(%struct.rtl_priv* %38, i32 %39, i32 30716)
  %41 = call i32 @udelay(i32 10)
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %43 = load i32, i32* @CMDR, align 4
  %44 = call i32 @rtl_write_word(%struct.rtl_priv* %42, i32 %43, i32 22524)
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %46 = call i32 @rtl8192se_gpiobit3_cfg_inputmode(%struct.ieee80211_hw* %45)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl8192se_gpiobit3_cfg_inputmode(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
