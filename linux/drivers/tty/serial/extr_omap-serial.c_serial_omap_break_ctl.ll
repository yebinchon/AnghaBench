; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_break_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_break_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_omap_port = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"serial_omap_break_ctl+%d\0A\00", align 1
@UART_LCR_SBC = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @serial_omap_break_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_omap_break_ctl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_omap_port*, align 8
  %6 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port* %7)
  store %struct.uart_omap_port* %8, %struct.uart_omap_port** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %10 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %14 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %19 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pm_runtime_get_sync(i32 %20)
  %22 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %23 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i32, i32* @UART_LCR_SBC, align 4
  %31 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %32 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %42

35:                                               ; preds = %2
  %36 = load i32, i32* @UART_LCR_SBC, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %39 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %35, %29
  %43 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %44 = load i32, i32* @UART_LCR, align 4
  %45 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %46 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @serial_out(%struct.uart_omap_port* %43, i32 %44, i32 %47)
  %49 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %50 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %55 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pm_runtime_mark_last_busy(i32 %56)
  %58 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %59 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pm_runtime_put_autosuspend(i32 %60)
  ret void
}

declare dso_local %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

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
