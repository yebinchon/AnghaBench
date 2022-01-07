; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_setup-bus.c_pci_bridge_release_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_setup-bus.c_pci_bridge_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.pci_dev* }
%struct.pci_dev = type { %struct.resource* }
%struct.resource = type { i64, i64, i64, i32 }

@PCI_BRIDGE_RESOURCES = common dso_local global i64 0, align 8
@IORESOURCE_IO = common dso_local global i64 0, align 8
@IORESOURCE_PREFETCH = common dso_local global i64 0, align 8
@IORESOURCE_MEM_64 = common dso_local global i64 0, align 8
@PCI_RES_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"resource %d %pR released\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bus*, i64)* @pci_bridge_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_bridge_release_resources(%struct.pci_bus* %0, i64 %1) #0 {
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %11 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %9, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load %struct.resource*, %struct.resource** %14, align 8
  %16 = load i64, i64* @PCI_BRIDGE_RESOURCES, align 8
  %17 = getelementptr inbounds %struct.resource, %struct.resource* %15, i64 %16
  store %struct.resource* %17, %struct.resource** %8, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @IORESOURCE_IO, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %64

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @IORESOURCE_PREFETCH, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 1, i32* %9, align 4
  br label %63

29:                                               ; preds = %23
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @IORESOURCE_MEM_64, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.resource*, %struct.resource** %8, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i64 2
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IORESOURCE_MEM_64, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 2, i32* %9, align 4
  br label %62

43:                                               ; preds = %34, %29
  %44 = load %struct.resource*, %struct.resource** %8, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i64 2
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IORESOURCE_MEM_64, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %43
  %52 = load %struct.resource*, %struct.resource** %8, align 8
  %53 = getelementptr inbounds %struct.resource, %struct.resource* %52, i64 2
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IORESOURCE_PREFETCH, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 2, i32* %9, align 4
  br label %61

60:                                               ; preds = %51, %43
  store i32 1, i32* %9, align 4
  br label %61

61:                                               ; preds = %60, %59
  br label %62

62:                                               ; preds = %61, %42
  br label %63

63:                                               ; preds = %62, %28
  br label %64

64:                                               ; preds = %63, %22
  %65 = load %struct.resource*, %struct.resource** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %65, i64 %67
  store %struct.resource* %68, %struct.resource** %6, align 8
  %69 = load %struct.resource*, %struct.resource** %6, align 8
  %70 = getelementptr inbounds %struct.resource, %struct.resource* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %64
  br label %119

74:                                               ; preds = %64
  %75 = load %struct.resource*, %struct.resource** %6, align 8
  %76 = call i32 @release_child_resources(%struct.resource* %75)
  %77 = load %struct.resource*, %struct.resource** %6, align 8
  %78 = call i32 @release_resource(%struct.resource* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %119, label %80

80:                                               ; preds = %74
  %81 = load %struct.resource*, %struct.resource** %6, align 8
  %82 = getelementptr inbounds %struct.resource, %struct.resource* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @PCI_RES_TYPE_MASK, align 4
  %85 = zext i32 %84 to i64
  %86 = and i64 %83, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %7, align 4
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %4, align 8
  %89 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %90 = load i64, i64* @PCI_BRIDGE_RESOURCES, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %90, %92
  %94 = load %struct.resource*, %struct.resource** %6, align 8
  %95 = call i32 @pci_info(%struct.pci_dev* %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %93, %struct.resource* %94)
  %96 = load %struct.resource*, %struct.resource** %6, align 8
  %97 = call i64 @resource_size(%struct.resource* %96)
  %98 = sub nsw i64 %97, 1
  %99 = load %struct.resource*, %struct.resource** %6, align 8
  %100 = getelementptr inbounds %struct.resource, %struct.resource* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  %101 = load %struct.resource*, %struct.resource** %6, align 8
  %102 = getelementptr inbounds %struct.resource, %struct.resource* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load %struct.resource*, %struct.resource** %6, align 8
  %104 = getelementptr inbounds %struct.resource, %struct.resource* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = load i64, i64* %4, align 8
  %106 = load i64, i64* @IORESOURCE_PREFETCH, align 8
  %107 = and i64 %105, %106
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %80
  %110 = load i64, i64* @IORESOURCE_PREFETCH, align 8
  store i64 %110, i64* %4, align 8
  br label %111

111:                                              ; preds = %109, %80
  %112 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %113 = load i64, i64* %4, align 8
  %114 = call i32 @__pci_setup_bridge(%struct.pci_bus* %112, i64 %113)
  %115 = load i32, i32* %7, align 4
  %116 = zext i32 %115 to i64
  %117 = load %struct.resource*, %struct.resource** %6, align 8
  %118 = getelementptr inbounds %struct.resource, %struct.resource* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %73, %111, %74
  ret void
}

declare dso_local i32 @release_child_resources(%struct.resource*) #1

declare dso_local i32 @release_resource(%struct.resource*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i64, %struct.resource*) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @__pci_setup_bridge(%struct.pci_bus*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
