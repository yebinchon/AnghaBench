; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.c_pic32_uart_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.c_pic32_uart_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.pic32_sport = type { i32 }

@PIC32_UART_STA = common dso_local global i32 0, align 4
@PIC32_UART_STA_UTXEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @pic32_uart_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pic32_uart_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.pic32_sport*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.pic32_sport* @to_pic32_sport(%struct.uart_port* %4)
  store %struct.pic32_sport* %5, %struct.pic32_sport** %3, align 8
  %6 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %7 = call i32 @pic32_uart_irqtxen(%struct.pic32_sport* %6, i32 1)
  %8 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %9 = load i32, i32* @PIC32_UART_STA, align 4
  %10 = call i32 @PIC32_SET(i32 %9)
  %11 = load i32, i32* @PIC32_UART_STA_UTXEN, align 4
  %12 = call i32 @pic32_uart_writel(%struct.pic32_sport* %8, i32 %10, i32 %11)
  ret void
}

declare dso_local %struct.pic32_sport* @to_pic32_sport(%struct.uart_port*) #1

declare dso_local i32 @pic32_uart_irqtxen(%struct.pic32_sport*, i32) #1

declare dso_local i32 @pic32_uart_writel(%struct.pic32_sport*, i32, i32) #1

declare dso_local i32 @PIC32_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
