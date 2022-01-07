; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c___nd_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c___nd_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device*, i32* }
%struct.TYPE_2__ = type { i64 }

@nvdimm_bus_type = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i64 0, align 8
@nd_async_device_register = common dso_local global i32 0, align 4
@nd_async_domain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__nd_device_register(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %3 = load %struct.device*, %struct.device** %2, align 8
  %4 = icmp ne %struct.device* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %47

6:                                                ; preds = %1
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call i64 @is_nd_region(%struct.device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = call %struct.TYPE_2__* @to_nd_region(%struct.device* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @set_dev_node(%struct.device* %11, i64 %15)
  br label %17

17:                                               ; preds = %10, %6
  %18 = load %struct.device*, %struct.device** %2, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 1
  store i32* @nvdimm_bus_type, i32** %19, align 8
  %20 = load %struct.device*, %struct.device** %2, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load %struct.device*, %struct.device** %21, align 8
  %23 = icmp ne %struct.device* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %17
  %25 = load %struct.device*, %struct.device** %2, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load %struct.device*, %struct.device** %26, align 8
  %28 = call i32 @get_device(%struct.device* %27)
  %29 = load %struct.device*, %struct.device** %2, align 8
  %30 = call i64 @dev_to_node(%struct.device* %29)
  %31 = load i64, i64* @NUMA_NO_NODE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load %struct.device*, %struct.device** %2, align 8
  %35 = load %struct.device*, %struct.device** %2, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 0
  %37 = load %struct.device*, %struct.device** %36, align 8
  %38 = call i64 @dev_to_node(%struct.device* %37)
  %39 = call i32 @set_dev_node(%struct.device* %34, i64 %38)
  br label %40

40:                                               ; preds = %33, %24
  br label %41

41:                                               ; preds = %40, %17
  %42 = load %struct.device*, %struct.device** %2, align 8
  %43 = call i32 @get_device(%struct.device* %42)
  %44 = load i32, i32* @nd_async_device_register, align 4
  %45 = load %struct.device*, %struct.device** %2, align 8
  %46 = call i32 @async_schedule_dev_domain(i32 %44, %struct.device* %45, i32* @nd_async_domain)
  br label %47

47:                                               ; preds = %41, %5
  ret void
}

declare dso_local i64 @is_nd_region(%struct.device*) #1

declare dso_local i32 @set_dev_node(%struct.device*, i64) #1

declare dso_local %struct.TYPE_2__* @to_nd_region(%struct.device*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i64 @dev_to_node(%struct.device*) #1

declare dso_local i32 @async_schedule_dev_domain(i32, %struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
