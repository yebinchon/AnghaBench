; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_push_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_push_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eg20t_port = type { %struct.uart_port }
%struct.uart_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eg20t_port*, i8*, i32)* @push_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_rx(%struct.eg20t_port* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.eg20t_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca %struct.tty_port*, align 8
  store %struct.eg20t_port* %0, %struct.eg20t_port** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.eg20t_port*, %struct.eg20t_port** %4, align 8
  %10 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %9, i32 0, i32 0
  store %struct.uart_port* %10, %struct.uart_port** %7, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.tty_port* %14, %struct.tty_port** %8, align 8
  %15 = load %struct.tty_port*, %struct.tty_port** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @tty_insert_flip_string(%struct.tty_port* %15, i8* %16, i32 %17)
  %19 = load %struct.tty_port*, %struct.tty_port** %8, align 8
  %20 = call i32 @tty_flip_buffer_push(%struct.tty_port* %19)
  ret i32 0
}

declare dso_local i32 @tty_insert_flip_string(%struct.tty_port*, i8*, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
