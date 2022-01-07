; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_virtio.c_rproc_virtio_set_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_virtio.c_rproc_virtio_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.rproc_vdev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.fw_rsc_vdev = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"status: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*, i32)* @rproc_virtio_set_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rproc_virtio_set_status(%struct.virtio_device* %0, i32 %1) #0 {
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rproc_vdev*, align 8
  %6 = alloca %struct.fw_rsc_vdev*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %8 = call %struct.rproc_vdev* @vdev_to_rvdev(%struct.virtio_device* %7)
  store %struct.rproc_vdev* %8, %struct.rproc_vdev** %5, align 8
  %9 = load %struct.rproc_vdev*, %struct.rproc_vdev** %5, align 8
  %10 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.rproc_vdev*, %struct.rproc_vdev** %5, align 8
  %16 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %14, i64 %18
  %20 = bitcast i8* %19 to %struct.fw_rsc_vdev*
  store %struct.fw_rsc_vdev* %20, %struct.fw_rsc_vdev** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %6, align 8
  %23 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %25 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %24, i32 0, i32 0
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @dev_dbg(i32* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %26)
  ret void
}

declare dso_local %struct.rproc_vdev* @vdev_to_rvdev(%struct.virtio_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
