; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sirfsoc_uart_port = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, %struct.sirfsoc_register }
%struct.sirfsoc_register = type { i32 }

@SIRF_REAL_UART = common dso_local global i64 0, align 8
@SIRFUART_AFC_CTS_STATUS = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @sirfsoc_uart_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_uart_get_mctrl(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.sirfsoc_uart_port*, align 8
  %5 = alloca %struct.sirfsoc_register*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = call %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port* %6)
  store %struct.sirfsoc_uart_port* %7, %struct.sirfsoc_uart_port** %4, align 8
  %8 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %9 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store %struct.sirfsoc_register* %11, %struct.sirfsoc_register** %5, align 8
  %12 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %13 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %18 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %1
  br label %53

22:                                               ; preds = %16
  %23 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %24 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SIRF_REAL_UART, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %32 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %33 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rd_regl(%struct.uart_port* %31, i32 %34)
  %36 = load i32, i32* @SIRFUART_AFC_CTS_STATUS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %53

40:                                               ; preds = %30
  br label %49

41:                                               ; preds = %22
  %42 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %43 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @gpio_get_value(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %53

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %40
  %50 = load i32, i32* @TIOCM_CAR, align 4
  %51 = load i32, i32* @TIOCM_DSR, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %2, align 4
  br label %59

53:                                               ; preds = %47, %39, %21
  %54 = load i32, i32* @TIOCM_CAR, align 4
  %55 = load i32, i32* @TIOCM_DSR, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @TIOCM_CTS, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %53, %49
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port*) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
