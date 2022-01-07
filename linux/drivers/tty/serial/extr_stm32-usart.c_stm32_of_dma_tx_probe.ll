; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_of_dma_tx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_of_dma_tx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_port = type { i32, i32*, i32, i32, %struct.uart_port, %struct.TYPE_2__* }
%struct.uart_port = type { i64 }
%struct.TYPE_2__ = type { %struct.stm32_usart_offsets }
%struct.stm32_usart_offsets = type { i64 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.dma_slave_config = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"tx dma alloc failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TX_BUF_L = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"tx dma channel config failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_port*, %struct.platform_device*)* @stm32_of_dma_tx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_of_dma_tx_probe(%struct.stm32_port* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_port*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.stm32_usart_offsets*, align 8
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.dma_slave_config, align 8
  %10 = alloca i32, align 4
  store %struct.stm32_port* %0, %struct.stm32_port** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %11 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %12 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %11, i32 0, i32 5
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.stm32_usart_offsets* %14, %struct.stm32_usart_offsets** %6, align 8
  %15 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %16 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %15, i32 0, i32 4
  store %struct.uart_port* %16, %struct.uart_port** %7, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %20 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.device*, %struct.device** %8, align 8
  %22 = call i32* @dma_request_slave_channel(%struct.device* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %24 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %26 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %2
  %30 = load %struct.device*, %struct.device** %8, align 8
  %31 = call i32 @dev_info(%struct.device* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %94

34:                                               ; preds = %2
  %35 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* @TX_BUF_L, align 4
  %38 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %39 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %38, i32 0, i32 2
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @dma_alloc_coherent(%struct.device* %36, i32 %37, i32* %39, i32 %40)
  %42 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %43 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %45 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %34
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %10, align 4
  br label %86

51:                                               ; preds = %34
  %52 = call i32 @memset(%struct.dma_slave_config* %9, i32 0, i32 16)
  %53 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %6, align 8
  %57 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 1
  store i64 %59, i64* %60, align 8
  %61 = load i32, i32* @DMA_SLAVE_BUSWIDTH_1_BYTE, align 4
  %62 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %64 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @dmaengine_slave_config(i32* %65, %struct.dma_slave_config* %9)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %51
  %70 = load %struct.device*, %struct.device** %8, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %10, align 4
  br label %75

74:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %94

75:                                               ; preds = %69
  %76 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load i32, i32* @TX_BUF_L, align 4
  %79 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %80 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %83 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dma_free_coherent(%struct.device* %77, i32 %78, i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %75, %48
  %87 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %88 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @dma_release_channel(i32* %89)
  %91 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %92 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %91, i32 0, i32 1
  store i32* null, i32** %92, align 8
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %86, %74, %29
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32* @dma_request_slave_channel(%struct.device*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.dma_slave_config*, i32, i32) #1

declare dso_local i32 @dmaengine_slave_config(i32*, %struct.dma_slave_config*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_release_channel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
