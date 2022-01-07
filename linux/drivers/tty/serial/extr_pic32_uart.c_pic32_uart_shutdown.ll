; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.c_pic32_uart_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.c_pic32_uart_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.pic32_sport = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @pic32_uart_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pic32_uart_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.pic32_sport*, align 8
  %4 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.pic32_sport* @to_pic32_sport(%struct.uart_port* %5)
  store %struct.pic32_sport* %6, %struct.pic32_sport** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = call i32 @pic32_uart_dsbl_and_mask(%struct.uart_port* %11)
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 0
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* %14, i64 %15)
  %17 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %18 = call i32 @pic32_disable_clock(%struct.pic32_sport* %17)
  %19 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %20 = getelementptr inbounds %struct.pic32_sport, %struct.pic32_sport* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = call i32 @free_irq(i32 %21, %struct.uart_port* %22)
  %24 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %25 = getelementptr inbounds %struct.pic32_sport, %struct.pic32_sport* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %28 = call i32 @free_irq(i32 %26, %struct.uart_port* %27)
  %29 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %30 = getelementptr inbounds %struct.pic32_sport, %struct.pic32_sport* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %33 = call i32 @free_irq(i32 %31, %struct.uart_port* %32)
  ret void
}

declare dso_local %struct.pic32_sport* @to_pic32_sport(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pic32_uart_dsbl_and_mask(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pic32_disable_clock(%struct.pic32_sport*) #1

declare dso_local i32 @free_irq(i32, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
