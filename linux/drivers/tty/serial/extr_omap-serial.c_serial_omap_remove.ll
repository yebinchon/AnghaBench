; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.uart_omap_port = type { i32, i32, i32 }

@serial_omap_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @serial_omap_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_omap_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.uart_omap_port*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.uart_omap_port* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.uart_omap_port* %5, %struct.uart_omap_port** %3, align 8
  %6 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %7 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pm_runtime_get_sync(i32 %8)
  %10 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %10, i32 0, i32 2
  %12 = call i32 @uart_remove_one_port(i32* @serial_omap_reg, i32* %11)
  %13 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pm_runtime_dont_use_autosuspend(i32 %15)
  %17 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pm_runtime_put_sync(i32 %19)
  %21 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %22 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pm_runtime_disable(i32 %23)
  %25 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %25, i32 0, i32 0
  %27 = call i32 @pm_qos_remove_request(i32* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @device_init_wakeup(i32* %29, i32 0)
  ret i32 0
}

declare dso_local %struct.uart_omap_port* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @uart_remove_one_port(i32*, i32*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @pm_qos_remove_request(i32*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
