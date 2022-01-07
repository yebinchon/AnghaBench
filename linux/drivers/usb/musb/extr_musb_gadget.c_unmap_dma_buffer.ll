; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget.c_unmap_dma_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget.c_unmap_dma_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb_request = type { i64, i64, %struct.TYPE_2__, %struct.musb_ep* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.musb_ep = type { i32 }
%struct.musb = type { i32 }

@DMA_ADDR_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"not unmapping a never mapped buffer\0A\00", align 1
@MUSB_MAPPED = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@UN_MAPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb_request*, %struct.musb*)* @unmap_dma_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_dma_buffer(%struct.musb_request* %0, %struct.musb* %1) #0 {
  %3 = alloca %struct.musb_request*, align 8
  %4 = alloca %struct.musb*, align 8
  %5 = alloca %struct.musb_ep*, align 8
  store %struct.musb_request* %0, %struct.musb_request** %3, align 8
  store %struct.musb* %1, %struct.musb** %4, align 8
  %6 = load %struct.musb_request*, %struct.musb_request** %3, align 8
  %7 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %6, i32 0, i32 3
  %8 = load %struct.musb_ep*, %struct.musb_ep** %7, align 8
  store %struct.musb_ep* %8, %struct.musb_ep** %5, align 8
  %9 = load %struct.musb_request*, %struct.musb_request** %3, align 8
  %10 = call i32 @is_buffer_mapped(%struct.musb_request* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.musb_ep*, %struct.musb_ep** %5, align 8
  %14 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  br label %90

18:                                               ; preds = %12
  %19 = load %struct.musb_request*, %struct.musb_request** %3, align 8
  %20 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DMA_ADDR_INVALID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.musb*, %struct.musb** %4, align 8
  %27 = getelementptr inbounds %struct.musb, %struct.musb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_vdbg(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %90

30:                                               ; preds = %18
  %31 = load %struct.musb_request*, %struct.musb_request** %3, align 8
  %32 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MUSB_MAPPED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %30
  %37 = load %struct.musb*, %struct.musb** %4, align 8
  %38 = getelementptr inbounds %struct.musb, %struct.musb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.musb_request*, %struct.musb_request** %3, align 8
  %41 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.musb_request*, %struct.musb_request** %3, align 8
  %45 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.musb_request*, %struct.musb_request** %3, align 8
  %49 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %36
  %53 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %56

54:                                               ; preds = %36
  %55 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = call i32 @dma_unmap_single(i32 %39, i64 %43, i32 %47, i32 %57)
  %59 = load i64, i64* @DMA_ADDR_INVALID, align 8
  %60 = load %struct.musb_request*, %struct.musb_request** %3, align 8
  %61 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  br label %86

63:                                               ; preds = %30
  %64 = load %struct.musb*, %struct.musb** %4, align 8
  %65 = getelementptr inbounds %struct.musb, %struct.musb* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.musb_request*, %struct.musb_request** %3, align 8
  %68 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.musb_request*, %struct.musb_request** %3, align 8
  %72 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.musb_request*, %struct.musb_request** %3, align 8
  %76 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %63
  %80 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %83

81:                                               ; preds = %63
  %82 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = call i32 @dma_sync_single_for_cpu(i32 %66, i64 %70, i32 %74, i32 %84)
  br label %86

86:                                               ; preds = %83, %56
  %87 = load i64, i64* @UN_MAPPED, align 8
  %88 = load %struct.musb_request*, %struct.musb_request** %3, align 8
  %89 = getelementptr inbounds %struct.musb_request, %struct.musb_request* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %86, %25, %17
  ret void
}

declare dso_local i32 @is_buffer_mapped(%struct.musb_request*) #1

declare dso_local i32 @dev_vdbg(i32, i8*) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
