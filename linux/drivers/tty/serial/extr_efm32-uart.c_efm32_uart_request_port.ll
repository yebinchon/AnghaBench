; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_request_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_request_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }
%struct.efm32_uart_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"failed to remap\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @efm32_uart_request_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efm32_uart_request_port(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.efm32_uart_port*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = call %struct.efm32_uart_port* @to_efm_port(%struct.uart_port* %6)
  store %struct.efm32_uart_port* %7, %struct.efm32_uart_port** %4, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ioremap(i32 %10, i32 60)
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %15 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %23 = call i32 @efm_debug(%struct.efm32_uart_port* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %60

24:                                               ; preds = %1
  %25 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_get(i32 %27, i32* null)
  %29 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %30 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %32 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %38 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %42 = call i32 @efm_debug(%struct.efm32_uart_port* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %55

43:                                               ; preds = %24
  %44 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %45 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @clk_prepare(i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %43
  %51 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %4, align 8
  %52 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clk_put(i32 %53)
  br label %55

55:                                               ; preds = %50, %36
  %56 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %57 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @iounmap(i32 %58)
  br label %60

60:                                               ; preds = %55, %19
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %60
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.efm32_uart_port* @to_efm_port(%struct.uart_port*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @efm_debug(%struct.efm32_uart_port*, i8*) #1

declare dso_local i32 @clk_get(i32, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
