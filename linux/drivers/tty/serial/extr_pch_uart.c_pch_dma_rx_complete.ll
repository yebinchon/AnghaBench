; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_pch_dma_rx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_pch_dma_rx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eg20t_port = type { i32, i32, i32, %struct.uart_port }
%struct.uart_port = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PCH_UART_HAL_RX_INT = common dso_local global i32 0, align 4
@PCH_UART_HAL_RX_ERR_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pch_dma_rx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_dma_rx_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.eg20t_port*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.eg20t_port*
  store %struct.eg20t_port* %7, %struct.eg20t_port** %3, align 8
  %8 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %9 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %8, i32 0, i32 3
  store %struct.uart_port* %9, %struct.uart_port** %4, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %14 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %13, i32 0, i32 2
  %15 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %16 = call i32 @dma_sync_sg_for_cpu(i32 %12, i32* %14, i32 1, i32 %15)
  %17 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %18 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %19 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dma_push_rx(%struct.eg20t_port* %17, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @tty_flip_buffer_push(i32* %28)
  br label %30

30:                                               ; preds = %24, %1
  %31 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %32 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @async_tx_ack(i32 %33)
  %35 = load %struct.eg20t_port*, %struct.eg20t_port** %3, align 8
  %36 = load i32, i32* @PCH_UART_HAL_RX_INT, align 4
  %37 = load i32, i32* @PCH_UART_HAL_RX_ERR_INT, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @pch_uart_hal_enable_interrupt(%struct.eg20t_port* %35, i32 %38)
  ret void
}

declare dso_local i32 @dma_sync_sg_for_cpu(i32, i32*, i32, i32) #1

declare dso_local i32 @dma_push_rx(%struct.eg20t_port*, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @async_tx_ack(i32) #1

declare dso_local i32 @pch_uart_hal_enable_interrupt(%struct.eg20t_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
