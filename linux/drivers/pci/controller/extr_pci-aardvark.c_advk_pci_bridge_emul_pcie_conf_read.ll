; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pci_bridge_emul_pcie_conf_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pci_bridge_emul_pcie_conf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bridge_emul = type { %struct.advk_pcie* }
%struct.advk_pcie = type { i32 }

@PCI_EXP_SLTSTA_PDS = common dso_local global i32 0, align 4
@PCI_BRIDGE_EMUL_HANDLED = common dso_local global i32 0, align 4
@PCIE_ISR0_MASK_REG = common dso_local global i32 0, align 4
@PCIE_MSG_PM_PME_MASK = common dso_local global i32 0, align 4
@PCI_EXP_RTCTL_PMEIE = common dso_local global i32 0, align 4
@PCIE_ISR0_REG = common dso_local global i32 0, align 4
@PCIE_MSG_LOG_REG = common dso_local global i32 0, align 4
@PCIE_CORE_PCIEXP_CAP = common dso_local global i32 0, align 4
@PCI_BRIDGE_EMUL_NOT_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bridge_emul*, i32, i32*)* @advk_pci_bridge_emul_pcie_conf_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advk_pci_bridge_emul_pcie_conf_read(%struct.pci_bridge_emul* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_bridge_emul*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.advk_pcie*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_bridge_emul* %0, %struct.pci_bridge_emul** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %5, align 8
  %13 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %12, i32 0, i32 0
  %14 = load %struct.advk_pcie*, %struct.advk_pcie** %13, align 8
  store %struct.advk_pcie* %14, %struct.advk_pcie** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %60 [
    i32 128, label %16
    i32 130, label %21
    i32 129, label %36
    i32 135, label %52
    i32 134, label %52
    i32 133, label %52
    i32 132, label %52
    i32 131, label %52
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @PCI_EXP_SLTSTA_PDS, align 4
  %18 = shl i32 %17, 16
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @PCI_BRIDGE_EMUL_HANDLED, align 4
  store i32 %20, i32* %4, align 4
  br label %62

21:                                               ; preds = %3
  %22 = load %struct.advk_pcie*, %struct.advk_pcie** %8, align 8
  %23 = load i32, i32* @PCIE_ISR0_MASK_REG, align 4
  %24 = call i32 @advk_readl(%struct.advk_pcie* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @PCIE_MSG_PM_PME_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @PCI_EXP_RTCTL_PMEIE, align 4
  br label %32

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @PCI_BRIDGE_EMUL_HANDLED, align 4
  store i32 %35, i32* %4, align 4
  br label %62

36:                                               ; preds = %3
  %37 = load %struct.advk_pcie*, %struct.advk_pcie** %8, align 8
  %38 = load i32, i32* @PCIE_ISR0_REG, align 4
  %39 = call i32 @advk_readl(%struct.advk_pcie* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.advk_pcie*, %struct.advk_pcie** %8, align 8
  %41 = load i32, i32* @PCIE_MSG_LOG_REG, align 4
  %42 = call i32 @advk_readl(%struct.advk_pcie* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @PCIE_MSG_PM_PME_MASK, align 4
  %45 = and i32 %43, %44
  %46 = shl i32 %45, 16
  %47 = load i32, i32* %11, align 4
  %48 = ashr i32 %47, 16
  %49 = or i32 %46, %48
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @PCI_BRIDGE_EMUL_HANDLED, align 4
  store i32 %51, i32* %4, align 4
  br label %62

52:                                               ; preds = %3, %3, %3, %3, %3
  %53 = load %struct.advk_pcie*, %struct.advk_pcie** %8, align 8
  %54 = load i32, i32* @PCIE_CORE_PCIEXP_CAP, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %54, %55
  %57 = call i32 @advk_readl(%struct.advk_pcie* %53, i32 %56)
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @PCI_BRIDGE_EMUL_HANDLED, align 4
  store i32 %59, i32* %4, align 4
  br label %62

60:                                               ; preds = %3
  %61 = load i32, i32* @PCI_BRIDGE_EMUL_NOT_HANDLED, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %52, %36, %32, %16
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @advk_readl(%struct.advk_pcie*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
