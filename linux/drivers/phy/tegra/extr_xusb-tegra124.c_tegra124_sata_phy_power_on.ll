; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra124.c_tegra124_sata_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra124.c_tegra124_sata_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.tegra_xusb_lane = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_xusb_padctl* }
%struct.tegra_xusb_padctl = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1 = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ_OVRD = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_PLL_S0_CTL1 = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_PWR_OVRD = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_IDDQ = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL1_MODE = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_RST = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL1_LOCKDET = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB3_PAD_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @tegra124_sata_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_sata_phy_power_on(%struct.phy* %0) #0 {
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
  %18 = load i32, i32* @XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1, align 4
  %19 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ_OVRD, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1, align 4
  %31 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %28, i32 %29, i32 %30)
  %32 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %33 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %34 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_PWR_OVRD, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_IDDQ, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %46 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %43, i32 %44, i32 %45)
  %47 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %48 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %49 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL1_MODE, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %56 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %53, i32 %54, i32 %55)
  %57 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %58 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %59 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_RST, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %66 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %63, i32 %64, i32 %65)
  %67 = load i64, i64* @jiffies, align 8
  %68 = call i64 @msecs_to_jiffies(i32 50)
  %69 = add i64 %67, %68
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %84, %1
  %71 = load i64, i64* @jiffies, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i64 @time_before(i64 %71, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %77 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %78 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL1_LOCKDET, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 0, i32* %6, align 4
  br label %86

84:                                               ; preds = %75
  %85 = call i32 @usleep_range(i32 100, i32 200)
  br label %70

86:                                               ; preds = %83, %70
  %87 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %88 = load i32, i32* @XUSB_PADCTL_USB3_PAD_MUX, align 4
  %89 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %87, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %3, align 8
  %91 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @XUSB_PADCTL_USB3_PAD_MUX_SATA_IDDQ_DISABLE(i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  %96 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @XUSB_PADCTL_USB3_PAD_MUX, align 4
  %99 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %96, i32 %97, i32 %98)
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @XUSB_PADCTL_USB3_PAD_MUX_SATA_IDDQ_DISABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
