; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }

@UARTMODEM = common dso_local global i64 0, align 8
@UARTMODEM_TXCTSE = common dso_local global i8 0, align 1
@TIOCM_CTS = common dso_local global i32 0, align 4
@UARTMODEM_RXRTSE = common dso_local global i8 0, align 1
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @lpuart_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpuart_get_mctrl(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @UARTMODEM, align 8
  %9 = add nsw i64 %7, %8
  %10 = call zeroext i8 @readb(i64 %9)
  store i8 %10, i8* %4, align 1
  %11 = load i8, i8* %4, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* @UARTMODEM_TXCTSE, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @TIOCM_CTS, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i8, i8* %4, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @UARTMODEM_RXRTSE, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @TIOCM_RTS, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %21
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local zeroext i8 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
