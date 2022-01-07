; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pcie_bus_configure_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pcie_bus_configure_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@pcie_bus_config = common dso_local global i64 0, align 8
@PCIE_BUS_PEER2PEER = common dso_local global i64 0, align 8
@PCIE_BUS_SAFE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcie_bus_configure_settings(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %5 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %44

9:                                                ; preds = %1
  %10 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %11 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = call i32 @pci_is_pcie(%struct.TYPE_5__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  br label %44

16:                                               ; preds = %9
  %17 = load i64, i64* @pcie_bus_config, align 8
  %18 = load i64, i64* @PCIE_BUS_PEER2PEER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i64 0, i64* %3, align 8
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i64, i64* @pcie_bus_config, align 8
  %23 = load i64, i64* @PCIE_BUS_SAFE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %27 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %3, align 8
  %31 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %32 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = call i32 @pcie_find_smpss(%struct.TYPE_5__* %33, i64* %3)
  %35 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %36 = call i32 @pci_walk_bus(%struct.pci_bus* %35, i32 (%struct.TYPE_5__*, i64*)* @pcie_find_smpss, i64* %3)
  br label %37

37:                                               ; preds = %25, %21
  %38 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %39 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 @pcie_bus_configure_set(%struct.TYPE_5__* %40, i64* %3)
  %42 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %43 = call i32 @pci_walk_bus(%struct.pci_bus* %42, i32 (%struct.TYPE_5__*, i64*)* @pcie_bus_configure_set, i64* %3)
  br label %44

44:                                               ; preds = %37, %15, %8
  ret void
}

declare dso_local i32 @pci_is_pcie(%struct.TYPE_5__*) #1

declare dso_local i32 @pcie_find_smpss(%struct.TYPE_5__*, i64*) #1

declare dso_local i32 @pci_walk_bus(%struct.pci_bus*, i32 (%struct.TYPE_5__*, i64*)*, i64*) #1

declare dso_local i32 @pcie_bus_configure_set(%struct.TYPE_5__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
