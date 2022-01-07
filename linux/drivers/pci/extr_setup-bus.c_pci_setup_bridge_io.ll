; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_setup-bus.c_pci_setup_bridge_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_setup-bus.c_pci_setup_bridge_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.resource*, i64 }
%struct.resource = type { i32 }
%struct.pci_bus_region = type { i32, i32 }

@PCI_IO_RANGE_MASK = common dso_local global i64 0, align 8
@PCI_IO_1K_RANGE_MASK = common dso_local global i64 0, align 8
@PCI_BRIDGE_RESOURCES = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@PCI_IO_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"  bridge window %pR\0A\00", align 1
@PCI_IO_BASE_UPPER16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_setup_bridge_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_setup_bridge_io(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.pci_bus_region, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %10 = load i64, i64* @PCI_IO_RANGE_MASK, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @PCI_IO_1K_RANGE_MASK, align 8
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %15, %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = load %struct.resource*, %struct.resource** %19, align 8
  %21 = load i32, i32* @PCI_BRIDGE_RESOURCES, align 4
  %22 = add nsw i32 %21, 0
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %20, i64 %23
  store %struct.resource* %24, %struct.resource** %3, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.resource*, %struct.resource** %3, align 8
  %29 = call i32 @pcibios_resource_to_bus(i32 %27, %struct.pci_bus_region* %4, %struct.resource* %28)
  %30 = load %struct.resource*, %struct.resource** %3, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IORESOURCE_IO, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %17
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = load i32, i32* @PCI_IO_BASE, align 4
  %39 = call i32 @pci_read_config_word(%struct.pci_dev* %37, i32 %38, i32* %8)
  %40 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 8
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %5, align 8
  %45 = and i64 %43, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  %47 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %4, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 8
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %5, align 8
  %52 = and i64 %50, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 %54, 8
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %8, align 4
  %58 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %4, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, -65536
  %61 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %4, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 16
  %64 = or i32 %60, %63
  store i32 %64, i32* %9, align 4
  %65 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %66 = load %struct.resource*, %struct.resource** %3, align 8
  %67 = call i32 @pci_info(%struct.pci_dev* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.resource* %66)
  br label %69

68:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  store i32 240, i32* %8, align 4
  br label %69

69:                                               ; preds = %68, %36
  %70 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %71 = load i32, i32* @PCI_IO_BASE_UPPER16, align 4
  %72 = call i32 @pci_write_config_dword(%struct.pci_dev* %70, i32 %71, i32 65535)
  %73 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %74 = load i32, i32* @PCI_IO_BASE, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @pci_write_config_word(%struct.pci_dev* %73, i32 %74, i32 %75)
  %77 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %78 = load i32, i32* @PCI_IO_BASE_UPPER16, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @pci_write_config_dword(%struct.pci_dev* %77, i32 %78, i32 %79)
  ret void
}

declare dso_local i32 @pcibios_resource_to_bus(i32, %struct.pci_bus_region*, %struct.resource*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, %struct.resource*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
