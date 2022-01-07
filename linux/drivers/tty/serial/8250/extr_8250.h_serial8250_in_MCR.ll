; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250.h_serial8250_in_MCR.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250.h_serial8250_in_MCR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i64 }

@UART_MCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_8250_port*)* @serial8250_in_MCR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial8250_in_MCR(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %5 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %6 = load i32, i32* @UART_MCR, align 4
  %7 = call i32 @serial_in(%struct.uart_8250_port* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %13 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %14 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @mctrl_gpio_get_outputs(i64 %15, i32* %4)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @serial8250_TIOCM_to_MCR(i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %12, %1
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @mctrl_gpio_get_outputs(i64, i32*) #1

declare dso_local i32 @serial8250_TIOCM_to_MCR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
