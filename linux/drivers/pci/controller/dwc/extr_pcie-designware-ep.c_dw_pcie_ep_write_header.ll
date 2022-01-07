; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_write_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i32 }
%struct.pci_epf_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dw_pcie_ep = type { i32 }
%struct.dw_pcie = type { i32 }

@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@PCI_REVISION_ID = common dso_local global i32 0, align 4
@PCI_CLASS_PROG = common dso_local global i32 0, align 4
@PCI_CLASS_DEVICE = common dso_local global i32 0, align 4
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@PCI_SUBSYSTEM_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_SUBSYSTEM_ID = common dso_local global i32 0, align 4
@PCI_INTERRUPT_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_epc*, i32, %struct.pci_epf_header*)* @dw_pcie_ep_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_pcie_ep_write_header(%struct.pci_epc* %0, i32 %1, %struct.pci_epf_header* %2) #0 {
  %4 = alloca %struct.pci_epc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_epf_header*, align 8
  %7 = alloca %struct.dw_pcie_ep*, align 8
  %8 = alloca %struct.dw_pcie*, align 8
  store %struct.pci_epc* %0, %struct.pci_epc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pci_epf_header* %2, %struct.pci_epf_header** %6, align 8
  %9 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %10 = call %struct.dw_pcie_ep* @epc_get_drvdata(%struct.pci_epc* %9)
  store %struct.dw_pcie_ep* %10, %struct.dw_pcie_ep** %7, align 8
  %11 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %7, align 8
  %12 = call %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep* %11)
  store %struct.dw_pcie* %12, %struct.dw_pcie** %8, align 8
  %13 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %14 = call i32 @dw_pcie_dbi_ro_wr_en(%struct.dw_pcie* %13)
  %15 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %16 = load i32, i32* @PCI_VENDOR_ID, align 4
  %17 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %18 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dw_pcie_writew_dbi(%struct.dw_pcie* %15, i32 %16, i32 %19)
  %21 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %22 = load i32, i32* @PCI_DEVICE_ID, align 4
  %23 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %24 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dw_pcie_writew_dbi(%struct.dw_pcie* %21, i32 %22, i32 %25)
  %27 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %28 = load i32, i32* @PCI_REVISION_ID, align 4
  %29 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %30 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dw_pcie_writeb_dbi(%struct.dw_pcie* %27, i32 %28, i32 %31)
  %33 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %34 = load i32, i32* @PCI_CLASS_PROG, align 4
  %35 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %36 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dw_pcie_writeb_dbi(%struct.dw_pcie* %33, i32 %34, i32 %37)
  %39 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %40 = load i32, i32* @PCI_CLASS_DEVICE, align 4
  %41 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %42 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %45 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = or i32 %43, %47
  %49 = call i32 @dw_pcie_writew_dbi(%struct.dw_pcie* %39, i32 %40, i32 %48)
  %50 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %51 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %52 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %53 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dw_pcie_writeb_dbi(%struct.dw_pcie* %50, i32 %51, i32 %54)
  %56 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %57 = load i32, i32* @PCI_SUBSYSTEM_VENDOR_ID, align 4
  %58 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %59 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dw_pcie_writew_dbi(%struct.dw_pcie* %56, i32 %57, i32 %60)
  %62 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %63 = load i32, i32* @PCI_SUBSYSTEM_ID, align 4
  %64 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %65 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dw_pcie_writew_dbi(%struct.dw_pcie* %62, i32 %63, i32 %66)
  %68 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %69 = load i32, i32* @PCI_INTERRUPT_PIN, align 4
  %70 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %71 = getelementptr inbounds %struct.pci_epf_header, %struct.pci_epf_header* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dw_pcie_writeb_dbi(%struct.dw_pcie* %68, i32 %69, i32 %72)
  %74 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %75 = call i32 @dw_pcie_dbi_ro_wr_dis(%struct.dw_pcie* %74)
  ret i32 0
}

declare dso_local %struct.dw_pcie_ep* @epc_get_drvdata(%struct.pci_epc*) #1

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep*) #1

declare dso_local i32 @dw_pcie_dbi_ro_wr_en(%struct.dw_pcie*) #1

declare dso_local i32 @dw_pcie_writew_dbi(%struct.dw_pcie*, i32, i32) #1

declare dso_local i32 @dw_pcie_writeb_dbi(%struct.dw_pcie*, i32, i32) #1

declare dso_local i32 @dw_pcie_dbi_ro_wr_dis(%struct.dw_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
