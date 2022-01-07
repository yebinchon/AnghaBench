; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_start_pio_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_start_pio_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { i32, i32, i32 }

@TEGRA_UART_MIN_DMA = common dso_local global i32 0, align 4
@TEGRA_UART_TX_PIO = common dso_local global i32 0, align 4
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_uart_port*, i32)* @tegra_uart_start_pio_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_uart_start_pio_tx(%struct.tegra_uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_uart_port* %0, %struct.tegra_uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @TEGRA_UART_MIN_DMA, align 4
  %7 = icmp ugt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @TEGRA_UART_MIN_DMA, align 4
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i32, i32* @TEGRA_UART_TX_PIO, align 4
  %12 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @UART_IER_THRI, align 4
  %18 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %23 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %24 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @UART_IER, align 4
  %27 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %22, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @tegra_uart_write(%struct.tegra_uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
