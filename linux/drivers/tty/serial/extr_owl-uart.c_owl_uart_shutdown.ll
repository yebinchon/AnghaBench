; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_owl-uart.c_owl_uart_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_owl-uart.c_owl_uart_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }

@OWL_UART_CTL = common dso_local global i32 0, align 4
@OWL_UART_CTL_TXIE = common dso_local global i32 0, align 4
@OWL_UART_CTL_RXIE = common dso_local global i32 0, align 4
@OWL_UART_CTL_TXDE = common dso_local global i32 0, align 4
@OWL_UART_CTL_RXDE = common dso_local global i32 0, align 4
@OWL_UART_CTL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @owl_uart_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_uart_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 1
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = load i32, i32* @OWL_UART_CTL, align 4
  %11 = call i32 @owl_uart_read(%struct.uart_port* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @OWL_UART_CTL_TXIE, align 4
  %13 = load i32, i32* @OWL_UART_CTL_RXIE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @OWL_UART_CTL_TXDE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @OWL_UART_CTL_RXDE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @OWL_UART_CTL_EN, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @OWL_UART_CTL, align 4
  %27 = call i32 @owl_uart_write(%struct.uart_port* %24, i32 %25, i32 %26)
  %28 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 1
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %36 = call i32 @free_irq(i32 %34, %struct.uart_port* %35)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @owl_uart_read(%struct.uart_port*, i32) #1

declare dso_local i32 @owl_uart_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
