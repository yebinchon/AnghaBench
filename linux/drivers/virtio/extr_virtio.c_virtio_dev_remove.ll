; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio.c_virtio_dev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio.c_virtio_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.virtio_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.virtio_device*)* }
%struct.TYPE_3__ = type { i32 }
%struct.virtio_driver = type { i32 (%struct.virtio_device.0*)* }
%struct.virtio_device.0 = type opaque

@VIRTIO_CONFIG_S_ACKNOWLEDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @virtio_dev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_dev_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca %struct.virtio_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.virtio_device* @dev_to_virtio(%struct.device* %5)
  store %struct.virtio_device* %6, %struct.virtio_device** %3, align 8
  %7 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %8 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.virtio_driver* @drv_to_virtio(i32 %10)
  store %struct.virtio_driver* %11, %struct.virtio_driver** %4, align 8
  %12 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %13 = call i32 @virtio_config_disable(%struct.virtio_device* %12)
  %14 = load %struct.virtio_driver*, %struct.virtio_driver** %4, align 8
  %15 = getelementptr inbounds %struct.virtio_driver, %struct.virtio_driver* %14, i32 0, i32 0
  %16 = load i32 (%struct.virtio_device.0*)*, i32 (%struct.virtio_device.0*)** %15, align 8
  %17 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %18 = bitcast %struct.virtio_device* %17 to %struct.virtio_device.0*
  %19 = call i32 %16(%struct.virtio_device.0* %18)
  %20 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %21 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %23, align 8
  %25 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %26 = call i32 %24(%struct.virtio_device* %25)
  %27 = call i32 @WARN_ON_ONCE(i32 %26)
  %28 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %29 = load i32, i32* @VIRTIO_CONFIG_S_ACKNOWLEDGE, align 4
  %30 = call i32 @virtio_add_status(%struct.virtio_device* %28, i32 %29)
  ret i32 0
}

declare dso_local %struct.virtio_device* @dev_to_virtio(%struct.device*) #1

declare dso_local %struct.virtio_driver* @drv_to_virtio(i32) #1

declare dso_local i32 @virtio_config_disable(%struct.virtio_device*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @virtio_add_status(%struct.virtio_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
