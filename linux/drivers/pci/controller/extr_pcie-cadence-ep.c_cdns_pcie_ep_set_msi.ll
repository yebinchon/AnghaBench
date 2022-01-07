; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence-ep.c_cdns_pcie_ep_set_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence-ep.c_cdns_pcie_ep_set_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i32 }
%struct.cdns_pcie_ep = type { %struct.cdns_pcie }
%struct.cdns_pcie = type { i32 }

@CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET = common dso_local global i64 0, align 8
@PCI_MSI_FLAGS = common dso_local global i64 0, align 8
@PCI_MSI_FLAGS_QMASK = common dso_local global i32 0, align 4
@PCI_MSI_FLAGS_64BIT = common dso_local global i32 0, align 4
@PCI_MSI_FLAGS_MASKBIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_epc*, i32, i32)* @cdns_pcie_ep_set_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_pcie_ep_set_msi(%struct.pci_epc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_epc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdns_pcie_ep*, align 8
  %8 = alloca %struct.cdns_pcie*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.pci_epc* %0, %struct.pci_epc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %12 = call %struct.cdns_pcie_ep* @epc_get_drvdata(%struct.pci_epc* %11)
  store %struct.cdns_pcie_ep* %12, %struct.cdns_pcie_ep** %7, align 8
  %13 = load %struct.cdns_pcie_ep*, %struct.cdns_pcie_ep** %7, align 8
  %14 = getelementptr inbounds %struct.cdns_pcie_ep, %struct.cdns_pcie_ep* %13, i32 0, i32 0
  store %struct.cdns_pcie* %14, %struct.cdns_pcie** %8, align 8
  %15 = load i64, i64* @CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @PCI_MSI_FLAGS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @cdns_pcie_ep_fn_readw(%struct.cdns_pcie* %16, i32 %17, i64 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @PCI_MSI_FLAGS_QMASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 %26, 1
  %28 = or i32 %25, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @PCI_MSI_FLAGS_64BIT, align 4
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @PCI_MSI_FLAGS_MASKBIT, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @PCI_MSI_FLAGS, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @cdns_pcie_ep_fn_writew(%struct.cdns_pcie* %36, i32 %37, i64 %40, i32 %41)
  ret i32 0
}

declare dso_local %struct.cdns_pcie_ep* @epc_get_drvdata(%struct.pci_epc*) #1

declare dso_local i32 @cdns_pcie_ep_fn_readw(%struct.cdns_pcie*, i32, i64) #1

declare dso_local i32 @cdns_pcie_ep_fn_writew(%struct.cdns_pcie*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
