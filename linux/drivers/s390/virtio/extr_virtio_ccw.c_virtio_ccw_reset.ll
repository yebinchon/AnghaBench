; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.virtio_ccw_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ccw1 = type { i64, i64, i64, i32 }

@CCW_CMD_VDEV_RESET = common dso_local global i32 0, align 4
@VIRTIO_CCW_DOING_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*)* @virtio_ccw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_ccw_reset(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.virtio_ccw_device*, align 8
  %4 = alloca %struct.ccw1*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %5 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %6 = call %struct.virtio_ccw_device* @to_vc_device(%struct.virtio_device* %5)
  store %struct.virtio_ccw_device* %6, %struct.virtio_ccw_device** %3, align 8
  %7 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %3, align 8
  %8 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.ccw1* @ccw_device_dma_zalloc(i32 %9, i32 32)
  store %struct.ccw1* %10, %struct.ccw1** %4, align 8
  %11 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %12 = icmp ne %struct.ccw1* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %37

14:                                               ; preds = %1
  %15 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %3, align 8
  %16 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @CCW_CMD_VDEV_RESET, align 4
  %20 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %21 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %23 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %25 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %27 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %3, align 8
  %29 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %30 = load i32, i32* @VIRTIO_CCW_DOING_RESET, align 4
  %31 = call i32 @ccw_io_helper(%struct.virtio_ccw_device* %28, %struct.ccw1* %29, i32 %30)
  %32 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %3, align 8
  %33 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %36 = call i32 @ccw_device_dma_free(i32 %34, %struct.ccw1* %35, i32 32)
  br label %37

37:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.virtio_ccw_device* @to_vc_device(%struct.virtio_device*) #1

declare dso_local %struct.ccw1* @ccw_device_dma_zalloc(i32, i32) #1

declare dso_local i32 @ccw_io_helper(%struct.virtio_ccw_device*, %struct.ccw1*, i32) #1

declare dso_local i32 @ccw_device_dma_free(i32, %struct.ccw1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
