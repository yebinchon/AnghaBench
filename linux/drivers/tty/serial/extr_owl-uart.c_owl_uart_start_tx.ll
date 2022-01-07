; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_owl-uart.c_owl_uart_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_owl-uart.c_owl_uart_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@OWL_UART_STAT = common dso_local global i32 0, align 4
@OWL_UART_STAT_TIP = common dso_local global i32 0, align 4
@OWL_UART_CTL = common dso_local global i32 0, align 4
@OWL_UART_CTL_TXIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @owl_uart_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_uart_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call i64 @uart_tx_stopped(%struct.uart_port* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = call i32 @owl_uart_stop_tx(%struct.uart_port* %8)
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = load i32, i32* @OWL_UART_STAT, align 4
  %13 = call i32 @owl_uart_read(%struct.uart_port* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @OWL_UART_STAT_TIP, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @OWL_UART_STAT, align 4
  %20 = call i32 @owl_uart_write(%struct.uart_port* %17, i32 %18, i32 %19)
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = load i32, i32* @OWL_UART_CTL, align 4
  %23 = call i32 @owl_uart_read(%struct.uart_port* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @OWL_UART_CTL_TXIE, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @OWL_UART_CTL, align 4
  %30 = call i32 @owl_uart_write(%struct.uart_port* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %10, %7
  ret void
}

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @owl_uart_stop_tx(%struct.uart_port*) #1

declare dso_local i32 @owl_uart_read(%struct.uart_port*, i32) #1

declare dso_local i32 @owl_uart_write(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
