; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sci_port = type { i64, %struct.mctrl_gpios* }
%struct.mctrl_gpios = type { i32 }

@TIOCM_CTS = common dso_local global i32 0, align 4
@UART_GPIO_CTS = common dso_local global i32 0, align 4
@UART_GPIO_DSR = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@UART_GPIO_DCD = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @sci_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_get_mctrl(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.sci_port*, align 8
  %4 = alloca %struct.mctrl_gpios*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.sci_port* @to_sci_port(%struct.uart_port* %6)
  store %struct.sci_port* %7, %struct.sci_port** %3, align 8
  %8 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %9 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %8, i32 0, i32 1
  %10 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %9, align 8
  store %struct.mctrl_gpios* %10, %struct.mctrl_gpios** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %4, align 8
  %12 = call i32 @mctrl_gpio_get(%struct.mctrl_gpios* %11, i32* %5)
  %13 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %14 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %19 = call i64 @sci_get_cts(%struct.uart_port* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @TIOCM_CTS, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %17
  br label %36

26:                                               ; preds = %1
  %27 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %4, align 8
  %28 = load i32, i32* @UART_GPIO_CTS, align 4
  %29 = call i32 @mctrl_gpio_to_gpiod(%struct.mctrl_gpios* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @TIOCM_CTS, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %4, align 8
  %38 = load i32, i32* @UART_GPIO_DSR, align 4
  %39 = call i32 @mctrl_gpio_to_gpiod(%struct.mctrl_gpios* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @TIOCM_DSR, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %4, align 8
  %47 = load i32, i32* @UART_GPIO_DCD, align 4
  %48 = call i32 @mctrl_gpio_to_gpiod(%struct.mctrl_gpios* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @TIOCM_CAR, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.sci_port* @to_sci_port(%struct.uart_port*) #1

declare dso_local i32 @mctrl_gpio_get(%struct.mctrl_gpios*, i32*) #1

declare dso_local i64 @sci_get_cts(%struct.uart_port*) #1

declare dso_local i32 @mctrl_gpio_to_gpiod(%struct.mctrl_gpios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
