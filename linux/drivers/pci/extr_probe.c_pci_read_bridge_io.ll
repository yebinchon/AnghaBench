; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_read_bridge_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_read_bridge_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.resource**, %struct.pci_dev* }
%struct.resource = type { i64 }
%struct.pci_dev = type { i32, i64 }
%struct.pci_bus_region = type { i64, i64 }

@PCI_IO_RANGE_MASK = common dso_local global i64 0, align 8
@PCI_IO_1K_RANGE_MASK = common dso_local global i64 0, align 8
@PCI_IO_BASE = common dso_local global i32 0, align 4
@PCI_IO_LIMIT = common dso_local global i32 0, align 4
@PCI_IO_RANGE_TYPE_MASK = common dso_local global i64 0, align 8
@PCI_IO_RANGE_TYPE_32 = common dso_local global i64 0, align 8
@PCI_IO_BASE_UPPER16 = common dso_local global i32 0, align 4
@PCI_IO_LIMIT_UPPER16 = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"  bridge window %pR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bus*)* @pci_read_bridge_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_read_bridge_io(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pci_bus_region, align 8
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %14 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %15 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %14, i32 0, i32 1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %3, align 8
  %17 = load i64, i64* @PCI_IO_RANGE_MASK, align 8
  store i64 %17, i64* %6, align 8
  store i64 4096, i64* %7, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i64, i64* @PCI_IO_1K_RANGE_MASK, align 8
  store i64 %23, i64* %6, align 8
  store i64 1024, i64* %7, align 8
  br label %24

24:                                               ; preds = %22, %1
  %25 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %26 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %25, i32 0, i32 0
  %27 = load %struct.resource**, %struct.resource*** %26, align 8
  %28 = getelementptr inbounds %struct.resource*, %struct.resource** %27, i64 0
  %29 = load %struct.resource*, %struct.resource** %28, align 8
  store %struct.resource* %29, %struct.resource** %11, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = load i32, i32* @PCI_IO_BASE, align 4
  %32 = call i32 @pci_read_config_byte(%struct.pci_dev* %30, i32 %31, i64* %4)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = load i32, i32* @PCI_IO_LIMIT, align 4
  %35 = call i32 @pci_read_config_byte(%struct.pci_dev* %33, i32 %34, i64* %5)
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %6, align 8
  %38 = and i64 %36, %37
  %39 = shl i64 %38, 8
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = and i64 %40, %41
  %43 = shl i64 %42, 8
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @PCI_IO_RANGE_TYPE_MASK, align 8
  %46 = and i64 %44, %45
  %47 = load i64, i64* @PCI_IO_RANGE_TYPE_32, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %24
  %50 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %51 = load i32, i32* @PCI_IO_BASE_UPPER16, align 4
  %52 = call i32 @pci_read_config_word(%struct.pci_dev* %50, i32 %51, i64* %12)
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = load i32, i32* @PCI_IO_LIMIT_UPPER16, align 4
  %55 = call i32 @pci_read_config_word(%struct.pci_dev* %53, i32 %54, i64* %13)
  %56 = load i64, i64* %12, align 8
  %57 = shl i64 %56, 16
  %58 = load i64, i64* %8, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %13, align 8
  %61 = shl i64 %60, 16
  %62 = load i64, i64* %9, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %49, %24
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp ule i64 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %64
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* @PCI_IO_RANGE_TYPE_MASK, align 8
  %71 = and i64 %69, %70
  %72 = load i64, i64* @IORESOURCE_IO, align 8
  %73 = or i64 %71, %72
  %74 = load %struct.resource*, %struct.resource** %11, align 8
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %10, i32 0, i32 0
  store i64 %76, i64* %77, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %7, align 8
  %80 = add i64 %78, %79
  %81 = sub i64 %80, 1
  %82 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %10, i32 0, i32 1
  store i64 %81, i64* %82, align 8
  %83 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.resource*, %struct.resource** %11, align 8
  %87 = call i32 @pcibios_bus_to_resource(i32 %85, %struct.resource* %86, %struct.pci_bus_region* %10)
  %88 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %89 = load %struct.resource*, %struct.resource** %11, align 8
  %90 = call i32 @pci_info(%struct.pci_dev* %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.resource* %89)
  br label %91

91:                                               ; preds = %68, %64
  ret void
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pcibios_bus_to_resource(i32, %struct.resource*, %struct.pci_bus_region*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
