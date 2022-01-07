; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_enable_ms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_enable_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_omap_port = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"serial_omap_enable_ms+%d\0A\00", align 1
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @serial_omap_enable_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_omap_enable_ms(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_omap_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port* %4)
  store %struct.uart_omap_port* %5, %struct.uart_omap_port** %3, align 8
  %6 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %7 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_dbg(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pm_runtime_get_sync(i32 %17)
  %19 = load i32, i32* @UART_IER_MSI, align 4
  %20 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %25 = load i32, i32* @UART_IER, align 4
  %26 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %27 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @serial_out(%struct.uart_omap_port* %24, i32 %25, i32 %28)
  %30 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %31 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pm_runtime_mark_last_busy(i32 %32)
  %34 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %35 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pm_runtime_put_autosuspend(i32 %36)
  ret void
}

declare dso_local %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

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
