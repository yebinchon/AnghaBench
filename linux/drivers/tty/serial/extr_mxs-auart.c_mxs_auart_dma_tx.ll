; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_dma_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_dma_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_auart_port = type { i32, i32, %struct.dma_chan*, %struct.scatterlist }
%struct.dma_chan = type { i32 }
%struct.scatterlist = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.mxs_auart_port*, i32 }

@DMA_TRANS_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"step 1 error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"step 2 error\0A\00", align 1
@dma_tx_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_auart_port*, i32)* @mxs_auart_dma_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_auart_dma_tx(%struct.mxs_auart_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxs_auart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i32, align 4
  store %struct.mxs_auart_port* %0, %struct.mxs_auart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %11 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %10, i32 0, i32 3
  store %struct.scatterlist* %11, %struct.scatterlist** %7, align 8
  %12 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %13 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %12, i32 0, i32 2
  %14 = load %struct.dma_chan*, %struct.dma_chan** %13, align 8
  store %struct.dma_chan* %14, %struct.dma_chan** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @AUART_CTRL1_XFER_COUNT(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %18 = bitcast i32* %9 to %struct.scatterlist*
  %19 = load i32, i32* @DMA_TRANS_NONE, align 4
  %20 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %17, %struct.scatterlist* %18, i32 1, i32 %19, i32 0)
  store %struct.dma_async_tx_descriptor* %20, %struct.dma_async_tx_descriptor** %6, align 8
  %21 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %22 = icmp ne %struct.dma_async_tx_descriptor* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %2
  %24 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %25 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %70

30:                                               ; preds = %2
  %31 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %32 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %33 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @sg_init_one(%struct.scatterlist* %31, i32 %34, i32 %35)
  %37 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %38 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %41 = load i32, i32* @DMA_TO_DEVICE, align 4
  %42 = call i32 @dma_map_sg(i32 %39, %struct.scatterlist* %40, i32 1, i32 %41)
  %43 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %44 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %45 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %46 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %47 = load i32, i32* @DMA_CTRL_ACK, align 4
  %48 = or i32 %46, %47
  %49 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %43, %struct.scatterlist* %44, i32 1, i32 %45, i32 %48)
  store %struct.dma_async_tx_descriptor* %49, %struct.dma_async_tx_descriptor** %6, align 8
  %50 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %51 = icmp ne %struct.dma_async_tx_descriptor* %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %30
  %53 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %54 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %70

59:                                               ; preds = %30
  %60 = load i32, i32* @dma_tx_callback, align 4
  %61 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %62 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %4, align 8
  %64 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %65 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %64, i32 0, i32 0
  store %struct.mxs_auart_port* %63, %struct.mxs_auart_port** %65, align 8
  %66 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %67 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %66)
  %68 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %69 = call i32 @dma_async_issue_pending(%struct.dma_chan* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %59, %52, %23
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @AUART_CTRL1_XFER_COUNT(i32) #1

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
