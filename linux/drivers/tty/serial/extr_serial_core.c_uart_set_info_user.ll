; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_set_info_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_set_info_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.uart_state* }
%struct.uart_state = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.serial_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @uart_set_info_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_set_info_user(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serial_struct*, align 8
  %5 = alloca %struct.uart_state*, align 8
  %6 = alloca %struct.tty_port*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  %10 = load %struct.uart_state*, %struct.uart_state** %9, align 8
  store %struct.uart_state* %10, %struct.uart_state** %5, align 8
  %11 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %12 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %11, i32 0, i32 0
  store %struct.tty_port* %12, %struct.tty_port** %6, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = call i32 @down_write(i32* %14)
  %16 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %17 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %20 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %21 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %22 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %23 = call i32 @uart_set_info(%struct.tty_struct* %19, %struct.tty_port* %20, %struct.uart_state* %21, %struct.serial_struct* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %25 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 0
  %29 = call i32 @up_write(i32* %28)
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uart_set_info(%struct.tty_struct*, %struct.tty_port*, %struct.uart_state*, %struct.serial_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
