; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_new_virtqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_new_virtqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.virtio_device = type { i32 }
%struct.vring = type { i32 }

@VIRTIO_F_RING_PACKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.virtqueue* @vring_new_virtqueue(i32 %0, i32 %1, i32 %2, %struct.virtio_device* %3, i32 %4, i32 %5, i8* %6, i32 (%struct.virtqueue*)* %7, void (%struct.virtqueue*)* %8, i8* %9) #0 {
  %11 = alloca %struct.virtqueue*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.virtio_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32 (%struct.virtqueue*)*, align 8
  %20 = alloca void (%struct.virtqueue*)*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.vring, align 4
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store %struct.virtio_device* %3, %struct.virtio_device** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store i32 (%struct.virtqueue*)* %7, i32 (%struct.virtqueue*)** %19, align 8
  store void (%struct.virtqueue*)* %8, void (%struct.virtqueue*)** %20, align 8
  store i8* %9, i8** %21, align 8
  %23 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %24 = load i32, i32* @VIRTIO_F_RING_PACKED, align 4
  %25 = call i64 @virtio_has_feature(%struct.virtio_device* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %10
  store %struct.virtqueue* null, %struct.virtqueue** %11, align 8
  br label %43

28:                                               ; preds = %10
  %29 = load i32, i32* %13, align 4
  %30 = load i8*, i8** %18, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @vring_init(%struct.vring* %22, i32 %29, i8* %30, i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load i32 (%struct.virtqueue*)*, i32 (%struct.virtqueue*)** %19, align 8
  %38 = load void (%struct.virtqueue*)*, void (%struct.virtqueue*)** %20, align 8
  %39 = load i8*, i8** %21, align 8
  %40 = getelementptr inbounds %struct.vring, %struct.vring* %22, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.virtqueue* @__vring_new_virtqueue(i32 %33, i32 %41, %struct.virtio_device* %34, i32 %35, i32 %36, i32 (%struct.virtqueue*)* %37, void (%struct.virtqueue*)* %38, i8* %39)
  store %struct.virtqueue* %42, %struct.virtqueue** %11, align 8
  br label %43

43:                                               ; preds = %28, %27
  %44 = load %struct.virtqueue*, %struct.virtqueue** %11, align 8
  ret %struct.virtqueue* %44
}

declare dso_local i64 @virtio_has_feature(%struct.virtio_device*, i32) #1

declare dso_local i32 @vring_init(%struct.vring*, i32, i8*, i32) #1

declare dso_local %struct.virtqueue* @__vring_new_virtqueue(i32, i32, %struct.virtio_device*, i32, i32, i32 (%struct.virtqueue*)*, void (%struct.virtqueue*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
