; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vr41xx_siu.c_siu_tx_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vr41xx_siu.c_siu_tx_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_TEMT = common dso_local global i32 0, align 4
@TIOCSER_TEMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @siu_tx_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siu_tx_empty(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %6 = load i32, i32* @UART_LSR, align 4
  %7 = call i32 @siu_read(%struct.uart_port* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @UART_LSR_TEMT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @TIOCSER_TEMT, align 4
  store i32 %13, i32* %2, align 4
  br label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %14, %12
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32 @siu_read(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
