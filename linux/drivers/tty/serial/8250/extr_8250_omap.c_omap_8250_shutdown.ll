; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap_8250_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap_8250_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.omap8250_priv* }
%struct.omap8250_priv = type { i32 }
%struct.uart_8250_port = type { i32, i64, i64 }

@UART_OMAP_WER = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_LCR_SBC = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_XMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @omap_8250_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_8250_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca %struct.omap8250_priv*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %5)
  store %struct.uart_8250_port* %6, %struct.uart_8250_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 2
  %9 = load %struct.omap8250_priv*, %struct.omap8250_priv** %8, align 8
  store %struct.omap8250_priv* %9, %struct.omap8250_priv** %4, align 8
  %10 = load %struct.omap8250_priv*, %struct.omap8250_priv** %4, align 8
  %11 = getelementptr inbounds %struct.omap8250_priv, %struct.omap8250_priv* %10, i32 0, i32 0
  %12 = call i32 @flush_work(i32* %11)
  %13 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %19 = call i32 @omap_8250_rx_dma_flush(%struct.uart_8250_port* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pm_runtime_get_sync(i32 %23)
  %25 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %26 = load i32, i32* @UART_OMAP_WER, align 4
  %27 = call i32 @serial_out(%struct.uart_8250_port* %25, i32 %26, i32 0)
  %28 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %29 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %31 = load i32, i32* @UART_IER, align 4
  %32 = call i32 @serial_out(%struct.uart_8250_port* %30, i32 %31, i32 0)
  %33 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %34 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %20
  %38 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %39 = call i32 @serial8250_release_dma(%struct.uart_8250_port* %38)
  br label %40

40:                                               ; preds = %37, %20
  %41 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %42 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @UART_LCR_SBC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %49 = load i32, i32* @UART_LCR, align 4
  %50 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %51 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @UART_LCR_SBC, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = call i32 @serial_out(%struct.uart_8250_port* %48, i32 %49, i32 %55)
  br label %57

57:                                               ; preds = %47, %40
  %58 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %59 = load i32, i32* @UART_FCR, align 4
  %60 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %61 = load i32, i32* @UART_FCR_CLEAR_XMIT, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @serial_out(%struct.uart_8250_port* %58, i32 %59, i32 %62)
  %64 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %65 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @pm_runtime_mark_last_busy(i32 %66)
  %68 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %69 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @pm_runtime_put_autosuspend(i32 %70)
  %72 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %73 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %76 = call i32 @free_irq(i32 %74, %struct.uart_port* %75)
  %77 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %78 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dev_pm_clear_wake_irq(i32 %79)
  ret void
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @omap_8250_rx_dma_flush(%struct.uart_8250_port*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @serial8250_release_dma(%struct.uart_8250_port*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @free_irq(i32, %struct.uart_port*) #1

declare dso_local i32 @dev_pm_clear_wake_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
