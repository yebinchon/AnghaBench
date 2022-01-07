; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_tx_interrupt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_tx_interrupt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.stm32_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_usart_offsets }
%struct.stm32_usart_offsets = type { i32, i32 }

@USART_CR3_TXFTIE = common dso_local global i32 0, align 4
@USART_CR1_TXEIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @stm32_tx_interrupt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_tx_interrupt_enable(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.stm32_port*, align 8
  %4 = alloca %struct.stm32_usart_offsets*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.stm32_port* @to_stm32_port(%struct.uart_port* %5)
  store %struct.stm32_port* %6, %struct.stm32_port** %3, align 8
  %7 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %8 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.stm32_usart_offsets* %10, %struct.stm32_usart_offsets** %4, align 8
  %11 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %12 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %4, align 8
  %18 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @USART_CR3_TXFTIE, align 4
  %21 = call i32 @stm32_set_bits(%struct.uart_port* %16, i32 %19, i32 %20)
  br label %29

22:                                               ; preds = %1
  %23 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %24 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %4, align 8
  %25 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @USART_CR1_TXEIE, align 4
  %28 = call i32 @stm32_set_bits(%struct.uart_port* %23, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %15
  ret void
}

declare dso_local %struct.stm32_port* @to_stm32_port(%struct.uart_port*) #1

declare dso_local i32 @stm32_set_bits(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
