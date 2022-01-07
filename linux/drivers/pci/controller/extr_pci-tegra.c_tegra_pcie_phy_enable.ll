; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_phy_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_phy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { %struct.tegra_pcie_soc*, %struct.device* }
%struct.tegra_pcie_soc = type { i32, i32 }
%struct.device = type { i32 }

@PADS_CTL_SEL = common dso_local global i32 0, align 4
@PADS_CTL = common dso_local global i32 0, align 4
@PADS_CTL_IDDQ_1L = common dso_local global i32 0, align 4
@PADS_PLL_CTL_REFCLK_MASK = common dso_local global i32 0, align 4
@PADS_PLL_CTL_TXCLKREF_MASK = common dso_local global i32 0, align 4
@PADS_PLL_CTL_REFCLK_INTERNAL_CML = common dso_local global i32 0, align 4
@PADS_PLL_CTL_RST_B4SM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"PLL failed to lock: %d\0A\00", align 1
@PADS_CTL_TX_DATA_EN_1L = common dso_local global i32 0, align 4
@PADS_CTL_RX_DATA_EN_1L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie*)* @tegra_pcie_phy_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_phy_enable(%struct.tegra_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tegra_pcie_soc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_pcie* %0, %struct.tegra_pcie** %3, align 8
  %8 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %8, i32 0, i32 1
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %11, i32 0, i32 0
  %13 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %12, align 8
  store %struct.tegra_pcie_soc* %13, %struct.tegra_pcie_soc** %5, align 8
  %14 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %15 = load i32, i32* @PADS_CTL_SEL, align 4
  %16 = call i32 @pads_writel(%struct.tegra_pcie* %14, i32 0, i32 %15)
  %17 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %18 = load i32, i32* @PADS_CTL, align 4
  %19 = call i32 @pads_readl(%struct.tegra_pcie* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @PADS_CTL_IDDQ_1L, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PADS_CTL, align 4
  %26 = call i32 @pads_writel(%struct.tegra_pcie* %23, i32 %24, i32 %25)
  %27 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %28 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %5, align 8
  %29 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pads_readl(%struct.tegra_pcie* %27, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @PADS_PLL_CTL_REFCLK_MASK, align 4
  %33 = load i32, i32* @PADS_PLL_CTL_TXCLKREF_MASK, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @PADS_PLL_CTL_REFCLK_INTERNAL_CML, align 4
  %39 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %5, align 8
  %40 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %38, %41
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %5, align 8
  %48 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pads_writel(%struct.tegra_pcie* %45, i32 %46, i32 %49)
  %51 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %52 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %5, align 8
  %53 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pads_readl(%struct.tegra_pcie* %51, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @PADS_PLL_CTL_RST_B4SM, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %5, align 8
  %63 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pads_writel(%struct.tegra_pcie* %60, i32 %61, i32 %64)
  %66 = call i32 @usleep_range(i32 20, i32 100)
  %67 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %68 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %5, align 8
  %69 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @pads_readl(%struct.tegra_pcie* %67, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @PADS_PLL_CTL_RST_B4SM, align 4
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %5, align 8
  %78 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pads_writel(%struct.tegra_pcie* %75, i32 %76, i32 %79)
  %81 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %82 = call i32 @tegra_pcie_pll_wait(%struct.tegra_pcie* %81, i32 500)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %1
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %114

90:                                               ; preds = %1
  %91 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %92 = load i32, i32* @PADS_CTL, align 4
  %93 = call i32 @pads_readl(%struct.tegra_pcie* %91, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* @PADS_CTL_IDDQ_1L, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @PADS_CTL, align 4
  %101 = call i32 @pads_writel(%struct.tegra_pcie* %98, i32 %99, i32 %100)
  %102 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %103 = load i32, i32* @PADS_CTL, align 4
  %104 = call i32 @pads_readl(%struct.tegra_pcie* %102, i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* @PADS_CTL_TX_DATA_EN_1L, align 4
  %106 = load i32, i32* @PADS_CTL_RX_DATA_EN_1L, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @PADS_CTL, align 4
  %113 = call i32 @pads_writel(%struct.tegra_pcie* %110, i32 %111, i32 %112)
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %90, %85
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @pads_writel(%struct.tegra_pcie*, i32, i32) #1

declare dso_local i32 @pads_readl(%struct.tegra_pcie*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @tegra_pcie_pll_wait(%struct.tegra_pcie*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
