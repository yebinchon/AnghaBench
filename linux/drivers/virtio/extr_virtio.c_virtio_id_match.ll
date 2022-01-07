; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio.c_virtio_id_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio.c_virtio_id_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.virtio_device_id = type { i64, i64 }

@VIRTIO_DEV_ANY_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*, %struct.virtio_device_id*)* @virtio_id_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_id_match(%struct.virtio_device* %0, %struct.virtio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.virtio_device*, align 8
  %5 = alloca %struct.virtio_device_id*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %4, align 8
  store %struct.virtio_device_id* %1, %struct.virtio_device_id** %5, align 8
  %6 = load %struct.virtio_device_id*, %struct.virtio_device_id** %5, align 8
  %7 = getelementptr inbounds %struct.virtio_device_id, %struct.virtio_device_id* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.virtio_device*, %struct.virtio_device** %4, align 8
  %10 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %8, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.virtio_device_id*, %struct.virtio_device_id** %5, align 8
  %16 = getelementptr inbounds %struct.virtio_device_id, %struct.virtio_device_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VIRTIO_DEV_ANY_ID, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %39

21:                                               ; preds = %14, %2
  %22 = load %struct.virtio_device_id*, %struct.virtio_device_id** %5, align 8
  %23 = getelementptr inbounds %struct.virtio_device_id, %struct.virtio_device_id* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VIRTIO_DEV_ANY_ID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %36, label %27

27:                                               ; preds = %21
  %28 = load %struct.virtio_device_id*, %struct.virtio_device_id** %5, align 8
  %29 = getelementptr inbounds %struct.virtio_device_id, %struct.virtio_device_id* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.virtio_device*, %struct.virtio_device** %4, align 8
  %32 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %30, %34
  br label %36

36:                                               ; preds = %27, %21
  %37 = phi i1 [ true, %21 ], [ %35, %27 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %20
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
