; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_rom.c_pci_enable_rom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_rom.c_pci_enable_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, %struct.resource* }
%struct.resource = type { i32 }
%struct.pci_bus_region = type { i32 }

@PCI_ROM_RESOURCE = common dso_local global i64 0, align 8
@IORESOURCE_ROM_SHADOW = common dso_local global i32 0, align 4
@PCI_ROM_ADDRESS_MASK = common dso_local global i32 0, align 4
@PCI_ROM_ADDRESS_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_enable_rom(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.pci_bus_region, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 2
  %9 = load %struct.resource*, %struct.resource** %8, align 8
  %10 = load i64, i64* @PCI_ROM_RESOURCE, align 8
  %11 = getelementptr inbounds %struct.resource, %struct.resource* %9, i64 %10
  store %struct.resource* %11, %struct.resource** %4, align 8
  %12 = load %struct.resource*, %struct.resource** %4, align 8
  %13 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %52

17:                                               ; preds = %1
  %18 = load %struct.resource*, %struct.resource** %4, align 8
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IORESOURCE_ROM_SHADOW, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %52

25:                                               ; preds = %17
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.resource*, %struct.resource** %4, align 8
  %30 = call i32 @pcibios_resource_to_bus(i32 %28, %struct.pci_bus_region* %5, %struct.resource* %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pci_read_config_dword(%struct.pci_dev* %31, i32 %34, i32* %6)
  %36 = load i32, i32* @PCI_ROM_ADDRESS_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PCI_ROM_ADDRESS_ENABLE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @pci_write_config_dword(%struct.pci_dev* %46, i32 %49, i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %25, %24, %16
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @pcibios_resource_to_bus(i32, %struct.pci_bus_region*, %struct.resource*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
