; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_enable_ms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_enable_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.atmel_uart_port = type { i32, i32 }

@UART_GPIO_CTS = common dso_local global i32 0, align 4
@ATMEL_US_CTSIC = common dso_local global i32 0, align 4
@UART_GPIO_DSR = common dso_local global i32 0, align 4
@ATMEL_US_DSRIC = common dso_local global i32 0, align 4
@UART_GPIO_RI = common dso_local global i32 0, align 4
@ATMEL_US_RIIC = common dso_local global i32 0, align 4
@UART_GPIO_DCD = common dso_local global i32 0, align 4
@ATMEL_US_DCDIC = common dso_local global i32 0, align 4
@ATMEL_US_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_enable_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_enable_ms(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %5)
  store %struct.atmel_uart_port* %6, %struct.atmel_uart_port** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %67

12:                                               ; preds = %1
  %13 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %14 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UART_GPIO_CTS, align 4
  %19 = call i32 @mctrl_gpio_to_gpiod(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* @ATMEL_US_CTSIC, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %12
  %26 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %27 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @UART_GPIO_DSR, align 4
  %30 = call i32 @mctrl_gpio_to_gpiod(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ATMEL_US_DSRIC, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %38 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UART_GPIO_RI, align 4
  %41 = call i32 @mctrl_gpio_to_gpiod(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ATMEL_US_RIIC, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %49 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @UART_GPIO_DCD, align 4
  %52 = call i32 @mctrl_gpio_to_gpiod(i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @ATMEL_US_DCDIC, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %60 = load i32, i32* @ATMEL_US_IER, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @atmel_uart_writel(%struct.uart_port* %59, i32 %60, i32 %61)
  %63 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %64 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mctrl_gpio_enable_ms(i32 %65)
  br label %67

67:                                               ; preds = %58, %11
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @mctrl_gpio_to_gpiod(i32, i32) #1

declare dso_local i32 @atmel_uart_writel(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @mctrl_gpio_enable_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
