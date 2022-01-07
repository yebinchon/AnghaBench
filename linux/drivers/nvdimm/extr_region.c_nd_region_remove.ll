; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region.c_nd_region_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region.c_nd_region_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_region = type { i32*, i32*, i32*, i32*, i32* }

@child_unregister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @nd_region_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_region_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.nd_region*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.nd_region* @to_nd_region(%struct.device* %4)
  store %struct.nd_region* %5, %struct.nd_region** %3, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = load i32, i32* @child_unregister, align 4
  %8 = call i32 @device_for_each_child(%struct.device* %6, i32* null, i32 %7)
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call i32 @nvdimm_bus_lock(%struct.device* %9)
  %11 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %12 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %11, i32 0, i32 4
  store i32* null, i32** %12, align 8
  %13 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %14 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %13, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %16 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %18 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.device*, %struct.device** %2, align 8
  %20 = call i32 @dev_set_drvdata(%struct.device* %19, i32* null)
  %21 = load %struct.device*, %struct.device** %2, align 8
  %22 = call i32 @nvdimm_bus_unlock(%struct.device* %21)
  %23 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %24 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @sysfs_put(i32* %25)
  %27 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %28 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  ret i32 0
}

declare dso_local %struct.nd_region* @to_nd_region(%struct.device*) #1

declare dso_local i32 @device_for_each_child(%struct.device*, i32*, i32) #1

declare dso_local i32 @nvdimm_bus_lock(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32*) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.device*) #1

declare dso_local i32 @sysfs_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
