; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_virtio_del_vqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_virtio_del_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.mlxbf_tmfifo_vdev = type { %struct.mlxbf_tmfifo_vring* }
%struct.mlxbf_tmfifo_vring = type { %struct.virtqueue*, i64 }
%struct.virtqueue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*)* @mlxbf_tmfifo_virtio_del_vqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxbf_tmfifo_virtio_del_vqs(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.mlxbf_tmfifo_vdev*, align 8
  %4 = alloca %struct.mlxbf_tmfifo_vring*, align 8
  %5 = alloca %struct.virtqueue*, align 8
  %6 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %7 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %8 = call %struct.mlxbf_tmfifo_vdev* @mlxbf_vdev_to_tmfifo(%struct.virtio_device* %7)
  store %struct.mlxbf_tmfifo_vdev* %8, %struct.mlxbf_tmfifo_vdev** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %42, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %3, align 8
  %12 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %11, i32 0, i32 0
  %13 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %12, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.mlxbf_tmfifo_vring* %13)
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %9
  %17 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %3, align 8
  %18 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %17, i32 0, i32 0
  %19 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %19, i64 %21
  store %struct.mlxbf_tmfifo_vring* %22, %struct.mlxbf_tmfifo_vring** %4, align 8
  %23 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %4, align 8
  %24 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %4, align 8
  %29 = call i32 @mlxbf_tmfifo_release_pending_pkt(%struct.mlxbf_tmfifo_vring* %28)
  br label %30

30:                                               ; preds = %27, %16
  %31 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %4, align 8
  %32 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %31, i32 0, i32 0
  %33 = load %struct.virtqueue*, %struct.virtqueue** %32, align 8
  store %struct.virtqueue* %33, %struct.virtqueue** %5, align 8
  %34 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %35 = icmp ne %struct.virtqueue* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %4, align 8
  %38 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %37, i32 0, i32 0
  store %struct.virtqueue* null, %struct.virtqueue** %38, align 8
  %39 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %40 = call i32 @vring_del_virtqueue(%struct.virtqueue* %39)
  br label %41

41:                                               ; preds = %36, %30
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %9

45:                                               ; preds = %9
  ret void
}

declare dso_local %struct.mlxbf_tmfifo_vdev* @mlxbf_vdev_to_tmfifo(%struct.virtio_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mlxbf_tmfifo_vring*) #1

declare dso_local i32 @mlxbf_tmfifo_release_pending_pkt(%struct.mlxbf_tmfifo_vring*) #1

declare dso_local i32 @vring_del_virtqueue(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
