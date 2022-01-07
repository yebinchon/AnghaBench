; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence-ep.c_cdns_pcie_ep_get_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence-ep.c_cdns_pcie_ep_get_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc_features = type { i32 }
%struct.pci_epc = type { i32 }

@cdns_pcie_epc_features = common dso_local global %struct.pci_epc_features zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_epc_features* (%struct.pci_epc*, i32)* @cdns_pcie_ep_get_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_epc_features* @cdns_pcie_ep_get_features(%struct.pci_epc* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_epc*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_epc* %0, %struct.pci_epc** %3, align 8
  store i32 %1, i32* %4, align 4
  ret %struct.pci_epc_features* @cdns_pcie_epc_features
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
