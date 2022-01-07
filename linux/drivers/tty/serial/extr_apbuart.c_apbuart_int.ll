; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_apbuart.c_apbuart_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_apbuart.c_apbuart_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@UART_STATUS_DR = common dso_local global i32 0, align 4
@UART_STATUS_THE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @apbuart_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apbuart_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.uart_port*
  store %struct.uart_port* %8, %struct.uart_port** %5, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %13 = call i32 @UART_GET_STATUS(%struct.uart_port* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @UART_STATUS_DR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %20 = call i32 @apbuart_rx_chars(%struct.uart_port* %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @UART_STATUS_THE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %28 = call i32 @apbuart_tx_chars(%struct.uart_port* %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %33
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @UART_GET_STATUS(%struct.uart_port*) #1

declare dso_local i32 @apbuart_rx_chars(%struct.uart_port*) #1

declare dso_local i32 @apbuart_tx_chars(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
