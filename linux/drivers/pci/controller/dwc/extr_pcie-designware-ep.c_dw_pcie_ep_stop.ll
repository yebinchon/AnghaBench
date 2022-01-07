; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i32 }
%struct.dw_pcie_ep = type { i32 }
%struct.dw_pcie = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dw_pcie*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_epc*)* @dw_pcie_ep_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_pcie_ep_stop(%struct.pci_epc* %0) #0 {
  %2 = alloca %struct.pci_epc*, align 8
  %3 = alloca %struct.dw_pcie_ep*, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  store %struct.pci_epc* %0, %struct.pci_epc** %2, align 8
  %5 = load %struct.pci_epc*, %struct.pci_epc** %2, align 8
  %6 = call %struct.dw_pcie_ep* @epc_get_drvdata(%struct.pci_epc* %5)
  store %struct.dw_pcie_ep* %6, %struct.dw_pcie_ep** %3, align 8
  %7 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %8 = call %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep* %7)
  store %struct.dw_pcie* %8, %struct.dw_pcie** %4, align 8
  %9 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %10 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.dw_pcie*)*, i32 (%struct.dw_pcie*)** %12, align 8
  %14 = icmp ne i32 (%struct.dw_pcie*)* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %24

16:                                               ; preds = %1
  %17 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %18 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.dw_pcie*)*, i32 (%struct.dw_pcie*)** %20, align 8
  %22 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %23 = call i32 %21(%struct.dw_pcie* %22)
  br label %24

24:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.dw_pcie_ep* @epc_get_drvdata(%struct.pci_epc*) #1

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
