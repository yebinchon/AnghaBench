; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_virtio.c_rproc_virtio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_virtio.c_rproc_virtio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.rproc_vdev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.fw_rsc_vdev = type { i64, i32, i32* }

@.str = private unnamed_addr constant [40 x i8] c"rproc_virtio_get: access out of bounds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*, i32, i8*, i32)* @rproc_virtio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rproc_virtio_get(%struct.virtio_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.virtio_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rproc_vdev*, align 8
  %10 = alloca %struct.fw_rsc_vdev*, align 8
  %11 = alloca i8*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %13 = call %struct.rproc_vdev* @vdev_to_rvdev(%struct.virtio_device* %12)
  store %struct.rproc_vdev* %13, %struct.rproc_vdev** %9, align 8
  %14 = load %struct.rproc_vdev*, %struct.rproc_vdev** %9, align 8
  %15 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.rproc_vdev*, %struct.rproc_vdev** %9, align 8
  %21 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr i8, i8* %19, i64 %23
  %25 = bitcast i8* %24 to %struct.fw_rsc_vdev*
  store %struct.fw_rsc_vdev* %25, %struct.fw_rsc_vdev** %10, align 8
  %26 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %10, align 8
  %27 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %10, align 8
  %30 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = bitcast i32* %32 to i8*
  store i8* %33, i8** %11, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add i32 %34, %35
  %37 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %10, align 8
  %38 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ugt i32 %36, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41, %4
  %48 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %49 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %59

51:                                               ; preds = %41
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr i8, i8* %53, i64 %55
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @memcpy(i8* %52, i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %47
  ret void
}

declare dso_local %struct.rproc_vdev* @vdev_to_rvdev(%struct.virtio_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
