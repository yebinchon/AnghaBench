; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_pch_dma_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_pch_dma_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eg20t_port = type { i32, %struct.scatterlist*, i64, i32, %struct.uart_port }
%struct.scatterlist = type { i32 }
%struct.uart_port = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@PCH_UART_HAL_TX_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pch_dma_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_dma_tx_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.eg20t_port*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.circ_buf*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.eg20t_port*
  store %struct.eg20t_port* %9, %struct.eg20t_port** %3, align 8
  %10 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %11 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %10, i32 0, i32 4
  store %struct.uart_port* %11, %struct.uart_port** %4, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.circ_buf* %15, %struct.circ_buf** %5, align 8
  %16 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %17 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %16, i32 0, i32 1
  %18 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  store %struct.scatterlist* %18, %struct.scatterlist** %6, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %43, %1
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %22 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %19
  %26 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %27 = call i64 @sg_dma_len(%struct.scatterlist* %26)
  %28 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %29 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  %34 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %35 = call i64 @sg_dma_len(%struct.scatterlist* %34)
  %36 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %35
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  br label %43

43:                                               ; preds = %25
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %47 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %46, i32 1
  store %struct.scatterlist* %47, %struct.scatterlist** %6, align 8
  br label %19

48:                                               ; preds = %19
  %49 = load i32, i32* @UART_XMIT_SIZE, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %52 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %56 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @async_tx_ack(i32 %57)
  %59 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %63 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %64 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @DMA_TO_DEVICE, align 4
  %67 = call i32 @dma_unmap_sg(i32 %61, %struct.scatterlist* %62, i32 %65, i32 %66)
  %68 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %69 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %71 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %73 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %72, i32 0, i32 1
  %74 = load %struct.scatterlist*, %struct.scatterlist** %73, align 8
  %75 = call i32 @kfree(%struct.scatterlist* %74)
  %76 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %77 = load i32, i32* @PCH_UART_HAL_TX_INT, align 4
  %78 = call i32 @pch_uart_hal_enable_interrupt(%struct.eg20t_port* %76, i32 %77)
  ret void
}

declare dso_local i64 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @async_tx_ack(i32) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @kfree(%struct.scatterlist*) #1

declare dso_local i32 @pch_uart_hal_enable_interrupt(%struct.eg20t_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
