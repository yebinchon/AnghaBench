; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_tx_dma_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_tx_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { i32, %struct.TYPE_4__, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32 }
%struct.dma_tx_state = type { i32 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tegra_uart_tx_dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_uart_tx_dma_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tegra_uart_port*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca %struct.dma_tx_state, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.tegra_uart_port*
  store %struct.tegra_uart_port* %9, %struct.tegra_uart_port** %3, align 8
  %10 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %11 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.circ_buf* %14, %struct.circ_buf** %4, align 8
  %15 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dmaengine_tx_status(i32 %17, i32 %20, %struct.dma_tx_state* %5)
  %22 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub i32 %24, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %29 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @async_tx_ack(i32 %30)
  %32 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %38 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %39, %40
  %42 = load i32, i32* @UART_XMIT_SIZE, align 4
  %43 = sub nsw i32 %42, 1
  %44 = and i32 %41, %43
  %45 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %46 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %48 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %50 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %49)
  %51 = load i64, i64* @WAKEUP_CHARS, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %1
  %54 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %55 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %54, i32 0, i32 1
  %56 = call i32 @uart_write_wakeup(%struct.TYPE_4__* %55)
  br label %57

57:                                               ; preds = %53, %1
  %58 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %59 = call i32 @tegra_uart_start_next_tx(%struct.tegra_uart_port* %58)
  %60 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %61 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  ret void
}

declare dso_local i32 @dmaengine_tx_status(i32, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @async_tx_ack(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_4__*) #1

declare dso_local i32 @tegra_uart_start_next_tx(%struct.tegra_uart_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
