; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_unmap_one_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_unmap_one_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vring_virtqueue = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vring_desc = type { i32, i32, i32 }

@VRING_DESC_F_INDIRECT = common dso_local global i32 0, align 4
@VRING_DESC_F_WRITE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vring_virtqueue*, %struct.vring_desc*)* @vring_unmap_one_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vring_unmap_one_split(%struct.vring_virtqueue* %0, %struct.vring_desc* %1) #0 {
  %3 = alloca %struct.vring_virtqueue*, align 8
  %4 = alloca %struct.vring_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.vring_virtqueue* %0, %struct.vring_virtqueue** %3, align 8
  store %struct.vring_desc* %1, %struct.vring_desc** %4, align 8
  %6 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %7 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %84

11:                                               ; preds = %2
  %12 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %13 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vring_desc*, %struct.vring_desc** %4, align 8
  %17 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @virtio16_to_cpu(i32 %15, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @VRING_DESC_F_INDIRECT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %11
  %25 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %26 = call i32 @vring_dma_dev(%struct.vring_virtqueue* %25)
  %27 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %28 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vring_desc*, %struct.vring_desc** %4, align 8
  %32 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @virtio64_to_cpu(i32 %30, i32 %33)
  %35 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %36 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vring_desc*, %struct.vring_desc** %4, align 8
  %40 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @virtio32_to_cpu(i32 %38, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @VRING_DESC_F_WRITE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %24
  %48 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %51

49:                                               ; preds = %24
  %50 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = call i32 @dma_unmap_single(i32 %26, i32 %34, i32 %42, i32 %52)
  br label %84

54:                                               ; preds = %11
  %55 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %56 = call i32 @vring_dma_dev(%struct.vring_virtqueue* %55)
  %57 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %58 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.vring_desc*, %struct.vring_desc** %4, align 8
  %62 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @virtio64_to_cpu(i32 %60, i32 %63)
  %65 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %66 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.vring_desc*, %struct.vring_desc** %4, align 8
  %70 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @virtio32_to_cpu(i32 %68, i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @VRING_DESC_F_WRITE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %54
  %78 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %81

79:                                               ; preds = %54
  %80 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = call i32 @dma_unmap_page(i32 %56, i32 %64, i32 %72, i32 %82)
  br label %84

84:                                               ; preds = %10, %81, %51
  ret void
}

declare dso_local i32 @virtio16_to_cpu(i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @vring_dma_dev(%struct.vring_virtqueue*) #1

declare dso_local i32 @virtio64_to_cpu(i32, i32) #1

declare dso_local i32 @virtio32_to_cpu(i32, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
