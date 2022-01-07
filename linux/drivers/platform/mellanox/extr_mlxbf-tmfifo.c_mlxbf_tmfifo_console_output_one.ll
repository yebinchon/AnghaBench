; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_console_output_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_console_output_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxbf_tmfifo_vdev = type { %struct.TYPE_2__, %struct.virtio_device }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.virtio_device = type { i32 }
%struct.mlxbf_tmfifo_vring = type { i32 }
%struct.vring_desc = type { i32, i32, i32, i32 }
%struct.vring = type { %struct.vring_desc* }

@MLXBF_TMFIFO_CON_TX_BUF_SIZE = common dso_local global i64 0, align 8
@VRING_DESC_F_NEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vring*, %struct.vring_desc*)* @mlxbf_tmfifo_console_output_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxbf_tmfifo_console_output_one(%struct.mlxbf_tmfifo_vdev* %0, %struct.mlxbf_tmfifo_vring* %1, %struct.vring_desc* %2) #0 {
  %4 = alloca %struct.mlxbf_tmfifo_vdev*, align 8
  %5 = alloca %struct.mlxbf_tmfifo_vring*, align 8
  %6 = alloca %struct.vring_desc*, align 8
  %7 = alloca %struct.vring*, align 8
  %8 = alloca %struct.virtio_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.mlxbf_tmfifo_vdev* %0, %struct.mlxbf_tmfifo_vdev** %4, align 8
  store %struct.mlxbf_tmfifo_vring* %1, %struct.mlxbf_tmfifo_vring** %5, align 8
  store %struct.vring_desc* %2, %struct.vring_desc** %6, align 8
  %13 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %14 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.vring* @virtqueue_get_vring(i32 %15)
  store %struct.vring* %16, %struct.vring** %7, align 8
  %17 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %4, align 8
  %18 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %17, i32 0, i32 1
  store %struct.virtio_device* %18, %struct.virtio_device** %8, align 8
  br label %19

19:                                               ; preds = %106, %3
  %20 = load %struct.vring_desc*, %struct.vring_desc** %6, align 8
  %21 = icmp ne %struct.vring_desc* %20, null
  br i1 %21, label %22, label %117

22:                                               ; preds = %19
  %23 = load %struct.virtio_device*, %struct.virtio_device** %8, align 8
  %24 = load %struct.vring_desc*, %struct.vring_desc** %6, align 8
  %25 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @virtio64_to_cpu(%struct.virtio_device* %23, i32 %26)
  %28 = call i8* @phys_to_virt(i32 %27)
  store i8* %28, i8** %12, align 8
  %29 = load %struct.virtio_device*, %struct.virtio_device** %8, align 8
  %30 = load %struct.vring_desc*, %struct.vring_desc** %6, align 8
  %31 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @virtio32_to_cpu(%struct.virtio_device* %29, i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %4, align 8
  %35 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %4, align 8
  %39 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* @MLXBF_TMFIFO_CON_TX_BUF_SIZE, align 8
  %43 = call i64 @CIRC_SPACE_TO_END(i64 %37, i32 %41, i64 %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ule i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %22
  %48 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %4, align 8
  %49 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %4, align 8
  %53 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %51, %55
  %57 = load i8*, i8** %12, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @memcpy(i64 %56, i8* %57, i64 %58)
  br label %85

60:                                               ; preds = %22
  %61 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %4, align 8
  %62 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %4, align 8
  %66 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %64, %68
  %70 = load i8*, i8** %12, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @memcpy(i64 %69, i8* %70, i64 %71)
  %73 = load i64, i64* %11, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr i8, i8* %74, i64 %73
  store i8* %75, i8** %12, align 8
  %76 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %4, align 8
  %77 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %11, align 8
  %83 = sub i64 %81, %82
  %84 = call i32 @memcpy(i64 %79, i8* %80, i64 %83)
  br label %85

85:                                               ; preds = %60, %47
  %86 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %4, align 8
  %87 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = add i64 %89, %90
  %92 = load i64, i64* @MLXBF_TMFIFO_CON_TX_BUF_SIZE, align 8
  %93 = urem i64 %91, %92
  %94 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %4, align 8
  %95 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i64 %93, i64* %96, align 8
  %97 = load %struct.virtio_device*, %struct.virtio_device** %8, align 8
  %98 = load %struct.vring_desc*, %struct.vring_desc** %6, align 8
  %99 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @virtio16_to_cpu(%struct.virtio_device* %97, i32 %100)
  %102 = load i64, i64* @VRING_DESC_F_NEXT, align 8
  %103 = and i64 %101, %102
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %85
  br label %117

106:                                              ; preds = %85
  %107 = load %struct.virtio_device*, %struct.virtio_device** %8, align 8
  %108 = load %struct.vring_desc*, %struct.vring_desc** %6, align 8
  %109 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @virtio16_to_cpu(%struct.virtio_device* %107, i32 %110)
  store i64 %111, i64* %10, align 8
  %112 = load %struct.vring*, %struct.vring** %7, align 8
  %113 = getelementptr inbounds %struct.vring, %struct.vring* %112, i32 0, i32 0
  %114 = load %struct.vring_desc*, %struct.vring_desc** %113, align 8
  %115 = load i64, i64* %10, align 8
  %116 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %114, i64 %115
  store %struct.vring_desc* %116, %struct.vring_desc** %6, align 8
  br label %19

117:                                              ; preds = %105, %19
  ret void
}

declare dso_local %struct.vring* @virtqueue_get_vring(i32) #1

declare dso_local i8* @phys_to_virt(i32) #1

declare dso_local i32 @virtio64_to_cpu(%struct.virtio_device*, i32) #1

declare dso_local i64 @virtio32_to_cpu(%struct.virtio_device*, i32) #1

declare dso_local i64 @CIRC_SPACE_TO_END(i64, i32, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i64 @virtio16_to_cpu(%struct.virtio_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
