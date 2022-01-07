; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.c_pic32_uart_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.c_pic32_uart_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.pic32_sport = type { i32 }

@PIC32_UART_MODE = common dso_local global i32 0, align 4
@PIC32_UART_MODE_ON = common dso_local global i32 0, align 4
@PIC32_UART_STA = common dso_local global i32 0, align 4
@PIC32_UART_STA_UTXEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @pic32_uart_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pic32_uart_stop_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.pic32_sport*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.pic32_sport* @to_pic32_sport(%struct.uart_port* %4)
  store %struct.pic32_sport* %5, %struct.pic32_sport** %3, align 8
  %6 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %7 = load i32, i32* @PIC32_UART_MODE, align 4
  %8 = call i32 @pic32_uart_readl(%struct.pic32_sport* %6, i32 %7)
  %9 = load i32, i32* @PIC32_UART_MODE_ON, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %15 = load i32, i32* @PIC32_UART_STA, align 4
  %16 = call i32 @pic32_uart_readl(%struct.pic32_sport* %14, i32 %15)
  %17 = load i32, i32* @PIC32_UART_STA_UTXEN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %31

21:                                               ; preds = %13
  %22 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %23 = call i32 @pic32_wait_deplete_txbuf(%struct.pic32_sport* %22)
  %24 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %25 = load i32, i32* @PIC32_UART_STA, align 4
  %26 = call i32 @PIC32_CLR(i32 %25)
  %27 = load i32, i32* @PIC32_UART_STA_UTXEN, align 4
  %28 = call i32 @pic32_uart_writel(%struct.pic32_sport* %24, i32 %26, i32 %27)
  %29 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %30 = call i32 @pic32_uart_irqtxen(%struct.pic32_sport* %29, i32 0)
  br label %31

31:                                               ; preds = %21, %20, %12
  ret void
}

declare dso_local %struct.pic32_sport* @to_pic32_sport(%struct.uart_port*) #1

declare dso_local i32 @pic32_uart_readl(%struct.pic32_sport*, i32) #1

declare dso_local i32 @pic32_wait_deplete_txbuf(%struct.pic32_sport*) #1

declare dso_local i32 @pic32_uart_writel(%struct.pic32_sport*, i32, i32) #1

declare dso_local i32 @PIC32_CLR(i32) #1

declare dso_local i32 @pic32_uart_irqtxen(%struct.pic32_sport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
