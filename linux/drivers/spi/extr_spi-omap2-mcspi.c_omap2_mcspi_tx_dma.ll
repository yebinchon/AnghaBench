; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_tx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, i32 }
%struct.spi_transfer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dma_slave_config = type { i32 }
%struct.omap2_mcspi = type { %struct.omap2_mcspi_dma* }
%struct.omap2_mcspi_dma = type { i64 }
%struct.dma_async_tx_descriptor = type { %struct.spi_device*, i32 }

@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@omap2_mcspi_tx_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, %struct.spi_transfer*, i32)* @omap2_mcspi_tx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2_mcspi_tx_dma(%struct.spi_device* %0, %struct.spi_transfer* %1, i32 %2) #0 {
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.omap2_mcspi*, align 8
  %8 = alloca %struct.omap2_mcspi_dma*, align 8
  %9 = alloca %struct.dma_async_tx_descriptor*, align 8
  %10 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 0
  store i32 %2, i32* %10, align 4
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %6, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.omap2_mcspi* @spi_master_get_devdata(i32 %13)
  store %struct.omap2_mcspi* %14, %struct.omap2_mcspi** %7, align 8
  %15 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %7, align 8
  %16 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %15, i32 0, i32 0
  %17 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %16, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %17, i64 %20
  store %struct.omap2_mcspi_dma* %21, %struct.omap2_mcspi_dma** %8, align 8
  %22 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %8, align 8
  %23 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %3
  %27 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %8, align 8
  %28 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @dmaengine_slave_config(i64 %29, %struct.dma_slave_config* %4)
  %31 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %8, align 8
  %32 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %39 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %43 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %44 = load i32, i32* @DMA_CTRL_ACK, align 4
  %45 = or i32 %43, %44
  %46 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i64 %33, i32 %37, i32 %41, i32 %42, i32 %45)
  store %struct.dma_async_tx_descriptor* %46, %struct.dma_async_tx_descriptor** %9, align 8
  %47 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %48 = icmp ne %struct.dma_async_tx_descriptor* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %26
  %50 = load i32, i32* @omap2_mcspi_tx_callback, align 4
  %51 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %52 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %54 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %55 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %54, i32 0, i32 0
  store %struct.spi_device* %53, %struct.spi_device** %55, align 8
  %56 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %57 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %56)
  br label %59

58:                                               ; preds = %26
  br label %59

59:                                               ; preds = %58, %49
  br label %60

60:                                               ; preds = %59, %3
  %61 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %8, align 8
  %62 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @dma_async_issue_pending(i64 %63)
  %65 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %66 = call i32 @omap2_mcspi_set_dma_req(%struct.spi_device* %65, i32 0, i32 1)
  ret void
}

declare dso_local %struct.omap2_mcspi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @dmaengine_slave_config(i64, %struct.dma_slave_config*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(i64) #1

declare dso_local i32 @omap2_mcspi_set_dma_req(%struct.spi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
