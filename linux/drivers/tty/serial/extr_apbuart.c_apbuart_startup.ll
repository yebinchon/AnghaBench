; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_apbuart.c_apbuart_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_apbuart.c_apbuart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@apbuart_int = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"apbuart\00", align 1
@UART_CTRL_RE = common dso_local global i32 0, align 4
@UART_CTRL_TE = common dso_local global i32 0, align 4
@UART_CTRL_RI = common dso_local global i32 0, align 4
@UART_CTRL_TI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @apbuart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apbuart_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @apbuart_int, align 4
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = call i32 @request_irq(i32 %8, i32 %9, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.uart_port* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %30

16:                                               ; preds = %1
  %17 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %18 = call i32 @UART_GET_CTRL(%struct.uart_port* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @UART_CTRL_RE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @UART_CTRL_TE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @UART_CTRL_RI, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @UART_CTRL_TI, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @UART_PUT_CTRL(%struct.uart_port* %19, i32 %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %16, %14
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.uart_port*) #1

declare dso_local i32 @UART_GET_CTRL(%struct.uart_port*) #1

declare dso_local i32 @UART_PUT_CTRL(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
