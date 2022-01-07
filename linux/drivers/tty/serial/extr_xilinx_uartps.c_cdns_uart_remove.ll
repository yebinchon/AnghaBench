; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_uart_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_uart_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, %struct.cdns_uart* }
%struct.cdns_uart = type { i64, i32, i32, i32, i32 }
%struct.platform_device = type { i32 }

@bitmap_lock = common dso_local global i32 0, align 4
@MAX_UART_INSTANCES = common dso_local global i64 0, align 8
@bitmap = common dso_local global i32 0, align 4
@uartps_major = common dso_local global i64 0, align 8
@console_port = common dso_local global %struct.uart_port* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cdns_uart_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_uart_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.cdns_uart*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.uart_port* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.uart_port* %7, %struct.uart_port** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 1
  %10 = load %struct.cdns_uart*, %struct.cdns_uart** %9, align 8
  store %struct.cdns_uart* %10, %struct.cdns_uart** %4, align 8
  %11 = load %struct.cdns_uart*, %struct.cdns_uart** %4, align 8
  %12 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = call i32 @uart_remove_one_port(i32 %13, %struct.uart_port* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = call i32 @mutex_lock(i32* @bitmap_lock)
  %19 = load %struct.cdns_uart*, %struct.cdns_uart** %4, align 8
  %20 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MAX_UART_INSTANCES, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.cdns_uart*, %struct.cdns_uart** %4, align 8
  %26 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @bitmap, align 4
  %29 = call i32 @clear_bit(i64 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %1
  %31 = call i32 @mutex_unlock(i32* @bitmap_lock)
  %32 = load %struct.cdns_uart*, %struct.cdns_uart** %4, align 8
  %33 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clk_disable_unprepare(i32 %34)
  %36 = load %struct.cdns_uart*, %struct.cdns_uart** %4, align 8
  %37 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @clk_disable_unprepare(i32 %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @pm_runtime_disable(i32* %41)
  %43 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @pm_runtime_set_suspended(i32* %44)
  %46 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @pm_runtime_dont_use_autosuspend(i32* %47)
  %49 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @device_init_wakeup(i32* %50, i32 0)
  %52 = call i32 @mutex_lock(i32* @bitmap_lock)
  %53 = load i32, i32* @bitmap, align 4
  %54 = load i64, i64* @MAX_UART_INSTANCES, align 8
  %55 = call i64 @bitmap_empty(i32 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %30
  store i64 0, i64* @uartps_major, align 8
  br label %58

58:                                               ; preds = %57, %30
  %59 = call i32 @mutex_unlock(i32* @bitmap_lock)
  %60 = load %struct.cdns_uart*, %struct.cdns_uart** %4, align 8
  %61 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @uart_unregister_driver(i32 %62)
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.uart_port* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @uart_remove_one_port(i32, %struct.uart_port*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_set_suspended(i32*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(i32*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i64 @bitmap_empty(i32, i64) #1

declare dso_local i32 @uart_unregister_driver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
