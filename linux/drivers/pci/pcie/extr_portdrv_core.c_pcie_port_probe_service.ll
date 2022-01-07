; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_core.c_pcie_port_probe_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_core.c_pcie_port_probe_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pcie_device = type { i32 }
%struct.pcie_port_service_driver = type { i32 (%struct.pcie_device.0*)* }
%struct.pcie_device.0 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @pcie_port_probe_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_port_probe_service(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pcie_device*, align 8
  %5 = alloca %struct.pcie_port_service_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = icmp ne %struct.device* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %9
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.pcie_port_service_driver* @to_service_driver(i32 %20)
  store %struct.pcie_port_service_driver* %21, %struct.pcie_port_service_driver** %5, align 8
  %22 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %5, align 8
  %23 = icmp ne %struct.pcie_port_service_driver* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %5, align 8
  %26 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %25, i32 0, i32 0
  %27 = load i32 (%struct.pcie_device.0*)*, i32 (%struct.pcie_device.0*)** %26, align 8
  %28 = icmp ne i32 (%struct.pcie_device.0*)* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %17
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %48

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = call %struct.pcie_device* @to_pcie_device(%struct.device* %33)
  store %struct.pcie_device* %34, %struct.pcie_device** %4, align 8
  %35 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %5, align 8
  %36 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %35, i32 0, i32 0
  %37 = load i32 (%struct.pcie_device.0*)*, i32 (%struct.pcie_device.0*)** %36, align 8
  %38 = load %struct.pcie_device*, %struct.pcie_device** %4, align 8
  %39 = bitcast %struct.pcie_device* %38 to %struct.pcie_device.0*
  %40 = call i32 %37(%struct.pcie_device.0* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %32
  %46 = load %struct.device*, %struct.device** %3, align 8
  %47 = call i32 @get_device(%struct.device* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %43, %29, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.pcie_port_service_driver* @to_service_driver(i32) #1

declare dso_local %struct.pcie_device* @to_pcie_device(%struct.device*) #1

declare dso_local i32 @get_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
