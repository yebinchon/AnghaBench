; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pxa.c_serial_pxa_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pxa.c_serial_pxa_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_pxa_port = type { i32 }

@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @serial_pxa_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_pxa_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_pxa_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = bitcast %struct.uart_port* %4 to %struct.uart_pxa_port*
  store %struct.uart_pxa_port* %5, %struct.uart_pxa_port** %3, align 8
  %6 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %7 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @UART_IER_THRI, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @UART_IER_THRI, align 4
  %14 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %19 = load i32, i32* @UART_IER, align 4
  %20 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @serial_out(%struct.uart_pxa_port* %18, i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @serial_out(%struct.uart_pxa_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
