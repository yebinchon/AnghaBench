; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_tx_dma_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_tx_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.stm32_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_usart_offsets }
%struct.stm32_usart_offsets = type { i32 }

@USART_CR3_DMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @stm32_tx_dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_tx_dma_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.stm32_port*, align 8
  %5 = alloca %struct.stm32_usart_offsets*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.uart_port*
  store %struct.uart_port* %7, %struct.uart_port** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = call %struct.stm32_port* @to_stm32_port(%struct.uart_port* %8)
  store %struct.stm32_port* %9, %struct.stm32_port** %4, align 8
  %10 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %11 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.stm32_usart_offsets* %13, %struct.stm32_usart_offsets** %5, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %5, align 8
  %16 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @USART_CR3_DMAT, align 4
  %19 = call i32 @stm32_clr_bits(%struct.uart_port* %14, i32 %17, i32 %18)
  %20 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %21 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %23 = call i32 @stm32_transmit_chars(%struct.uart_port* %22)
  ret void
}

declare dso_local %struct.stm32_port* @to_stm32_port(%struct.uart_port*) #1

declare dso_local i32 @stm32_clr_bits(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @stm32_transmit_chars(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
