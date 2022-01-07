; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c___stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c___stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.uart_8250_em485* }
%struct.uart_8250_em485 = type { i32* }

@UART_LSR = common dso_local global i32 0, align 4
@BOTH_EMPTY = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*)* @__stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__stop_tx(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca %struct.uart_8250_em485*, align 8
  %4 = alloca i8, align 1
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %5 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 0
  %7 = load %struct.uart_8250_em485*, %struct.uart_8250_em485** %6, align 8
  store %struct.uart_8250_em485* %7, %struct.uart_8250_em485** %3, align 8
  %8 = load %struct.uart_8250_em485*, %struct.uart_8250_em485** %3, align 8
  %9 = icmp ne %struct.uart_8250_em485* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %12 = load i32, i32* @UART_LSR, align 4
  %13 = call zeroext i8 @serial_in(%struct.uart_8250_port* %11, i32 %12)
  store i8 %13, i8* %4, align 1
  %14 = load i8, i8* %4, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @BOTH_EMPTY, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %15, %17
  %19 = load i8, i8* @BOTH_EMPTY, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  br label %31

23:                                               ; preds = %10
  %24 = load %struct.uart_8250_em485*, %struct.uart_8250_em485** %3, align 8
  %25 = getelementptr inbounds %struct.uart_8250_em485, %struct.uart_8250_em485* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %27 = call i32 @__stop_tx_rs485(%struct.uart_8250_port* %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %30 = call i32 @__do_stop_tx(%struct.uart_8250_port* %29)
  br label %31

31:                                               ; preds = %28, %22
  ret void
}

declare dso_local zeroext i8 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @__stop_tx_rs485(%struct.uart_8250_port*) #1

declare dso_local i32 @__do_stop_tx(%struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
