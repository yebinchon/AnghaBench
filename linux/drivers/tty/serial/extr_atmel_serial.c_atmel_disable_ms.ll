; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_disable_ms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_disable_ms.c"
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
@ATMEL_US_IDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_disable_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_disable_ms(%struct.uart_port* %0) #0 {
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
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %67

12:                                               ; preds = %1
  %13 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %14 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mctrl_gpio_disable_ms(i32 %17)
  %19 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %20 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @UART_GPIO_CTS, align 4
  %23 = call i32 @mctrl_gpio_to_gpiod(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %12
  %26 = load i32, i32* @ATMEL_US_CTSIC, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %12
  %30 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %31 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UART_GPIO_DSR, align 4
  %34 = call i32 @mctrl_gpio_to_gpiod(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ATMEL_US_DSRIC, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %29
  %41 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %42 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @UART_GPIO_RI, align 4
  %45 = call i32 @mctrl_gpio_to_gpiod(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @ATMEL_US_RIIC, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %40
  %52 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %53 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @UART_GPIO_DCD, align 4
  %56 = call i32 @mctrl_gpio_to_gpiod(i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @ATMEL_US_DCDIC, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %64 = load i32, i32* @ATMEL_US_IDR, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @atmel_uart_writel(%struct.uart_port* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %11
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @mctrl_gpio_disable_ms(i32) #1

declare dso_local i32 @mctrl_gpio_to_gpiod(i32, i32) #1

declare dso_local i32 @atmel_uart_writel(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
