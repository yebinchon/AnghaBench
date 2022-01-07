; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_clps711x.c_uart_clps711x_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_clps711x.c_uart_clps711x_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.clps711x_port = type { i32 }

@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @uart_clps711x_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_clps711x_get_mctrl(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.clps711x_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load i32, i32* @TIOCM_DSR, align 4
  %6 = load i32, i32* @TIOCM_CTS, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @TIOCM_CAR, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.clps711x_port* @dev_get_drvdata(i32 %12)
  store %struct.clps711x_port* %13, %struct.clps711x_port** %4, align 8
  %14 = load %struct.clps711x_port*, %struct.clps711x_port** %4, align 8
  %15 = getelementptr inbounds %struct.clps711x_port, %struct.clps711x_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mctrl_gpio_get(i32 %16, i32* %3)
  ret i32 %17
}

declare dso_local %struct.clps711x_port* @dev_get_drvdata(i32) #1

declare dso_local i32 @mctrl_gpio_get(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
