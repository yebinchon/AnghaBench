; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_serial_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_serial_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.uart_port = type { i32 }
%struct.atmel_uart_port = type { i32*, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@atmel_uart = common dso_local global i32 0, align 4
@atmel_ports_in_use = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_serial_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_serial_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.atmel_uart_port*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.uart_port* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.uart_port* %7, %struct.uart_port** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %8)
  store %struct.atmel_uart_port* %9, %struct.atmel_uart_port** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %11 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %10, i32 0, i32 3
  %12 = call i32 @tasklet_kill(i32* %11)
  %13 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %14 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %13, i32 0, i32 2
  %15 = call i32 @tasklet_kill(i32* %14)
  %16 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 @device_init_wakeup(%struct.TYPE_4__* %17, i32 0)
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = call i32 @uart_remove_one_port(i32* @atmel_uart, %struct.uart_port* %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %22 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @kfree(i32 %24)
  %26 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @atmel_ports_in_use, align 4
  %30 = call i32 @clear_bit(i32 %28, i32 %29)
  %31 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %32 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @clk_put(i32* %33)
  %35 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %36 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.uart_port* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.uart_port*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @clk_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
