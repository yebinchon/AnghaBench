; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_uart_timer_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_uart_timer_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_uart_port = type { i32, i32, i32, %struct.uart_port }
%struct.uart_port = type { i32 }
%struct.timer_list = type { i32 }

@uart_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@atmel_port = common dso_local global %struct.atmel_uart_port* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @atmel_uart_timer_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_uart_timer_callback(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  %4 = alloca %struct.uart_port*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %6 = ptrtoint %struct.atmel_uart_port* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @uart_timer, align 4
  %9 = call %struct.atmel_uart_port* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.atmel_uart_port* %9, %struct.atmel_uart_port** %3, align 8
  %10 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %11 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %10, i32 0, i32 3
  store %struct.uart_port* %11, %struct.uart_port** %4, align 8
  %12 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %12, i32 0, i32 2
  %14 = call i32 @atomic_read(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %1
  %17 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %18 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %17, i32 0, i32 1
  %19 = call i32 @tasklet_schedule(i32* %18)
  %20 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %21 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %20, i32 0, i32 0
  %22 = load i64, i64* @jiffies, align 8
  %23 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %24 = call i64 @uart_poll_timeout(%struct.uart_port* %23)
  %25 = add nsw i64 %22, %24
  %26 = call i32 @mod_timer(i32* %21, i64 %25)
  br label %27

27:                                               ; preds = %16, %1
  ret void
}

declare dso_local %struct.atmel_uart_port* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @uart_poll_timeout(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
