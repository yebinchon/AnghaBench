; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sifive.c_sifive_serial_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sifive.c_sifive_serial_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sifive_serial_port = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@sifive_serial_uart_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sifive_serial_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sifive_serial_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sifive_serial_port*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.sifive_serial_port* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.sifive_serial_port* %5, %struct.sifive_serial_port** %3, align 8
  %6 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %3, align 8
  %7 = call i32 @__ssp_remove_console_port(%struct.sifive_serial_port* %6)
  %8 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %3, align 8
  %9 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %8, i32 0, i32 2
  %10 = call i32 @uart_remove_one_port(i32* @sifive_serial_uart_driver, %struct.TYPE_2__* %9)
  %11 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %3, align 8
  %12 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %3, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.sifive_serial_port* %15)
  %17 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %3, align 8
  %18 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %3, align 8
  %21 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %20, i32 0, i32 0
  %22 = call i32 @clk_notifier_unregister(i32 %19, i32* %21)
  ret i32 0
}

declare dso_local %struct.sifive_serial_port* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @__ssp_remove_console_port(%struct.sifive_serial_port*) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @free_irq(i32, %struct.sifive_serial_port*) #1

declare dso_local i32 @clk_notifier_unregister(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
