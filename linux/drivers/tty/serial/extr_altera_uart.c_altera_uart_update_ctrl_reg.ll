; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_altera_uart.c_altera_uart_update_ctrl_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_altera_uart.c_altera_uart_update_ctrl_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_uart = type { i16, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ALTERA_UART_CONTROL_TRBK_MSK = common dso_local global i16 0, align 2
@ALTERA_UART_CONTROL_RTS_MSK = common dso_local global i16 0, align 2
@ALTERA_UART_CONTROL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altera_uart*)* @altera_uart_update_ctrl_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_uart_update_ctrl_reg(%struct.altera_uart* %0) #0 {
  %2 = alloca %struct.altera_uart*, align 8
  %3 = alloca i16, align 2
  store %struct.altera_uart* %0, %struct.altera_uart** %2, align 8
  %4 = load %struct.altera_uart*, %struct.altera_uart** %2, align 8
  %5 = getelementptr inbounds %struct.altera_uart, %struct.altera_uart* %4, i32 0, i32 0
  %6 = load i16, i16* %5, align 4
  store i16 %6, i16* %3, align 2
  %7 = load %struct.altera_uart*, %struct.altera_uart** %2, align 8
  %8 = getelementptr inbounds %struct.altera_uart, %struct.altera_uart* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = load i16, i16* @ALTERA_UART_CONTROL_TRBK_MSK, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @ALTERA_UART_CONTROL_RTS_MSK, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %14, %16
  %18 = load i16, i16* %3, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, %17
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %3, align 2
  br label %22

22:                                               ; preds = %12, %1
  %23 = load %struct.altera_uart*, %struct.altera_uart** %2, align 8
  %24 = getelementptr inbounds %struct.altera_uart, %struct.altera_uart* %23, i32 0, i32 1
  %25 = load i16, i16* %3, align 2
  %26 = load i32, i32* @ALTERA_UART_CONTROL_REG, align 4
  %27 = call i32 @altera_uart_writel(%struct.TYPE_2__* %24, i16 zeroext %25, i32 %26)
  ret void
}

declare dso_local i32 @altera_uart_writel(%struct.TYPE_2__*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
