; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_alloc_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, %struct.spi_controller*, %struct.spi_controller* }
%struct.TYPE_4__ = type { i32, i32*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.spi_controller = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@spi_bus_type = common dso_local global i32 0, align 4
@spidev_release = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.spi_device* @spi_alloc_device(%struct.spi_controller* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.spi_controller*, align 8
  %4 = alloca %struct.spi_device*, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %3, align 8
  %5 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %6 = call i32 @spi_controller_get(%struct.spi_controller* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.spi_device* null, %struct.spi_device** %2, align 8
  br label %47

9:                                                ; preds = %1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.spi_device* @kzalloc(i32 48, i32 %10)
  store %struct.spi_device* %11, %struct.spi_device** %4, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %13 = icmp ne %struct.spi_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %16 = call i32 @spi_controller_put(%struct.spi_controller* %15)
  store %struct.spi_device* null, %struct.spi_device** %2, align 8
  br label %47

17:                                               ; preds = %9
  %18 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 3
  store %struct.spi_controller* %18, %struct.spi_controller** %20, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 4
  store %struct.spi_controller* %18, %struct.spi_controller** %22, align 8
  %23 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %24 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %23, i32 0, i32 0
  %25 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i32* %24, i32** %27, align 8
  %28 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32* @spi_bus_type, i32** %30, align 8
  %31 = load i32, i32* @spidev_release, align 4
  %32 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  %37 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %44 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %43, i32 0, i32 0
  %45 = call i32 @device_initialize(%struct.TYPE_4__* %44)
  %46 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  store %struct.spi_device* %46, %struct.spi_device** %2, align 8
  br label %47

47:                                               ; preds = %17, %14, %8
  %48 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  ret %struct.spi_device* %48
}

declare dso_local i32 @spi_controller_get(%struct.spi_controller*) #1

declare dso_local %struct.spi_device* @kzalloc(i32, i32) #1

declare dso_local i32 @spi_controller_put(%struct.spi_controller*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
