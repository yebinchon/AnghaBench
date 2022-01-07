; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_device_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { i32, i32, %struct.TYPE_2__, %struct.serdev_controller* }
%struct.TYPE_2__ = type { i32*, i32*, i32* }
%struct.serdev_controller = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@serdev_bus_type = common dso_local global i32 0, align 4
@serdev_device_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.serdev_device* @serdev_device_alloc(%struct.serdev_controller* %0) #0 {
  %2 = alloca %struct.serdev_device*, align 8
  %3 = alloca %struct.serdev_controller*, align 8
  %4 = alloca %struct.serdev_device*, align 8
  store %struct.serdev_controller* %0, %struct.serdev_controller** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.serdev_device* @kzalloc(i32 40, i32 %5)
  store %struct.serdev_device* %6, %struct.serdev_device** %4, align 8
  %7 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %8 = icmp ne %struct.serdev_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.serdev_device* null, %struct.serdev_device** %2, align 8
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.serdev_controller*, %struct.serdev_controller** %3, align 8
  %12 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %13 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %12, i32 0, i32 3
  store %struct.serdev_controller* %11, %struct.serdev_controller** %13, align 8
  %14 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %15 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %14, i32 0, i32 2
  %16 = call i32 @device_initialize(%struct.TYPE_2__* %15)
  %17 = load %struct.serdev_controller*, %struct.serdev_controller** %3, align 8
  %18 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %17, i32 0, i32 0
  %19 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %20 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32* %18, i32** %21, align 8
  %22 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %23 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32* @serdev_bus_type, i32** %24, align 8
  %25 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %26 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* @serdev_device_type, i32** %27, align 8
  %28 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %29 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %28, i32 0, i32 1
  %30 = call i32 @init_completion(i32* %29)
  %31 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %32 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %31, i32 0, i32 0
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  store %struct.serdev_device* %34, %struct.serdev_device** %2, align 8
  br label %35

35:                                               ; preds = %10, %9
  %36 = load %struct.serdev_device*, %struct.serdev_device** %2, align 8
  ret %struct.serdev_device* %36
}

declare dso_local %struct.serdev_device* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_2__*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
