; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.uart_omap_port = type { i32, i32, i32 }

@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@OMAP_UART_SCR_TX_EMPTY = common dso_local global i32 0, align 4
@UART_OMAP_SCR = common dso_local global i32 0, align 4
@SER_RS485_RTS_ON_SEND = common dso_local global i32 0, align 4
@SER_RS485_RX_DURING_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @serial_omap_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_omap_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_omap_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port* %5)
  store %struct.uart_omap_port* %6, %struct.uart_omap_port** %3, align 8
  %7 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pm_runtime_get_sync(i32 %9)
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SER_RS485_ENABLED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %1
  %19 = load i32, i32* @OMAP_UART_SCR_TX_EMPTY, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %22 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %26 = load i32, i32* @UART_OMAP_SCR, align 4
  %27 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %28 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @serial_out(%struct.uart_omap_port* %25, i32 %26, i32 %29)
  %31 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SER_RS485_RTS_ON_SEND, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  store i32 %39, i32* %4, align 4
  %40 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %41 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @gpio_get_value(i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %18
  %47 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %48 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @gpio_set_value(i32 %49, i32 %50)
  %52 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %46
  %58 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %59 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @mdelay(i64 %61)
  br label %63

63:                                               ; preds = %57, %46
  br label %64

64:                                               ; preds = %63, %18
  br label %65

65:                                               ; preds = %64, %1
  %66 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %67 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SER_RS485_ENABLED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %65
  %74 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %75 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SER_RS485_RX_DURING_TX, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %73
  %82 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %83 = call i32 @serial_omap_stop_rx(%struct.uart_port* %82)
  br label %84

84:                                               ; preds = %81, %73, %65
  %85 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %86 = call i32 @serial_omap_enable_ier_thri(%struct.uart_omap_port* %85)
  %87 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %88 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @pm_runtime_mark_last_busy(i32 %89)
  %91 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %92 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @pm_runtime_put_autosuspend(i32 %93)
  ret void
}

declare dso_local %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @serial_out(%struct.uart_omap_port*, i32, i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @mdelay(i64) #1

declare dso_local i32 @serial_omap_stop_rx(%struct.uart_port*) #1

declare dso_local i32 @serial_omap_enable_ier_thri(%struct.uart_omap_port*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
