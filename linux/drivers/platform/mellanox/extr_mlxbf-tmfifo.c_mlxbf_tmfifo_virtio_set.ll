; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_virtio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_virtio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.mlxbf_tmfifo_vdev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*, i32, i8*, i32)* @mlxbf_tmfifo_virtio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxbf_tmfifo_virtio_set(%struct.virtio_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.virtio_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxbf_tmfifo_vdev*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %11 = call %struct.mlxbf_tmfifo_vdev* @mlxbf_vdev_to_tmfifo(%struct.virtio_device* %10)
  store %struct.mlxbf_tmfifo_vdev* %11, %struct.mlxbf_tmfifo_vdev** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %8, align 4
  %14 = add i32 %12, %13
  %15 = zext i32 %14 to i64
  %16 = icmp ugt i64 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %27

18:                                               ; preds = %4
  %19 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %9, align 8
  %20 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %19, i32 0, i32 0
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @memcpy(i32* %23, i8* %24, i32 %25)
  br label %27

27:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.mlxbf_tmfifo_vdev* @mlxbf_vdev_to_tmfifo(%struct.virtio_device*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
