; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sprd_uart_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@sprd_uart_driver = common dso_local global i32 0, align 4
@sprd_port = common dso_local global i32** null, align 8
@sprd_ports_num = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sprd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sprd_uart_port*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.sprd_uart_port* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.sprd_uart_port* %5, %struct.sprd_uart_port** %3, align 8
  %6 = load %struct.sprd_uart_port*, %struct.sprd_uart_port** %3, align 8
  %7 = icmp ne %struct.sprd_uart_port* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.sprd_uart_port*, %struct.sprd_uart_port** %3, align 8
  %10 = getelementptr inbounds %struct.sprd_uart_port, %struct.sprd_uart_port* %9, i32 0, i32 0
  %11 = call i32 @uart_remove_one_port(i32* @sprd_uart_driver, %struct.TYPE_2__* %10)
  %12 = load i32**, i32*** @sprd_port, align 8
  %13 = load %struct.sprd_uart_port*, %struct.sprd_uart_port** %3, align 8
  %14 = getelementptr inbounds %struct.sprd_uart_port, %struct.sprd_uart_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32*, i32** %12, i64 %16
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* @sprd_ports_num, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* @sprd_ports_num, align 4
  br label %20

20:                                               ; preds = %8, %1
  %21 = load i32, i32* @sprd_ports_num, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i32 @uart_unregister_driver(i32* @sprd_uart_driver)
  br label %25

25:                                               ; preds = %23, %20
  %26 = load %struct.sprd_uart_port*, %struct.sprd_uart_port** %3, align 8
  %27 = call i32 @sprd_rx_free_buf(%struct.sprd_uart_port* %26)
  ret i32 0
}

declare dso_local %struct.sprd_uart_port* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @uart_unregister_driver(i32*) #1

declare dso_local i32 @sprd_rx_free_buf(%struct.sprd_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
