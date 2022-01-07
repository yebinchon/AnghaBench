; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_throttle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_omap_port = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @serial_omap_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_omap_throttle(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_omap_port*, align 8
  %4 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port* %5)
  store %struct.uart_omap_port* %6, %struct.uart_omap_port** %3, align 8
  %7 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pm_runtime_get_sync(i32 %9)
  %11 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* @UART_IER_RLSI, align 4
  %17 = load i32, i32* @UART_IER_RDI, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %25 = load i32, i32* @UART_IER, align 4
  %26 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %27 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @serial_out(%struct.uart_omap_port* %24, i32 %25, i32 %28)
  %30 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %31 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %36 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pm_runtime_mark_last_busy(i32 %37)
  %39 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %40 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pm_runtime_put_autosuspend(i32 %41)
  ret void
}

declare dso_local %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_out(%struct.uart_omap_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
