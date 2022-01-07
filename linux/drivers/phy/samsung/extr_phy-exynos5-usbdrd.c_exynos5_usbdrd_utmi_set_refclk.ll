; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5_usbdrd_utmi_set_refclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5_usbdrd_utmi_set_refclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_usb_instance = type { i32 }
%struct.exynos5_usbdrd_phy = type { i32, i64 }

@EXYNOS5_DRD_PHYCLKRST = common dso_local global i64 0, align 8
@PHYCLKRST_REFCLKSEL_MASK = common dso_local global i32 0, align 4
@PHYCLKRST_REFCLKSEL_EXT_REFCLK = common dso_local global i32 0, align 4
@PHYCLKRST_FSEL_UTMI_MASK = common dso_local global i32 0, align 4
@PHYCLKRST_MPLL_MULTIPLIER_MASK = common dso_local global i32 0, align 4
@PHYCLKRST_SSC_REFCLKSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_usb_instance*)* @exynos5_usbdrd_utmi_set_refclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos5_usbdrd_utmi_set_refclk(%struct.phy_usb_instance* %0) #0 {
  %2 = alloca %struct.phy_usb_instance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos5_usbdrd_phy*, align 8
  store %struct.phy_usb_instance* %0, %struct.phy_usb_instance** %2, align 8
  %5 = load %struct.phy_usb_instance*, %struct.phy_usb_instance** %2, align 8
  %6 = call %struct.exynos5_usbdrd_phy* @to_usbdrd_phy(%struct.phy_usb_instance* %5)
  store %struct.exynos5_usbdrd_phy* %6, %struct.exynos5_usbdrd_phy** %4, align 8
  %7 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %4, align 8
  %8 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @EXYNOS5_DRD_PHYCLKRST, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @PHYCLKRST_REFCLKSEL_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @PHYCLKRST_REFCLKSEL_EXT_REFCLK, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @PHYCLKRST_FSEL_UTMI_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* @PHYCLKRST_MPLL_MULTIPLIER_MASK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @PHYCLKRST_SSC_REFCLKSEL_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %4, align 8
  %29 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @PHYCLKRST_FSEL(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.exynos5_usbdrd_phy* @to_usbdrd_phy(%struct.phy_usb_instance*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @PHYCLKRST_FSEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
