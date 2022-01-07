; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_core.c_pcie_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_core.c_pcie_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pcie_device = type { i32, i32, %struct.device, %struct.pci_dev* }
%struct.device = type { i32*, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pcie_port_bus_type = common dso_local global i32 0, align 4
@release_pcie_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s:pcie%03x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32)* @pcie_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_device_init(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pcie_device*, align 8
  %10 = alloca %struct.device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.pcie_device* @kzalloc(i32 40, i32 %11)
  store %struct.pcie_device* %12, %struct.pcie_device** %9, align 8
  %13 = load %struct.pcie_device*, %struct.pcie_device** %9, align 8
  %14 = icmp ne %struct.pcie_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %60

18:                                               ; preds = %3
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = load %struct.pcie_device*, %struct.pcie_device** %9, align 8
  %21 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %20, i32 0, i32 3
  store %struct.pci_dev* %19, %struct.pci_dev** %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.pcie_device*, %struct.pcie_device** %9, align 8
  %24 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.pcie_device*, %struct.pcie_device** %9, align 8
  %27 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.pcie_device*, %struct.pcie_device** %9, align 8
  %29 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %28, i32 0, i32 2
  store %struct.device* %29, %struct.device** %10, align 8
  %30 = load %struct.device*, %struct.device** %10, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 2
  store i32* @pcie_port_bus_type, i32** %31, align 8
  %32 = load i32, i32* @release_pcie_device, align 4
  %33 = load %struct.device*, %struct.device** %10, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.device*, %struct.device** %10, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = call i32 @pci_name(%struct.pci_dev* %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = call i32 @pci_pcie_type(%struct.pci_dev* %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @get_descriptor_id(i32 %39, i32 %40)
  %42 = call i32 @dev_set_name(%struct.device* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load %struct.device*, %struct.device** %10, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 0
  store i32* %44, i32** %46, align 8
  %47 = load %struct.device*, %struct.device** %10, align 8
  %48 = call i32 @device_enable_async_suspend(%struct.device* %47)
  %49 = load %struct.device*, %struct.device** %10, align 8
  %50 = call i32 @device_register(%struct.device* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %18
  %54 = load %struct.device*, %struct.device** %10, align 8
  %55 = call i32 @put_device(%struct.device* %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %60

57:                                               ; preds = %18
  %58 = load %struct.device*, %struct.device** %10, align 8
  %59 = call i32 @pm_runtime_no_callbacks(%struct.device* %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %53, %15
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.pcie_device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @get_descriptor_id(i32, i32) #1

declare dso_local i32 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @device_enable_async_suspend(%struct.device*) #1

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @pm_runtime_no_callbacks(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
