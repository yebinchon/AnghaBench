; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_tx_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_tx_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_omap_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"serial_omap_tx_empty+%d\0A\00", align 1
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_TEMT = common dso_local global i32 0, align 4
@TIOCSER_TEMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @serial_omap_tx_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_omap_tx_empty(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_omap_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port* %6)
  store %struct.uart_omap_port* %7, %struct.uart_omap_port** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pm_runtime_get_sync(i32 %10)
  %12 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %17 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %22 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %27 = load i32, i32* @UART_LSR, align 4
  %28 = call i32 @serial_in(%struct.uart_omap_port* %26, i32 %27)
  %29 = load i32, i32* @UART_LSR_TEMT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @TIOCSER_TEMT, align 4
  br label %35

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  store i32 %36, i32* %5, align 4
  %37 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %38 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %43 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pm_runtime_mark_last_busy(i32 %44)
  %46 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %47 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pm_runtime_put_autosuspend(i32 %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_in(%struct.uart_omap_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
