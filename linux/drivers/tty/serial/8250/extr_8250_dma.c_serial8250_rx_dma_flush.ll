; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dma.c_serial8250_rx_dma_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dma.c_serial8250_rx_dma_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.uart_8250_dma* }
%struct.uart_8250_dma = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serial8250_rx_dma_flush(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca %struct.uart_8250_dma*, align 8
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %4 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %6 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %5, align 8
  store %struct.uart_8250_dma* %6, %struct.uart_8250_dma** %3, align 8
  %7 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %3, align 8
  %8 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %3, align 8
  %13 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dmaengine_pause(i32 %14)
  %16 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %17 = call i32 @__dma_rx_complete(%struct.uart_8250_port* %16)
  %18 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %3, align 8
  %19 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dmaengine_terminate_async(i32 %20)
  br label %22

22:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @dmaengine_pause(i32) #1

declare dso_local i32 @__dma_rx_complete(%struct.uart_8250_port*) #1

declare dso_local i32 @dmaengine_terminate_async(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
