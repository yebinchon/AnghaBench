; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_pm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_omap_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"serial_omap_pm+%d\0A\00", align 1
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_CONF_MODE_B = common dso_local global i8 0, align 1
@UART_EFR = common dso_local global i32 0, align 4
@UART_EFR_ECB = common dso_local global i8 0, align 1
@UART_IER = common dso_local global i32 0, align 4
@UART_IERX_SLEEP = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32, i32)* @serial_omap_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_omap_pm(%struct.uart_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_omap_port*, align 8
  %8 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %10 = call %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port* %9)
  store %struct.uart_omap_port* %10, %struct.uart_omap_port** %7, align 8
  %11 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %12 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %16 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %21 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pm_runtime_get_sync(i32 %22)
  %24 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %25 = load i32, i32* @UART_LCR, align 4
  %26 = load i8, i8* @UART_LCR_CONF_MODE_B, align 1
  %27 = call i32 @serial_out(%struct.uart_omap_port* %24, i32 %25, i8 zeroext %26)
  %28 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %29 = load i32, i32* @UART_EFR, align 4
  %30 = call zeroext i8 @serial_in(%struct.uart_omap_port* %28, i32 %29)
  store i8 %30, i8* %8, align 1
  %31 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %32 = load i32, i32* @UART_EFR, align 4
  %33 = load i8, i8* %8, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @UART_EFR_ECB, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %34, %36
  %38 = trunc i32 %37 to i8
  %39 = call i32 @serial_out(%struct.uart_omap_port* %31, i32 %32, i8 zeroext %38)
  %40 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %41 = load i32, i32* @UART_LCR, align 4
  %42 = call i32 @serial_out(%struct.uart_omap_port* %40, i32 %41, i8 zeroext 0)
  %43 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %44 = load i32, i32* @UART_IER, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %3
  %48 = load i8, i8* @UART_IERX_SLEEP, align 1
  %49 = zext i8 %48 to i32
  br label %51

50:                                               ; preds = %3
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i32 [ %49, %47 ], [ 0, %50 ]
  %53 = trunc i32 %52 to i8
  %54 = call i32 @serial_out(%struct.uart_omap_port* %43, i32 %44, i8 zeroext %53)
  %55 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %56 = load i32, i32* @UART_LCR, align 4
  %57 = load i8, i8* @UART_LCR_CONF_MODE_B, align 1
  %58 = call i32 @serial_out(%struct.uart_omap_port* %55, i32 %56, i8 zeroext %57)
  %59 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %60 = load i32, i32* @UART_EFR, align 4
  %61 = load i8, i8* %8, align 1
  %62 = call i32 @serial_out(%struct.uart_omap_port* %59, i32 %60, i8 zeroext %61)
  %63 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %64 = load i32, i32* @UART_LCR, align 4
  %65 = call i32 @serial_out(%struct.uart_omap_port* %63, i32 %64, i8 zeroext 0)
  %66 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %67 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pm_runtime_mark_last_busy(i32 %68)
  %70 = load %struct.uart_omap_port*, %struct.uart_omap_port** %7, align 8
  %71 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pm_runtime_put_autosuspend(i32 %72)
  ret void
}

declare dso_local %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @serial_out(%struct.uart_omap_port*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @serial_in(%struct.uart_omap_port*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
