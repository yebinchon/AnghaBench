; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.uart_state* }
%struct.uart_state = type { i32 }
%struct.file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @uart_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.uart_state*, align 8
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.uart_state*, %struct.uart_state** %8, align 8
  store %struct.uart_state* %9, %struct.uart_state** %5, align 8
  %10 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %11 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %10, i32 0, i32 0
  %12 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = call i32 @tty_port_open(i32* %11, %struct.tty_struct* %12, %struct.file* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %17, %2
  %19 = load i32, i32* %6, align 4
  ret i32 %19
}

declare dso_local i32 @tty_port_open(i32*, %struct.tty_struct*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
