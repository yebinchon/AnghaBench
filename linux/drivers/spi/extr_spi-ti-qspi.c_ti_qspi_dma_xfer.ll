; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_ti_qspi_dma_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_ti_qspi_dma_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_qspi = type { i32, i32, %struct.dma_chan* }
%struct.dma_chan = type { i32 }
%struct.dma_async_tx_descriptor = type { i32 (%struct.dma_async_tx_descriptor*)*, %struct.ti_qspi*, i32 }

@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"device_prep_dma_memcpy error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ti_qspi_dma_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"dma_submit_error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"DMA wait_for_completion_timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_qspi*, i32, i32, i64)* @ti_qspi_dma_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_qspi_dma_xfer(%struct.ti_qspi* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ti_qspi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.dma_chan*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dma_async_tx_descriptor*, align 8
  %14 = alloca i32, align 4
  store %struct.ti_qspi* %0, %struct.ti_qspi** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load %struct.ti_qspi*, %struct.ti_qspi** %6, align 8
  %16 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %15, i32 0, i32 2
  %17 = load %struct.dma_chan*, %struct.dma_chan** %16, align 8
  store %struct.dma_chan* %17, %struct.dma_chan** %10, align 8
  %18 = load i32, i32* @DMA_CTRL_ACK, align 4
  %19 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %12, align 4
  %21 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i64, i64* %9, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_dma_memcpy(%struct.dma_chan* %21, i32 %22, i32 %23, i64 %24, i32 %25)
  store %struct.dma_async_tx_descriptor* %26, %struct.dma_async_tx_descriptor** %13, align 8
  %27 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %28 = icmp ne %struct.dma_async_tx_descriptor* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %4
  %30 = load %struct.ti_qspi*, %struct.ti_qspi** %6, align 8
  %31 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %83

36:                                               ; preds = %4
  %37 = load i32, i32* @ti_qspi_dma_callback, align 4
  %38 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %39 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ti_qspi*, %struct.ti_qspi** %6, align 8
  %41 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %42 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %41, i32 0, i32 1
  store %struct.ti_qspi* %40, %struct.ti_qspi** %42, align 8
  %43 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %44 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %43, i32 0, i32 0
  %45 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %44, align 8
  %46 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %47 = call i32 %45(%struct.dma_async_tx_descriptor* %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.ti_qspi*, %struct.ti_qspi** %6, align 8
  %49 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %48, i32 0, i32 1
  %50 = call i32 @reinit_completion(i32* %49)
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @dma_submit_error(i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %36
  %56 = load %struct.ti_qspi*, %struct.ti_qspi** %6, align 8
  %57 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 (i32, i8*, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %83

63:                                               ; preds = %36
  %64 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %65 = call i32 @dma_async_issue_pending(%struct.dma_chan* %64)
  %66 = load %struct.ti_qspi*, %struct.ti_qspi** %6, align 8
  %67 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %66, i32 0, i32 1
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @msecs_to_jiffies(i64 %68)
  %70 = call i32 @wait_for_completion_timeout(i32* %67, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %63
  %74 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %75 = call i32 @dmaengine_terminate_sync(%struct.dma_chan* %74)
  %76 = load %struct.ti_qspi*, %struct.ti_qspi** %6, align 8
  %77 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32, i8*, ...) @dev_err(i32 %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @ETIMEDOUT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %83

82:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %73, %55, %29
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_dma_memcpy(%struct.dma_chan*, i32, i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @dmaengine_terminate_sync(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
