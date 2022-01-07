; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_owl-uart.c_owl_uart_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_owl-uart.c_owl_uart_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@TIOCM_CAR = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@OWL_UART_CTL = common dso_local global i32 0, align 4
@OWL_UART_STAT = common dso_local global i32 0, align 4
@OWL_UART_STAT_RTSS = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@OWL_UART_STAT_CTSS = common dso_local global i32 0, align 4
@OWL_UART_CTL_AFE = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @owl_uart_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_uart_get_mctrl(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load i32, i32* @TIOCM_CAR, align 4
  %7 = load i32, i32* @TIOCM_DSR, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = load i32, i32* @OWL_UART_CTL, align 4
  %11 = call i32 @owl_uart_read(%struct.uart_port* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = load i32, i32* @OWL_UART_STAT, align 4
  %14 = call i32 @owl_uart_read(%struct.uart_port* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @OWL_UART_STAT_RTSS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @TIOCM_RTS, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @OWL_UART_STAT_CTSS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @OWL_UART_CTL_AFE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* @TIOCM_CTS, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @owl_uart_read(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
