; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_next_in_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_next_in_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_ep = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.omap_req = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }

@OMAP_DMA_SYNC_FRAME = common dso_local global i32 0, align 4
@OMAP_DMA_SYNC_ELEMENT = common dso_local global i32 0, align 4
@UDC_TXN_TSC = common dso_local global i32 0, align 4
@UDC_TXN_EOT = common dso_local global i32 0, align 4
@OMAP_DMA_DATA_TYPE_S8 = common dso_local global i32 0, align 4
@OMAP_DMA_DATA_TYPE_S16 = common dso_local global i32 0, align 4
@OMAP_DMA_PORT_EMIFF = common dso_local global i32 0, align 4
@OMAP_DMA_AMODE_POST_INC = common dso_local global i32 0, align 4
@UDC_DMA_IRQ_EN = common dso_local global i32 0, align 4
@UDC_TXN_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_ep*, %struct.omap_req*)* @next_in_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next_in_dma(%struct.omap_ep* %0, %struct.omap_req* %1) #0 {
  %3 = alloca %struct.omap_ep*, align 8
  %4 = alloca %struct.omap_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.omap_ep* %0, %struct.omap_ep** %3, align 8
  store %struct.omap_req* %1, %struct.omap_req** %4, align 8
  %10 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %11 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %15 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 %13, %17
  store i32 %18, i32* %7, align 4
  %19 = call i64 (...) @cpu_is_omap15xx()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @OMAP_DMA_SYNC_FRAME, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @OMAP_DMA_SYNC_ELEMENT, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %27 = call i64 (...) @cpu_is_omap16xx()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @UDC_TXN_TSC, align 4
  %32 = icmp ule i32 %30, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %29, %25
  %34 = call i64 (...) @cpu_is_omap15xx()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %39 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36, %29
  %43 = load i32, i32* @UDC_TXN_EOT, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %5, align 4
  %46 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %47 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @OMAP_DMA_DATA_TYPE_S8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @omap_set_dma_transfer_params(i32 %48, i32 %49, i32 %50, i32 1, i32 %51, i32 %52, i32 0)
  br label %82

54:                                               ; preds = %36, %33
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %57 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = udiv i32 %55, %58
  %60 = load i32, i32* @UDC_TXN_TSC, align 4
  %61 = add i32 %60, 1
  %62 = call i32 @min(i32 %59, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %5, align 4
  %64 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %65 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @OMAP_DMA_DATA_TYPE_S16, align 4
  %68 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %69 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 1
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @omap_set_dma_transfer_params(i32 %66, i32 %67, i32 %72, i32 %73, i32 %74, i32 %75, i32 0)
  %77 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %78 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = mul i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %54, %42
  %83 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %84 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @OMAP_DMA_PORT_EMIFF, align 4
  %87 = load i32, i32* @OMAP_DMA_AMODE_POST_INC, align 4
  %88 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %89 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %93 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = zext i32 %95 to i64
  %97 = add nsw i64 %91, %96
  %98 = call i32 @omap_set_dma_src_params(i32 %85, i32 %86, i32 %87, i64 %97, i32 0, i32 0)
  %99 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %100 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @omap_start_dma(i32 %101)
  %103 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %104 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @omap_get_dma_src_pos(i32 %105)
  %107 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %108 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @UDC_DMA_IRQ_EN, align 4
  %110 = call i32 @omap_readw(i32 %109)
  store i32 %110, i32* %6, align 4
  %111 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %112 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @UDC_TX_DONE_IE(i32 %113)
  %115 = load i32, i32* %6, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @UDC_DMA_IRQ_EN, align 4
  %119 = call i32 @omap_writew(i32 %117, i32 %118)
  %120 = load i32, i32* @UDC_TXN_START, align 4
  %121 = load i32, i32* %5, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %124 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @UDC_TXDMA(i32 %125)
  %127 = call i32 @omap_writew(i32 %122, i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %130 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  ret void
}

declare dso_local i64 @cpu_is_omap15xx(...) #1

declare dso_local i64 @cpu_is_omap16xx(...) #1

declare dso_local i32 @omap_set_dma_transfer_params(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @omap_set_dma_src_params(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @omap_start_dma(i32) #1

declare dso_local i32 @omap_get_dma_src_pos(i32) #1

declare dso_local i32 @omap_readw(i32) #1

declare dso_local i32 @UDC_TX_DONE_IE(i32) #1

declare dso_local i32 @omap_writew(i32, i32) #1

declare dso_local i32 @UDC_TXDMA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
