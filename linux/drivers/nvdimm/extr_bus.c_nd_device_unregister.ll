; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nd_device_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nd_device_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@nd_async_device_unregister = common dso_local global i32 0, align 4
@nd_async_domain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd_device_unregister(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %32 [
    i32 129, label %7
    i32 128, label %18
  ]

7:                                                ; preds = %2
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 @kill_device(%struct.device* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  br label %32

12:                                               ; preds = %7
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @get_device(%struct.device* %13)
  %15 = load i32, i32* @nd_async_device_unregister, align 4
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i32 @async_schedule_domain(i32 %15, %struct.device* %16, i32* @nd_async_domain)
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call i32 @nd_device_lock(%struct.device* %19)
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = call i32 @kill_device(%struct.device* %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call i32 @nd_device_unlock(%struct.device* %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %32

28:                                               ; preds = %18
  %29 = call i32 (...) @nd_synchronize()
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = call i32 @device_unregister(%struct.device* %30)
  br label %32

32:                                               ; preds = %11, %27, %2, %28, %12
  ret void
}

declare dso_local i32 @kill_device(%struct.device*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @async_schedule_domain(i32, %struct.device*, i32*) #1

declare dso_local i32 @nd_device_lock(%struct.device*) #1

declare dso_local i32 @nd_device_unlock(%struct.device*) #1

declare dso_local i32 @nd_synchronize(...) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
