; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_dma_txrx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_dma_txrx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32 }
%struct.sprd_spi = type { i32, i32, i32 (%struct.sprd_spi*, i32)*, %struct.TYPE_2__, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@SPRD_SPI_TX_MODE = common dso_local global i32 0, align 4
@SPI_3WIRE = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to write, ret = %d\0A\00", align 1
@SPRD_SPI_RX_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to configure rx DMA, ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @sprd_spi_dma_txrx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_spi_dma_txrx_bufs(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.sprd_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sprd_spi* @spi_master_get_devdata(i32 %11)
  store %struct.sprd_spi* %12, %struct.sprd_spi** %5, align 8
  %13 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %14 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %17 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %16, i32 0, i32 4
  %18 = call i32 @reinit_completion(i32* %17)
  %19 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %20 = call i32 @sprd_spi_irq_enable(%struct.sprd_spi* %19)
  %21 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %22 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SPRD_SPI_TX_MODE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %2
  %28 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %29 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %30 = call i32 @sprd_spi_dma_tx_config(%struct.sprd_spi* %28, %struct.spi_transfer* %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @sprd_spi_set_tx_length(%struct.sprd_spi* %31, i32 %32)
  %34 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %35 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SPI_3WIRE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %27
  %41 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %42 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SPI_TX_DUAL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40, %27
  %48 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %49 = call i32 @sprd_spi_tx_req(%struct.sprd_spi* %48)
  br label %50

50:                                               ; preds = %47, %40
  br label %79

51:                                               ; preds = %2
  %52 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @sprd_spi_set_rx_length(%struct.sprd_spi* %52, i32 %53)
  %55 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %56 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SPI_3WIRE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %51
  %62 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %63 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SPI_TX_DUAL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61, %51
  %69 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %70 = call i32 @sprd_spi_rx_req(%struct.sprd_spi* %69)
  br label %78

71:                                               ; preds = %61
  %72 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %73 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %72, i32 0, i32 2
  %74 = load i32 (%struct.sprd_spi*, i32)*, i32 (%struct.sprd_spi*, i32)** %73, align 8
  %75 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 %74(%struct.sprd_spi* %75, i32 %76)
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %71, %68
  br label %79

79:                                               ; preds = %78, %50
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %7, align 4
  %84 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %85 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %158

89:                                               ; preds = %79
  %90 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %91 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @SPRD_SPI_RX_MODE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %138

96:                                               ; preds = %89
  %97 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %98 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %101 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %99, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %96
  %106 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %107 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %110 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %113 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = srem i32 %111, %115
  %117 = sub nsw i32 %108, %116
  br label %122

118:                                              ; preds = %96
  %119 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %120 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  br label %122

122:                                              ; preds = %118, %105
  %123 = phi i32 [ %117, %105 ], [ %121, %118 ]
  %124 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %125 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  %127 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %128 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %129 = call i32 @sprd_spi_dma_rx_config(%struct.sprd_spi* %127, %struct.spi_transfer* %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %122
  %133 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %134 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %133, i32 0, i32 0
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @dev_err(i32* %134, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  br label %158

137:                                              ; preds = %122
  br label %138

138:                                              ; preds = %137, %89
  %139 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %140 = call i32 @sprd_spi_dma_enable(%struct.sprd_spi* %139, i32 1)
  %141 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %142 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %141, i32 0, i32 4
  %143 = call i32 @wait_for_completion(i32* %142)
  %144 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %145 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @SPRD_SPI_TX_MODE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %138
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %7, align 4
  br label %157

152:                                              ; preds = %138
  %153 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %154 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %152, %150
  br label %158

158:                                              ; preds = %157, %132, %82
  %159 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %160 = call i32 @sprd_spi_dma_enable(%struct.sprd_spi* %159, i32 0)
  %161 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %162 = call i32 @sprd_spi_enter_idle(%struct.sprd_spi* %161)
  %163 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %164 = call i32 @sprd_spi_irq_disable(%struct.sprd_spi* %163)
  %165 = load i32, i32* %7, align 4
  ret i32 %165
}

declare dso_local %struct.sprd_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @sprd_spi_irq_enable(%struct.sprd_spi*) #1

declare dso_local i32 @sprd_spi_dma_tx_config(%struct.sprd_spi*, %struct.spi_transfer*) #1

declare dso_local i32 @sprd_spi_set_tx_length(%struct.sprd_spi*, i32) #1

declare dso_local i32 @sprd_spi_tx_req(%struct.sprd_spi*) #1

declare dso_local i32 @sprd_spi_set_rx_length(%struct.sprd_spi*, i32) #1

declare dso_local i32 @sprd_spi_rx_req(%struct.sprd_spi*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @sprd_spi_dma_rx_config(%struct.sprd_spi*, %struct.spi_transfer*) #1

declare dso_local i32 @sprd_spi_dma_enable(%struct.sprd_spi*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @sprd_spi_enter_idle(%struct.sprd_spi*) #1

declare dso_local i32 @sprd_spi_irq_disable(%struct.sprd_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
