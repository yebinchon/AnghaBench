; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_apbuart.c_apbuart_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_apbuart.c_apbuart_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@UART_CTRL_TI = common dso_local global i32 0, align 4
@UART_STATUS_THE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @apbuart_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apbuart_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call i32 @UART_GET_CTRL(%struct.uart_port* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @UART_CTRL_TI, align 4
  %7 = load i32, i32* %3, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* %3, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @UART_PUT_CTRL(%struct.uart_port* %9, i32 %10)
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = call i32 @UART_GET_STATUS(%struct.uart_port* %12)
  %14 = load i32, i32* @UART_STATUS_THE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %19 = call i32 @apbuart_tx_chars(%struct.uart_port* %18)
  br label %20

20:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @UART_GET_CTRL(%struct.uart_port*) #1

declare dso_local i32 @UART_PUT_CTRL(%struct.uart_port*, i32) #1

declare dso_local i32 @UART_GET_STATUS(%struct.uart_port*) #1

declare dso_local i32 @apbuart_tx_chars(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
