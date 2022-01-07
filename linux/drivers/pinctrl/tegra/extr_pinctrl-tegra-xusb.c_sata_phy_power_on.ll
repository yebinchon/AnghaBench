; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra-xusb.c_sata_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra-xusb.c_sata_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @sata_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_phy_power_on(%struct.phy* %0) #0 {
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
  %12 = load i32, i32* @XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1, align 4
  %13 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ_OVRD, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1, align 4
  %25 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %22, i32 %23, i32 %24)
  %26 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %27 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %28 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_PWR_OVRD, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_IDDQ, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %40 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %37, i32 %38, i32 %39)
  %41 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %42 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %43 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL1_MODE, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %50 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %47, i32 %48, i32 %49)
  %51 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %52 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %53 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_RST, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %60 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %57, i32 %58, i32 %59)
  %61 = load i64, i64* @jiffies, align 8
  %62 = call i64 @msecs_to_jiffies(i32 50)
  %63 = add i64 %61, %62
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %78, %1
  %65 = load i64, i64* @jiffies, align 8
  %66 = load i64, i64* %4, align 8
  %67 = call i64 @time_before(i64 %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %71 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %72 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL1_LOCKDET, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %80

78:                                               ; preds = %69
  %79 = call i32 @usleep_range(i32 100, i32 200)
  br label %64

80:                                               ; preds = %77, %64
  %81 = load i32, i32* %5, align 4
  ret i32 %81
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
