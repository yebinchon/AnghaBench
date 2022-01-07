; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio.c___virtio_config_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio.c___virtio_config_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.virtio_driver = type { i32 (%struct.virtio_device.0*)* }
%struct.virtio_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*)* @__virtio_config_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__virtio_config_changed(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.virtio_driver*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %4 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %5 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.virtio_driver* @drv_to_virtio(i32 %7)
  store %struct.virtio_driver* %8, %struct.virtio_driver** %3, align 8
  %9 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %10 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %15 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  br label %32

16:                                               ; preds = %1
  %17 = load %struct.virtio_driver*, %struct.virtio_driver** %3, align 8
  %18 = icmp ne %struct.virtio_driver* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.virtio_driver*, %struct.virtio_driver** %3, align 8
  %21 = getelementptr inbounds %struct.virtio_driver, %struct.virtio_driver* %20, i32 0, i32 0
  %22 = load i32 (%struct.virtio_device.0*)*, i32 (%struct.virtio_device.0*)** %21, align 8
  %23 = icmp ne i32 (%struct.virtio_device.0*)* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.virtio_driver*, %struct.virtio_driver** %3, align 8
  %26 = getelementptr inbounds %struct.virtio_driver, %struct.virtio_driver* %25, i32 0, i32 0
  %27 = load i32 (%struct.virtio_device.0*)*, i32 (%struct.virtio_device.0*)** %26, align 8
  %28 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %29 = bitcast %struct.virtio_device* %28 to %struct.virtio_device.0*
  %30 = call i32 %27(%struct.virtio_device.0* %29)
  br label %31

31:                                               ; preds = %24, %19, %16
  br label %32

32:                                               ; preds = %31, %13
  ret void
}

declare dso_local %struct.virtio_driver* @drv_to_virtio(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
