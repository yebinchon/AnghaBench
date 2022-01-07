; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_map_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_map_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i32 }
%struct.dw_pcie_ep = type { i32 }
%struct.dw_pcie = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Failed to enable address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_epc*, i32, i32, i32, i64)* @dw_pcie_ep_map_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_pcie_ep_map_addr(%struct.pci_epc* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_epc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dw_pcie_ep*, align 8
  %14 = alloca %struct.dw_pcie*, align 8
  store %struct.pci_epc* %0, %struct.pci_epc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.pci_epc*, %struct.pci_epc** %7, align 8
  %16 = call %struct.dw_pcie_ep* @epc_get_drvdata(%struct.pci_epc* %15)
  store %struct.dw_pcie_ep* %16, %struct.dw_pcie_ep** %13, align 8
  %17 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %13, align 8
  %18 = call %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep* %17)
  store %struct.dw_pcie* %18, %struct.dw_pcie** %14, align 8
  %19 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %13, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @dw_pcie_ep_outbound_atu(%struct.dw_pcie_ep* %19, i32 %20, i32 %21, i64 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load %struct.dw_pcie*, %struct.dw_pcie** %14, align 8
  %28 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %6, align 4
  br label %33

32:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local %struct.dw_pcie_ep* @epc_get_drvdata(%struct.pci_epc*) #1

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep*) #1

declare dso_local i32 @dw_pcie_ep_outbound_atu(%struct.dw_pcie_ep*, i32, i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
