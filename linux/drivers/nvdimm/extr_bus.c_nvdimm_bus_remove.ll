; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_bus_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_bus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nd_device_driver = type { i32 (%struct.device.0*)* }
%struct.device.0 = type opaque
%struct.module = type { i32 }
%struct.nvdimm_bus = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s.remove(%s) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @nvdimm_bus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvdimm_bus_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.nd_device_driver*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.nvdimm_bus*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call %struct.nd_device_driver* @to_nd_device_driver(%struct.TYPE_2__* %9)
  store %struct.nd_device_driver* %10, %struct.nd_device_driver** %3, align 8
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call %struct.module* @to_bus_provider(%struct.device* %11)
  store %struct.module* %12, %struct.module** %4, align 8
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = call %struct.nvdimm_bus* @walk_to_nvdimm_bus(%struct.device* %13)
  store %struct.nvdimm_bus* %14, %struct.nvdimm_bus** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.nd_device_driver*, %struct.nd_device_driver** %3, align 8
  %16 = getelementptr inbounds %struct.nd_device_driver, %struct.nd_device_driver* %15, i32 0, i32 0
  %17 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %16, align 8
  %18 = icmp ne i32 (%struct.device.0*)* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %2, align 8
  %21 = call i32 @debug_nvdimm_lock(%struct.device* %20)
  %22 = load %struct.nd_device_driver*, %struct.nd_device_driver** %3, align 8
  %23 = getelementptr inbounds %struct.nd_device_driver, %struct.nd_device_driver* %22, i32 0, i32 0
  %24 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %23, align 8
  %25 = load %struct.device*, %struct.device** %2, align 8
  %26 = bitcast %struct.device* %25 to %struct.device.0*
  %27 = call i32 %24(%struct.device.0* %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.device*, %struct.device** %2, align 8
  %29 = call i32 @debug_nvdimm_unlock(%struct.device* %28)
  br label %30

30:                                               ; preds = %19, %1
  %31 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %5, align 8
  %32 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %31, i32 0, i32 0
  %33 = load %struct.device*, %struct.device** %2, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.device*, %struct.device** %2, align 8
  %39 = call i32 @dev_name(%struct.device* %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %39, i32 %40)
  %42 = load %struct.module*, %struct.module** %4, align 8
  %43 = call i32 @module_put(%struct.module* %42)
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local %struct.nd_device_driver* @to_nd_device_driver(%struct.TYPE_2__*) #1

declare dso_local %struct.module* @to_bus_provider(%struct.device*) #1

declare dso_local %struct.nvdimm_bus* @walk_to_nvdimm_bus(%struct.device*) #1

declare dso_local i32 @debug_nvdimm_lock(%struct.device*) #1

declare dso_local i32 @debug_nvdimm_unlock(%struct.device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
