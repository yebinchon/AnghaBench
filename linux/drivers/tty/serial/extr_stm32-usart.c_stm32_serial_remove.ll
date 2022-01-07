; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_serial_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_serial_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.uart_port = type { i32 }
%struct.stm32_port = type { i64, i32, i64, i32, i64, i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_usart_offsets }
%struct.stm32_usart_offsets = type { i32 }

@USART_CR3_DMAR = common dso_local global i32 0, align 4
@RX_BUF_L = common dso_local global i32 0, align 4
@USART_CR3_DMAT = common dso_local global i32 0, align 4
@TX_BUF_L = common dso_local global i32 0, align 4
@stm32_usart_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_serial_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_serial_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.stm32_port*, align 8
  %5 = alloca %struct.stm32_usart_offsets*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.uart_port* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.uart_port* %8, %struct.uart_port** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = call %struct.stm32_port* @to_stm32_port(%struct.uart_port* %9)
  store %struct.stm32_port* %10, %struct.stm32_port** %4, align 8
  %11 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %12 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %11, i32 0, i32 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.stm32_usart_offsets* %14, %struct.stm32_usart_offsets** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @pm_runtime_get_sync(i32* %16)
  %18 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %19 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %5, align 8
  %20 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @USART_CR3_DMAR, align 4
  %23 = call i32 @stm32_clr_bits(%struct.uart_port* %18, i32 %21, i32 %22)
  %24 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %25 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %30 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dma_release_channel(i64 %31)
  br label %33

33:                                               ; preds = %28, %1
  %34 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %35 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load i32, i32* @RX_BUF_L, align 4
  %42 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %43 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %46 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @dma_free_coherent(i32* %40, i32 %41, i32 %44, i64 %47)
  br label %49

49:                                               ; preds = %38, %33
  %50 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %51 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %5, align 8
  %52 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @USART_CR3_DMAT, align 4
  %55 = call i32 @stm32_clr_bits(%struct.uart_port* %50, i32 %53, i32 %54)
  %56 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %57 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %49
  %61 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %62 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @dma_release_channel(i64 %63)
  br label %65

65:                                               ; preds = %60, %49
  %66 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %67 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load i32, i32* @TX_BUF_L, align 4
  %74 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %75 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %78 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @dma_free_coherent(i32* %72, i32 %73, i32 %76, i64 %79)
  br label %81

81:                                               ; preds = %70, %65
  %82 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %83 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i32 @dev_pm_clear_wake_irq(i32* %88)
  %90 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 @device_init_wakeup(i32* %91, i32 0)
  br label %93

93:                                               ; preds = %86, %81
  %94 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %95 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @clk_disable_unprepare(i32 %96)
  %98 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %99 = call i32 @uart_remove_one_port(i32* @stm32_usart_driver, %struct.uart_port* %98)
  store i32 %99, i32* %6, align 4
  %100 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 @pm_runtime_disable(i32* %101)
  %103 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i32 @pm_runtime_put_noidle(i32* %104)
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local %struct.uart_port* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.stm32_port* @to_stm32_port(%struct.uart_port*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @stm32_clr_bits(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @dma_release_channel(i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i64) #1

declare dso_local i32 @dev_pm_clear_wake_irq(i32*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.uart_port*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
