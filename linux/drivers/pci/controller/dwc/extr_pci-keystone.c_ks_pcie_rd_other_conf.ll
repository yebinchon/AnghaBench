; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_rd_other_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_rd_other_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_port = type { i64, i64 }
%struct.pci_bus = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.dw_pcie = type { i32 }
%struct.keystone_pcie = type { i32 }

@CFG_TYPE1 = common dso_local global i32 0, align 4
@CFG_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_port*, %struct.pci_bus*, i32, i32, i32, i32*)* @ks_pcie_rd_other_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_pcie_rd_other_conf(%struct.pcie_port* %0, %struct.pci_bus* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.pcie_port*, align 8
  %8 = alloca %struct.pci_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.dw_pcie*, align 8
  %14 = alloca %struct.keystone_pcie*, align 8
  %15 = alloca i32, align 4
  store %struct.pcie_port* %0, %struct.pcie_port** %7, align 8
  store %struct.pci_bus* %1, %struct.pci_bus** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %16 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %17 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %16)
  store %struct.dw_pcie* %17, %struct.dw_pcie** %13, align 8
  %18 = load %struct.dw_pcie*, %struct.dw_pcie** %13, align 8
  %19 = call %struct.keystone_pcie* @to_keystone_pcie(%struct.dw_pcie* %18)
  store %struct.keystone_pcie* %19, %struct.keystone_pcie** %14, align 8
  %20 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %21 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @CFG_BUS(i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @PCI_SLOT(i32 %24)
  %26 = call i32 @CFG_DEVICE(i32 %25)
  %27 = or i32 %23, %26
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @PCI_FUNC(i32 %28)
  %30 = call i32 @CFG_FUNC(i32 %29)
  %31 = or i32 %27, %30
  store i32 %31, i32* %15, align 4
  %32 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %33 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %38 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %6
  %42 = load i32, i32* @CFG_TYPE1, align 4
  %43 = load i32, i32* %15, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %41, %6
  %46 = load %struct.keystone_pcie*, %struct.keystone_pcie** %14, align 8
  %47 = load i32, i32* @CFG_SETUP, align 4
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @ks_pcie_app_writel(%struct.keystone_pcie* %46, i32 %47, i32 %48)
  %50 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %51 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @dw_pcie_read(i64 %55, i32 %56, i32* %57)
  ret i32 %58
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.keystone_pcie* @to_keystone_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @CFG_BUS(i32) #1

declare dso_local i32 @CFG_DEVICE(i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @CFG_FUNC(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @ks_pcie_app_writel(%struct.keystone_pcie*, i32, i32) #1

declare dso_local i32 @dw_pcie_read(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
