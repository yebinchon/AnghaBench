; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_read_bridge_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_read_bridge_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.resource**, %struct.pci_dev* }
%struct.resource = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_bus_region = type { i64, i64 }

@PCI_MEMORY_BASE = common dso_local global i32 0, align 4
@PCI_MEMORY_LIMIT = common dso_local global i32 0, align 4
@PCI_MEMORY_RANGE_MASK = common dso_local global i64 0, align 8
@PCI_MEMORY_RANGE_TYPE_MASK = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"  bridge window %pR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bus*)* @pci_read_bridge_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_read_bridge_mmio(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pci_bus_region, align 8
  %9 = alloca %struct.resource*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %10 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %11 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %10, i32 0, i32 1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %3, align 8
  %13 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 0
  %15 = load %struct.resource**, %struct.resource*** %14, align 8
  %16 = getelementptr inbounds %struct.resource*, %struct.resource** %15, i64 1
  %17 = load %struct.resource*, %struct.resource** %16, align 8
  store %struct.resource* %17, %struct.resource** %9, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = load i32, i32* @PCI_MEMORY_BASE, align 4
  %20 = call i32 @pci_read_config_word(%struct.pci_dev* %18, i32 %19, i32* %4)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = load i32, i32* @PCI_MEMORY_LIMIT, align 4
  %23 = call i32 @pci_read_config_word(%struct.pci_dev* %21, i32 %22, i32* %5)
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @PCI_MEMORY_RANGE_MASK, align 8
  %27 = and i64 %25, %26
  %28 = shl i64 %27, 16
  store i64 %28, i64* %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @PCI_MEMORY_RANGE_MASK, align 8
  %32 = and i64 %30, %31
  %33 = shl i64 %32, 16
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ule i64 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @PCI_MEMORY_RANGE_TYPE_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @IORESOURCE_MEM, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.resource*, %struct.resource** %9, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %8, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 1048575
  %49 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %8, i32 0, i32 1
  store i64 %48, i64* %49, align 8
  %50 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.resource*, %struct.resource** %9, align 8
  %54 = call i32 @pcibios_bus_to_resource(i32 %52, %struct.resource* %53, %struct.pci_bus_region* %8)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %56 = load %struct.resource*, %struct.resource** %9, align 8
  %57 = call i32 @pci_info(%struct.pci_dev* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.resource* %56)
  br label %58

58:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pcibios_bus_to_resource(i32, %struct.resource*, %struct.pci_bus_region*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
