; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32_spi_transfer_one_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32_spi_transfer_one_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_spi = type { i64, i32, %struct.TYPE_12__*, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i32 (%struct.stm32_spi*)*, %struct.TYPE_11__*, i32 (%struct.stm32_spi*)*, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.spi_transfer = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.dma_slave_config = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.stm32_spi*, i32 }

@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@SPI_FULL_DUPLEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Rx DMA submit failed\0A\00", align 1
@SPI_SIMPLEX_TX = common dso_local global i64 0, align 8
@SPI_3WIRE_TX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Tx DMA submit failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"DMA issue: fall back to irq transfer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_spi*, %struct.spi_transfer*)* @stm32_spi_transfer_one_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_spi_transfer_one_dma(%struct.stm32_spi* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_spi*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.dma_slave_config, align 4
  %7 = alloca %struct.dma_slave_config, align 4
  %8 = alloca %struct.dma_async_tx_descriptor*, align 8
  %9 = alloca %struct.dma_async_tx_descriptor*, align 8
  %10 = alloca i64, align 8
  store %struct.stm32_spi* %0, %struct.stm32_spi** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %11 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %12 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %11, i32 0, i32 4
  %13 = load i64, i64* %10, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %9, align 8
  %15 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %16 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %2
  %20 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %21 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %19
  %25 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %26 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %27 = call i32 @stm32_spi_dma_config(%struct.stm32_spi* %25, %struct.dma_slave_config* %7, i32 %26)
  %28 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %29 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @dmaengine_slave_config(i64 %30, %struct.dma_slave_config* %7)
  %32 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %33 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %34 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %33, i32 0, i32 2
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %42 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %41, i32 0, i32 2
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @stm32_spi_set_bits(%struct.stm32_spi* %32, i32 %40, i32 %48)
  %50 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %51 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %54 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %58 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %64 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i64 %52, i32 %56, i32 %60, i32 %62, i32 %63)
  store %struct.dma_async_tx_descriptor* %64, %struct.dma_async_tx_descriptor** %9, align 8
  br label %65

65:                                               ; preds = %24, %19, %2
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %8, align 8
  %66 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %67 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %66, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %98

70:                                               ; preds = %65
  %71 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %72 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %70
  %76 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %77 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %78 = call i32 @stm32_spi_dma_config(%struct.stm32_spi* %76, %struct.dma_slave_config* %6, i32 %77)
  %79 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %80 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @dmaengine_slave_config(i64 %81, %struct.dma_slave_config* %6)
  %83 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %84 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %87 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %91 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %97 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i64 %85, i32 %89, i32 %93, i32 %95, i32 %96)
  store %struct.dma_async_tx_descriptor* %97, %struct.dma_async_tx_descriptor** %8, align 8
  br label %98

98:                                               ; preds = %75, %70, %65
  %99 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %100 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %99, i32 0, i32 8
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %105 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %110 = icmp ne %struct.dma_async_tx_descriptor* %109, null
  br i1 %110, label %111, label %124

111:                                              ; preds = %108, %103, %98
  %112 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %113 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %112, i32 0, i32 7
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %118 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %123 = icmp ne %struct.dma_async_tx_descriptor* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %121, %108
  br label %248

125:                                              ; preds = %121, %116, %111
  %126 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %127 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @SPI_FULL_DUPLEX, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %125
  %132 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %133 = icmp ne %struct.dma_async_tx_descriptor* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %136 = icmp ne %struct.dma_async_tx_descriptor* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %134, %131
  br label %248

138:                                              ; preds = %134, %125
  %139 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %140 = icmp ne %struct.dma_async_tx_descriptor* %139, null
  br i1 %140, label %141, label %166

