; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_virtio.c_rproc_virtio_dev_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_virtio.c_rproc_virtio_dev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.virtio_device = type { i32 }
%struct.rproc_vdev = type { i32 }
%struct.rproc = type { i32 }

@rproc_vdev_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @rproc_virtio_dev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rproc_virtio_dev_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca %struct.rproc_vdev*, align 8
  %5 = alloca %struct.rproc*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.virtio_device* @dev_to_virtio(%struct.device* %6)
  store %struct.virtio_device* %7, %struct.virtio_device** %3, align 8
  %8 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %9 = call %struct.rproc_vdev* @vdev_to_rvdev(%struct.virtio_device* %8)
  store %struct.rproc_vdev* %9, %struct.rproc_vdev** %4, align 8
  %10 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %11 = call %struct.rproc* @vdev_to_rproc(%struct.virtio_device* %10)
  store %struct.rproc* %11, %struct.rproc** %5, align 8
  %12 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %13 = call i32 @kfree(%struct.virtio_device* %12)
  %14 = load %struct.rproc_vdev*, %struct.rproc_vdev** %4, align 8
  %15 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %14, i32 0, i32 0
  %16 = load i32, i32* @rproc_vdev_release, align 4
  %17 = call i32 @kref_put(i32* %15, i32 %16)
  %18 = load %struct.rproc*, %struct.rproc** %5, align 8
  %19 = getelementptr inbounds %struct.rproc, %struct.rproc* %18, i32 0, i32 0
  %20 = call i32 @put_device(i32* %19)
  ret void
}

declare dso_local %struct.virtio_device* @dev_to_virtio(%struct.device*) #1

declare dso_local %struct.rproc_vdev* @vdev_to_rvdev(%struct.virtio_device*) #1

declare dso_local %struct.rproc* @vdev_to_rproc(%struct.virtio_device*) #1

declare dso_local i32 @kfree(%struct.virtio_device*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
