; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.efm32_uart_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@efm32_uart_reg = common dso_local global i32 0, align 4
@efm32_uart_ports = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @efm32_uart_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efm32_uart_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.efm32_uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.efm32_uart_port* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.efm32_uart_port* %6, %struct.efm32_uart_port** %3, align 8
  %7 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %12 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %11, i32 0, i32 0
  %13 = call i32 @uart_remove_one_port(i32* @efm32_uart_reg, %struct.TYPE_2__* %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp uge i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32**, i32*** @efm32_uart_ports, align 8
  %19 = call i32 @ARRAY_SIZE(i32** %18)
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32**, i32*** @efm32_uart_ports, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %21, %16, %1
  %27 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %28 = call i32 @kfree(%struct.efm32_uart_port* %27)
  ret i32 0
}

declare dso_local %struct.efm32_uart_port* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @kfree(%struct.efm32_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
