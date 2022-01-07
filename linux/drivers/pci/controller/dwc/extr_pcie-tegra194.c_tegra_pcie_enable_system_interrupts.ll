; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_enable_system_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_enable_system_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i32 }
%struct.dw_pcie = type { i32 }
%struct.tegra_pcie_dw = type { i32, i64, i32, i64 }

@APPL_INTR_EN_L0_0 = common dso_local global i32 0, align 4
@APPL_INTR_EN_L0_0_LINK_STATE_INT_EN = common dso_local global i32 0, align 4
@APPL_INTR_EN_L1_0_0 = common dso_local global i32 0, align 4
@APPL_INTR_EN_L1_0_0_LINK_REQ_RST_NOT_INT_EN = common dso_local global i32 0, align 4
@APPL_INTR_EN_L0_0_CDM_REG_CHK_INT_EN = common dso_local global i32 0, align 4
@APPL_INTR_EN_L1_18 = common dso_local global i32 0, align 4
@APPL_INTR_EN_L1_18_CDM_REG_CHK_CMP_ERR = common dso_local global i32 0, align 4
@APPL_INTR_EN_L1_18_CDM_REG_CHK_LOGIC_ERR = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA = common dso_local global i64 0, align 8
@PCI_EXP_LNKSTA_NLW = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA_NLW_SHIFT = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL = common dso_local global i64 0, align 8
@PCI_EXP_LNKCTL_LBMIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcie_port*)* @tegra_pcie_enable_system_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pcie_enable_system_interrupts(%struct.pcie_port* %0) #0 {
  %2 = alloca %struct.pcie_port*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca %struct.tegra_pcie_dw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pcie_port* %0, %struct.pcie_port** %2, align 8
  %7 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %8 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %7)
  store %struct.dw_pcie* %8, %struct.dw_pcie** %3, align 8
  %9 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %10 = call %struct.tegra_pcie_dw* @to_tegra_pcie(%struct.dw_pcie* %9)
  store %struct.tegra_pcie_dw* %10, %struct.tegra_pcie_dw** %4, align 8
  %11 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %12 = load i32, i32* @APPL_INTR_EN_L0_0, align 4
  %13 = call i32 @appl_readl(%struct.tegra_pcie_dw* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @APPL_INTR_EN_L0_0_LINK_STATE_INT_EN, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @APPL_INTR_EN_L0_0, align 4
  %20 = call i32 @appl_writel(%struct.tegra_pcie_dw* %17, i32 %18, i32 %19)
  %21 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %22 = load i32, i32* @APPL_INTR_EN_L1_0_0, align 4
  %23 = call i32 @appl_readl(%struct.tegra_pcie_dw* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @APPL_INTR_EN_L1_0_0_LINK_REQ_RST_NOT_INT_EN, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @APPL_INTR_EN_L1_0_0, align 4
  %30 = call i32 @appl_writel(%struct.tegra_pcie_dw* %27, i32 %28, i32 %29)
  %31 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %1
  %36 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %37 = load i32, i32* @APPL_INTR_EN_L0_0, align 4
  %38 = call i32 @appl_readl(%struct.tegra_pcie_dw* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @APPL_INTR_EN_L0_0_CDM_REG_CHK_INT_EN, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @APPL_INTR_EN_L0_0, align 4
  %45 = call i32 @appl_writel(%struct.tegra_pcie_dw* %42, i32 %43, i32 %44)
  %46 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %47 = load i32, i32* @APPL_INTR_EN_L1_18, align 4
  %48 = call i32 @appl_readl(%struct.tegra_pcie_dw* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @APPL_INTR_EN_L1_18_CDM_REG_CHK_CMP_ERR, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @APPL_INTR_EN_L1_18_CDM_REG_CHK_LOGIC_ERR, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @APPL_INTR_EN_L1_18, align 4
  %58 = call i32 @appl_writel(%struct.tegra_pcie_dw* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %35, %1
  %60 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %61 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %60, i32 0, i32 2
  %62 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %63 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PCI_EXP_LNKSTA, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @dw_pcie_readw_dbi(i32* %61, i64 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @PCI_EXP_LNKSTA_NLW, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @PCI_EXP_LNKSTA_NLW_SHIFT, align 4
  %72 = ashr i32 %70, %71
  %73 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %74 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %76 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %75, i32 0, i32 2
  %77 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %78 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @dw_pcie_readw_dbi(i32* %76, i64 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* @PCI_EXP_LNKCTL_LBMIE, align 4
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %87 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %86, i32 0, i32 2
  %88 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %4, align 8
  %89 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %92 = add nsw i64 %90, %91
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @dw_pcie_writew_dbi(i32* %87, i64 %92, i32 %93)
  ret void
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.tegra_pcie_dw* @to_tegra_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @appl_readl(%struct.tegra_pcie_dw*, i32) #1

declare dso_local i32 @appl_writel(%struct.tegra_pcie_dw*, i32, i32) #1

declare dso_local i32 @dw_pcie_readw_dbi(i32*, i64) #1

declare dso_local i32 @dw_pcie_writew_dbi(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
