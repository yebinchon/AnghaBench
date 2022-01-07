; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pci_bridge_emul_pcie_conf_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_pci_bridge_emul_pcie_conf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bridge_emul = type { %struct.advk_pcie* }
%struct.advk_pcie = type { i32 }

@PCIE_CORE_PCIEXP_CAP = common dso_local global i32 0, align 4
@PCI_EXP_RTCTL_PMEIE = common dso_local global i32 0, align 4
@PCIE_ISR0_MASK_REG = common dso_local global i32 0, align 4
@PCI_EXP_RTSTA_PME = common dso_local global i32 0, align 4
@PCIE_ISR0_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bridge_emul*, i32, i32, i32, i32)* @advk_pci_bridge_emul_pcie_conf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @advk_pci_bridge_emul_pcie_conf_write(%struct.pci_bridge_emul* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pci_bridge_emul*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.advk_pcie*, align 8
  store %struct.pci_bridge_emul* %0, %struct.pci_bridge_emul** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %6, align 8
  %13 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %12, i32 0, i32 0
  %14 = load %struct.advk_pcie*, %struct.advk_pcie** %13, align 8
  store %struct.advk_pcie* %14, %struct.advk_pcie** %11, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %41 [
    i32 131, label %16
    i32 130, label %16
    i32 129, label %23
    i32 128, label %32
  ]

16:                                               ; preds = %5, %5
  %17 = load %struct.advk_pcie*, %struct.advk_pcie** %11, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @PCIE_CORE_PCIEXP_CAP, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  %22 = call i32 @advk_writel(%struct.advk_pcie* %17, i32 %18, i32 %21)
  br label %42

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @PCI_EXP_RTCTL_PMEIE, align 4
  %26 = and i32 %24, %25
  %27 = shl i32 %26, 3
  store i32 %27, i32* %9, align 4
  %28 = load %struct.advk_pcie*, %struct.advk_pcie** %11, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @PCIE_ISR0_MASK_REG, align 4
  %31 = call i32 @advk_writel(%struct.advk_pcie* %28, i32 %29, i32 %30)
  br label %42

32:                                               ; preds = %5
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @PCI_EXP_RTSTA_PME, align 4
  %35 = and i32 %33, %34
  %36 = ashr i32 %35, 9
  store i32 %36, i32* %9, align 4
  %37 = load %struct.advk_pcie*, %struct.advk_pcie** %11, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @PCIE_ISR0_REG, align 4
  %40 = call i32 @advk_writel(%struct.advk_pcie* %37, i32 %38, i32 %39)
  br label %42

41:                                               ; preds = %5
  br label %42

42:                                               ; preds = %41, %32, %23, %16
  ret void
}

declare dso_local i32 @advk_writel(%struct.advk_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
