; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_rx_dma_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_rx_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { i64, %struct.uart_port, i32, i32 }
%struct.uart_port = type { i32, i32 }
%struct.dma_tx_state = type { i32 }

@DMA_IN_PROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"RX DMA is in progress\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tegra_uart_rx_dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_uart_rx_dma_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tegra_uart_port*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dma_tx_state, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.tegra_uart_port*
  store %struct.tegra_uart_port* %9, %struct.tegra_uart_port** %3, align 8
  %10 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %11 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %10, i32 0, i32 1
  store %struct.uart_port* %11, %struct.uart_port** %4, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dmaengine_tx_status(i32 %18, i32 %21, %struct.dma_tx_state* %6)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %28 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %53

32:                                               ; preds = %1
  %33 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %39 = call i32 @set_rts(%struct.tegra_uart_port* %38, i32 0)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %42 = call i32 @tegra_uart_rx_buffer_push(%struct.tegra_uart_port* %41, i32 0)
  %43 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %44 = call i32 @tegra_uart_start_rx_dma(%struct.tegra_uart_port* %43)
  %45 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %46 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %51 = call i32 @set_rts(%struct.tegra_uart_port* %50, i32 1)
  br label %52

52:                                               ; preds = %49, %40
  br label %53

53:                                               ; preds = %52, %26
  %54 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 0
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dmaengine_tx_status(i32, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @set_rts(%struct.tegra_uart_port*, i32) #1

declare dso_local i32 @tegra_uart_rx_buffer_push(%struct.tegra_uart_port*, i32) #1

declare dso_local i32 @tegra_uart_start_rx_dma(%struct.tegra_uart_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
