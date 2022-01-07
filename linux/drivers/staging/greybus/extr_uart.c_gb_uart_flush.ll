; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_gb_uart_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_gb_uart_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_tty = type { i32 }
%struct.gb_uart_serial_flush_request = type { i32 }

@GB_UART_TYPE_FLUSH_FIFOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_tty*, i32)* @gb_uart_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_uart_flush(%struct.gb_tty* %0, i32 %1) #0 {
  %3 = alloca %struct.gb_tty*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_uart_serial_flush_request, align 4
  store %struct.gb_tty* %0, %struct.gb_tty** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = getelementptr inbounds %struct.gb_uart_serial_flush_request, %struct.gb_uart_serial_flush_request* %5, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %9 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GB_UART_TYPE_FLUSH_FIFOS, align 4
  %12 = call i32 @gb_operation_sync(i32 %10, i32 %11, %struct.gb_uart_serial_flush_request* %5, i32 4, i32* null, i32 0)
  ret i32 %12
}

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_uart_serial_flush_request*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
