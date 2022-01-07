; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_dma_prep_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_dma_prep_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_auart_port = type { i32, i32, %struct.dma_chan*, %struct.scatterlist }
%struct.dma_chan = type { i32 }
%struct.scatterlist = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.mxs_auart_port*, i32 }

@AUART_CTRL0_RXTO_ENABLE = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@DMA_TRANS_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"step 1 error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"step 2 error\0A\00", align 1
@dma_rx_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_auart_port*)* @mxs_auart_dma_prep_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_auart_dma_prep_rx(%struct.mxs_auart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxs_auart_port*, align 8
  %4 = alloca %struct.dma_async_tx_descriptor*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca [1 x i32], align 4
  store %struct.mxs_auart_port* %0, %struct.mxs_auart_port** %3, align 8
  %8 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %9 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %8, i32 0, i32 3
  store %struct.scatterlist* %9, %struct.scatterlist** %5, align 8
  %10 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %11 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %10, i32 0, i32 2
  %12 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  store %struct.dma_chan* %12, %struct.dma_chan** %6, align 8
  %13 = load i32, i32* @AUART_CTRL0_RXTO_ENABLE, align 4
  %14 = call i32 @AUART_CTRL0_RXTIMEOUT(i32 128)
  %15 = or i32 %13, %14
  %16 = load i32, i32* @UART_XMIT_SIZE, align 4
  %17 = call i32 @AUART_CTRL0_XFER_COUNT(i32 %16)
  %18 = or i32 %15, %17
  %19 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %21 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %22 = bitcast i32* %21 to %struct.scatterlist*
  %23 = load i32, i32* @DMA_TRANS_NONE, align 4
  %24 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %20, %struct.scatterlist* %22, i32 1, i32 %23, i32 0)
  store %struct.dma_async_tx_descriptor* %24, %struct.dma_async_tx_descriptor** %4, align 8
  %25 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %26 = icmp ne %struct.dma_async_tx_descriptor* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %1
  %28 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %29 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %72

34:                                               ; preds = %1
  %35 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %36 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %37 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @UART_XMIT_SIZE, align 4
  %40 = call i32 @sg_init_one(%struct.scatterlist* %35, i32 %38, i32 %39)
  %41 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %42 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %45 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %46 = call i32 @dma_map_sg(i32 %43, %struct.scatterlist* %44, i32 1, i32 %45)
  %47 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %48 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %49 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %50 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %51 = load i32, i32* @DMA_CTRL_ACK, align 4
  %52 = or i32 %50, %51
  %53 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %47, %struct.scatterlist* %48, i32 1, i32 %49, i32 %52)
  store %struct.dma_async_tx_descriptor* %53, %struct.dma_async_tx_descriptor** %4, align 8
  %54 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %55 = icmp ne %struct.dma_async_tx_descriptor* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %34
  %57 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %58 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %72

61:                                               ; preds = %34
  %62 = load i32, i32* @dma_rx_callback, align 4
  %63 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %64 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %66 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %67 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %66, i32 0, i32 0
  store %struct.mxs_auart_port* %65, %struct.mxs_auart_port** %67, align 8
  %68 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %69 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %68)
  %70 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %71 = call i32 @dma_async_issue_pending(%struct.dma_chan* %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %61, %56, %27
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @AUART_CTRL0_RXTIMEOUT(i32) #1

declare dso_local i32 @AUART_CTRL0_XFER_COUNT(i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
