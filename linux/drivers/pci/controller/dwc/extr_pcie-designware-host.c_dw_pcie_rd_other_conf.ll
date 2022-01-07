; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pcie_rd_other_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pcie_rd_other_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.pci_bus = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_port*, %struct.pci_bus*, i32, i32, i32, i32*)* @dw_pcie_rd_other_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_pcie_rd_other_conf(%struct.pcie_port* %0, %struct.pci_bus* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcie_port*, align 8
  %9 = alloca %struct.pci_bus*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.pcie_port* %0, %struct.pcie_port** %8, align 8
  store %struct.pci_bus* %1, %struct.pci_bus** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %14 = load %struct.pcie_port*, %struct.pcie_port** %8, align 8
  %15 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.pcie_port*, %struct.pci_bus*, i32, i32, i32, i32*)**
  %19 = load i32 (%struct.pcie_port*, %struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pcie_port*, %struct.pci_bus*, i32, i32, i32, i32*)** %18, align 8
  %20 = icmp ne i32 (%struct.pcie_port*, %struct.pci_bus*, i32, i32, i32, i32*)* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %6
  %22 = load %struct.pcie_port*, %struct.pcie_port** %8, align 8
  %23 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.pcie_port*, %struct.pci_bus*, i32, i32, i32, i32*)**
  %27 = load i32 (%struct.pcie_port*, %struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pcie_port*, %struct.pci_bus*, i32, i32, i32, i32*)** %26, align 8
  %28 = load %struct.pcie_port*, %struct.pcie_port** %8, align 8
  %29 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32*, i32** %13, align 8
  %34 = call i32 %27(%struct.pcie_port* %28, %struct.pci_bus* %29, i32 %30, i32 %31, i32 %32, i32* %33)
  store i32 %34, i32* %7, align 4
  br label %43

35:                                               ; preds = %6
  %36 = load %struct.pcie_port*, %struct.pcie_port** %8, align 8
  %37 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @dw_pcie_access_other_conf(%struct.pcie_port* %36, %struct.pci_bus* %37, i32 %38, i32 %39, i32 %40, i32* %41, i32 0)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %35, %21
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @dw_pcie_access_other_conf(%struct.pcie_port*, %struct.pci_bus*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
