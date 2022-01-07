; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_tx_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_tx_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.tegra_uart_port = type { i32 }

@UART_LSR = common dso_local global i32 0, align 4
@TX_EMPTY_STATUS = common dso_local global i64 0, align 8
@TIOCSER_TEMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @tegra_uart_tx_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_uart_tx_empty(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tegra_uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = call %struct.tegra_uart_port* @to_tegra_uport(%struct.uart_port* %7)
  store %struct.tegra_uart_port* %8, %struct.tegra_uart_port** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %1
  %18 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %19 = load i32, i32* @UART_LSR, align 4
  %20 = call i64 @tegra_uart_read(%struct.tegra_uart_port* %18, i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @TX_EMPTY_STATUS, align 8
  %23 = and i64 %21, %22
  %24 = load i64, i64* @TX_EMPTY_STATUS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @TIOCSER_TEMT, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %17
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.tegra_uart_port* @to_tegra_uport(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @tegra_uart_read(%struct.tegra_uart_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
