; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ucc_uart.c_ucc_uart_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ucc_uart.c_ucc_uart_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.uart_qe_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"removing /dev/ttyQE%u\0A\00", align 1
@ucc_uart_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ucc_uart_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucc_uart_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.uart_qe_port*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.uart_qe_port* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.uart_qe_port* %5, %struct.uart_qe_port** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load %struct.uart_qe_port*, %struct.uart_qe_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_info(i32* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.uart_qe_port*, %struct.uart_qe_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %13, i32 0, i32 0
  %15 = call i32 @uart_remove_one_port(i32* @ucc_uart_driver, %struct.TYPE_2__* %14)
  %16 = load %struct.uart_qe_port*, %struct.uart_qe_port** %3, align 8
  %17 = call i32 @kfree(%struct.uart_qe_port* %16)
  ret i32 0
}

declare dso_local %struct.uart_qe_port* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.uart_qe_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
