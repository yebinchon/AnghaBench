; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra124.c_tegra124_pcie_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra124.c_tegra124_pcie_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.tegra_xusb_lane = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_xusb_padctl* }
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
@XUSB_PADCTL_USB3_PAD_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @tegra124_pcie_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_pcie_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.tegra_xusb_lane*, align 8
  %4 = alloca %struct.tegra_xusb_padctl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %8 = load %struct.phy*, %struct.phy** %2, align 8
  %9 = call %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy* %8)
  store %struct.tegra_xusb_lane* %9, %struct.tegra_xusb_lane** %3, align 8
  %10 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %3, align 8
  %11 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %13, align 8
  store %struct.tegra_xusb_padctl* %14, %struct.tegra_xusb_padctl** %4, align 8
  %15 = load i32, i32* @ETIMEDOUT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %18 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL1, align 4
  %19 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL1_REFCLK_SEL_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL1, align 4
  %27 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %24, i32 %25, i32 %26)
  %28 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %29 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL2, align 4
  %30 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL2_REFCLKBUF_EN, align 4
  %32 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL2_TXCLKREF_EN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL2_TXCLKREF_SEL, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL2, align 4
  %41 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %38, i32 %39, i32 %40)
  %42 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %43 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL1, align 4
  %44 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL1_PLL_RST, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL1, align 4
  %51 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %48, i32 %49, i32 %50)
  %52 = load i64, i64* @jiffies, align 8
  %53 = call i64 @msecs_to_jiffies(i32 50)
  %54 = add i64 %52, %53
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %69, %1
  %56 = load i64, i64* @jiffies, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @time_before(i64 %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %62 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL1, align 4
  %63 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_P0_CTL1_PLL0_LOCKDET, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %71

69:                                               ; preds = %60
  %70 = call i32 @usleep_range(i32 100, i32 200)
  br label %55

71:                                               ; preds = %68, %55
  %72 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %73 = load i32, i32* @XUSB_PADCTL_USB3_PAD_MUX, align 4
  %74 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %72, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %3, align 8
  %76 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @XUSB_PADCTL_USB3_PAD_MUX_PCIE_IDDQ_DISABLE(i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @XUSB_PADCTL_USB3_PAD_MUX, align 4
  %84 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %81, i32 %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @XUSB_PADCTL_USB3_PAD_MUX_PCIE_IDDQ_DISABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
