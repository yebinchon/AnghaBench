; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_setup-bus.c_pci_setup_bridge_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_setup-bus.c_pci_setup_bridge_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.resource* }
%struct.resource = type { i32 }
%struct.pci_bus_region = type { i32, i32 }

@PCI_BRIDGE_RESOURCES = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"  bridge window %pR\0A\00", align 1
@PCI_MEMORY_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_setup_bridge_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_setup_bridge_mmio(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.pci_bus_region, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 1
  %8 = load %struct.resource*, %struct.resource** %7, align 8
  %9 = load i32, i32* @PCI_BRIDGE_RESOURCES, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.resource, %struct.resource* %8, i64 %11
  store %struct.resource* %12, %struct.resource** %3, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.resource*, %struct.resource** %3, align 8
  %17 = call i32 @pcibios_resource_to_bus(i32 %15, %struct.pci_bus_region* %4, %struct.resource* %16)
  %18 = load %struct.resource*, %struct.resource** %3, align 8
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 16
  %28 = and i32 %27, 65520
  store i32 %28, i32* %5, align 4
  %29 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %4, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, -1048576
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = load %struct.resource*, %struct.resource** %3, align 8
  %36 = call i32 @pci_info(%struct.pci_dev* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.resource* %35)
  br label %38

37:                                               ; preds = %1
  store i32 65520, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %24
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = load i32, i32* @PCI_MEMORY_BASE, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @pci_write_config_dword(%struct.pci_dev* %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @pcibios_resource_to_bus(i32, %struct.pci_bus_region*, %struct.resource*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, %struct.resource*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
