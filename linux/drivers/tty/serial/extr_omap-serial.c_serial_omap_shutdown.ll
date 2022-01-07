; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_omap_port = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"serial_omap_shutdown+%d\0A\00", align 1
@UART_IER = common dso_local global i32 0, align 4
@TIOCM_OUT2 = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_SBC = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @serial_omap_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_omap_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_omap_port*, align 8
  %4 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port* %5)
  store %struct.uart_omap_port* %6, %struct.uart_omap_port** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %17 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pm_runtime_get_sync(i32 %18)
  %20 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %23 = load i32, i32* @UART_IER, align 4
  %24 = call i32 @serial_out(%struct.uart_omap_port* %22, i32 %23, i32 0)
  %25 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load i32, i32* @TIOCM_OUT2, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %33 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %31
  store i32 %36, i32* %34, align 4
  %37 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %38 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %37, i32 0, i32 1
  %39 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %40 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @serial_omap_set_mctrl(%struct.TYPE_2__* %38, i32 %42)
  %44 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %45 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %50 = load i32, i32* @UART_LCR, align 4
  %51 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %52 = load i32, i32* @UART_LCR, align 4
  %53 = call i32 @serial_in(%struct.uart_omap_port* %51, i32 %52)
  %54 = load i32, i32* @UART_LCR_SBC, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = call i32 @serial_out(%struct.uart_omap_port* %49, i32 %50, i32 %56)
  %58 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %59 = call i32 @serial_omap_clear_fifos(%struct.uart_omap_port* %58)
  %60 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %61 = load i32, i32* @UART_LSR, align 4
  %62 = call i32 @serial_in(%struct.uart_omap_port* %60, i32 %61)
  %63 = load i32, i32* @UART_LSR_DR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %1
  %67 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %68 = load i32, i32* @UART_RX, align 4
  %69 = call i32 @serial_in(%struct.uart_omap_port* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %1
  %71 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %72 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pm_runtime_mark_last_busy(i32 %73)
  %75 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %76 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @pm_runtime_put_autosuspend(i32 %77)
  %79 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %80 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %84 = call i32 @free_irq(i32 %82, %struct.uart_omap_port* %83)
  %85 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %86 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dev_pm_clear_wake_irq(i32 %87)
  ret void
}

declare dso_local %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @serial_out(%struct.uart_omap_port*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_omap_set_mctrl(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @serial_in(%struct.uart_omap_port*, i32) #1

declare dso_local i32 @serial_omap_clear_fifos(%struct.uart_omap_port*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @free_irq(i32, %struct.uart_omap_port*) #1

declare dso_local i32 @dev_pm_clear_wake_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
