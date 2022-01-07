; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_release_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_release_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxbf_tmfifo_vring = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.virtio_device* }
%struct.virtio_device = type { i32 }
%struct.vring_desc = type { i32 }
%struct.vring = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxbf_tmfifo_vring*, %struct.vring_desc*, %struct.vring_desc*)* @mlxbf_tmfifo_release_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxbf_tmfifo_release_desc(%struct.mlxbf_tmfifo_vring* %0, %struct.vring_desc* %1, %struct.vring_desc* %2) #0 {
  %4 = alloca %struct.mlxbf_tmfifo_vring*, align 8
  %5 = alloca %struct.vring_desc*, align 8
  %6 = alloca %struct.vring_desc*, align 8
  %7 = alloca %struct.vring*, align 8
  %8 = alloca %struct.virtio_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mlxbf_tmfifo_vring* %0, %struct.mlxbf_tmfifo_vring** %4, align 8
  store %struct.vring_desc* %1, %struct.vring_desc** %5, align 8
  store %struct.vring_desc* %2, %struct.vring_desc** %6, align 8
  %11 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %4, align 8
  %12 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = call %struct.vring* @virtqueue_get_vring(%struct.TYPE_6__* %13)
  store %struct.vring* %14, %struct.vring** %7, align 8
  %15 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %4, align 8
  %16 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.virtio_device*, %struct.virtio_device** %18, align 8
  store %struct.virtio_device* %19, %struct.virtio_device** %8, align 8
  %20 = load %struct.virtio_device*, %struct.virtio_device** %8, align 8
  %21 = load %struct.vring*, %struct.vring** %7, align 8
  %22 = getelementptr inbounds %struct.vring, %struct.vring* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @virtio16_to_cpu(%struct.virtio_device* %20, i32 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load %struct.vring*, %struct.vring** %7, align 8
  %29 = getelementptr inbounds %struct.vring, %struct.vring* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = urem i64 %27, %30
  store i64 %31, i64* %9, align 8
  %32 = load %struct.virtio_device*, %struct.virtio_device** %8, align 8
  %33 = load %struct.vring_desc*, %struct.vring_desc** %5, align 8
  %34 = load %struct.vring*, %struct.vring** %7, align 8
  %35 = getelementptr inbounds %struct.vring, %struct.vring* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = sub i64 0, %37
  %39 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %33, i64 %38
  %40 = call i8* @cpu_to_virtio32(%struct.virtio_device* %32, %struct.vring_desc* %39)
  %41 = load %struct.vring*, %struct.vring** %7, align 8
  %42 = getelementptr inbounds %struct.vring, %struct.vring* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i8* %40, i8** %48, align 8
  %49 = load %struct.virtio_device*, %struct.virtio_device** %8, align 8
  %50 = load %struct.vring_desc*, %struct.vring_desc** %6, align 8
  %51 = call i8* @cpu_to_virtio32(%struct.virtio_device* %49, %struct.vring_desc* %50)
  %52 = load %struct.vring*, %struct.vring** %7, align 8
  %53 = getelementptr inbounds %struct.vring, %struct.vring* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i8* %51, i8** %59, align 8
  %60 = call i32 (...) @mb()
  %61 = load %struct.virtio_device*, %struct.virtio_device** %8, align 8
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %62, 1
  %64 = call i32 @cpu_to_virtio16(%struct.virtio_device* %61, i64 %63)
  %65 = load %struct.vring*, %struct.vring** %7, align 8
  %66 = getelementptr inbounds %struct.vring, %struct.vring* %65, i32 0, i32 2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 8
  ret void
}

declare dso_local %struct.vring* @virtqueue_get_vring(%struct.TYPE_6__*) #1

declare dso_local i64 @virtio16_to_cpu(%struct.virtio_device*, i32) #1

declare dso_local i8* @cpu_to_virtio32(%struct.virtio_device*, %struct.vring_desc*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @cpu_to_virtio16(%struct.virtio_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
