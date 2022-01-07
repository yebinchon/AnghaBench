; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_dma_tx_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_dma_tx_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { i32, %struct.TYPE_9__, i64, i32, %struct.scatterlist* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32 }
%struct.scatterlist = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@UCR1 = common dso_local global i32 0, align 4
@UCR1_TXDMAEN = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"we finish the TX DMA.\0A\00", align 1
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@UCR4 = common dso_local global i32 0, align 4
@UCR4_TCEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @imx_uart_dma_tx_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_dma_tx_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.imx_port*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca %struct.circ_buf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.imx_port*
  store %struct.imx_port* %10, %struct.imx_port** %3, align 8
  %11 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %12 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %11, i32 0, i32 4
  %13 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %14 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %13, i64 0
  store %struct.scatterlist* %14, %struct.scatterlist** %4, align 8
  %15 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %16 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store %struct.circ_buf* %19, %struct.circ_buf** %5, align 8
  %20 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %21 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %26 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %30 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %31 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @DMA_TO_DEVICE, align 4
  %34 = call i32 @dma_unmap_sg(i32 %28, %struct.scatterlist* %29, i32 %32, i32 %33)
  %35 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %36 = load i32, i32* @UCR1, align 4
  %37 = call i32 @imx_uart_readl(%struct.imx_port* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @UCR1_TXDMAEN, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @UCR1, align 4
  %45 = call i32 @imx_uart_writel(%struct.imx_port* %42, i32 %43, i32 %44)
  %46 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %47 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %50 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %48, %51
  %53 = load i32, i32* @UART_XMIT_SIZE, align 4
  %54 = sub nsw i32 %53, 1
  %55 = and i32 %52, %54
  %56 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %57 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %59 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %62 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, %60
  store i32 %66, i32* %64, align 4
  %67 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %68 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %73 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %75 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %74)
  %76 = load i64, i64* @WAKEUP_CHARS, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %1
  %79 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %80 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %79, i32 0, i32 1
  %81 = call i32 @uart_write_wakeup(%struct.TYPE_9__* %80)
  br label %82

82:                                               ; preds = %78, %1
  %83 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %84 = call i32 @uart_circ_empty(%struct.circ_buf* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %88 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %87, i32 0, i32 1
  %89 = call i32 @uart_tx_stopped(%struct.TYPE_9__* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %93 = call i32 @imx_uart_dma_tx(%struct.imx_port* %92)
  br label %115

94:                                               ; preds = %86, %82
  %95 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %96 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SER_RS485_ENABLED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %94
  %104 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %105 = load i32, i32* @UCR4, align 4
  %106 = call i32 @imx_uart_readl(%struct.imx_port* %104, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* @UCR4_TCEN, align 4
  %108 = load i32, i32* %8, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %8, align 4
  %110 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @UCR4, align 4
  %113 = call i32 @imx_uart_writel(%struct.imx_port* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %103, %94
  br label %115

115:                                              ; preds = %114, %91
  %116 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %117 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i64, i64* %6, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_9__*) #1

declare dso_local i32 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @uart_tx_stopped(%struct.TYPE_9__*) #1

declare dso_local i32 @imx_uart_dma_tx(%struct.imx_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
