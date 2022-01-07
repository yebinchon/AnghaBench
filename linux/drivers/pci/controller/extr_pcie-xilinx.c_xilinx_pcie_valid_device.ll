; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx.c_xilinx_pcie_valid_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx.c_xilinx_pcie_valid_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64, %struct.xilinx_pcie_port* }
%struct.xilinx_pcie_port = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32)* @xilinx_pcie_valid_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_pcie_valid_device(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xilinx_pcie_port*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %8 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %7, i32 0, i32 1
  %9 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %8, align 8
  store %struct.xilinx_pcie_port* %9, %struct.xilinx_pcie_port** %6, align 8
  %10 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %11 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %6, align 8
  %14 = getelementptr inbounds %struct.xilinx_pcie_port, %struct.xilinx_pcie_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %6, align 8
  %19 = call i32 @xilinx_pcie_link_up(%struct.xilinx_pcie_port* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %36

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %25 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %6, align 8
  %28 = getelementptr inbounds %struct.xilinx_pcie_port, %struct.xilinx_pcie_port* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = icmp ugt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %36

35:                                               ; preds = %31, %23
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %34, %21
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @xilinx_pcie_link_up(%struct.xilinx_pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
