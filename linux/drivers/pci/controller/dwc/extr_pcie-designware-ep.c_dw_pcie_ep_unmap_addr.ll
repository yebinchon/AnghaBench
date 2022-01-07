; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_unmap_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_unmap_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i32 }
%struct.dw_pcie_ep = type { i32 }
%struct.dw_pcie = type { i32 }

@DW_PCIE_REGION_OUTBOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_epc*, i32, i32)* @dw_pcie_ep_unmap_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_pcie_ep_unmap_addr(%struct.pci_epc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_epc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dw_pcie_ep*, align 8
  %10 = alloca %struct.dw_pcie*, align 8
  store %struct.pci_epc* %0, %struct.pci_epc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %12 = call %struct.dw_pcie_ep* @epc_get_drvdata(%struct.pci_epc* %11)
  store %struct.dw_pcie_ep* %12, %struct.dw_pcie_ep** %9, align 8
  %13 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %9, align 8
  %14 = call %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep* %13)
  store %struct.dw_pcie* %14, %struct.dw_pcie** %10, align 8
  %15 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @dw_pcie_find_index(%struct.dw_pcie_ep* %15, i32 %16, i32* %8)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %31

21:                                               ; preds = %3
  %22 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @DW_PCIE_REGION_OUTBOUND, align 4
  %25 = call i32 @dw_pcie_disable_atu(%struct.dw_pcie* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %9, align 8
  %28 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clear_bit(i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.dw_pcie_ep* @epc_get_drvdata(%struct.pci_epc*) #1

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep*) #1

declare dso_local i32 @dw_pcie_find_index(%struct.dw_pcie_ep*, i32, i32*) #1

declare dso_local i32 @dw_pcie_disable_atu(%struct.dw_pcie*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
