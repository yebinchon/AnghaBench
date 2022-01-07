; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_virtio.c_rproc_virtio_finalize_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_virtio.c_rproc_virtio_finalize_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i64 }
%struct.rproc_vdev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.fw_rsc_vdev = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*)* @rproc_virtio_finalize_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rproc_virtio_finalize_features(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.rproc_vdev*, align 8
  %4 = alloca %struct.fw_rsc_vdev*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %5 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %6 = call %struct.rproc_vdev* @vdev_to_rvdev(%struct.virtio_device* %5)
  store %struct.rproc_vdev* %6, %struct.rproc_vdev** %3, align 8
  %7 = load %struct.rproc_vdev*, %struct.rproc_vdev** %3, align 8
  %8 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = load %struct.rproc_vdev*, %struct.rproc_vdev** %3, align 8
  %14 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr i8, i8* %12, i64 %16
  %18 = bitcast i8* %17 to %struct.fw_rsc_vdev*
  store %struct.fw_rsc_vdev* %18, %struct.fw_rsc_vdev** %4, align 8
  %19 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %20 = call i32 @vring_transport_features(%struct.virtio_device* %19)
  %21 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %22 = call i32 @rproc_transport_features(%struct.virtio_device* %21)
  %23 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %24 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %27 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %33 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %4, align 8
  %36 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  ret i32 0
}

declare dso_local %struct.rproc_vdev* @vdev_to_rvdev(%struct.virtio_device*) #1

declare dso_local i32 @vring_transport_features(%struct.virtio_device*) #1

declare dso_local i32 @rproc_transport_features(%struct.virtio_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
