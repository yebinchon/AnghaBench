; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos4x12-usb2.c_exynos4x12_setup_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos4x12-usb2.c_exynos4x12_setup_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_usb2_phy_instance = type { %struct.samsung_usb2_phy_driver* }
%struct.samsung_usb2_phy_driver = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EXYNOS_4x12_UPHYCLK = common dso_local global i64 0, align 8
@EXYNOS_4x12_UPHYCLK_PHYFSEL_MASK = common dso_local global i32 0, align 4
@EXYNOS_3250_UPHYCLK_REFCLKSEL = common dso_local global i32 0, align 4
@EXYNOS_4x12_UPHYCLK_PHYFSEL_OFFSET = common dso_local global i32 0, align 4
@EXYNOS_4x12_UPHYCLK_PHY1_COMMON_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.samsung_usb2_phy_instance*)* @exynos4x12_setup_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4x12_setup_clk(%struct.samsung_usb2_phy_instance* %0) #0 {
  %2 = alloca %struct.samsung_usb2_phy_instance*, align 8
  %3 = alloca %struct.samsung_usb2_phy_driver*, align 8
  %4 = alloca i32, align 4
  store %struct.samsung_usb2_phy_instance* %0, %struct.samsung_usb2_phy_instance** %2, align 8
  %5 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %2, align 8
  %6 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %5, i32 0, i32 0
  %7 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %6, align 8
  store %struct.samsung_usb2_phy_driver* %7, %struct.samsung_usb2_phy_driver** %3, align 8
  %8 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %9 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @EXYNOS_4x12_UPHYCLK, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @EXYNOS_4x12_UPHYCLK_PHYFSEL_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %19 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @EXYNOS_3250_UPHYCLK_REFCLKSEL, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %1
  %27 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %28 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @EXYNOS_4x12_UPHYCLK_PHYFSEL_OFFSET, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @EXYNOS_4x12_UPHYCLK_PHY1_COMMON_ON, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %39 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @EXYNOS_4x12_UPHYCLK, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
