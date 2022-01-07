; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_setup-bus.c_pci_setup_cardbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_setup-bus.c_pci_setup_cardbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.resource**, %struct.resource, %struct.pci_dev* }
%struct.resource = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_bus_region = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"CardBus bridge to %pR\0A\00", align 1
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"  bridge window %pR\0A\00", align 1
@PCI_CB_IO_BASE_0 = common dso_local global i32 0, align 4
@PCI_CB_IO_LIMIT_0 = common dso_local global i32 0, align 4
@PCI_CB_IO_BASE_1 = common dso_local global i32 0, align 4
@PCI_CB_IO_LIMIT_1 = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PCI_CB_MEMORY_BASE_0 = common dso_local global i32 0, align 4
@PCI_CB_MEMORY_LIMIT_0 = common dso_local global i32 0, align 4
@PCI_CB_MEMORY_BASE_1 = common dso_local global i32 0, align 4
@PCI_CB_MEMORY_LIMIT_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_setup_cardbus(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.pci_bus_region, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %6 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %7 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %6, i32 0, i32 2
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %11 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %10, i32 0, i32 1
  %12 = call i32 @pci_info(%struct.pci_dev* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.resource* %11)
  %13 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 0
  %15 = load %struct.resource**, %struct.resource*** %14, align 8
  %16 = getelementptr inbounds %struct.resource*, %struct.resource** %15, i64 0
  %17 = load %struct.resource*, %struct.resource** %16, align 8
  store %struct.resource* %17, %struct.resource** %4, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.resource*, %struct.resource** %4, align 8
  %22 = call i32 @pcibios_resource_to_bus(i32 %20, %struct.pci_bus_region* %5, %struct.resource* %21)
  %23 = load %struct.resource*, %struct.resource** %4, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IORESOURCE_IO, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %1
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = load %struct.resource*, %struct.resource** %4, align 8
  %32 = call i32 @pci_info(%struct.pci_dev* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = load i32, i32* @PCI_CB_IO_BASE_0, align 4
  %35 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pci_write_config_dword(%struct.pci_dev* %33, i32 %34, i32 %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = load i32, i32* @PCI_CB_IO_LIMIT_0, align 4
  %40 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pci_write_config_dword(%struct.pci_dev* %38, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %29, %1
  %44 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %45 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %44, i32 0, i32 0
  %46 = load %struct.resource**, %struct.resource*** %45, align 8
  %47 = getelementptr inbounds %struct.resource*, %struct.resource** %46, i64 1
  %48 = load %struct.resource*, %struct.resource** %47, align 8
  store %struct.resource* %48, %struct.resource** %4, align 8
  %49 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.resource*, %struct.resource** %4, align 8
  %53 = call i32 @pcibios_resource_to_bus(i32 %51, %struct.pci_bus_region* %5, %struct.resource* %52)
  %54 = load %struct.resource*, %struct.resource** %4, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IORESOURCE_IO, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %43
  %61 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %62 = load %struct.resource*, %struct.resource** %4, align 8
  %63 = call i32 @pci_info(%struct.pci_dev* %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %62)
  %64 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %65 = load i32, i32* @PCI_CB_IO_BASE_1, align 4
  %66 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pci_write_config_dword(%struct.pci_dev* %64, i32 %65, i32 %67)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %70 = load i32, i32* @PCI_CB_IO_LIMIT_1, align 4
  %71 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pci_write_config_dword(%struct.pci_dev* %69, i32 %70, i32 %72)
  br label %74

74:                                               ; preds = %60, %43
  %75 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %76 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %75, i32 0, i32 0
  %77 = load %struct.resource**, %struct.resource*** %76, align 8
  %78 = getelementptr inbounds %struct.resource*, %struct.resource** %77, i64 2
  %79 = load %struct.resource*, %struct.resource** %78, align 8
  store %struct.resource* %79, %struct.resource** %4, align 8
  %80 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.resource*, %struct.resource** %4, align 8
  %84 = call i32 @pcibios_resource_to_bus(i32 %82, %struct.pci_bus_region* %5, %struct.resource* %83)
  %85 = load %struct.resource*, %struct.resource** %4, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IORESOURCE_MEM, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %74
  %92 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %93 = load %struct.resource*, %struct.resource** %4, align 8
  %94 = call i32 @pci_info(%struct.pci_dev* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %93)
  %95 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %96 = load i32, i32* @PCI_CB_MEMORY_BASE_0, align 4
  %97 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pci_write_config_dword(%struct.pci_dev* %95, i32 %96, i32 %98)
  %100 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %101 = load i32, i32* @PCI_CB_MEMORY_LIMIT_0, align 4
  %102 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @pci_write_config_dword(%struct.pci_dev* %100, i32 %101, i32 %103)
  br label %105

105:                                              ; preds = %91, %74
  %106 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %107 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %106, i32 0, i32 0
  %108 = load %struct.resource**, %struct.resource*** %107, align 8
  %109 = getelementptr inbounds %struct.resource*, %struct.resource** %108, i64 3
  %110 = load %struct.resource*, %struct.resource** %109, align 8
  store %struct.resource* %110, %struct.resource** %4, align 8
  %111 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.resource*, %struct.resource** %4, align 8
  %115 = call i32 @pcibios_resource_to_bus(i32 %113, %struct.pci_bus_region* %5, %struct.resource* %114)
  %116 = load %struct.resource*, %struct.resource** %4, align 8
  %117 = getelementptr inbounds %struct.resource, %struct.resource* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @IORESOURCE_MEM, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %105
  %123 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %124 = load %struct.resource*, %struct.resource** %4, align 8
  %125 = call i32 @pci_info(%struct.pci_dev* %123, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %124)
  %126 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %127 = load i32, i32* @PCI_CB_MEMORY_BASE_1, align 4
  %128 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @pci_write_config_dword(%struct.pci_dev* %126, i32 %127, i32 %129)
  %131 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %132 = load i32, i32* @PCI_CB_MEMORY_LIMIT_1, align 4
  %133 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @pci_write_config_dword(%struct.pci_dev* %131, i32 %132, i32 %134)
  br label %136

136:                                              ; preds = %122, %105
  ret void
}

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, %struct.resource*) #1

declare dso_local i32 @pcibios_resource_to_bus(i32, %struct.pci_bus_region*, %struct.resource*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
