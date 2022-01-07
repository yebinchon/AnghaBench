; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_unthrottle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_unthrottle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.stm32_port = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_usart_offsets }
%struct.stm32_usart_offsets = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @stm32_unthrottle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_unthrottle(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.stm32_port*, align 8
  %4 = alloca %struct.stm32_usart_offsets*, align 8
  %5 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.stm32_port* @to_stm32_port(%struct.uart_port* %6)
  store %struct.stm32_port* %7, %struct.stm32_port** %3, align 8
  %8 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %9 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.stm32_usart_offsets* %11, %struct.stm32_usart_offsets** %4, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %4, align 8
  %18 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %21 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @stm32_set_bits(%struct.uart_port* %16, i32 %19, i64 %22)
  %24 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %25 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %1
  %29 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %30 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %4, align 8
  %31 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %34 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @stm32_set_bits(%struct.uart_port* %29, i32 %32, i64 %35)
  br label %37

37:                                               ; preds = %28, %1
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 0
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret void
}

declare dso_local %struct.stm32_port* @to_stm32_port(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @stm32_set_bits(%struct.uart_port*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
