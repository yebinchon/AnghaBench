; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_core.c_pcie_port_remove_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_core.c_pcie_port_remove_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pcie_device = type { i32 }
%struct.pcie_port_service_driver = type { i32 (%struct.pcie_device.0*)* }
%struct.pcie_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @pcie_port_remove_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_port_remove_service(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pcie_device*, align 8
  %5 = alloca %struct.pcie_port_service_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = icmp ne %struct.device* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %38

14:                                               ; preds = %8
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call %struct.pcie_device* @to_pcie_device(%struct.device* %15)
  store %struct.pcie_device* %16, %struct.pcie_device** %4, align 8
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.pcie_port_service_driver* @to_service_driver(i32 %19)
  store %struct.pcie_port_service_driver* %20, %struct.pcie_port_service_driver** %5, align 8
  %21 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %5, align 8
  %22 = icmp ne %struct.pcie_port_service_driver* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %14
  %24 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %5, align 8
  %25 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %24, i32 0, i32 0
  %26 = load i32 (%struct.pcie_device.0*)*, i32 (%struct.pcie_device.0*)** %25, align 8
  %27 = icmp ne i32 (%struct.pcie_device.0*)* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %5, align 8
  %30 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %29, i32 0, i32 0
  %31 = load i32 (%struct.pcie_device.0*)*, i32 (%struct.pcie_device.0*)** %30, align 8
  %32 = load %struct.pcie_device*, %struct.pcie_device** %4, align 8
  %33 = bitcast %struct.pcie_device* %32 to %struct.pcie_device.0*
  %34 = call i32 %31(%struct.pcie_device.0* %33)
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = call i32 @put_device(%struct.device* %35)
  br label %37

37:                                               ; preds = %28, %23, %14
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.pcie_device* @to_pcie_device(%struct.device*) #1

declare dso_local %struct.pcie_port_service_driver* @to_service_driver(i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
