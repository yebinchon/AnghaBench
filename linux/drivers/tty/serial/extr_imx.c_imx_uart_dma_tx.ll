; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_dma_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_dma_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { i32, i32, i32, %struct.TYPE_4__, %struct.dma_chan*, %struct.scatterlist* }
%struct.TYPE_4__ = type { %struct.device*, %struct.TYPE_3__* }
%struct.device = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64, i64 }
%struct.dma_chan = type { i32 }
%struct.scatterlist = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.imx_port*, i32 }

@UCR4 = common dso_local global i32 0, align 4
@UCR4_TCEN = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"DMA mapping error for TX.\0A\00", align 1
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"We cannot prepare for the TX slave dma!\0A\00", align 1
@imx_uart_dma_tx_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"TX: prepare to send %lu bytes by DMA.\0A\00", align 1
@UCR1 = common dso_local global i32 0, align 4
@UCR1_TXDMAEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_port*)* @imx_uart_dma_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_dma_tx(%struct.imx_port* %0) #0 {
  %2 = alloca %struct.imx_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca %struct.dma_async_tx_descriptor*, align 8
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.imx_port* %0, %struct.imx_port** %2, align 8
  %11 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %12 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.circ_buf* %15, %struct.circ_buf** %3, align 8
  %16 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %17 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %16, i32 0, i32 5
  %18 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  store %struct.scatterlist* %18, %struct.scatterlist** %4, align 8
  %19 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %20 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %19, i32 0, i32 4
  %21 = load %struct.dma_chan*, %struct.dma_chan** %20, align 8
  store %struct.dma_chan* %21, %struct.dma_chan** %6, align 8
  %22 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %23 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.device*, %struct.device** %24, align 8
  store %struct.device* %25, %struct.device** %7, align 8
  %26 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %27 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %158

31:                                               ; preds = %1
  %32 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %33 = load i32, i32* @UCR4, align 4
  %34 = call i32 @imx_uart_readl(%struct.imx_port* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @UCR4_TCEN, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @UCR4, align 4
  %42 = call i32 @imx_uart_writel(%struct.imx_port* %39, i32 %40, i32 %41)
  %43 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %44 = call i32 @uart_circ_chars_pending(%struct.circ_buf* %43)
  %45 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %46 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %48 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %51 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %31
  %55 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %56 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %58 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %59 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %62 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %66 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @sg_init_one(%struct.scatterlist* %57, i64 %64, i32 %67)
  br label %97

69:                                               ; preds = %31
  %70 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %71 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %70, i32 0, i32 1
  store i32 2, i32* %71, align 4
  %72 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %73 = call i32 @sg_init_table(%struct.scatterlist* %72, i32 2)
  %74 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %75 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %76 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %79 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load i64, i64* @UART_XMIT_SIZE, align 8
  %83 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %84 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %82, %85
  %87 = call i32 @sg_set_buf(%struct.scatterlist* %74, i64 %81, i64 %86)
  %88 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %89 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %88, i64 1
  %90 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %91 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %94 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @sg_set_buf(%struct.scatterlist* %89, i64 %92, i64 %95)
  br label %97

97:                                               ; preds = %69, %54
  %98 = load %struct.device*, %struct.device** %7, align 8
  %99 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %100 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %101 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @DMA_TO_DEVICE, align 4
  %104 = call i32 @dma_map_sg(%struct.device* %98, %struct.scatterlist* %99, i32 %102, i32 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load %struct.device*, %struct.device** %7, align 8
  %109 = call i32 @dev_err(%struct.device* %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %158

110:                                              ; preds = %97
  %111 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %112 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %113 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %114 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %117 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %118 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %111, %struct.scatterlist* %112, i32 %115, i32 %116, i32 %117)
  store %struct.dma_async_tx_descriptor* %118, %struct.dma_async_tx_descriptor** %5, align 8
  %119 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %120 = icmp ne %struct.dma_async_tx_descriptor* %119, null
  br i1 %120, label %131, label %121

121:                                              ; preds = %110
  %122 = load %struct.device*, %struct.device** %7, align 8
  %123 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %124 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %125 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @DMA_TO_DEVICE, align 4
  %128 = call i32 @dma_unmap_sg(%struct.device* %122, %struct.scatterlist* %123, i32 %126, i32 %127)
  %129 = load %struct.device*, %struct.device** %7, align 8
  %130 = call i32 @dev_err(%struct.device* %129, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %158

131:                                              ; preds = %110
  %132 = load i32, i32* @imx_uart_dma_tx_callback, align 4
  %133 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %134 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %136 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %137 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %136, i32 0, i32 0
  store %struct.imx_port* %135, %struct.imx_port** %137, align 8
  %138 = load %struct.device*, %struct.device** %7, align 8
  %139 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %140 = call i32 @uart_circ_chars_pending(%struct.circ_buf* %139)
  %141 = call i32 @dev_dbg(%struct.device* %138, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %140)
  %142 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %143 = load i32, i32* @UCR1, align 4
  %144 = call i32 @imx_uart_readl(%struct.imx_port* %142, i32 %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* @UCR1_TXDMAEN, align 4
  %146 = load i32, i32* %8, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %8, align 4
  %148 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @UCR1, align 4
  %151 = call i32 @imx_uart_writel(%struct.imx_port* %148, i32 %149, i32 %150)
  %152 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %153 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %152, i32 0, i32 0
  store i32 1, i32* %153, align 8
  %154 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %155 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %154)
  %156 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %157 = call i32 @dma_async_issue_pending(%struct.dma_chan* %156)
  br label %158

158:                                              ; preds = %131, %121, %107, %30
  ret void
}

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

declare dso_local i32 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i64, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i64, i64) #1

declare dso_local i32 @dma_map_sg(%struct.device*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
