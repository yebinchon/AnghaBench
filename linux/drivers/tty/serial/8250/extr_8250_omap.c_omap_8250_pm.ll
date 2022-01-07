; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap_8250_pm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap_8250_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_8250_port = type { i32 }

@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_CONF_MODE_B = common dso_local global i32 0, align 4
@UART_EFR = common dso_local global i32 0, align 4
@UART_EFR_ECB = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_IERX_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32, i32)* @omap_8250_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_8250_pm(%struct.uart_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_8250_port*, align 8
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %10 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %9)
  store %struct.uart_8250_port* %10, %struct.uart_8250_port** %7, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pm_runtime_get_sync(i32 %13)
  %15 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %16 = load i32, i32* @UART_LCR, align 4
  %17 = load i32, i32* @UART_LCR_CONF_MODE_B, align 4
  %18 = call i32 @serial_out(%struct.uart_8250_port* %15, i32 %16, i32 %17)
  %19 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %20 = load i32, i32* @UART_EFR, align 4
  %21 = call i32 @serial_in(%struct.uart_8250_port* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %23 = load i32, i32* @UART_EFR, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @UART_EFR_ECB, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @serial_out(%struct.uart_8250_port* %22, i32 %23, i32 %26)
  %28 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %29 = load i32, i32* @UART_LCR, align 4
  %30 = call i32 @serial_out(%struct.uart_8250_port* %28, i32 %29, i32 0)
  %31 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %32 = load i32, i32* @UART_IER, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @UART_IERX_SLEEP, align 4
  br label %38

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  %40 = call i32 @serial_out(%struct.uart_8250_port* %31, i32 %32, i32 %39)
  %41 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %42 = load i32, i32* @UART_LCR, align 4
  %43 = load i32, i32* @UART_LCR_CONF_MODE_B, align 4
  %44 = call i32 @serial_out(%struct.uart_8250_port* %41, i32 %42, i32 %43)
  %45 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %46 = load i32, i32* @UART_EFR, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @serial_out(%struct.uart_8250_port* %45, i32 %46, i32 %47)
  %49 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %50 = load i32, i32* @UART_LCR, align 4
  %51 = call i32 @serial_out(%struct.uart_8250_port* %49, i32 %50, i32 0)
  %52 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pm_runtime_mark_last_busy(i32 %54)
  %56 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %57 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pm_runtime_put_autosuspend(i32 %58)
  ret void
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
