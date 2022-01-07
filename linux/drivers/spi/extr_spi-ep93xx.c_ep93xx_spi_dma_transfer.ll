; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.ep93xx_spi = type { i32, i32 }
%struct.dma_async_tx_descriptor = type { %struct.spi_master*, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"DMA RX failed: %ld\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"DMA TX failed: %ld\0A\00", align 1
@ep93xx_spi_dma_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*)* @ep93xx_spi_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_spi_dma_transfer(%struct.spi_master* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.ep93xx_spi*, align 8
  %5 = alloca %struct.dma_async_tx_descriptor*, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  %7 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %8 = call %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master* %7)
  store %struct.ep93xx_spi* %8, %struct.ep93xx_spi** %4, align 8
  %9 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %10 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %11 = call %struct.dma_async_tx_descriptor* @ep93xx_spi_dma_prepare(%struct.spi_master* %9, i32 %10)
  store %struct.dma_async_tx_descriptor* %11, %struct.dma_async_tx_descriptor** %5, align 8
  %12 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %13 = call i64 @IS_ERR(%struct.dma_async_tx_descriptor* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %17 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %16, i32 0, i32 0
  %18 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %19 = call i32 @PTR_ERR(%struct.dma_async_tx_descriptor* %18)
  %20 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %22 = call i32 @PTR_ERR(%struct.dma_async_tx_descriptor* %21)
  store i32 %22, i32* %2, align 4
  br label %60

23:                                               ; preds = %1
  %24 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %25 = load i32, i32* @DMA_TO_DEVICE, align 4
  %26 = call %struct.dma_async_tx_descriptor* @ep93xx_spi_dma_prepare(%struct.spi_master* %24, i32 %25)
  store %struct.dma_async_tx_descriptor* %26, %struct.dma_async_tx_descriptor** %6, align 8
  %27 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %28 = call i64 @IS_ERR(%struct.dma_async_tx_descriptor* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %33 = call i32 @ep93xx_spi_dma_finish(%struct.spi_master* %31, i32 %32)
  %34 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %35 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %34, i32 0, i32 0
  %36 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %37 = call i32 @PTR_ERR(%struct.dma_async_tx_descriptor* %36)
  %38 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %40 = call i32 @PTR_ERR(%struct.dma_async_tx_descriptor* %39)
  store i32 %40, i32* %2, align 4
  br label %60

41:                                               ; preds = %23
  %42 = load i32, i32* @ep93xx_spi_dma_callback, align 4
  %43 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %44 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %46 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %47 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %46, i32 0, i32 0
  store %struct.spi_master* %45, %struct.spi_master** %47, align 8
  %48 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %49 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %48)
  %50 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %51 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %50)
  %52 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %4, align 8
  %53 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dma_async_issue_pending(i32 %54)
  %56 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %4, align 8
  %57 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dma_async_issue_pending(i32 %58)
  store i32 1, i32* %2, align 4
  br label %60

60:                                               ; preds = %41, %30, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local %struct.dma_async_tx_descriptor* @ep93xx_spi_dma_prepare(%struct.spi_master*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @ep93xx_spi_dma_finish(%struct.spi_master*, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
