; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_stop_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.tegra_uart_port = type { i64, i32, i64, i32, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.dma_tx_state = type { i32 }

@UART_IER_RDI = common dso_local global i64 0, align 8
@UART_IER_RLSI = common dso_local global i64 0, align 8
@UART_IER_RTOIE = common dso_local global i64 0, align 8
@TEGRA_UART_IER_EORD = common dso_local global i64 0, align 8
@UART_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @tegra_uart_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_uart_stop_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tegra_uart_port*, align 8
  %4 = alloca %struct.tty_port*, align 8
  %5 = alloca %struct.dma_tx_state, align 4
  %6 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = call %struct.tegra_uart_port* @to_tegra_uport(%struct.uart_port* %7)
  store %struct.tegra_uart_port* %8, %struct.tegra_uart_port** %3, align 8
  %9 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.tty_port* %13, %struct.tty_port** %4, align 8
  %14 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %20 = call i32 @set_rts(%struct.tegra_uart_port* %19, i32 0)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %81

27:                                               ; preds = %21
  %28 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %29 = call i32 @tegra_uart_wait_sym_time(%struct.tegra_uart_port* %28, i32 1)
  %30 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* @UART_IER_RDI, align 8
  %34 = load i64, i64* @UART_IER_RLSI, align 8
  %35 = or i64 %33, %34
  %36 = load i64, i64* @UART_IER_RTOIE, align 8
  %37 = or i64 %35, %36
  %38 = load i64, i64* @TEGRA_UART_IER_EORD, align 8
  %39 = or i64 %37, %38
  %40 = xor i64 %39, -1
  %41 = load i64, i64* %6, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %45 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* @UART_IER, align 4
  %49 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %46, i64 %47, i32 %48)
  %50 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %51 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %53 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %27
  %57 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %58 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %56
  %62 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %63 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @dmaengine_terminate_all(i64 %64)
  %66 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %67 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %70 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dmaengine_tx_status(i64 %68, i32 %71, %struct.dma_tx_state* %5)
  %73 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %74 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %5, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @tegra_uart_rx_buffer_push(%struct.tegra_uart_port* %73, i32 %75)
  br label %81

77:                                               ; preds = %56, %27
  %78 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %79 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %80 = call i32 @tegra_uart_handle_rx_pio(%struct.tegra_uart_port* %78, %struct.tty_port* %79)
  br label %81

81:                                               ; preds = %26, %77, %61
  ret void
}

declare dso_local %struct.tegra_uart_port* @to_tegra_uport(%struct.uart_port*) #1

declare dso_local i32 @set_rts(%struct.tegra_uart_port*, i32) #1

declare dso_local i32 @tegra_uart_wait_sym_time(%struct.tegra_uart_port*, i32) #1

declare dso_local i32 @tegra_uart_write(%struct.tegra_uart_port*, i64, i32) #1

declare dso_local i32 @dmaengine_terminate_all(i64) #1

declare dso_local i32 @dmaengine_tx_status(i64, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @tegra_uart_rx_buffer_push(%struct.tegra_uart_port*, i32) #1

declare dso_local i32 @tegra_uart_handle_rx_pio(%struct.tegra_uart_port*, %struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
