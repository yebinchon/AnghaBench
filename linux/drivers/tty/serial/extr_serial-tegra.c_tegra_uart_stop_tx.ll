; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.tegra_uart_port = type { i64, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32 }
%struct.dma_tx_state = type { i32 }

@TEGRA_UART_TX_DMA = common dso_local global i64 0, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @tegra_uart_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_uart_stop_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tegra_uart_port*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca %struct.dma_tx_state, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = call %struct.tegra_uart_port* @to_tegra_uport(%struct.uart_port* %7)
  store %struct.tegra_uart_port* %8, %struct.tegra_uart_port** %3, align 8
  %9 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.circ_buf* %13, %struct.circ_buf** %4, align 8
  %14 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TEGRA_UART_TX_DMA, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %54

20:                                               ; preds = %1
  %21 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %22 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dmaengine_terminate_all(i32 %23)
  %25 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %29 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dmaengine_tx_status(i32 %27, i32 %30, %struct.dma_tx_state* %5)
  %32 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub i32 %34, %36
  store i32 %37, i32* %6, align 4
  %38 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %39 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @async_tx_ack(i32 %40)
  %42 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %43 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %44, %45
  %47 = load i32, i32* @UART_XMIT_SIZE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %46, %48
  %50 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %51 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %53 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.tegra_uart_port* @to_tegra_uport(%struct.uart_port*) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @dmaengine_tx_status(i32, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @async_tx_ack(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
