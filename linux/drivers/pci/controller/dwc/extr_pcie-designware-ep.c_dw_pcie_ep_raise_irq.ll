; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_raise_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_raise_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i32 }
%struct.dw_pcie_ep = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dw_pcie_ep*, i32, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_epc*, i32, i32, i32)* @dw_pcie_ep_raise_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_pcie_ep_raise_irq(%struct.pci_epc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_epc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dw_pcie_ep*, align 8
  store %struct.pci_epc* %0, %struct.pci_epc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.pci_epc*, %struct.pci_epc** %6, align 8
  %12 = call %struct.dw_pcie_ep* @epc_get_drvdata(%struct.pci_epc* %11)
  store %struct.dw_pcie_ep* %12, %struct.dw_pcie_ep** %10, align 8
  %13 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %10, align 8
  %14 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.dw_pcie_ep*, i32, i32, i32)*, i32 (%struct.dw_pcie_ep*, i32, i32, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.dw_pcie_ep*, i32, i32, i32)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %33

22:                                               ; preds = %4
  %23 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %10, align 8
  %24 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.dw_pcie_ep*, i32, i32, i32)*, i32 (%struct.dw_pcie_ep*, i32, i32, i32)** %26, align 8
  %28 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 %27(%struct.dw_pcie_ep* %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %22, %19
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.dw_pcie_ep* @epc_get_drvdata(%struct.pci_epc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
