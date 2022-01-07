; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_rd_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_rd_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64, %struct.rockchip_pcie* }
%struct.rockchip_pcie = type { i64 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @rockchip_pcie_rd_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_rd_conf(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rockchip_pcie*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 1
  %15 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %14, align 8
  store %struct.rockchip_pcie* %15, %struct.rockchip_pcie** %12, align 8
  %16 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %12, align 8
  %17 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @PCI_SLOT(i32 %18)
  %20 = call i32 @rockchip_pcie_valid_device(%struct.rockchip_pcie* %16, %struct.pci_bus* %17, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32*, i32** %11, align 8
  store i32 -1, i32* %23, align 4
  %24 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %24, i32* %6, align 4
  br label %47

25:                                               ; preds = %5
  %26 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %27 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %12, align 8
  %30 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %12, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @rockchip_pcie_rd_own_conf(%struct.rockchip_pcie* %34, i32 %35, i32 %36, i32* %37)
  store i32 %38, i32* %6, align 4
  br label %47

39:                                               ; preds = %25
  %40 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %12, align 8
  %41 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @rockchip_pcie_rd_other_conf(%struct.rockchip_pcie* %40, %struct.pci_bus* %41, i32 %42, i32 %43, i32 %44, i32* %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %39, %33, %22
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @rockchip_pcie_valid_device(%struct.rockchip_pcie*, %struct.pci_bus*, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @rockchip_pcie_rd_own_conf(%struct.rockchip_pcie*, i32, i32, i32*) #1

declare dso_local i32 @rockchip_pcie_rd_other_conf(%struct.rockchip_pcie*, %struct.pci_bus*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
