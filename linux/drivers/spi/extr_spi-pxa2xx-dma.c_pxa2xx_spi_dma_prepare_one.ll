; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx-dma.c_pxa2xx_spi_dma_prepare_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx-dma.c_pxa2xx_spi_dma_prepare_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.driver_data = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.dma_chan*, %struct.dma_chan*, %struct.TYPE_4__* }
%struct.dma_chan = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.spi_transfer = type { %struct.sg_table, %struct.sg_table }
%struct.sg_table = type { i32, i32 }
%struct.chip_data = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32 }

@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"DMA slave config failed\0A\00", align 1
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.driver_data*, i32, %struct.spi_transfer*)* @pxa2xx_spi_dma_prepare_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @pxa2xx_spi_dma_prepare_one(%struct.driver_data* %0, i32 %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.dma_async_tx_descriptor*, align 8
  %5 = alloca %struct.driver_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.chip_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_slave_config, align 4
  %11 = alloca %struct.dma_chan*, align 8
  %12 = alloca %struct.sg_table*, align 8
  %13 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %14 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %15 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.chip_data* @spi_get_ctldata(i32 %20)
  store %struct.chip_data* %21, %struct.chip_data** %8, align 8
  %22 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %23 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %29 [
    i32 1, label %25
    i32 2, label %27
  ]

25:                                               ; preds = %3
  %26 = load i32, i32* @DMA_SLAVE_BUSWIDTH_1_BYTE, align 4
  store i32 %26, i32* %9, align 4
  br label %31

27:                                               ; preds = %3
  %28 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  store i32 %28, i32* %9, align 4
  br label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %29, %27, %25
  %32 = call i32 @memset(%struct.dma_slave_config* %10, i32 0, i32 28)
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %31
  %39 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %40 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 6
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  %44 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.chip_data*, %struct.chip_data** %8, align 8
  %46 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 5
  store i32 %47, i32* %48, align 4
  %49 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %50 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %49, i32 0, i32 1
  store %struct.sg_table* %50, %struct.sg_table** %12, align 8
  %51 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %52 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load %struct.dma_chan*, %struct.dma_chan** %54, align 8
  store %struct.dma_chan* %55, %struct.dma_chan** %11, align 8
  br label %74

56:                                               ; preds = %31
  %57 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %58 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 4
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  %63 = load %struct.chip_data*, %struct.chip_data** %8, align 8
  %64 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 3
  store i32 %65, i32* %66, align 4
  %67 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %68 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %67, i32 0, i32 0
  store %struct.sg_table* %68, %struct.sg_table** %12, align 8
  %69 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %70 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.dma_chan*, %struct.dma_chan** %72, align 8
  store %struct.dma_chan* %73, %struct.dma_chan** %11, align 8
  br label %74

74:                                               ; preds = %56, %38
  %75 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %76 = call i32 @dmaengine_slave_config(%struct.dma_chan* %75, %struct.dma_slave_config* %10)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %81 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = call i32 @dev_warn(i32* %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %4, align 8
  br label %98

85:                                               ; preds = %74
  %86 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %87 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  %88 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  %91 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %95 = load i32, i32* @DMA_CTRL_ACK, align 4
  %96 = or i32 %94, %95
  %97 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %86, i32 %89, i32 %92, i32 %93, i32 %96)
  store %struct.dma_async_tx_descriptor* %97, %struct.dma_async_tx_descriptor** %4, align 8
  br label %98

98:                                               ; preds = %85, %79
  %99 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  ret %struct.dma_async_tx_descriptor* %99
}

declare dso_local %struct.chip_data* @spi_get_ctldata(i32) #1

declare dso_local i32 @memset(%struct.dma_slave_config*, i32, i32) #1

declare dso_local i32 @dmaengine_slave_config(%struct.dma_chan*, %struct.dma_slave_config*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
