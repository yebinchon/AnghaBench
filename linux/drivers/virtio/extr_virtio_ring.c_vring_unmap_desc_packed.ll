; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_unmap_desc_packed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_unmap_desc_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vring_virtqueue = type { i32 }
%struct.vring_packed_desc = type { i32, i32, i32 }

@VRING_DESC_F_INDIRECT = common dso_local global i32 0, align 4
@VRING_DESC_F_WRITE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vring_virtqueue*, %struct.vring_packed_desc*)* @vring_unmap_desc_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vring_unmap_desc_packed(%struct.vring_virtqueue* %0, %struct.vring_packed_desc* %1) #0 {
  %3 = alloca %struct.vring_virtqueue*, align 8
  %4 = alloca %struct.vring_packed_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.vring_virtqueue* %0, %struct.vring_virtqueue** %3, align 8
  store %struct.vring_packed_desc* %1, %struct.vring_packed_desc** %4, align 8
  %6 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %7 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %64

11:                                               ; preds = %2
  %12 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %4, align 8
  %13 = getelementptr inbounds %struct.vring_packed_desc, %struct.vring_packed_desc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le16_to_cpu(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @VRING_DESC_F_INDIRECT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %11
  %21 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %22 = call i32 @vring_dma_dev(%struct.vring_virtqueue* %21)
  %23 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %4, align 8
  %24 = getelementptr inbounds %struct.vring_packed_desc, %struct.vring_packed_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le64_to_cpu(i32 %25)
  %27 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %4, align 8
  %28 = getelementptr inbounds %struct.vring_packed_desc, %struct.vring_packed_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @VRING_DESC_F_WRITE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %39

37:                                               ; preds = %20
  %38 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = call i32 @dma_unmap_single(i32 %22, i32 %26, i32 %30, i32 %40)
  br label %64

42:                                               ; preds = %11
  %43 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %44 = call i32 @vring_dma_dev(%struct.vring_virtqueue* %43)
  %45 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %4, align 8
  %46 = getelementptr inbounds %struct.vring_packed_desc, %struct.vring_packed_desc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le64_to_cpu(i32 %47)
  %49 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %4, align 8
  %50 = getelementptr inbounds %struct.vring_packed_desc, %struct.vring_packed_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @VRING_DESC_F_WRITE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %61

59:                                               ; preds = %42
  %60 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = call i32 @dma_unmap_page(i32 %44, i32 %48, i32 %52, i32 %62)
  br label %64

64:                                               ; preds = %10, %61, %39
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @vring_dma_dev(%struct.vring_virtqueue*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
