; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_prepare_tx_pdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_prepare_tx_pdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32 }
%struct.atmel_uart_port = type { %struct.atmel_dma_buffer }
%struct.atmel_dma_buffer = type { i64, i32, i32, i32 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @atmel_prepare_tx_pdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_prepare_tx_pdc(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  %4 = alloca %struct.atmel_dma_buffer*, align 8
  %5 = alloca %struct.circ_buf*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %6)
  store %struct.atmel_uart_port* %7, %struct.atmel_uart_port** %3, align 8
  %8 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %8, i32 0, i32 0
  store %struct.atmel_dma_buffer* %9, %struct.atmel_dma_buffer** %4, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.circ_buf* %13, %struct.circ_buf** %5, align 8
  %14 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %15 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UART_XMIT_SIZE, align 4
  %26 = load i32, i32* @DMA_TO_DEVICE, align 4
  %27 = call i32 @dma_map_single(i32 %21, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @UART_XMIT_SIZE, align 4
  %31 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  ret i32 0
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
