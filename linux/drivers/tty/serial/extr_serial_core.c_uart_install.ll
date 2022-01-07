; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_install.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { %struct.uart_driver* }
%struct.uart_driver = type { %struct.uart_state* }
%struct.uart_state = type { i32 }
%struct.tty_struct = type { i32, %struct.uart_state* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_driver*, %struct.tty_struct*)* @uart_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_install(%struct.tty_driver* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.tty_driver*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.uart_driver*, align 8
  %6 = alloca %struct.uart_state*, align 8
  store %struct.tty_driver* %0, %struct.tty_driver** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %7 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %8 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %7, i32 0, i32 0
  %9 = load %struct.uart_driver*, %struct.uart_driver** %8, align 8
  store %struct.uart_driver* %9, %struct.uart_driver** %5, align 8
  %10 = load %struct.uart_driver*, %struct.uart_driver** %5, align 8
  %11 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %10, i32 0, i32 0
  %12 = load %struct.uart_state*, %struct.uart_state** %11, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %12, i64 %16
  store %struct.uart_state* %17, %struct.uart_state** %6, align 8
  %18 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %19 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %20 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %19, i32 0, i32 1
  store %struct.uart_state* %18, %struct.uart_state** %20, align 8
  %21 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %22 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %23 = call i32 @tty_standard_install(%struct.tty_driver* %21, %struct.tty_struct* %22)
  ret i32 %23
}

declare dso_local i32 @tty_standard_install(%struct.tty_driver*, %struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
