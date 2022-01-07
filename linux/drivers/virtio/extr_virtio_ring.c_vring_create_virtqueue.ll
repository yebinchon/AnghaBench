; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_create_virtqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_create_virtqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.virtio_device = type { i32 }

@VIRTIO_F_RING_PACKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.virtqueue* @vring_create_virtqueue(i32 %0, i32 %1, i32 %2, %struct.virtio_device* %3, i32 %4, i32 %5, i32 %6, i32 (%struct.virtqueue*)* %7, void (%struct.virtqueue*)* %8, i8* %9) #0 {
  %11 = alloca %struct.virtqueue*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.virtio_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32 (%struct.virtqueue*)*, align 8
  %20 = alloca void (%struct.virtqueue*)*, align 8
  %21 = alloca i8*, align 8
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store %struct.virtio_device* %3, %struct.virtio_device** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 (%struct.virtqueue*)* %7, i32 (%struct.virtqueue*)** %19, align 8
  store void (%struct.virtqueue*)* %8, void (%struct.virtqueue*)** %20, align 8
  store i8* %9, i8** %21, align 8
  %22 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %23 = load i32, i32* @VIRTIO_F_RING_PACKED, align 4
  %24 = call i64 @virtio_has_feature(%struct.virtio_device* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %10
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %18, align 4
  %34 = load i32 (%struct.virtqueue*)*, i32 (%struct.virtqueue*)** %19, align 8
  %35 = load void (%struct.virtqueue*)*, void (%struct.virtqueue*)** %20, align 8
  %36 = load i8*, i8** %21, align 8
  %37 = call %struct.virtqueue* @vring_create_virtqueue_packed(i32 %27, i32 %28, i32 %29, %struct.virtio_device* %30, i32 %31, i32 %32, i32 %33, i32 (%struct.virtqueue*)* %34, void (%struct.virtqueue*)* %35, i8* %36)
  store %struct.virtqueue* %37, %struct.virtqueue** %11, align 8
  br label %50

38:                                               ; preds = %10
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %18, align 4
  %46 = load i32 (%struct.virtqueue*)*, i32 (%struct.virtqueue*)** %19, align 8
  %47 = load void (%struct.virtqueue*)*, void (%struct.virtqueue*)** %20, align 8
  %48 = load i8*, i8** %21, align 8
  %49 = call %struct.virtqueue* @vring_create_virtqueue_split(i32 %39, i32 %40, i32 %41, %struct.virtio_device* %42, i32 %43, i32 %44, i32 %45, i32 (%struct.virtqueue*)* %46, void (%struct.virtqueue*)* %47, i8* %48)
  store %struct.virtqueue* %49, %struct.virtqueue** %11, align 8
  br label %50

50:                                               ; preds = %38, %26
  %51 = load %struct.virtqueue*, %struct.virtqueue** %11, align 8
  ret %struct.virtqueue* %51
}

declare dso_local i64 @virtio_has_feature(%struct.virtio_device*, i32) #1

declare dso_local %struct.virtqueue* @vring_create_virtqueue_packed(i32, i32, i32, %struct.virtio_device*, i32, i32, i32, i32 (%struct.virtqueue*)*, void (%struct.virtqueue*)*, i8*) #1

declare dso_local %struct.virtqueue* @vring_create_virtqueue_split(i32, i32, i32, %struct.virtio_device*, i32, i32, i32, i32 (%struct.virtqueue*)*, void (%struct.virtqueue*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
