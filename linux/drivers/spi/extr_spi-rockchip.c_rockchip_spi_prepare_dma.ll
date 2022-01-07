; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_prepare_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_prepare_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_spi = type { i32, i32, i32, i32, i32 }
%struct.spi_master = type { i32, i32 }
%struct.spi_transfer = type { %struct.TYPE_4__, i64, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dma_async_tx_descriptor = type { %struct.spi_master*, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32 }

@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@rockchip_spi_dma_rxcb = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@rockchip_spi_dma_txcb = common dso_local global i32 0, align 4
@RXDMA = common dso_local global i32 0, align 4
@TXDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_spi*, %struct.spi_master*, %struct.spi_transfer*)* @rockchip_spi_prepare_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_spi_prepare_dma(%struct.rockchip_spi* %0, %struct.spi_master* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rockchip_spi*, align 8
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.dma_async_tx_descriptor*, align 8
  %9 = alloca %struct.dma_async_tx_descriptor*, align 8
  %10 = alloca %struct.dma_slave_config, align 4
  %11 = alloca %struct.dma_slave_config, align 4
  store %struct.rockchip_spi* %0, %struct.rockchip_spi** %5, align 8
  store %struct.spi_master* %1, %struct.spi_master** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %12 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %13 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %12, i32 0, i32 1
  %14 = call i32 @atomic_set(i32* %13, i32 0)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %8, align 8
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 4
  %25 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 5
  %27 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %28 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 6
  %31 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %32 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %30, align 4
  %34 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %35 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dmaengine_slave_config(i32 %36, %struct.dma_slave_config* %10)
  %38 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %39 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %42 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %46 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %50 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %51 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %40, i32 %44, i32 %48, i32 %49, i32 %50)
  store %struct.dma_async_tx_descriptor* %51, %struct.dma_async_tx_descriptor** %8, align 8
  %52 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %53 = icmp ne %struct.dma_async_tx_descriptor* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %19
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %157

57:                                               ; preds = %19
  %58 = load i32, i32* @rockchip_spi_dma_rxcb, align 4
  %59 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %60 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %62 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %63 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %62, i32 0, i32 0
  store %struct.spi_master* %61, %struct.spi_master** %63, align 8
  br label %64

64:                                               ; preds = %57, %3
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %9, align 8
  %65 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %66 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %126

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 0
  store i32 0, i32* %70, align 4
  %71 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 1
  %72 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %73 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %74, 4
  store i32 %75, i32* %71, align 4
  %76 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 2
  %77 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %78 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %76, align 4
  %80 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 3
  %81 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %82 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %80, align 4
  %84 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 4
  %85 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  store i32 %85, i32* %84, align 4
  %86 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 5
  store i32 0, i32* %86, align 4
  %87 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %11, i32 0, i32 6
  store i32 0, i32* %87, align 4
  %88 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %89 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dmaengine_slave_config(i32 %90, %struct.dma_slave_config* %11)
  %92 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %93 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %96 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %100 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %104 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %105 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %94, i32 %98, i32 %102, i32 %103, i32 %104)
  store %struct.dma_async_tx_descriptor* %105, %struct.dma_async_tx_descriptor** %9, align 8
  %106 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %107 = icmp ne %struct.dma_async_tx_descriptor* %106, null
  br i1 %107, label %119, label %108

108:                                              ; preds = %69
  %109 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %110 = icmp ne %struct.dma_async_tx_descriptor* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %113 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @dmaengine_terminate_sync(i32 %114)
  br label %116

116:                                              ; preds = %111, %108
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %157

119:                                              ; preds = %69
  %120 = load i32, i32* @rockchip_spi_dma_txcb, align 4
  %121 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %122 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %124 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %125 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %124, i32 0, i32 0
  store %struct.spi_master* %123, %struct.spi_master** %125, align 8
  br label %126

126:                                              ; preds = %119, %64
  %127 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %128 = icmp ne %struct.dma_async_tx_descriptor* %127, null
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  %130 = load i32, i32* @RXDMA, align 4
  %131 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %132 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %131, i32 0, i32 1
  %133 = call i32 @atomic_or(i32 %130, i32* %132)
  %134 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %135 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %134)
  %136 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %137 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @dma_async_issue_pending(i32 %138)
  br label %140

140:                                              ; preds = %129, %126
  %141 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %142 = call i32 @spi_enable_chip(%struct.rockchip_spi* %141, i32 1)
  %143 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %144 = icmp ne %struct.dma_async_tx_descriptor* %143, null
  br i1 %144, label %145, label %156

145:                                              ; preds = %140
  %146 = load i32, i32* @TXDMA, align 4
  %147 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %148 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %147, i32 0, i32 1
  %149 = call i32 @atomic_or(i32 %146, i32* %148)
  %150 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %151 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %150)
  %152 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %153 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @dma_async_issue_pending(i32 %154)
  br label %156

156:                                              ; preds = %145, %140
  store i32 1, i32* %4, align 4
  br label %157

157:                                              ; preds = %156, %116, %54
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dmaengine_slave_config(i32, %struct.dma_slave_config*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmaengine_terminate_sync(i32) #1

declare dso_local i32 @atomic_or(i32, i32*) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @spi_enable_chip(%struct.rockchip_spi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
