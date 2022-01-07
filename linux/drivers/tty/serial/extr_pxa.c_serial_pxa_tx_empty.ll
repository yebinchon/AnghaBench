; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pxa.c_serial_pxa_tx_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pxa.c_serial_pxa_tx_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_pxa_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_TEMT = common dso_local global i32 0, align 4
@TIOCSER_TEMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @serial_pxa_tx_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_pxa_tx_empty(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_pxa_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = bitcast %struct.uart_port* %6 to %struct.uart_pxa_port*
  store %struct.uart_pxa_port* %7, %struct.uart_pxa_port** %3, align 8
  %8 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %14 = load i32, i32* @UART_LSR, align 4
  %15 = call i32 @serial_in(%struct.uart_pxa_port* %13, i32 %14)
  %16 = load i32, i32* @UART_LSR_TEMT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @TIOCSER_TEMT, align 4
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  store i32 %23, i32* %5, align 4
  %24 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %25 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_in(%struct.uart_pxa_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
