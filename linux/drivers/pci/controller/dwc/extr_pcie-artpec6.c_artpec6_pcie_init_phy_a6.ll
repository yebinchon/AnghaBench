; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_init_phy_a6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_init_phy_a6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.artpec6_pcie = type { i32 }

@PCIECFG = common dso_local global i32 0, align 4
@PCIECFG_RISRCREN = common dso_local global i32 0, align 4
@PCIECFG_MODE_TX_DRV_EN = common dso_local global i32 0, align 4
@PCIECFG_CISRREN = common dso_local global i32 0, align 4
@PCIECFG_MACRO_ENABLE = common dso_local global i32 0, align 4
@PCIECFG_REFCLK_ENABLE = common dso_local global i32 0, align 4
@PCIECFG_DBG_OEN = common dso_local global i32 0, align 4
@PCIECFG_CLKREQ_B = common dso_local global i32 0, align 4
@NOCCFG = common dso_local global i32 0, align 4
@NOCCFG_ENABLE_CLK_PCIE = common dso_local global i32 0, align 4
@PCIECFG_PCLK_ENABLE = common dso_local global i32 0, align 4
@PCIECFG_PLL_ENABLE = common dso_local global i32 0, align 4
@NOCCFG_POWER_PCIE_IDLEREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.artpec6_pcie*)* @artpec6_pcie_init_phy_a6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @artpec6_pcie_init_phy_a6(%struct.artpec6_pcie* %0) #0 {
  %2 = alloca %struct.artpec6_pcie*, align 8
  %3 = alloca i32, align 4
  store %struct.artpec6_pcie* %0, %struct.artpec6_pcie** %2, align 8
  %4 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %5 = load i32, i32* @PCIECFG, align 4
  %6 = call i32 @artpec6_pcie_readl(%struct.artpec6_pcie* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @PCIECFG_RISRCREN, align 4
  %8 = load i32, i32* @PCIECFG_MODE_TX_DRV_EN, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @PCIECFG_CISRREN, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PCIECFG_MACRO_ENABLE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @PCIECFG_REFCLK_ENABLE, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @PCIECFG_DBG_OEN, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @PCIECFG_CLKREQ_B, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %28 = load i32, i32* @PCIECFG, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @artpec6_pcie_writel(%struct.artpec6_pcie* %27, i32 %28, i32 %29)
  %31 = call i32 @usleep_range(i32 5000, i32 6000)
  %32 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %33 = load i32, i32* @NOCCFG, align 4
  %34 = call i32 @artpec6_pcie_readl(%struct.artpec6_pcie* %32, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* @NOCCFG_ENABLE_CLK_PCIE, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %39 = load i32, i32* @NOCCFG, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @artpec6_pcie_writel(%struct.artpec6_pcie* %38, i32 %39, i32 %40)
  %42 = call i32 @usleep_range(i32 20, i32 30)
  %43 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %44 = load i32, i32* @PCIECFG, align 4
  %45 = call i32 @artpec6_pcie_readl(%struct.artpec6_pcie* %43, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* @PCIECFG_PCLK_ENABLE, align 4
  %47 = load i32, i32* @PCIECFG_PLL_ENABLE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %52 = load i32, i32* @PCIECFG, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @artpec6_pcie_writel(%struct.artpec6_pcie* %51, i32 %52, i32 %53)
  %55 = call i32 @usleep_range(i32 6000, i32 7000)
  %56 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %57 = load i32, i32* @NOCCFG, align 4
  %58 = call i32 @artpec6_pcie_readl(%struct.artpec6_pcie* %56, i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* @NOCCFG_POWER_PCIE_IDLEREQ, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %3, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %3, align 4
  %63 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %64 = load i32, i32* @NOCCFG, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @artpec6_pcie_writel(%struct.artpec6_pcie* %63, i32 %64, i32 %65)
  ret void
}

declare dso_local i32 @artpec6_pcie_readl(%struct.artpec6_pcie*, i32) #1

declare dso_local i32 @artpec6_pcie_writel(%struct.artpec6_pcie*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
