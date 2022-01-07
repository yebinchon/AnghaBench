; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_get_pkt_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_get_pkt_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxbf_tmfifo_vring = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.virtio_device* }
%struct.virtio_device = type { i32 }
%struct.vring_desc = type { i32, i32, i32 }
%struct.vring = type { %struct.vring_desc* }

@VRING_DESC_F_NEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mlxbf_tmfifo_vring*, %struct.vring_desc*)* @mlxbf_tmfifo_get_pkt_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mlxbf_tmfifo_get_pkt_len(%struct.mlxbf_tmfifo_vring* %0, %struct.vring_desc* %1) #0 {
  %3 = alloca %struct.mlxbf_tmfifo_vring*, align 8
  %4 = alloca %struct.vring_desc*, align 8
  %5 = alloca %struct.vring*, align 8
  %6 = alloca %struct.virtio_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.mlxbf_tmfifo_vring* %0, %struct.mlxbf_tmfifo_vring** %3, align 8
  store %struct.vring_desc* %1, %struct.vring_desc** %4, align 8
  %9 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %3, align 8
  %10 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call %struct.vring* @virtqueue_get_vring(%struct.TYPE_2__* %11)
  store %struct.vring* %12, %struct.vring** %5, align 8
  %13 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %3, align 8
  %14 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.virtio_device*, %struct.virtio_device** %16, align 8
  store %struct.virtio_device* %17, %struct.virtio_device** %6, align 8
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %38, %2
  %19 = load %struct.vring_desc*, %struct.vring_desc** %4, align 8
  %20 = icmp ne %struct.vring_desc* %19, null
  br i1 %20, label %21, label %49

21:                                               ; preds = %18
  %22 = load %struct.virtio_device*, %struct.virtio_device** %6, align 8
  %23 = load %struct.vring_desc*, %struct.vring_desc** %4, align 8
  %24 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @virtio32_to_cpu(%struct.virtio_device* %22, i32 %25)
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %7, align 8
  %29 = load %struct.virtio_device*, %struct.virtio_device** %6, align 8
  %30 = load %struct.vring_desc*, %struct.vring_desc** %4, align 8
  %31 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @virtio16_to_cpu(%struct.virtio_device* %29, i32 %32)
  %34 = load i64, i64* @VRING_DESC_F_NEXT, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %21
  br label %49

38:                                               ; preds = %21
  %39 = load %struct.virtio_device*, %struct.virtio_device** %6, align 8
  %40 = load %struct.vring_desc*, %struct.vring_desc** %4, align 8
  %41 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @virtio16_to_cpu(%struct.virtio_device* %39, i32 %42)
  store i64 %43, i64* %8, align 8
  %44 = load %struct.vring*, %struct.vring** %5, align 8
  %45 = getelementptr inbounds %struct.vring, %struct.vring* %44, i32 0, i32 0
  %46 = load %struct.vring_desc*, %struct.vring_desc** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %46, i64 %47
  store %struct.vring_desc* %48, %struct.vring_desc** %4, align 8
  br label %18

49:                                               ; preds = %37, %18
  %50 = load i64, i64* %7, align 8
  ret i64 %50
}

declare dso_local %struct.vring* @virtqueue_get_vring(%struct.TYPE_2__*) #1

declare dso_local i64 @virtio32_to_cpu(%struct.virtio_device*, i32) #1

declare dso_local i64 @virtio16_to_cpu(%struct.virtio_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
