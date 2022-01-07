; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra-xusb.c_pcie_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra-xusb.c_pcie_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.tegra_xusb_padctl = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_PLL_P0_CTL1 = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_PLL_P0_CTL1_REFCLK_SEL_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_PLL_P0_CTL2 = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_PLL_P0_CTL2_REFCLKBUF_EN = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_PLL_P0_CTL2_TXCLKREF_EN = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_PLL_P0_CTL2_TXCLKREF_SEL = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_PLL_P0_CTL1_PLL_RST = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@XUSB_PADCTL_IOPHY_PLL_P0_CTL1_PLL0_LOCKDET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @pcie_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.tegra_xusb_padctl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %7 = load %struct.phy*, %struct.phy** %2, align 8
  %8 = call %struct.tegra_xusb_padctl* @phy_get_drvdata(%struct.phy* %7)
  store %struct.tegra_xusb_padctl* %8, %struct.tegra_xusb_padctl** %3, align 8
  %9 = load i32, i32* @ETIMEDOUT, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %12 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL1, align 4
  %13 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL1_REFCLK_SEL_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL1, align 4
  %21 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %18, i32 %19, i32 %20)
  %22 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %23 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL2, align 4
  %24 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL2_REFCLKBUF_EN, align 4
  %26 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL2_TXCLKREF_EN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL2_TXCLKREF_SEL, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL2, align 4
  %35 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %32, i32 %33, i32 %34)
  %36 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %37 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL1, align 4
  %38 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL1_PLL_RST, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL1, align 4
  %45 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %42, i32 %43, i32 %44)
  %46 = load i64, i64* @jiffies, align 8
  %47 = call i64 @msecs_to_jiffies(i32 50)
  %48 = add i64 %46, %47
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %63, %1
  %50 = load i64, i64* @jiffies, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @time_before(i64 %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %56 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL1, align 4
  %57 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL1_PLL0_LOCKDET, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %65

63:                                               ; preds = %54
  %64 = call i32 @usleep_range(i32 100, i32 200)
  br label %49

65:                                               ; preds = %62, %49
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.tegra_xusb_padctl* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
