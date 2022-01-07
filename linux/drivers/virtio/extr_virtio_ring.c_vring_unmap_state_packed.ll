; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_unmap_state_packed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_unmap_state_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vring_virtqueue = type { i32 }
%struct.vring_desc_extra_packed = type { i32, i32, i32 }

@VRING_DESC_F_INDIRECT = common dso_local global i32 0, align 4
@VRING_DESC_F_WRITE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vring_virtqueue*, %struct.vring_desc_extra_packed*)* @vring_unmap_state_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vring_unmap_state_packed(%struct.vring_virtqueue* %0, %struct.vring_desc_extra_packed* %1) #0 {
  %3 = alloca %struct.vring_virtqueue*, align 8
  %4 = alloca %struct.vring_desc_extra_packed*, align 8
  %5 = alloca i32, align 4
  store %struct.vring_virtqueue* %0, %struct.vring_virtqueue** %3, align 8
  store %struct.vring_desc_extra_packed* %1, %struct.vring_desc_extra_packed** %4, align 8
  %6 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %7 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %59

11:                                               ; preds = %2
  %12 = load %struct.vring_desc_extra_packed*, %struct.vring_desc_extra_packed** %4, align 8
  %13 = getelementptr inbounds %struct.vring_desc_extra_packed, %struct.vring_desc_extra_packed* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @VRING_DESC_F_INDIRECT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %11
  %20 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %21 = call i32 @vring_dma_dev(%struct.vring_virtqueue* %20)
  %22 = load %struct.vring_desc_extra_packed*, %struct.vring_desc_extra_packed** %4, align 8
  %23 = getelementptr inbounds %struct.vring_desc_extra_packed, %struct.vring_desc_extra_packed* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vring_desc_extra_packed*, %struct.vring_desc_extra_packed** %4, align 8
  %26 = getelementptr inbounds %struct.vring_desc_extra_packed, %struct.vring_desc_extra_packed* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @VRING_DESC_F_WRITE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %36

34:                                               ; preds = %19
  %35 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = call i32 @dma_unmap_single(i32 %21, i32 %24, i32 %27, i32 %37)
  br label %59

39:                                               ; preds = %11
  %40 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %41 = call i32 @vring_dma_dev(%struct.vring_virtqueue* %40)
  %42 = load %struct.vring_desc_extra_packed*, %struct.vring_desc_extra_packed** %4, align 8
  %43 = getelementptr inbounds %struct.vring_desc_extra_packed, %struct.vring_desc_extra_packed* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vring_desc_extra_packed*, %struct.vring_desc_extra_packed** %4, align 8
  %46 = getelementptr inbounds %struct.vring_desc_extra_packed, %struct.vring_desc_extra_packed* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @VRING_DESC_F_WRITE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %56

54:                                               ; preds = %39
  %55 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = call i32 @dma_unmap_page(i32 %41, i32 %44, i32 %47, i32 %57)
  br label %59

59:                                               ; preds = %10, %56, %36
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @vring_dma_dev(%struct.vring_virtqueue*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
