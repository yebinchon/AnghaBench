; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_enable_legacy_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_enable_legacy_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i32 }
%struct.dw_pcie = type { i32 }
%struct.tegra_pcie_dw = type { i32 }

@APPL_INTR_EN_L0_0 = common dso_local global i32 0, align 4
@APPL_INTR_EN_L0_0_SYS_INTR_EN = common dso_local global i32 0, align 4
@APPL_INTR_EN_L0_0_INT_INT_EN = common dso_local global i32 0, align 4
@APPL_INTR_EN_L1_8_0 = common dso_local global i32 0, align 4
@APPL_INTR_EN_L1_8_INTX_EN = common dso_local global i32 0, align 4
@APPL_INTR_EN_L1_8_AUTO_BW_INT_EN = common dso_local global i32 0, align 4
@APPL_INTR_EN_L1_8_BW_MGT_INT_EN = common dso_local global i32 0, align 4
@CONFIG_PCIEAER = common dso_local global i32 0, align 4
@APPL_INTR_EN_L1_8_AER_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcie_port*)* @tegra_pcie_enable_legacy_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pcie_enable_legacy_interrupts(%struct.pcie_port* %0) #0 {
  %2 = alloca %struct.pcie_port*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca %struct.tegra_pcie_dw*, align 8
  %5 = alloca i32, align 4
  store %struct.pcie_port* %0, %struct.pcie_port** %2, align 8
  %6 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %7 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %6)
  store %struct.dw_pcie* %7, %struct.dw_pcie** %3, align 8
  %8 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %9 = call %struct.tegra_pcie_dw* @to_tegra_pcie(%struct.dw_pcie* %8)
  store %struct.tegra_pcie_dw* %9, %struct.tegra_pcie_dw** %4, align 8
  %10 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %11 = load i32, i32* @APPL_INTR_EN_L0_0, align 4
  %12 = call i32 @appl_readl(%struct.tegra_pcie_dw* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @APPL_INTR_EN_L0_0_SYS_INTR_EN, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @APPL_INTR_EN_L0_0_INT_INT_EN, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @APPL_INTR_EN_L0_0, align 4
  %22 = call i32 @appl_writel(%struct.tegra_pcie_dw* %19, i32 %20, i32 %21)
  %23 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %24 = load i32, i32* @APPL_INTR_EN_L1_8_0, align 4
  %25 = call i32 @appl_readl(%struct.tegra_pcie_dw* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @APPL_INTR_EN_L1_8_INTX_EN, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @APPL_INTR_EN_L1_8_AUTO_BW_INT_EN, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @APPL_INTR_EN_L1_8_BW_MGT_INT_EN, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @CONFIG_PCIEAER, align 4
  %36 = call i64 @IS_ENABLED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load i32, i32* @APPL_INTR_EN_L1_8_AER_INT_EN, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %1
  %43 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @APPL_INTR_EN_L1_8_0, align 4
  %46 = call i32 @appl_writel(%struct.tegra_pcie_dw* %43, i32 %44, i32 %45)
  ret void
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.tegra_pcie_dw* @to_tegra_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @appl_readl(%struct.tegra_pcie_dw*, i32) #1

declare dso_local i32 @appl_writel(%struct.tegra_pcie_dw*, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
