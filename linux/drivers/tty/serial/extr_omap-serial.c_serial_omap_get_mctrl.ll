; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_omap_port = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"serial_omap_get_mctrl+%d\0A\00", align 1
@UART_MSR_DCD = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@UART_MSR_RI = common dso_local global i32 0, align 4
@TIOCM_RNG = common dso_local global i32 0, align 4
@UART_MSR_DSR = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @serial_omap_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_omap_get_mctrl(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_omap_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port* %6)
  store %struct.uart_omap_port* %7, %struct.uart_omap_port** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pm_runtime_get_sync(i32 %10)
  %12 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %13 = call i32 @check_modem_status(%struct.uart_omap_port* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pm_runtime_mark_last_busy(i32 %16)
  %18 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %19 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pm_runtime_put_autosuspend(i32 %20)
  %22 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %27 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @UART_MSR_DCD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load i32, i32* @TIOCM_CAR, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %1
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @UART_MSR_RI, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @TIOCM_RNG, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @UART_MSR_DSR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @TIOCM_DSR, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @UART_MSR_CTS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @TIOCM_CTS, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @check_modem_status(%struct.uart_omap_port*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
