; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence-ep.c_cdns_pcie_ep_write_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence-ep.c_cdns_pcie_ep_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i32 }
%struct.pci_epf_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cdns_pcie_ep = type { %struct.cdns_pcie }
%struct.cdns_pcie = type { i32 }

@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@PCI_REVISION_ID = common dso_local global i32 0, align 4
@PCI_CLASS_PROG = common dso_local global i32 0, align 4
@PCI_CLASS_DEVICE = common dso_local global i32 0, align 4
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@PCI_SUBSYSTEM_ID = common dso_local global i32 0, align 4
@PCI_INTERRUPT_PIN = common dso_local global i32 0, align 4
@CDNS_PCIE_LM_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_epc*, i32, %struct.pci_epf_header*)* @cdns_pcie_ep_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_pcie_ep_write_header(%struct.pci_epc* %0, i32 %1, %struct.pci_epf_header* %2) #0 {
  %4 = alloca %struct.pci_epc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_epf_header*, align 8
  %7 = alloca %struct.cdns_pcie_ep*, align 8
  %8 = alloca %struct.cdns_pcie*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_epc* %0, %struct.pci_epc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pci_epf_header* %2, %struct.pci_epf_header** %6, align 8
  %10 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %11 = call %struct.cdns_pcie_ep* @epc_get_drvdata(%struct.pci_epc* %10)
  store %struct.cdns_pcie_ep* %11, %struct.cdns_pcie_ep** %7, align 8
  %12 = load %struct.cdns_pcie_ep*, %struct.cdns_pcie_ep** %7, align 8
  %13 = getelementptr inbounds %struct.cdns_pcie_ep, %struct.cdns_pcie_ep* %12, i32 0, i32 0
  store %struct.cdns_pcie* %13, %struct.cdns_pcie** %8, align 8
  %14 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PCI_DEVICE_ID, align 4
  %17 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %18 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cdns_pcie_ep_fn_writew(%struct.cdns_pcie* %14, i32 %15, i32 %16, i32 %19)
  %21 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PCI_REVISION_ID, align 4
  %24 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %25 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cdns_pcie_ep_fn_writeb(%struct.cdns_pcie* %21, i32 %22, i32 %23, i32 %26)
  %28 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @PCI_CLASS_PROG, align 4
  %31 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %32 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cdns_pcie_ep_fn_writeb(%struct.cdns_pcie* %28, i32 %29, i32 %30, i32 %33)
  %35 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @PCI_CLASS_DEVICE, align 4
  %38 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %39 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %42 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = or i32 %40, %44
  %46 = call i32 @cdns_pcie_ep_fn_writew(%struct.cdns_pcie* %35, i32 %36, i32 %37, i32 %45)
  %47 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %50 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %51 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cdns_pcie_ep_fn_writeb(%struct.cdns_pcie* %47, i32 %48, i32 %49, i32 %52)
  %54 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @PCI_SUBSYSTEM_ID, align 4
  %57 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %58 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @cdns_pcie_ep_fn_writew(%struct.cdns_pcie* %54, i32 %55, i32 %56, i32 %59)
  %61 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @PCI_INTERRUPT_PIN, align 4
  %64 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %65 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cdns_pcie_ep_fn_writeb(%struct.cdns_pcie* %61, i32 %62, i32 %63, i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %3
  %71 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %72 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @CDNS_PCIE_LM_ID_VENDOR(i32 %73)
  %75 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %76 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @CDNS_PCIE_LM_ID_SUBSYS(i32 %77)
  %79 = or i32 %74, %78
  store i32 %79, i32* %9, align 4
  %80 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %81 = load i32, i32* @CDNS_PCIE_LM_ID, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %70, %3
  ret i32 0
}

declare dso_local %struct.cdns_pcie_ep* @epc_get_drvdata(%struct.pci_epc*) #1

declare dso_local i32 @cdns_pcie_ep_fn_writew(%struct.cdns_pcie*, i32, i32, i32) #1

declare dso_local i32 @cdns_pcie_ep_fn_writeb(%struct.cdns_pcie*, i32, i32, i32) #1

declare dso_local i32 @CDNS_PCIE_LM_ID_VENDOR(i32) #1

declare dso_local i32 @CDNS_PCIE_LM_ID_SUBSYS(i32) #1

declare dso_local i32 @cdns_pcie_writel(%struct.cdns_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
