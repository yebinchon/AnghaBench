; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-driver.c_pci_dma_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-driver.c_pci_dma_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.acpi_device = type { i32 }

@CONFIG_OF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @pci_dma_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_dma_configure(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call i32 @to_pci_dev(%struct.device* %6)
  %8 = call %struct.device* @pci_get_host_bridge_device(i32 %7)
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load i32, i32* @CONFIG_OF, align 4
  %10 = call i64 @IS_ENABLED(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.device*, %struct.device** %2, align 8
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @of_dma_configure(%struct.device* %25, i64 %30, i32 1)
  store i32 %31, i32* %4, align 4
  br label %46

32:                                               ; preds = %17, %12, %1
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = call i64 @has_acpi_companion(%struct.device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.acpi_device* @to_acpi_device_node(i32 %39)
  store %struct.acpi_device* %40, %struct.acpi_device** %5, align 8
  %41 = load %struct.device*, %struct.device** %2, align 8
  %42 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %43 = call i32 @acpi_get_dma_attr(%struct.acpi_device* %42)
  %44 = call i32 @acpi_dma_configure(%struct.device* %41, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %36, %32
  br label %46

46:                                               ; preds = %45, %24
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = call i32 @pci_put_host_bridge_device(%struct.device* %47)
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.device* @pci_get_host_bridge_device(i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @of_dma_configure(%struct.device*, i64, i32) #1

declare dso_local i64 @has_acpi_companion(%struct.device*) #1

declare dso_local %struct.acpi_device* @to_acpi_device_node(i32) #1

declare dso_local i32 @acpi_dma_configure(%struct.device*, i32) #1

declare dso_local i32 @acpi_get_dma_attr(%struct.acpi_device*) #1

declare dso_local i32 @pci_put_host_bridge_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
