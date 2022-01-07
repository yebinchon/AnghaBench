; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_read_bridge_mmio_pref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_read_bridge_mmio_pref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.resource**, %struct.pci_dev* }
%struct.resource = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_bus_region = type { i32, i32 }

@PCI_PREF_MEMORY_BASE = common dso_local global i32 0, align 4
@PCI_PREF_MEMORY_LIMIT = common dso_local global i32 0, align 4
@PCI_PREF_RANGE_MASK = common dso_local global i32 0, align 4
@PCI_PREF_RANGE_TYPE_MASK = common dso_local global i32 0, align 4
@PCI_PREF_RANGE_TYPE_64 = common dso_local global i32 0, align 4
@PCI_PREF_BASE_UPPER32 = common dso_local global i32 0, align 4
@PCI_PREF_LIMIT_UPPER32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"can't handle bridge window above 4GB (bus address %#010llx)\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_PREFETCH = common dso_local global i32 0, align 4
@IORESOURCE_MEM_64 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"  bridge window %pR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bus*)* @pci_read_bridge_mmio_pref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_read_bridge_mmio_pref(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_bus_region, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %14 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %15 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %14, i32 0, i32 1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %3, align 8
  %17 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %18 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %17, i32 0, i32 0
  %19 = load %struct.resource**, %struct.resource*** %18, align 8
  %20 = getelementptr inbounds %struct.resource*, %struct.resource** %19, i64 2
  %21 = load %struct.resource*, %struct.resource** %20, align 8
  store %struct.resource* %21, %struct.resource** %11, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = load i32, i32* @PCI_PREF_MEMORY_BASE, align 4
  %24 = call i32 @pci_read_config_word(%struct.pci_dev* %22, i32 %23, i32* %4)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = load i32, i32* @PCI_PREF_MEMORY_LIMIT, align 4
  %27 = call i32 @pci_read_config_word(%struct.pci_dev* %25, i32 %26, i32* %5)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PCI_PREF_RANGE_MASK, align 4
  %30 = and i32 %28, %29
  %31 = shl i32 %30, 16
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @PCI_PREF_RANGE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = shl i32 %34, 16
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @PCI_PREF_RANGE_TYPE_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @PCI_PREF_RANGE_TYPE_64, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %1
  %42 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %43 = load i32, i32* @PCI_PREF_BASE_UPPER32, align 4
  %44 = call i32 @pci_read_config_dword(%struct.pci_dev* %42, i32 %43, i64* %12)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = load i32, i32* @PCI_PREF_LIMIT_UPPER32, align 4
  %47 = call i32 @pci_read_config_dword(%struct.pci_dev* %45, i32 %46, i64* %13)
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %13, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %41
  %52 = load i64, i64* %12, align 8
  %53 = trunc i64 %52 to i32
  %54 = shl i32 %53, 32
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i64, i64* %13, align 8
  %58 = trunc i64 %57 to i32
  %59 = shl i32 %58, 32
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %51, %41
  br label %63

63:                                               ; preds = %62, %1
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = call i32 @pci_err(%struct.pci_dev* %70, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %72)
  br label %114

74:                                               ; preds = %63
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %114

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @PCI_PREF_RANGE_TYPE_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @IORESOURCE_MEM, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @IORESOURCE_PREFETCH, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.resource*, %struct.resource** %11, align 8
  %87 = getelementptr inbounds %struct.resource, %struct.resource* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.resource*, %struct.resource** %11, align 8
  %89 = getelementptr inbounds %struct.resource, %struct.resource* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PCI_PREF_RANGE_TYPE_64, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %78
  %95 = load i32, i32* @IORESOURCE_MEM_64, align 4
  %96 = load %struct.resource*, %struct.resource** %11, align 8
  %97 = getelementptr inbounds %struct.resource, %struct.resource* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %78
  %101 = load i32, i32* %8, align 4
  %102 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %10, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1048575
  %105 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %10, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  %106 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %107 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.resource*, %struct.resource** %11, align 8
  %110 = call i32 @pcibios_bus_to_resource(i32 %108, %struct.resource* %109, %struct.pci_bus_region* %10)
  %111 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %112 = load %struct.resource*, %struct.resource** %11, align 8
  %113 = call i32 @pci_info(%struct.pci_dev* %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %112)
  br label %114

114:                                              ; preds = %69, %100, %74
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, i64) #1

declare dso_local i32 @pcibios_bus_to_resource(i32, %struct.resource*, %struct.pci_bus_region*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
