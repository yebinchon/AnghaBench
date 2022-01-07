; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.device = type { i32 }
%struct.bcm2835_spi = type { i8**, i64, i32, i8*, i64 }
%struct.dma_slave_config = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [57 x i8] c"could not get DMA-register address - not using dma mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"no tx-dma configuration found - not using dma mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"no rx-dma configuration found - not using dma mode\0A\00", align 1
@BCM2835_SPI_FIFO = common dso_local global i64 0, align 8
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i8* null, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"cannot map zero page - not using DMA mode\0A\00", align 1
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"cannot prepare fill_tx_desc - not using DMA mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"cannot reuse fill_tx_desc - not using DMA mode\0A\00", align 1
@BCM2835_SPI_CS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [45 x i8] c"cannot map clear_rx_cs - not using DMA mode\0A\00", align 1
@BCM2835_SPI_NUM_CS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [51 x i8] c"cannot prepare clear_rx_desc - not using DMA mode\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"cannot reuse clear_rx_desc - not using DMA mode\0A\00", align 1
@bcm2835_spi_can_dma = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [48 x i8] c"issue configuring dma: %d - not using DMA mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_controller*, %struct.device*, %struct.bcm2835_spi*)* @bcm2835_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_dma_init(%struct.spi_controller* %0, %struct.device* %1, %struct.bcm2835_spi* %2) #0 {
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.bcm2835_spi*, align 8
  %7 = alloca %struct.dma_slave_config, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.bcm2835_spi* %2, %struct.bcm2835_spi** %6, align 8
  %12 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %13 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32* @of_get_address(i32 %15, i32 0, i32* null, i32* null)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %243

