; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_dma_map_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_dma_map_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nbu2ss_ep = type { i64 }
%struct.nbu2ss_req = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@DMA_ADDR_INVALID = common dso_local global i64 0, align 8
@USB_DIR_IN = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbu2ss_udc*, %struct.nbu2ss_ep*, %struct.nbu2ss_req*, i64)* @_nbu2ss_dma_map_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_nbu2ss_dma_map_single(%struct.nbu2ss_udc* %0, %struct.nbu2ss_ep* %1, %struct.nbu2ss_req* %2, i64 %3) #0 {
  %5 = alloca %struct.nbu2ss_udc*, align 8
  %6 = alloca %struct.nbu2ss_ep*, align 8
  %7 = alloca %struct.nbu2ss_req*, align 8
  %8 = alloca i64, align 8
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %5, align 8
  store %struct.nbu2ss_ep* %1, %struct.nbu2ss_ep** %6, align 8
  store %struct.nbu2ss_req* %2, %struct.nbu2ss_req** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %10 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DMA_ADDR_INVALID, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %4
  %16 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %17 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %6, align 8
  %22 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %25 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  br label %54

27:                                               ; preds = %15
  %28 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %5, align 8
  %29 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %34 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %38 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @USB_DIR_IN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %27
  %45 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %48

46:                                               ; preds = %27
  %47 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = call i64 @dma_map_single(i32 %32, i32 %36, i32 %40, i32 %49)
  %51 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %52 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  br label %54

54:                                               ; preds = %48, %20
  %55 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %56 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %89

57:                                               ; preds = %4
  %58 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %59 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %86, label %62

62:                                               ; preds = %57
  %63 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %5, align 8
  %64 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %69 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %73 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @USB_DIR_IN, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %62
  %80 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %83

81:                                               ; preds = %62
  %82 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = call i32 @dma_sync_single_for_device(i32 %67, i64 %71, i32 %75, i32 %84)
  br label %86

86:                                               ; preds = %83, %57
  %87 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %88 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %54
  ret void
}

declare dso_local i64 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
