; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pci_bridge_emul_pcie_conf_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pci_bridge_emul_pcie_conf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bridge_emul = type { %struct.mvebu_pcie_port* }
%struct.mvebu_pcie_port = type { i32 }

@PCIE_CAP_PCIEXP = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_URRE = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_FERE = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_NFERE = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_CERE = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_CLKPM = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA_PDS = common dso_local global i32 0, align 4
@PCIE_RC_RTSTA = common dso_local global i32 0, align 4
@PCI_BRIDGE_EMUL_NOT_HANDLED = common dso_local global i32 0, align 4
@PCI_BRIDGE_EMUL_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bridge_emul*, i32, i32*)* @mvebu_pci_bridge_emul_pcie_conf_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_pci_bridge_emul_pcie_conf_read(%struct.pci_bridge_emul* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_bridge_emul*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mvebu_pcie_port*, align 8
  store %struct.pci_bridge_emul* %0, %struct.pci_bridge_emul** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.pci_bridge_emul*, %struct.pci_bridge_emul** %5, align 8
  %10 = getelementptr inbounds %struct.pci_bridge_emul, %struct.pci_bridge_emul* %9, i32 0, i32 0
  %11 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %10, align 8
  store %struct.mvebu_pcie_port* %11, %struct.mvebu_pcie_port** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %58 [
    i32 133, label %13
    i32 132, label %19
    i32 131, label %34
    i32 130, label %43
    i32 128, label %49
    i32 129, label %53
  ]

13:                                               ; preds = %3
  %14 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %8, align 8
  %15 = load i32, i32* @PCIE_CAP_PCIEXP, align 4
  %16 = add nsw i32 %15, 133
  %17 = call i32 @mvebu_readl(%struct.mvebu_pcie_port* %14, i32 %16)
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  br label %60

19:                                               ; preds = %3
  %20 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %8, align 8
  %21 = load i32, i32* @PCIE_CAP_PCIEXP, align 4
  %22 = add nsw i32 %21, 132
  %23 = call i32 @mvebu_readl(%struct.mvebu_pcie_port* %20, i32 %22)
  %24 = load i32, i32* @PCI_EXP_DEVCTL_URRE, align 4
  %25 = load i32, i32* @PCI_EXP_DEVCTL_FERE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PCI_EXP_DEVCTL_NFERE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PCI_EXP_DEVCTL_CERE, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %23, %31
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %60

34:                                               ; preds = %3
  %35 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %8, align 8
  %36 = load i32, i32* @PCIE_CAP_PCIEXP, align 4
  %37 = add nsw i32 %36, 131
  %38 = call i32 @mvebu_readl(%struct.mvebu_pcie_port* %35, i32 %37)
  %39 = load i32, i32* @PCI_EXP_LNKCAP_CLKPM, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  br label %60

43:                                               ; preds = %3
  %44 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %8, align 8
  %45 = load i32, i32* @PCIE_CAP_PCIEXP, align 4
  %46 = add nsw i32 %45, 130
  %47 = call i32 @mvebu_readl(%struct.mvebu_pcie_port* %44, i32 %46)
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  br label %60

49:                                               ; preds = %3
  %50 = load i32, i32* @PCI_EXP_SLTSTA_PDS, align 4
  %51 = shl i32 %50, 16
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  br label %60

53:                                               ; preds = %3
  %54 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %8, align 8
  %55 = load i32, i32* @PCIE_RC_RTSTA, align 4
  %56 = call i32 @mvebu_readl(%struct.mvebu_pcie_port* %54, i32 %55)
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  br label %60

58:                                               ; preds = %3
  %59 = load i32, i32* @PCI_BRIDGE_EMUL_NOT_HANDLED, align 4
  store i32 %59, i32* %4, align 4
  br label %62

60:                                               ; preds = %53, %49, %43, %34, %19, %13
  %61 = load i32, i32* @PCI_BRIDGE_EMUL_HANDLED, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @mvebu_readl(%struct.mvebu_pcie_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
