; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_set_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_set_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i32 }
%struct.dw_pcie_ep = type { i64 }
%struct.dw_pcie = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCI_MSIX_FLAGS = common dso_local global i64 0, align 8
@PCI_MSIX_FLAGS_QSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_epc*, i32, i64)* @dw_pcie_ep_set_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_pcie_ep_set_msix(%struct.pci_epc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_epc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.dw_pcie_ep*, align 8
  %9 = alloca %struct.dw_pcie*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.pci_epc* %0, %struct.pci_epc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %13 = call %struct.dw_pcie_ep* @epc_get_drvdata(%struct.pci_epc* %12)
  store %struct.dw_pcie_ep* %13, %struct.dw_pcie_ep** %8, align 8
  %14 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %8, align 8
  %15 = call %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep* %14)
  store %struct.dw_pcie* %15, %struct.dw_pcie** %9, align 8
  %16 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %8, align 8
  %17 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %47

23:                                               ; preds = %3
  %24 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %8, align 8
  %25 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCI_MSIX_FLAGS, align 8
  %28 = add nsw i64 %26, %27
  store i64 %28, i64* %11, align 8
  %29 = load %struct.dw_pcie*, %struct.dw_pcie** %9, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i64 @dw_pcie_readw_dbi(%struct.dw_pcie* %29, i64 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* @PCI_MSIX_FLAGS_QSIZE, align 8
  %33 = xor i64 %32, -1
  %34 = load i64, i64* %10, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %10, align 8
  %39 = load %struct.dw_pcie*, %struct.dw_pcie** %9, align 8
  %40 = call i32 @dw_pcie_dbi_ro_wr_en(%struct.dw_pcie* %39)
  %41 = load %struct.dw_pcie*, %struct.dw_pcie** %9, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @dw_pcie_writew_dbi(%struct.dw_pcie* %41, i64 %42, i64 %43)
  %45 = load %struct.dw_pcie*, %struct.dw_pcie** %9, align 8
  %46 = call i32 @dw_pcie_dbi_ro_wr_dis(%struct.dw_pcie* %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %23, %20
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.dw_pcie_ep* @epc_get_drvdata(%struct.pci_epc*) #1

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep*) #1

declare dso_local i64 @dw_pcie_readw_dbi(%struct.dw_pcie*, i64) #1

declare dso_local i32 @dw_pcie_dbi_ro_wr_en(%struct.dw_pcie*) #1

declare dso_local i32 @dw_pcie_writew_dbi(%struct.dw_pcie*, i64, i64) #1

declare dso_local i32 @dw_pcie_dbi_ro_wr_dis(%struct.dw_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
