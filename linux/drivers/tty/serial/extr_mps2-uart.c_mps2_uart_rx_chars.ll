; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mps2-uart.c_mps2_uart_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mps2-uart.c_mps2_uart_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.TYPE_3__ = type { i32 }

@UARTn_STATE = common dso_local global i32 0, align 4
@UARTn_STATE_RX_FULL = common dso_local global i32 0, align 4
@UARTn_DATA = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @mps2_uart_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mps2_uart_rx_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.tty_port* %8, %struct.tty_port** %3, align 8
  br label %9

9:                                                ; preds = %16, %1
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = load i32, i32* @UARTn_STATE, align 4
  %12 = call i32 @mps2_uart_read8(%struct.uart_port* %10, i32 %11)
  %13 = load i32, i32* @UARTn_STATE_RX_FULL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %9
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = load i32, i32* @UARTn_DATA, align 4
  %19 = call i32 @mps2_uart_read8(%struct.uart_port* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @TTY_NORMAL, align 4
  %31 = call i32 @tty_insert_flip_char(%struct.tty_port* %28, i32 %29, i32 %30)
  br label %9

32:                                               ; preds = %9
  %33 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %34 = call i32 @tty_flip_buffer_push(%struct.tty_port* %33)
  ret void
}

declare dso_local i32 @mps2_uart_read8(%struct.uart_port*, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
