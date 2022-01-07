; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c__rtl92se_rf_onoff_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c__rtl92se_rf_onoff_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@ERFON = common dso_local global i32 0, align 4
@MAC_PINMUX_CFG = common dso_local global i32 0, align 4
@GPIOMUX_EN = common dso_local global i32 0, align 4
@GPIOSEL_GPIO = common dso_local global i32 0, align 4
@GPIO_IO_SEL = common dso_local global i32 0, align 4
@HAL_8192S_HW_GPIO_OFF_MASK = common dso_local global i32 0, align 4
@GPIO_IN_SE = common dso_local global i32 0, align 4
@HAL_8192S_HW_GPIO_OFF_BIT = common dso_local global i32 0, align 4
@ERFOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl92se_rf_onoff_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92se_rf_onoff_detect(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load i32, i32* @ERFON, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = load i32, i32* @MAC_PINMUX_CFG, align 4
  %11 = load i32, i32* @GPIOMUX_EN, align 4
  %12 = load i32, i32* @GPIOSEL_GPIO, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @rtl_write_byte(%struct.rtl_priv* %9, i32 %10, i32 %13)
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = load i32, i32* @GPIO_IO_SEL, align 4
  %17 = call i32 @rtl_read_byte(%struct.rtl_priv* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @HAL_8192S_HW_GPIO_OFF_MASK, align 4
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = load i32, i32* @GPIO_IO_SEL, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @rtl_write_byte(%struct.rtl_priv* %21, i32 %22, i32 %23)
  %25 = call i32 @mdelay(i32 10)
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %27 = load i32, i32* @GPIO_IN_SE, align 4
  %28 = call i32 @rtl_read_byte(%struct.rtl_priv* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @HAL_8192S_HW_GPIO_OFF_BIT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* @ERFON, align 4
  br label %37

35:                                               ; preds = %1
  %36 = load i32, i32* @ERFOFF, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
