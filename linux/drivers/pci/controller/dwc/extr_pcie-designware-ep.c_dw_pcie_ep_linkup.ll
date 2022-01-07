; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_linkup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_linkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie_ep = type { %struct.pci_epc* }
%struct.pci_epc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_pcie_ep_linkup(%struct.dw_pcie_ep* %0) #0 {
  %2 = alloca %struct.dw_pcie_ep*, align 8
  %3 = alloca %struct.pci_epc*, align 8
  store %struct.dw_pcie_ep* %0, %struct.dw_pcie_ep** %2, align 8
  %4 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %2, align 8
  %5 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %4, i32 0, i32 0
  %6 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  store %struct.pci_epc* %6, %struct.pci_epc** %3, align 8
  %7 = load %struct.pci_epc*, %struct.pci_epc** %3, align 8
  %8 = call i32 @pci_epc_linkup(%struct.pci_epc* %7)
  ret void
}

declare dso_local i32 @pci_epc_linkup(%struct.pci_epc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
