; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_map_one_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_map_one_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vring_virtqueue = type { i32 }
%struct.scatterlist = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vring_virtqueue*, %struct.scatterlist*, i32)* @vring_map_one_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vring_map_one_sg(%struct.vring_virtqueue* %0, %struct.scatterlist* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vring_virtqueue*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  store %struct.vring_virtqueue* %0, %struct.vring_virtqueue** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %5, align 8
  %9 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %14 = call i32 @sg_phys(%struct.scatterlist* %13)
  store i32 %14, i32* %4, align 4
  br label %28

15:                                               ; preds = %3
  %16 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %5, align 8
  %17 = call i32 @vring_dma_dev(%struct.vring_virtqueue* %16)
  %18 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %19 = call i32 @sg_page(%struct.scatterlist* %18)
  %20 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %21 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %24 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @dma_map_page(i32 %17, i32 %19, i32 %22, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %15, %12
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @sg_phys(%struct.scatterlist*) #1

declare dso_local i32 @dma_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i32 @vring_dma_dev(%struct.vring_virtqueue*) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
