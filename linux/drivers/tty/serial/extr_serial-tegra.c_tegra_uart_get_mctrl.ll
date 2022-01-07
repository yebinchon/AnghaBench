; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.tegra_uart_port = type { i64 }

@TIOCM_RI = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @tegra_uart_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_uart_get_mctrl(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.tegra_uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %6 = call %struct.tegra_uart_port* @to_tegra_uport(%struct.uart_port* %5)
  store %struct.tegra_uart_port* %6, %struct.tegra_uart_port** %4, align 8
  %7 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %8 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32, i32* @TIOCM_RI, align 4
  %13 = load i32, i32* @TIOCM_CD, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @TIOCM_DSR, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @TIOCM_CTS, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %2, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @TIOCM_CTS, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %11
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.tegra_uart_port* @to_tegra_uport(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