22:                                               ; preds = %3
  %23 = load i32*, i32** %8, align 8
  %24 = call i64 @be32_to_cpup(i32* %23)
  store i64 %24, i64* %9, align 8
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = call i8* @dma_request_slave_channel(%struct.device* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %27 = bitcast i8* %26 to %struct.TYPE_7__*
  %28 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %29 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %28, i32 0, i32 2
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %29, align 8
  %30 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %31 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = icmp ne %struct.TYPE_7__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %243

37:                                               ; preds = %22
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = call i8* @dma_request_slave_channel(%struct.device* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %40 = bitcast i8* %39 to %struct.TYPE_7__*
  %41 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %42 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %41, i32 0, i32 1
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %42, align 8
  %43 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %44 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %48, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %239

50:                                               ; preds = %37
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @BCM2835_SPI_FIFO, align 8
  %53 = add nsw i64 %51, %52
  %54 = inttoptr i64 %53 to i8*
  %55 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 1
  store i8* %54, i8** %55, align 8
  %56 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %57 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 0
  store i8* %56, i8** %57, align 8
  %58 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %59 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %58, i32 0, i32 2
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = call i32 @dmaengine_slave_config(%struct.TYPE_7__* %60, %struct.dma_slave_config* %7)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %235

65:                                               ; preds = %50
  %66 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %67 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %66, i32 0, i32 2
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ZERO_PAGE(i32 0)
  %74 = load i32, i32* @DMA_TO_DEVICE, align 4
  %75 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %76 = call i64 @dma_map_page_attrs(i32 %72, i32 %73, i32 0, i32 8, i32 %74, i32 %75)
  %77 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %78 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %77, i32 0, i32 4
  store i64 %76, i64* %78, align 8
  %79 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %80 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %79, i32 0, i32 2
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %87 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @dma_mapping_error(i32 %85, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %65
  %92 = load %struct.device*, %struct.device** %5, align 8
  %93 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %92, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %94 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %95 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %94, i32 0, i32 4
  store i64 0, i64* %95, align 8
  br label %239

96:                                               ; preds = %65
  %97 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %98 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %97, i32 0, i32 2
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %101 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %104 = call i8* @dmaengine_prep_dma_cyclic(%struct.TYPE_7__* %99, i64 %102, i32 8, i32 0, i32 %103, i32 0)
  %105 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %106 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  %107 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %108 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %107, i32 0, i32 3
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %96
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  br label %239

114:                                              ; preds = %96
  %115 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %116 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %115, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @dmaengine_desc_set_reuse(i8* %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load %struct.device*, %struct.device** %5, align 8
  %123 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %122, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %239

124:                                              ; preds = %114
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* @BCM2835_SPI_FIFO, align 8
  %127 = add nsw i64 %125, %126
  %128 = inttoptr i64 %127 to i8*
  %129 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 3
  store i8* %128, i8** %129, align 8
  %130 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %131 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 2
  store i8* %130, i8** %131, align 8
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* @BCM2835_SPI_CS, align 8
  %134 = add nsw i64 %132, %133
  %135 = inttoptr i64 %134 to i8*
  %136 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 1
  store i8* %135, i8** %136, align 8
  %137 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %138 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 0
  store i8* %137, i8** %138, align 8
  %139 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %140 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %139, i32 0, i32 1
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = call i32 @dmaengine_slave_config(%struct.TYPE_7__* %141, %struct.dma_slave_config* %7)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %124
  br label %235

146:                                              ; preds = %124
  %147 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %148 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %147, i32 0, i32 1
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %155 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @DMA_TO_DEVICE, align 4
  %158 = call i64 @dma_map_single(i32 %153, i32 %156, i32 4, i32 %157)
  %159 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %160 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  %161 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %162 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %161, i32 0, i32 1
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %169 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = call i64 @dma_mapping_error(i32 %167, i64 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %146
  %174 = load %struct.device*, %struct.device** %5, align 8
  %175 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %174, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  %176 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %177 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %176, i32 0, i32 1
  store i64 0, i64* %177, align 8
  br label %239

178:                                              ; preds = %146
  store i32 0, i32* %11, align 4
  br label %179

179:                                              ; preds = %228, %178
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* @BCM2835_SPI_NUM_CS, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %231

183:                                              ; preds = %179
  %184 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %185 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %184, i32 0, i32 1
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %188 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = mul i64 %191, 8
  %193 = add i64 %189, %192
  %194 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %195 = call i8* @dmaengine_prep_dma_cyclic(%struct.TYPE_7__* %186, i64 %193, i32 8, i32 0, i32 %194, i32 0)
  %196 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %197 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %196, i32 0, i32 0
  %198 = load i8**, i8*** %197, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  store i8* %195, i8** %201, align 8
  %202 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %203 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %202, i32 0, i32 0
  %204 = load i8**, i8*** %203, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8*, i8** %204, i64 %206
  %208 = load i8*, i8** %207, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %213, label %210

210:                                              ; preds = %183
  %211 = load %struct.device*, %struct.device** %5, align 8
  %212 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %211, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  br label %239

213:                                              ; preds = %183
  %214 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %215 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %214, i32 0, i32 0
  %216 = load i8**, i8*** %215, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %216, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @dmaengine_desc_set_reuse(i8* %220)
  store i32 %221, i32* %10, align 4
  %222 = load i32, i32* %10, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %213
  %225 = load %struct.device*, %struct.device** %5, align 8
  %226 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %225, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  br label %239

227:                                              ; preds = %213
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %11, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %11, align 4
  br label %179

231:                                              ; preds = %179
  %232 = load i32, i32* @bcm2835_spi_can_dma, align 4
  %233 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %234 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  br label %244

235:                                              ; preds = %145, %64
  %236 = load %struct.device*, %struct.device** %5, align 8
  %237 = load i32, i32* %10, align 4
  %238 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %236, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i32 %237)
  br label %239

239:                                              ; preds = %235, %224, %210, %173, %121, %111, %91, %47
  %240 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %241 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %6, align 8
  %242 = call i32 @bcm2835_dma_release(%struct.spi_controller* %240, %struct.bcm2835_spi* %241)
  br label %243

243:                                              ; preds = %239, %34, %19
  br label %244

244:                                              ; preds = %243, %231
  ret void
}

declare dso_local i32* @of_get_address(i32, i32, i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @be32_to_cpup(i32*) #1

declare dso_local i8* @dma_request_slave_channel(%struct.device*, i8*) #1

declare dso_local i32 @dmaengine_slave_config(%struct.TYPE_7__*, %struct.dma_slave_config*) #1

declare dso_local i64 @dma_map_page_attrs(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ZERO_PAGE(i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i8* @dmaengine_prep_dma_cyclic(%struct.TYPE_7__*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @dmaengine_desc_set_reuse(i8*) #1

declare dso_local i64 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @bcm2835_dma_release(%struct.spi_controller*, %struct.bcm2835_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
