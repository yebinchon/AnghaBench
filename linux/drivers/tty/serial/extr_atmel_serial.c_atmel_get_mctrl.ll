; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.atmel_uart_port = type { i32 }

@ATMEL_US_CSR = common dso_local global i32 0, align 4
@ATMEL_US_DCD = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i32 0, align 4
@ATMEL_US_CTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@ATMEL_US_DSR = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@ATMEL_US_RI = common dso_local global i32 0, align 4
@TIOCM_RI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @atmel_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_get_mctrl(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %6)
  store %struct.atmel_uart_port* %7, %struct.atmel_uart_port** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = load i32, i32* @ATMEL_US_CSR, align 4
  %10 = call i32 @atmel_uart_readl(%struct.uart_port* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ATMEL_US_DCD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @TIOCM_CD, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @ATMEL_US_CTS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @TIOCM_CTS, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ATMEL_US_DSR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @TIOCM_DSR, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @ATMEL_US_RI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @TIOCM_RI, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %48 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mctrl_gpio_get(i32 %49, i32* %4)
  ret i32 %50
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @atmel_uart_readl(%struct.uart_port*, i32) #1

declare dso_local i32 @mctrl_gpio_get(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
