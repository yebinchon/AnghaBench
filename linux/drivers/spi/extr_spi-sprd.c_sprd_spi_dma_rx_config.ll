; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_dma_rx_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_dma_rx_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_spi = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.dma_chan** }
%struct.dma_chan = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32 }

@SPRD_SPI_RX = common dso_local global i64 0, align 8
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_spi*, %struct.spi_transfer*)* @sprd_spi_dma_rx_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_spi_dma_rx_config(%struct.sprd_spi* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sprd_spi*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca %struct.dma_slave_config, align 4
  %8 = alloca i32, align 4
  store %struct.sprd_spi* %0, %struct.sprd_spi** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %9 = load %struct.sprd_spi*, %struct.sprd_spi** %4, align 8
  %10 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load %struct.dma_chan**, %struct.dma_chan*** %11, align 8
  %13 = load i64, i64* @SPRD_SPI_RX, align 8
  %14 = getelementptr inbounds %struct.dma_chan*, %struct.dma_chan** %12, i64 %13
  %15 = load %struct.dma_chan*, %struct.dma_chan** %14, align 8
  store %struct.dma_chan* %15, %struct.dma_chan** %6, align 8
  %16 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 0
  %17 = load %struct.sprd_spi*, %struct.sprd_spi** %4, align 8
  %18 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %16, align 4
  %21 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 1
  %22 = load %struct.sprd_spi*, %struct.sprd_spi** %4, align 8
  %23 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %21, align 4
  %26 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 2
  %27 = load %struct.sprd_spi*, %struct.sprd_spi** %4, align 8
  %28 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %26, align 4
  %31 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 3
  %32 = load %struct.sprd_spi*, %struct.sprd_spi** %4, align 8
  %33 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %31, align 4
  %35 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %36 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %36, i32 0, i32 0
  %38 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %39 = call i32 @sprd_spi_dma_submit(%struct.dma_chan* %35, %struct.dma_slave_config* %7, i32* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %2
  %45 = load %struct.sprd_spi*, %struct.sprd_spi** %4, align 8
  %46 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %44, %42
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @sprd_spi_dma_submit(%struct.dma_chan*, %struct.dma_slave_config*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
