; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.c_pic32_uart_break_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.c_pic32_uart_break_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.pic32_sport = type { i32 }

@PIC32_UART_STA = common dso_local global i32 0, align 4
@PIC32_UART_STA_UTXBRK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @pic32_uart_break_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pic32_uart_break_ctl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pic32_sport*, align 8
  %6 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.pic32_sport* @to_pic32_sport(%struct.uart_port* %7)
  store %struct.pic32_sport* %8, %struct.pic32_sport** %5, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.pic32_sport*, %struct.pic32_sport** %5, align 8
  %17 = load i32, i32* @PIC32_UART_STA, align 4
  %18 = call i32 @PIC32_SET(i32 %17)
  %19 = load i32, i32* @PIC32_UART_STA_UTXBRK, align 4
  %20 = call i32 @pic32_uart_writel(%struct.pic32_sport* %16, i32 %18, i32 %19)
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.pic32_sport*, %struct.pic32_sport** %5, align 8
  %23 = load i32, i32* @PIC32_UART_STA, align 4
  %24 = call i32 @PIC32_CLR(i32 %23)
  %25 = load i32, i32* @PIC32_UART_STA_UTXBRK, align 4
  %26 = call i32 @pic32_uart_writel(%struct.pic32_sport* %22, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 0
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  ret void
}

declare dso_local %struct.pic32_sport* @to_pic32_sport(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pic32_uart_writel(%struct.pic32_sport*, i32, i32) #1

declare dso_local i32 @PIC32_SET(i32) #1

declare dso_local i32 @PIC32_CLR(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
