; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_handle_tx_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_handle_tx_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32 }

@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_uart_port*)* @tegra_uart_handle_tx_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_uart_handle_tx_pio(%struct.tegra_uart_port* %0) #0 {
  %2 = alloca %struct.tegra_uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  store %struct.tegra_uart_port* %0, %struct.tegra_uart_port** %2, align 8
  %4 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.circ_buf* %8, %struct.circ_buf** %3, align 8
  %9 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %2, align 8
  %10 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %2, align 8
  %11 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @tegra_uart_fill_tx_fifo(%struct.tegra_uart_port* %9, i32 %12)
  %14 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %2, align 8
  %15 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %17 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %16)
  %18 = load i64, i64* @WAKEUP_CHARS, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %2, align 8
  %22 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %21, i32 0, i32 0
  %23 = call i32 @uart_write_wakeup(%struct.TYPE_4__* %22)
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %2, align 8
  %26 = call i32 @tegra_uart_start_next_tx(%struct.tegra_uart_port* %25)
  ret void
}

declare dso_local i32 @tegra_uart_fill_tx_fifo(%struct.tegra_uart_port*, i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_4__*) #1

declare dso_local i32 @tegra_uart_start_next_tx(%struct.tegra_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
