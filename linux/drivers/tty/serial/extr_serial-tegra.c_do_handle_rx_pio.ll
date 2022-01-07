; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_do_handle_rx_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_do_handle_rx_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.tty_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_uart_port*)* @do_handle_rx_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_handle_rx_pio(%struct.tegra_uart_port* %0) #0 {
  %2 = alloca %struct.tegra_uart_port*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.tty_port*, align 8
  store %struct.tegra_uart_port* %0, %struct.tegra_uart_port** %2, align 8
  %5 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call %struct.tty_struct* @tty_port_tty_get(%struct.tty_port* %9)
  store %struct.tty_struct* %10, %struct.tty_struct** %3, align 8
  %11 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %2, align 8
  %12 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.tty_port* %15, %struct.tty_port** %4, align 8
  %16 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %2, align 8
  %17 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %18 = call i32 @tegra_uart_handle_rx_pio(%struct.tegra_uart_port* %16, %struct.tty_port* %17)
  %19 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %20 = icmp ne %struct.tty_struct* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %23 = call i32 @tty_flip_buffer_push(%struct.tty_port* %22)
  %24 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %25 = call i32 @tty_kref_put(%struct.tty_struct* %24)
  br label %26

26:                                               ; preds = %21, %1
  ret void
}

declare dso_local %struct.tty_struct* @tty_port_tty_get(%struct.tty_port*) #1

declare dso_local i32 @tegra_uart_handle_rx_pio(%struct.tegra_uart_port*, %struct.tty_port*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
