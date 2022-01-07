; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_valid_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_valid_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { i64 }
%struct.pci_bus = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pcie*, %struct.pci_bus*, i32)* @rockchip_pcie_valid_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_valid_device(%struct.rockchip_pcie* %0, %struct.pci_bus* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rockchip_pcie*, align 8
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  store %struct.rockchip_pcie* %0, %struct.rockchip_pcie** %5, align 8
  store %struct.pci_bus* %1, %struct.pci_bus** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %9 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %5, align 8
  %12 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %32

19:                                               ; preds = %15, %3
  %20 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %21 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %5, align 8
  %24 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %32

31:                                               ; preds = %27, %19
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %30, %18
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
