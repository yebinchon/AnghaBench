; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_pci.c_resume_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_pci.c_resume_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64, i32* }
%struct.pcie_device = type { i32 }
%struct.pcie_port_service_driver = type { i32 (i32)* }

@pcie_port_bus_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @resume_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resume_iter(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pcie_device*, align 8
  %6 = alloca %struct.pcie_port_service_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, @pcie_port_bus_type
  br i1 %10, label %11, label %39

11:                                               ; preds = %2
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %11
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call %struct.pcie_port_service_driver* @to_service_driver(i64 %19)
  store %struct.pcie_port_service_driver* %20, %struct.pcie_port_service_driver** %6, align 8
  %21 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %6, align 8
  %22 = icmp ne %struct.pcie_port_service_driver* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %6, align 8
  %25 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %24, i32 0, i32 0
  %26 = load i32 (i32)*, i32 (i32)** %25, align 8
  %27 = icmp ne i32 (i32)* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = call %struct.pcie_device* @to_pcie_device(%struct.device* %29)
  store %struct.pcie_device* %30, %struct.pcie_device** %5, align 8
  %31 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %6, align 8
  %32 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %31, i32 0, i32 0
  %33 = load i32 (i32)*, i32 (i32)** %32, align 8
  %34 = load %struct.pcie_device*, %struct.pcie_device** %5, align 8
  %35 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 %33(i32 %36)
  br label %38

38:                                               ; preds = %28, %23, %16
  br label %39

39:                                               ; preds = %38, %11, %2
  ret i32 0
}

declare dso_local %struct.pcie_port_service_driver* @to_service_driver(i64) #1

declare dso_local %struct.pcie_device* @to_pcie_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
