; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_get_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_get_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc_features = type { i32 }
%struct.pci_epc = type { i32 }
%struct.dw_pcie_ep = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_epc_features* (%struct.dw_pcie_ep*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_epc_features* (%struct.pci_epc*, i32)* @dw_pcie_ep_get_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_epc_features* @dw_pcie_ep_get_features(%struct.pci_epc* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_epc_features*, align 8
  %4 = alloca %struct.pci_epc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dw_pcie_ep*, align 8
  store %struct.pci_epc* %0, %struct.pci_epc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %8 = call %struct.dw_pcie_ep* @epc_get_drvdata(%struct.pci_epc* %7)
  store %struct.dw_pcie_ep* %8, %struct.dw_pcie_ep** %6, align 8
  %9 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %10 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.pci_epc_features* (%struct.dw_pcie_ep*)*, %struct.pci_epc_features* (%struct.dw_pcie_ep*)** %12, align 8
  %14 = icmp ne %struct.pci_epc_features* (%struct.dw_pcie_ep*)* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.pci_epc_features* null, %struct.pci_epc_features** %3, align 8
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %18 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.pci_epc_features* (%struct.dw_pcie_ep*)*, %struct.pci_epc_features* (%struct.dw_pcie_ep*)** %20, align 8
  %22 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %6, align 8
  %23 = call %struct.pci_epc_features* %21(%struct.dw_pcie_ep* %22)
  store %struct.pci_epc_features* %23, %struct.pci_epc_features** %3, align 8
  br label %24

24:                                               ; preds = %16, %15
  %25 = load %struct.pci_epc_features*, %struct.pci_epc_features** %3, align 8
  ret %struct.pci_epc_features* %25
}

declare dso_local %struct.dw_pcie_ep* @epc_get_drvdata(%struct.pci_epc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
