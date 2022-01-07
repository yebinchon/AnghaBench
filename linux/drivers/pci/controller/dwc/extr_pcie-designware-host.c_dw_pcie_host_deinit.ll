; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pcie_host_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pcie_host_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_pcie_host_deinit(%struct.pcie_port* %0) #0 {
  %2 = alloca %struct.pcie_port*, align 8
  store %struct.pcie_port* %0, %struct.pcie_port** %2, align 8
  %3 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %4 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @pci_stop_root_bus(i32 %5)
  %7 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %8 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @pci_remove_root_bus(i32 %9)
  %11 = call i64 (...) @pci_msi_enabled()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %15 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load %struct.pcie_port*, %struct.pcie_port** %2, align 8
  %22 = call i32 @dw_pcie_free_msi(%struct.pcie_port* %21)
  br label %23

23:                                               ; preds = %20, %13, %1
  ret void
}

declare dso_local i32 @pci_stop_root_bus(i32) #1

declare dso_local i32 @pci_remove_root_bus(i32) #1

declare dso_local i64 @pci_msi_enabled(...) #1

declare dso_local i32 @dw_pcie_free_msi(%struct.pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
