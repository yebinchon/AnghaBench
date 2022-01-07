; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dma.c___dma_rx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dma.c___dma_rx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_5__, %struct.uart_8250_dma* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.uart_8250_dma = type { i32, i32, i32, i32, i64 }
%struct.dma_tx_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @__dma_rx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dma_rx_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca %struct.uart_8250_dma*, align 8
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca %struct.dma_tx_state, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.uart_8250_port*
  store %struct.uart_8250_port* %9, %struct.uart_8250_port** %3, align 8
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i32 0, i32 1
  %12 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %11, align 8
  store %struct.uart_8250_dma* %12, %struct.uart_8250_dma** %4, align 8
  %13 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.tty_port* %17, %struct.tty_port** %5, align 8
  %18 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %19 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %21 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %24 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dmaengine_tx_status(i32 %22, i32 %25, %struct.dma_tx_state* %6)
  %27 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %28 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %29, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %34 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %35 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @tty_insert_flip_string(%struct.tty_port* %33, i32 %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %41 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, %39
  store i32 %45, i32* %43, align 8
  %46 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %47 = call i32 @tty_flip_buffer_push(%struct.tty_port* %46)
  ret void
}

declare dso_local i32 @dmaengine_tx_status(i32, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_port*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
