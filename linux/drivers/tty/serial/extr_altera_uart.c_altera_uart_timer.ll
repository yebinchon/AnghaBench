; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_altera_uart.c_altera_uart_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_altera_uart.c_altera_uart_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_uart = type { i32, %struct.uart_port }
%struct.uart_port = type { i32 }
%struct.timer_list = type { i32 }

@tmr = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@pp = common dso_local global %struct.altera_uart* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @altera_uart_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_uart_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.altera_uart*, align 8
  %4 = alloca %struct.uart_port*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.altera_uart*, %struct.altera_uart** %3, align 8
  %6 = ptrtoint %struct.altera_uart* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @tmr, align 4
  %9 = call %struct.altera_uart* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.altera_uart* %9, %struct.altera_uart** %3, align 8
  %10 = load %struct.altera_uart*, %struct.altera_uart** %3, align 8
  %11 = getelementptr inbounds %struct.altera_uart, %struct.altera_uart* %10, i32 0, i32 1
  store %struct.uart_port* %11, %struct.uart_port** %4, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = call i32 @altera_uart_interrupt(i32 0, %struct.uart_port* %12)
  %14 = load %struct.altera_uart*, %struct.altera_uart** %3, align 8
  %15 = getelementptr inbounds %struct.altera_uart, %struct.altera_uart* %14, i32 0, i32 0
  %16 = load i64, i64* @jiffies, align 8
  %17 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %18 = call i64 @uart_poll_timeout(%struct.uart_port* %17)
  %19 = add nsw i64 %16, %18
  %20 = call i32 @mod_timer(i32* %15, i64 %19)
  ret void
}

declare dso_local %struct.altera_uart* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @altera_uart_interrupt(i32, %struct.uart_port*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @uart_poll_timeout(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
