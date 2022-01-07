; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rda-uart.c_rda_uart_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rda-uart.c_rda_uart_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@RDA_UART_CMD_SET = common dso_local global i32 0, align 4
@RDA_UART_RTS = common dso_local global i32 0, align 4
@RDA_UART_CMD_CLR = common dso_local global i32 0, align 4
@RDA_UART_CTRL = common dso_local global i32 0, align 4
@TIOCM_LOOP = common dso_local global i32 0, align 4
@RDA_UART_LOOP_BACK_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @rda_uart_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rda_uart_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @TIOCM_RTS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = load i32, i32* @RDA_UART_CMD_SET, align 4
  %13 = call i32 @rda_uart_read(%struct.uart_port* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @RDA_UART_RTS, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @RDA_UART_CMD_SET, align 4
  %19 = call i32 @rda_uart_write(%struct.uart_port* %14, i32 %17, i32 %18)
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %22 = load i32, i32* @RDA_UART_CMD_CLR, align 4
  %23 = call i32 @rda_uart_read(%struct.uart_port* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @RDA_UART_RTS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @RDA_UART_CMD_CLR, align 4
  %29 = call i32 @rda_uart_write(%struct.uart_port* %24, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %20, %10
  %31 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %32 = load i32, i32* @RDA_UART_CTRL, align 4
  %33 = call i32 @rda_uart_read(%struct.uart_port* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @TIOCM_LOOP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* @RDA_UART_LOOP_BACK_EN, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %47

42:                                               ; preds = %30
  %43 = load i32, i32* @RDA_UART_LOOP_BACK_EN, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @RDA_UART_CTRL, align 4
  %51 = call i32 @rda_uart_write(%struct.uart_port* %48, i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @rda_uart_read(%struct.uart_port*, i32) #1

declare dso_local i32 @rda_uart_write(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
