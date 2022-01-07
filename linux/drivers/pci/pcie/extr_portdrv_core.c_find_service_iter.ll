; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_core.c_find_service_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_core.c_find_service_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64, i32* }
%struct.pcie_port_service_driver = type { i64 }
%struct.portdrv_service_data = type { i64, %struct.device*, %struct.pcie_port_service_driver* }

@pcie_port_bus_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @find_service_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_service_iter(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pcie_port_service_driver*, align 8
  %7 = alloca %struct.portdrv_service_data*, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.portdrv_service_data*
  store %struct.portdrv_service_data* %10, %struct.portdrv_service_data** %7, align 8
  %11 = load %struct.portdrv_service_data*, %struct.portdrv_service_data** %7, align 8
  %12 = getelementptr inbounds %struct.portdrv_service_data, %struct.portdrv_service_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, @pcie_port_bus_type
  br i1 %17, label %18, label %41

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.pcie_port_service_driver* @to_service_driver(i64 %26)
  store %struct.pcie_port_service_driver* %27, %struct.pcie_port_service_driver** %6, align 8
  %28 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %6, align 8
  %29 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %23
  %34 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %6, align 8
  %35 = load %struct.portdrv_service_data*, %struct.portdrv_service_data** %7, align 8
  %36 = getelementptr inbounds %struct.portdrv_service_data, %struct.portdrv_service_data* %35, i32 0, i32 2
  store %struct.pcie_port_service_driver* %34, %struct.pcie_port_service_driver** %36, align 8
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load %struct.portdrv_service_data*, %struct.portdrv_service_data** %7, align 8
  %39 = getelementptr inbounds %struct.portdrv_service_data, %struct.portdrv_service_data* %38, i32 0, i32 1
  store %struct.device* %37, %struct.device** %39, align 8
  store i32 1, i32* %3, align 4
  br label %42

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40, %18, %2
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %33
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.pcie_port_service_driver* @to_service_driver(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
