; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_phy_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_phy_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { %struct.tegra_pcie_soc* }
%struct.tegra_pcie_soc = type { i32 }

@PADS_CTL = common dso_local global i32 0, align 4
@PADS_CTL_TX_DATA_EN_1L = common dso_local global i32 0, align 4
@PADS_CTL_RX_DATA_EN_1L = common dso_local global i32 0, align 4
@PADS_CTL_IDDQ_1L = common dso_local global i32 0, align 4
@PADS_PLL_CTL_RST_B4SM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie*)* @tegra_pcie_phy_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_phy_disable(%struct.tegra_pcie* %0) #0 {
  %2 = alloca %struct.tegra_pcie*, align 8
  %3 = alloca %struct.tegra_pcie_soc*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_pcie* %0, %struct.tegra_pcie** %2, align 8
  %5 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %5, i32 0, i32 0
  %7 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %6, align 8
  store %struct.tegra_pcie_soc* %7, %struct.tegra_pcie_soc** %3, align 8
  %8 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %9 = load i32, i32* @PADS_CTL, align 4
  %10 = call i32 @pads_readl(%struct.tegra_pcie* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @PADS_CTL_TX_DATA_EN_1L, align 4
  %12 = load i32, i32* @PADS_CTL_RX_DATA_EN_1L, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PADS_CTL, align 4
  %20 = call i32 @pads_writel(%struct.tegra_pcie* %17, i32 %18, i32 %19)
  %21 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %22 = load i32, i32* @PADS_CTL, align 4
  %23 = call i32 @pads_readl(%struct.tegra_pcie* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @PADS_CTL_IDDQ_1L, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PADS_CTL, align 4
  %30 = call i32 @pads_writel(%struct.tegra_pcie* %27, i32 %28, i32 %29)
  %31 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %32 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pads_readl(%struct.tegra_pcie* %31, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @PADS_PLL_CTL_RST_B4SM, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %43 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pads_writel(%struct.tegra_pcie* %40, i32 %41, i32 %44)
  %46 = call i32 @usleep_range(i32 20, i32 100)
  ret i32 0
}

declare dso_local i32 @pads_readl(%struct.tegra_pcie*, i32) #1

declare dso_local i32 @pads_writel(%struct.tegra_pcie*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
