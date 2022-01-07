; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_setup-bus.c_pci_setup_bridge_mmio_pref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_setup-bus.c_pci_setup_bridge_mmio_pref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.resource* }
%struct.resource = type { i32 }
%struct.pci_bus_region = type { i32, i32 }

@PCI_PREF_LIMIT_UPPER32 = common dso_local global i32 0, align 4
@PCI_BRIDGE_RESOURCES = common dso_local global i32 0, align 4
@IORESOURCE_PREFETCH = common dso_local global i32 0, align 4
@IORESOURCE_MEM_64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"  bridge window %pR\0A\00", align 1
@PCI_PREF_MEMORY_BASE = common dso_local global i32 0, align 4
@PCI_PREF_BASE_UPPER32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_setup_bridge_mmio_pref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_setup_bridge_mmio_pref(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.pci_bus_region, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = load i32, i32* @PCI_PREF_LIMIT_UPPER32, align 4
  %10 = call i32 @pci_write_config_dword(%struct.pci_dev* %8, i32 %9, i32 0)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 1
  %13 = load %struct.resource*, %struct.resource** %12, align 8
  %14 = load i32, i32* @PCI_BRIDGE_RESOURCES, align 4
  %15 = add nsw i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.resource, %struct.resource* %13, i64 %16
  store %struct.resource* %17, %struct.resource** %3, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.resource*, %struct.resource** %3, align 8
  %22 = call i32 @pcibios_resource_to_bus(i32 %20, %struct.pci_bus_region* %4, %struct.resource* %21)
  %23 = load %struct.resource*, %struct.resource** %3, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IORESOURCE_PREFETCH, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 65520
  store i32 %33, i32* %5, align 4
  %34 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %4, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, -1048576
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.resource*, %struct.resource** %3, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IORESOURCE_MEM_64, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @upper_32_bits(i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %4, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @upper_32_bits(i32 %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %45, %29
  %53 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %54 = load %struct.resource*, %struct.resource** %3, align 8
  %55 = call i32 @pci_info(%struct.pci_dev* %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.resource* %54)
  br label %57

56:                                               ; preds = %1
  store i32 65520, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %52
  %58 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %59 = load i32, i32* @PCI_PREF_MEMORY_BASE, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @pci_write_config_dword(%struct.pci_dev* %58, i32 %59, i32 %60)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %63 = load i32, i32* @PCI_PREF_BASE_UPPER32, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @pci_write_config_dword(%struct.pci_dev* %62, i32 %63, i32 %64)
  %66 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %67 = load i32, i32* @PCI_PREF_LIMIT_UPPER32, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @pci_write_config_dword(%struct.pci_dev* %66, i32 %67, i32 %68)
  ret void
}

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pcibios_resource_to_bus(i32, %struct.pci_bus_region*, %struct.resource*) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