141:                                              ; preds = %138
  %142 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %143 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %142, i32 0, i32 2
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %148 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  %149 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %150 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %151 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %150, i32 0, i32 0
  store %struct.stm32_spi* %149, %struct.stm32_spi** %151, align 8
  %152 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %153 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %152)
  %154 = call i64 @dma_submit_error(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %141
  %157 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %158 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @dev_err(i32 %159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %248

161:                                              ; preds = %141
  %162 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %163 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @dma_async_issue_pending(i64 %164)
  br label %166

166:                                              ; preds = %161, %138
  %167 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %168 = icmp ne %struct.dma_async_tx_descriptor* %167, null
  br i1 %168, label %169, label %225

169:                                              ; preds = %166
  %170 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %171 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @SPI_SIMPLEX_TX, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %181, label %175

175:                                              ; preds = %169
  %176 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %177 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @SPI_3WIRE_TX, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %175, %169
  %182 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %183 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %182, i32 0, i32 2
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %188 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 8
  %189 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %190 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %191 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %190, i32 0, i32 0
  store %struct.stm32_spi* %189, %struct.stm32_spi** %191, align 8
  br label %192

192:                                              ; preds = %181, %175
  %193 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %194 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %193)
  %195 = call i64 @dma_submit_error(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %199 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @dev_err(i32 %200, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %237

202:                                              ; preds = %192
  %203 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %204 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %203, i32 0, i32 6
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @dma_async_issue_pending(i64 %205)
  %207 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %208 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %209 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %208, i32 0, i32 2
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %217 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %216, i32 0, i32 2
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @stm32_spi_set_bits(%struct.stm32_spi* %207, i32 %215, i32 %223)
  br label %225

225:                                              ; preds = %202, %166
  %226 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %227 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %226, i32 0, i32 2
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 2
  %230 = load i32 (%struct.stm32_spi*)*, i32 (%struct.stm32_spi*)** %229, align 8
  %231 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %232 = call i32 %230(%struct.stm32_spi* %231)
  %233 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %234 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %233, i32 0, i32 4
  %235 = load i64, i64* %10, align 8
  %236 = call i32 @spin_unlock_irqrestore(i32* %234, i64 %235)
  store i32 1, i32* %3, align 4
  br label %284

237:                                              ; preds = %197
  %238 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %239 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %238, i32 0, i32 5
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %244 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %243, i32 0, i32 5
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @dmaengine_terminate_all(i64 %245)
  br label %247

247:                                              ; preds = %242, %237
  br label %248

248:                                              ; preds = %247, %156, %137, %124
  %249 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %250 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %251 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %250, i32 0, i32 2
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %259 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %258, i32 0, i32 2
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @stm32_spi_clr_bits(%struct.stm32_spi* %249, i32 %257, i32 %265)
  %267 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %268 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %267, i32 0, i32 4
  %269 = load i64, i64* %10, align 8
  %270 = call i32 @spin_unlock_irqrestore(i32* %268, i64 %269)
  %271 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %272 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @dev_info(i32 %273, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %275 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %276 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %275, i32 0, i32 1
  store i32 0, i32* %276, align 8
  %277 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %278 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %277, i32 0, i32 2
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 0
  %281 = load i32 (%struct.stm32_spi*)*, i32 (%struct.stm32_spi*)** %280, align 8
  %282 = load %struct.stm32_spi*, %struct.stm32_spi** %4, align 8
  %283 = call i32 %281(%struct.stm32_spi* %282)
  store i32 %283, i32* %3, align 4
  br label %284

284:                                              ; preds = %248, %225
  %285 = load i32, i32* %3, align 4
  ret i32 %285
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @stm32_spi_dma_config(%struct.stm32_spi*, %struct.dma_slave_config*, i32) #1

declare dso_local i32 @dmaengine_slave_config(i64, %struct.dma_slave_config*) #1

declare dso_local i32 @stm32_spi_set_bits(%struct.stm32_spi*, i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i64, i32, i32, i32, i32) #1

declare dso_local i64 @dma_submit_error(i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dma_async_issue_pending(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dmaengine_terminate_all(i64) #1

declare dso_local i32 @stm32_spi_clr_bits(%struct.stm32_spi*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
