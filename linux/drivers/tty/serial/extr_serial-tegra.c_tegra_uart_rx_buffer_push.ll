; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_rx_buffer_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_rx_buffer_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.tty_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_uart_port*, i32)* @tegra_uart_rx_buffer_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_uart_rx_buffer_push(%struct.tegra_uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_uart_port* %0, %struct.tegra_uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.tty_port* %12, %struct.tty_port** %5, align 8
  %13 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %14 = call %struct.tty_struct* @tty_port_tty_get(%struct.tty_port* %13)
  store %struct.tty_struct* %14, %struct.tty_struct** %6, align 8
  %15 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @async_tx_ack(i32 %17)
  %19 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sub i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %25 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @tegra_uart_copy_rx_to_tty(%struct.tegra_uart_port* %24, %struct.tty_port* %25, i32 %26)
  %28 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %29 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %30 = call i32 @tegra_uart_handle_rx_pio(%struct.tegra_uart_port* %28, %struct.tty_port* %29)
  %31 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %32 = icmp ne %struct.tty_struct* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %35 = call i32 @tty_flip_buffer_push(%struct.tty_port* %34)
  %36 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %37 = call i32 @tty_kref_put(%struct.tty_struct* %36)
  br label %38

38:                                               ; preds = %33, %2
  ret void
}

declare dso_local %struct.tty_struct* @tty_port_tty_get(%struct.tty_port*) #1

declare dso_local i32 @async_tx_ack(i32) #1

declare dso_local i32 @tegra_uart_copy_rx_to_tty(%struct.tegra_uart_port*, %struct.tty_port*, i32) #1

declare dso_local i32 @tegra_uart_handle_rx_pio(%struct.tegra_uart_port*, %struct.tty_port*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
