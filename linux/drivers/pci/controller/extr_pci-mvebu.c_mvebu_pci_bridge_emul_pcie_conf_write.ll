; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pci_bridge_emul_pcie_conf_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pci_bridge_emul_pcie_conf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bridge_emul = type { %struct.mvebu_pcie_port* }
%struct.mvebu_pcie_port = type { i32 }

@PCI_EXP_DEVCTL_URRE = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_FERE = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_NFERE = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_CERE = common dso_local global i32 0, align 4
@PCIE_CAP_PCIEXP = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL_CLKREQ_EN = common dso_local global i32 0, align 4
@PCIE_RC_RTSTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bridge_emul*, i32, i32, i32, i32)* @mvebu_pci_bridge_emul_pcie_conf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_pci_bridge_emul_pcie_conf_write(%struct.pci_bridge_emul* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pci_bridge_emul*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mvebu_pcie_port*, align 8
  store %struct.pci_bridge_emul* %0, %struct.pci_bridge_emul** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %6, align 8
  %13 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %12, i32 0, i32 0
  %14 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %13, align 8
  store %struct.mvebu_pcie_port* %14, %struct.mvebu_pcie_port** %11, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %47 [
    i32 130, label %16
    i32 129, label %32
    i32 128, label %42
  ]

16:                                               ; preds = %5
  %17 = load i32, i32* @PCI_EXP_DEVCTL_URRE, align 4
  %18 = load i32, i32* @PCI_EXP_DEVCTL_FERE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @PCI_EXP_DEVCTL_NFERE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @PCI_EXP_DEVCTL_CERE, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %11, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @PCIE_CAP_PCIEXP, align 4
  %30 = add nsw i32 %29, 130
  %31 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %27, i32 %28, i32 %30)
  br label %47

32:                                               ; preds = %5
  %33 = load i32, i32* @PCI_EXP_LNKCTL_CLKREQ_EN, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %11, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @PCIE_CAP_PCIEXP, align 4
  %40 = add nsw i32 %39, 129
  %41 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %37, i32 %38, i32 %40)
  br label %47

42:                                               ; preds = %5
  %43 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %11, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @PCIE_RC_RTSTA, align 4
  %46 = call i32 @mvebu_writel(%struct.mvebu_pcie_port* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %5, %42, %32, %16
  ret void
}

declare dso_local i32 @mvebu_writel(%struct.mvebu_pcie_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
