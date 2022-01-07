; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_start_rx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_start_rx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.dma_chan*, %struct.scatterlist }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dma_chan = type { i32 }
%struct.scatterlist = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.imx_port*, i32 }

@RX_DMA_PERIODS = common dso_local global i32 0, align 4
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"DMA mapping error for RX.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"We cannot prepare for the RX slave dma!\0A\00", align 1
@imx_uart_dma_rx_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"RX: prepare for the DMA.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_port*)* @imx_uart_start_rx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_uart_start_rx_dma(%struct.imx_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx_port*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca i32, align 4
  store %struct.imx_port* %0, %struct.imx_port** %3, align 8
  %9 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %10 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %9, i32 0, i32 7
  store %struct.scatterlist* %10, %struct.scatterlist** %4, align 8
  %11 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %12 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %11, i32 0, i32 6
  %13 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  store %struct.dma_chan* %13, %struct.dma_chan** %5, align 8
  %14 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %15 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %19 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %22 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @RX_DMA_PERIODS, align 4
  %25 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %26 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %28 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %29 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RX_BUF_SIZE, align 4
  %32 = call i32 @sg_init_one(%struct.scatterlist* %27, i32 %30, i32 %31)
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %35 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %36 = call i32 @dma_map_sg(%struct.device* %33, %struct.scatterlist* %34, i32 1, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %1
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %87

44:                                               ; preds = %1
  %45 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %46 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %47 = call i32 @sg_dma_address(%struct.scatterlist* %46)
  %48 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %49 = call i32 @sg_dma_len(%struct.scatterlist* %48)
  %50 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %51 = call i32 @sg_dma_len(%struct.scatterlist* %50)
  %52 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %53 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sdiv i32 %51, %54
  %56 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %57 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %58 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_dma_cyclic(%struct.dma_chan* %45, i32 %47, i32 %49, i32 %55, i32 %56, i32 %57)
  store %struct.dma_async_tx_descriptor* %58, %struct.dma_async_tx_descriptor** %7, align 8
  %59 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %60 = icmp ne %struct.dma_async_tx_descriptor* %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %44
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %64 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %65 = call i32 @dma_unmap_sg(%struct.device* %62, %struct.scatterlist* %63, i32 1, i32 %64)
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %87

70:                                               ; preds = %44
  %71 = load i32, i32* @imx_uart_dma_rx_callback, align 4
  %72 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %73 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %75 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %76 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %75, i32 0, i32 0
  store %struct.imx_port* %74, %struct.imx_port** %76, align 8
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = call i32 @dev_dbg(%struct.device* %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %80 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  %81 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %82 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %81)
  %83 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %84 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %86 = call i32 @dma_async_issue_pending(%struct.dma_chan* %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %70, %61, %39
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @dma_map_sg(%struct.device*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_dma_cyclic(%struct.dma_chan*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
