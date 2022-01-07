; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap_8250_throttle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap_8250_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.omap8250_priv* }
%struct.omap8250_priv = type { i32 }
%struct.uart_8250_port = type { i32 }

@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @omap_8250_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_8250_throttle(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.omap8250_priv*, align 8
  %4 = alloca %struct.uart_8250_port*, align 8
  %5 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 2
  %8 = load %struct.omap8250_priv*, %struct.omap8250_priv** %7, align 8
  store %struct.omap8250_priv* %8, %struct.omap8250_priv** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %9)
  store %struct.uart_8250_port* %10, %struct.uart_8250_port** %4, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pm_runtime_get_sync(i32 %13)
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 1
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* @UART_IER_RLSI, align 4
  %20 = load i32, i32* @UART_IER_RDI, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %24 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %28 = load i32, i32* @UART_IER, align 4
  %29 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %30 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @serial_out(%struct.uart_8250_port* %27, i32 %28, i32 %31)
  %33 = load %struct.omap8250_priv*, %struct.omap8250_priv** %3, align 8
  %34 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 1
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pm_runtime_mark_last_busy(i32 %41)
  %43 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pm_runtime_put_autosuspend(i32 %45)
  ret void
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
