; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }
%struct.efm32_uart_port = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"failed to enable clk\0A\00", align 1
@UARTn_ROUTE_RXPEN = common dso_local global i32 0, align 4
@UARTn_ROUTE_TXPEN = common dso_local global i32 0, align 4
@UARTn_ROUTE = common dso_local global i32 0, align 4
@efm32_uart_rxirq = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to register rxirq\0A\00", align 1
@UARTn_IEN = common dso_local global i32 0, align 4
@efm32_uart_txirq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to register txirq\0A\00", align 1
@UARTn_IF_RXDATAV = common dso_local global i32 0, align 4
@UARTn_IF_RXOF = common dso_local global i32 0, align 4
@UARTn_CMD_RXEN = common dso_local global i32 0, align 4
@UARTn_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @efm32_uart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efm32_uart_startup(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.efm32_uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.efm32_uart_port* @to_efm_port(%struct.uart_port* %5)
  store %struct.efm32_uart_port* %6, %struct.efm32_uart_port** %3, align 8
  %7 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @clk_enable(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %15 = call i32 @efm_debug(%struct.efm32_uart_port* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %85

16:                                               ; preds = %1
  %17 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %18 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_get_rate(i32 %19)
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %24 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %25 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @UARTn_ROUTE_LOCATION(i32 %27)
  %29 = load i32, i32* @UARTn_ROUTE_RXPEN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @UARTn_ROUTE_TXPEN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @UARTn_ROUTE, align 4
  %34 = call i32 @efm32_uart_write32(%struct.efm32_uart_port* %23, i32 %32, i32 %33)
  %35 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @efm32_uart_rxirq, align 4
  %39 = load i32, i32* @DRIVER_NAME, align 4
  %40 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %41 = call i32 @request_irq(i32 %37, i32 %38, i32 0, i32 %39, %struct.efm32_uart_port* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %16
  %45 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %46 = call i32 @efm_debug(%struct.efm32_uart_port* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %68

47:                                               ; preds = %16
  %48 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %49 = load i32, i32* @UARTn_IEN, align 4
  %50 = call i32 @efm32_uart_write32(%struct.efm32_uart_port* %48, i32 0, i32 %49)
  %51 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %52 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @efm32_uart_txirq, align 4
  %55 = load i32, i32* @DRIVER_NAME, align 4
  %56 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %57 = call i32 @request_irq(i32 %53, i32 %54, i32 0, i32 %55, %struct.efm32_uart_port* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %47
  %61 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %62 = call i32 @efm_debug(%struct.efm32_uart_port* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %64 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %67 = call i32 @free_irq(i32 %65, %struct.efm32_uart_port* %66)
  br label %68

68:                                               ; preds = %60, %44
  %69 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %70 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @clk_disable(i32 %71)
  br label %84

73:                                               ; preds = %47
  %74 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %75 = load i32, i32* @UARTn_IF_RXDATAV, align 4
  %76 = load i32, i32* @UARTn_IF_RXOF, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @UARTn_IEN, align 4
  %79 = call i32 @efm32_uart_write32(%struct.efm32_uart_port* %74, i32 %77, i32 %78)
  %80 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %81 = load i32, i32* @UARTn_CMD_RXEN, align 4
  %82 = load i32, i32* @UARTn_CMD, align 4
  %83 = call i32 @efm32_uart_write32(%struct.efm32_uart_port* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %73, %68
  br label %85

85:                                               ; preds = %84, %13
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.efm32_uart_port* @to_efm_port(%struct.uart_port*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @efm_debug(%struct.efm32_uart_port*, i8*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @efm32_uart_write32(%struct.efm32_uart_port*, i32, i32) #1

declare dso_local i32 @UARTn_ROUTE_LOCATION(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.efm32_uart_port*) #1

declare dso_local i32 @free_irq(i32, %struct.efm32_uart_port*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
