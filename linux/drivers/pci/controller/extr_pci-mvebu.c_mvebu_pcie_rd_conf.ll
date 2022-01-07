; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pcie_rd_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pcie_rd_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64, %struct.mvebu_pcie* }
%struct.mvebu_pcie = type { i32 }
%struct.mvebu_pcie_port = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @mvebu_pcie_rd_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_pcie_rd_conf(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mvebu_pcie*, align 8
  %13 = alloca %struct.mvebu_pcie_port*, align 8
  %14 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 1
  %17 = load %struct.mvebu_pcie*, %struct.mvebu_pcie** %16, align 8
  store %struct.mvebu_pcie* %17, %struct.mvebu_pcie** %12, align 8
  %18 = load %struct.mvebu_pcie*, %struct.mvebu_pcie** %12, align 8
  %19 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.mvebu_pcie_port* @mvebu_pcie_find_port(%struct.mvebu_pcie* %18, %struct.pci_bus* %19, i32 %20)
  store %struct.mvebu_pcie_port* %21, %struct.mvebu_pcie_port** %13, align 8
  %22 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %13, align 8
  %23 = icmp ne %struct.mvebu_pcie_port* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32*, i32** %11, align 8
  store i32 -1, i32* %25, align 4
  %26 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %26, i32* %6, align 4
  br label %55

27:                                               ; preds = %5
  %28 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %29 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %13, align 8
  %34 = getelementptr inbounds %struct.mvebu_pcie_port, %struct.mvebu_pcie_port* %33, i32 0, i32 0
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @pci_bridge_emul_conf_read(i32* %34, i32 %35, i32 %36, i32* %37)
  store i32 %38, i32* %6, align 4
  br label %55

39:                                               ; preds = %27
  %40 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %13, align 8
  %41 = call i32 @mvebu_pcie_link_up(%struct.mvebu_pcie_port* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32*, i32** %11, align 8
  store i32 -1, i32* %44, align 4
  %45 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %45, i32* %6, align 4
  br label %55

46:                                               ; preds = %39
  %47 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %13, align 8
  %48 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @mvebu_pcie_hw_rd_conf(%struct.mvebu_pcie_port* %47, %struct.pci_bus* %48, i32 %49, i32 %50, i32 %51, i32* %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %46, %43, %32, %24
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.mvebu_pcie_port* @mvebu_pcie_find_port(%struct.mvebu_pcie*, %struct.pci_bus*, i32) #1

declare dso_local i32 @pci_bridge_emul_conf_read(i32*, i32, i32, i32*) #1

declare dso_local i32 @mvebu_pcie_link_up(%struct.mvebu_pcie_port*) #1

declare dso_local i32 @mvebu_pcie_hw_rd_conf(%struct.mvebu_pcie_port*, %struct.pci_bus*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
