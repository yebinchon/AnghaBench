; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_next_out_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_next_out_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_ep = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.omap_req = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@UDC_RXN_TC = common dso_local global i64 0, align 8
@OMAP_DMA_DATA_TYPE_S16 = common dso_local global i32 0, align 4
@OMAP_DMA_SYNC_ELEMENT = common dso_local global i32 0, align 4
@OMAP_DMA_PORT_EMIFF = common dso_local global i32 0, align 4
@OMAP_DMA_AMODE_POST_INC = common dso_local global i32 0, align 4
@UDC_RXN_STOP = common dso_local global i32 0, align 4
@UDC_DMA_IRQ_EN = common dso_local global i32 0, align 4
@UDC_EP_NUM = common dso_local global i32 0, align 4
@UDC_SET_FIFO_EN = common dso_local global i32 0, align 4
@UDC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_ep*, %struct.omap_req*)* @next_out_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next_out_dma(%struct.omap_ep* %0, %struct.omap_req* %1) #0 {
  %3 = alloca %struct.omap_ep*, align 8
  %4 = alloca %struct.omap_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.omap_ep* %0, %struct.omap_ep** %3, align 8
  store %struct.omap_req* %1, %struct.omap_req** %4, align 8
  %8 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %9 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %13 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub i32 %11, %15
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %18 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = udiv i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i64, i64* @UDC_RXN_TC, align 8
  %25 = trunc i64 %24 to i32
  %26 = add i32 %25, 1
  %27 = call i32 @min(i32 %23, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %30 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul i32 %28, %32
  %34 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %35 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %37 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @OMAP_DMA_DATA_TYPE_S16, align 4
  %40 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %41 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = lshr i32 %43, 1
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @OMAP_DMA_SYNC_ELEMENT, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @omap_set_dma_transfer_params(i32 %38, i32 %39, i32 %44, i32 %45, i32 %46, i32 %47, i32 0)
  %49 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %50 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @OMAP_DMA_PORT_EMIFF, align 4
  %53 = load i32, i32* @OMAP_DMA_AMODE_POST_INC, align 4
  %54 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %55 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.omap_req*, %struct.omap_req** %4, align 8
  %59 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add i32 %57, %61
  %63 = call i32 @omap_set_dma_dest_params(i32 %51, i32 %52, i32 %53, i32 %62, i32 0, i32 0)
  %64 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %65 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @omap_get_dma_dst_pos(i32 %66)
  %68 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %69 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @UDC_RXN_STOP, align 4
  %71 = load i32, i32* %5, align 4
  %72 = sub i32 %71, 1
  %73 = or i32 %70, %72
  %74 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %75 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @UDC_RXDMA(i32 %76)
  %78 = call i32 @omap_writew(i32 %73, i32 %77)
  %79 = load i32, i32* @UDC_DMA_IRQ_EN, align 4
  %80 = call i32 @omap_readw(i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %82 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @UDC_RX_EOT_IE(i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @UDC_DMA_IRQ_EN, align 4
  %89 = call i32 @omap_writew(i32 %87, i32 %88)
  %90 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %91 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 15
  %94 = load i32, i32* @UDC_EP_NUM, align 4
  %95 = call i32 @omap_writew(i32 %93, i32 %94)
  %96 = load i32, i32* @UDC_SET_FIFO_EN, align 4
  %97 = load i32, i32* @UDC_CTRL, align 4
  %98 = call i32 @omap_writew(i32 %96, i32 %97)
  %99 = load %struct.omap_ep*, %struct.omap_ep** %3, align 8
  %100 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @omap_start_dma(i32 %101)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @omap_set_dma_transfer_params(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @omap_set_dma_dest_params(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @omap_get_dma_dst_pos(i32) #1

declare dso_local i32 @omap_writew(i32, i32) #1

declare dso_local i32 @UDC_RXDMA(i32) #1

declare dso_local i32 @omap_readw(i32) #1

declare dso_local i32 @UDC_RX_EOT_IE(i32) #1

declare dso_local i32 @omap_start_dma(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
