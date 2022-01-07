; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_stop_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_omap_port = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @serial_omap_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_omap_stop_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_omap_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port* %4)
  store %struct.uart_omap_port* %5, %struct.uart_omap_port** %3, align 8
  %6 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %7 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pm_runtime_get_sync(i32 %8)
  %10 = load i32, i32* @UART_IER_RLSI, align 4
  %11 = load i32, i32* @UART_IER_RDI, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @UART_LSR_DR, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %19
  store i32 %24, i32* %22, align 4
  %25 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %26 = load i32, i32* @UART_IER, align 4
  %27 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %28 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @serial_out(%struct.uart_omap_port* %25, i32 %26, i32 %29)
  %31 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %32 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pm_runtime_mark_last_busy(i32 %33)
  %35 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %36 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pm_runtime_put_autosuspend(i32 %37)
  ret void
}

declare dso_local %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @serial_out(%struct.uart_omap_port*, i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
