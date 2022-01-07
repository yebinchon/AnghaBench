; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra-xusb.c_sata_phy_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra-xusb.c_sata_phy_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.tegra_xusb_padctl = type { i32 }

@XUSB_PADCTL_IOPHY_PLL_S0_CTL1 = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_RST = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL1_MODE = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_PWR_OVRD = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_IDDQ = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1 = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ_OVRD = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @sata_phy_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_phy_power_off(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.tegra_xusb_padctl*, align 8
  %4 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.tegra_xusb_padctl* @phy_get_drvdata(%struct.phy* %5)
  store %struct.tegra_xusb_padctl* %6, %struct.tegra_xusb_padctl** %3, align 8
  %7 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %8 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %9 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_RST, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %17 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %14, i32 %15, i32 %16)
  %18 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %19 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %20 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL1_MODE, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %28 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %25, i32 %26, i32 %27)
  %29 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %30 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %31 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_PWR_OVRD, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_IDDQ, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %41 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %38, i32 %39, i32 %40)
  %42 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %43 = load i32, i32* @XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1, align 4
  %44 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ_OVRD, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1, align 4
  %56 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %53, i32 %54, i32 %55)
  ret i32 0
}

declare dso_local %struct.tegra_xusb_padctl* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
