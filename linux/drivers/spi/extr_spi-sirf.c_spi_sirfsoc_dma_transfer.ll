; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32, i64, i64 }
%struct.sirfsoc_spi = type { i32, i64, i64, i64, i8*, %struct.TYPE_2__*, i64, i8*, i8*, i32, i32, i64, i32, i32, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.dma_async_tx_descriptor = type { i32*, i8* }

@SIRFSOC_SPI_FIFO_RESET = common dso_local global i64 0, align 8
@SIRFSOC_SPI_FIFO_START = common dso_local global i64 0, align 8
@SIRFSOC_SPI_ENA_AUTO_CLR = common dso_local global i64 0, align 8
@SIRFSOC_SPI_MUL_DAT_MODE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@spi_sirfsoc_dma_fini_callback = common dso_local global i8* null, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@SIRFSOC_SPI_RX_EN = common dso_local global i64 0, align 8
@SIRFSOC_SPI_TX_EN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"transfer timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, %struct.spi_transfer*)* @spi_sirfsoc_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_sirfsoc_dma_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.sirfsoc_spi*, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %9 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %10 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 %11, 10
  store i32 %12, i32* %8, align 4
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.sirfsoc_spi* @spi_master_get_devdata(i32 %15)
  store %struct.sirfsoc_spi* %16, %struct.sirfsoc_spi** %5, align 8
  %17 = load i64, i64* @SIRFSOC_SPI_FIFO_RESET, align 8
  %18 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %19 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %22 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %21, i32 0, i32 5
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %20, %25
  %27 = call i32 @writel(i64 %17, i64 %26)
  %28 = load i64, i64* @SIRFSOC_SPI_FIFO_RESET, align 8
  %29 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %30 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %33 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %32, i32 0, i32 5
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %31, %36
  %38 = call i32 @writel(i64 %28, i64 %37)
  %39 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %40 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %137 [
    i32 130, label %42
    i32 128, label %75
    i32 129, label %106
  ]

42:                                               ; preds = %2
  %43 = load i64, i64* @SIRFSOC_SPI_FIFO_START, align 8
  %44 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %45 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %48 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %47, i32 0, i32 5
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %46, %51
  %53 = call i32 @writel(i64 %43, i64 %52)
  %54 = load i64, i64* @SIRFSOC_SPI_FIFO_START, align 8
  %55 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %56 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %59 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %58, i32 0, i32 5
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %57, %62
  %64 = call i32 @writel(i64 %54, i64 %63)
  %65 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %66 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %69 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %68, i32 0, i32 5
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 8
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %67, %72
  %74 = call i32 @writel(i64 0, i64 %73)
  br label %137

75:                                               ; preds = %2
  %76 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %77 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %80 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %79, i32 0, i32 5
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %78, %83
  %85 = call i32 @writel(i64 0, i64 %84)
  %86 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %87 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %90 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %89, i32 0, i32 5
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %88, %93
  %95 = call i32 @writel(i64 0, i64 %94)
  %96 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %97 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %100 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %99, i32 0, i32 5
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 8
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %98, %103
  %105 = call i32 @writel(i64 0, i64 %104)
  br label %137

106:                                              ; preds = %2
  %107 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %108 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %111 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %110, i32 0, i32 5
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %109, %114
  %116 = call i32 @writel(i64 0, i64 %115)
  %117 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %118 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %121 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %120, i32 0, i32 5
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %119, %124
  %126 = call i32 @writel(i64 0, i64 %125)
  %127 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %128 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %127, i32 0, i32 6
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %131 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %130, i32 0, i32 5
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 7
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %129, %134
  %136 = call i32 @writel(i64 -1, i64 %135)
  br label %137

137:                                              ; preds = %2, %106, %75, %42
  %138 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %139 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %142 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %141, i32 0, i32 5
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %140, %145
  %147 = call i64 @readl(i64 %146)
  %148 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %149 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %148, i32 0, i32 6
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %152 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %151, i32 0, i32 5
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %150, %155
  %157 = call i32 @writel(i64 %147, i64 %156)
  %158 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %159 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %162 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp slt i64 %160, %163
  br i1 %164, label %165, label %258

165:                                              ; preds = %137
  %166 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %167 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  switch i32 %168, label %257 [
    i32 130, label %169
    i32 128, label %222
    i32 129, label %222
  ]

169:                                              ; preds = %165
  %170 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %171 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %170, i32 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %174 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %173, i32 0, i32 5
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %172, %177
  %179 = call i64 @readl(i64 %178)
  %180 = load i64, i64* @SIRFSOC_SPI_ENA_AUTO_CLR, align 8
  %181 = or i64 %179, %180
  %182 = load i64, i64* @SIRFSOC_SPI_MUL_DAT_MODE, align 8
  %183 = or i64 %181, %182
  %184 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %185 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %184, i32 0, i32 6
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %188 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %187, i32 0, i32 5
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 5
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %186, %191
  %193 = call i32 @writel(i64 %183, i64 %192)
  %194 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %195 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = sub nsw i64 %196, 1
  %198 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %199 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %198, i32 0, i32 6
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %202 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %201, i32 0, i32 5
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %200, %205
  %207 = call i32 @writel(i64 %197, i64 %206)
  %208 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %209 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = sub nsw i64 %210, 1
  %212 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %213 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %212, i32 0, i32 6
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %216 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %215, i32 0, i32 5
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %214, %219
  %221 = call i32 @writel(i64 %211, i64 %220)
  br label %257

222:                                              ; preds = %165, %165
  %223 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %224 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %227 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = mul i64 %225, %228
  %230 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %231 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %230, i32 0, i32 6
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %234 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %233, i32 0, i32 5
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 %232, %237
  %239 = call i32 @writel(i64 %229, i64 %238)
  %240 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %241 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %244 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = mul i64 %242, %245
  %247 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %248 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %247, i32 0, i32 6
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %251 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %250, i32 0, i32 5
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %249, %254
  %256 = call i32 @writel(i64 %246, i64 %255)
  br label %257

257:                                              ; preds = %165, %222, %169
  br label %305

258:                                              ; preds = %137
  %259 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %260 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp eq i32 %261, 130
  br i1 %262, label %263, label %284

263:                                              ; preds = %258
  %264 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %265 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %264, i32 0, i32 6
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %268 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %267, i32 0, i32 5
  %269 = load %struct.TYPE_2__*, %struct.TYPE_2__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 5
  %271 = load i64, i64* %270, align 8
  %272 = add nsw i64 %266, %271
  %273 = call i64 @readl(i64 %272)
  %274 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %275 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %274, i32 0, i32 6
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %278 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %277, i32 0, i32 5
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 5
  %281 = load i64, i64* %280, align 8
  %282 = add nsw i64 %276, %281
  %283 = call i32 @writel(i64 %273, i64 %282)
  br label %284

284:                                              ; preds = %263, %258
  %285 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %286 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %285, i32 0, i32 6
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %289 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %288, i32 0, i32 5
  %290 = load %struct.TYPE_2__*, %struct.TYPE_2__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 4
  %292 = load i64, i64* %291, align 8
  %293 = add nsw i64 %287, %292
  %294 = call i32 @writel(i64 0, i64 %293)
  %295 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %296 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %295, i32 0, i32 6
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %299 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %298, i32 0, i32 5
  %300 = load %struct.TYPE_2__*, %struct.TYPE_2__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = add nsw i64 %297, %302
  %304 = call i32 @writel(i64 0, i64 %303)
  br label %305

305:                                              ; preds = %284, %257
  %306 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %307 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %306, i32 0, i32 0
  %308 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %309 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %308, i32 0, i32 4
  %310 = load i8*, i8** %309, align 8
  %311 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %312 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %315 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %318 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %316, %319
  br i1 %320, label %321, label %323

321:                                              ; preds = %305
  %322 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %325

323:                                              ; preds = %305
  %324 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  br label %325

325:                                              ; preds = %323, %321
  %326 = phi i32 [ %322, %321 ], [ %324, %323 ]
  %327 = call i8* @dma_map_single(i32* %307, i8* %310, i32 %313, i32 %326)
  %328 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %329 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %328, i32 0, i32 7
  store i8* %327, i8** %329, align 8
  %330 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %331 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %330, i32 0, i32 12
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %334 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %333, i32 0, i32 7
  %335 = load i8*, i8** %334, align 8
  %336 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %337 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %340 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %341 = load i32, i32* @DMA_CTRL_ACK, align 4
  %342 = or i32 %340, %341
  %343 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(i32 %332, i8* %335, i32 %338, i32 %339, i32 %342)
  store %struct.dma_async_tx_descriptor* %343, %struct.dma_async_tx_descriptor** %6, align 8
  %344 = load i8*, i8** @spi_sirfsoc_dma_fini_callback, align 8
  %345 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %346 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %345, i32 0, i32 1
  store i8* %344, i8** %346, align 8
  %347 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %348 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %347, i32 0, i32 13
  %349 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %350 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %349, i32 0, i32 0
  store i32* %348, i32** %350, align 8
  %351 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %352 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %351, i32 0, i32 0
  %353 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %354 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %353, i32 0, i32 14
  %355 = load i64, i64* %354, align 8
  %356 = inttoptr i64 %355 to i8*
  %357 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %358 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %361 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %364 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %363, i32 0, i32 2
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %362, %365
  br i1 %366, label %367, label %369

367:                                              ; preds = %325
  %368 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %371

369:                                              ; preds = %325
  %370 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  br label %371

371:                                              ; preds = %369, %367
  %372 = phi i32 [ %368, %367 ], [ %370, %369 ]
  %373 = call i8* @dma_map_single(i32* %352, i8* %356, i32 %359, i32 %372)
  %374 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %375 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %374, i32 0, i32 8
  store i8* %373, i8** %375, align 8
  %376 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %377 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %376, i32 0, i32 9
  %378 = load i32, i32* %377, align 8
  %379 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %380 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %379, i32 0, i32 8
  %381 = load i8*, i8** %380, align 8
  %382 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %383 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %386 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %387 = load i32, i32* @DMA_CTRL_ACK, align 4
  %388 = or i32 %386, %387
  %389 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(i32 %378, i8* %381, i32 %384, i32 %385, i32 %388)
  store %struct.dma_async_tx_descriptor* %389, %struct.dma_async_tx_descriptor** %7, align 8
  %390 = load i8*, i8** @spi_sirfsoc_dma_fini_callback, align 8
  %391 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %392 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %391, i32 0, i32 1
  store i8* %390, i8** %392, align 8
  %393 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %394 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %393, i32 0, i32 10
  %395 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %396 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %395, i32 0, i32 0
  store i32* %394, i32** %396, align 8
  %397 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %398 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %397)
  %399 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %400 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %399)
  %401 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %402 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %401, i32 0, i32 9
  %403 = load i32, i32* %402, align 8
  %404 = call i32 @dma_async_issue_pending(i32 %403)
  %405 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %406 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %405, i32 0, i32 12
  %407 = load i32, i32* %406, align 8
  %408 = call i32 @dma_async_issue_pending(i32 %407)
  %409 = load i64, i64* @SIRFSOC_SPI_RX_EN, align 8
  %410 = load i64, i64* @SIRFSOC_SPI_TX_EN, align 8
  %411 = or i64 %409, %410
  %412 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %413 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %412, i32 0, i32 6
  %414 = load i64, i64* %413, align 8
  %415 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %416 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %415, i32 0, i32 5
  %417 = load %struct.TYPE_2__*, %struct.TYPE_2__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = add nsw i64 %414, %419
  %421 = call i32 @writel(i64 %411, i64 %420)
  %422 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %423 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = icmp eq i32 %424, 128
  br i1 %425, label %431, label %426

426:                                              ; preds = %371
  %427 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %428 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = icmp eq i32 %429, 129
  br i1 %430, label %431, label %454

431:                                              ; preds = %426, %371
  %432 = load i64, i64* @SIRFSOC_SPI_FIFO_START, align 8
  %433 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %434 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %433, i32 0, i32 6
  %435 = load i64, i64* %434, align 8
  %436 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %437 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %436, i32 0, i32 5
  %438 = load %struct.TYPE_2__*, %struct.TYPE_2__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %438, i32 0, i32 2
  %440 = load i64, i64* %439, align 8
  %441 = add nsw i64 %435, %440
  %442 = call i32 @writel(i64 %432, i64 %441)
  %443 = load i64, i64* @SIRFSOC_SPI_FIFO_START, align 8
  %444 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %445 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %444, i32 0, i32 6
  %446 = load i64, i64* %445, align 8
  %447 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %448 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %447, i32 0, i32 5
  %449 = load %struct.TYPE_2__*, %struct.TYPE_2__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %449, i32 0, i32 1
  %451 = load i64, i64* %450, align 8
  %452 = add nsw i64 %446, %451
  %453 = call i32 @writel(i64 %443, i64 %452)
  br label %454

454:                                              ; preds = %431, %426
  %455 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %456 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %455, i32 0, i32 13
  %457 = load i32, i32* %8, align 4
  %458 = call i64 @wait_for_completion_timeout(i32* %456, i32 %457)
  %459 = icmp eq i64 %458, 0
  br i1 %459, label %460, label %468

460:                                              ; preds = %454
  %461 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %462 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %461, i32 0, i32 0
  %463 = call i32 @dev_err(i32* %462, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %464 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %465 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %464, i32 0, i32 12
  %466 = load i32, i32* %465, align 8
  %467 = call i32 @dmaengine_terminate_all(i32 %466)
  br label %471

468:                                              ; preds = %454
  %469 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %470 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %469, i32 0, i32 11
  store i64 0, i64* %470, align 8
  br label %471

471:                                              ; preds = %468, %460
  %472 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %473 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %472, i32 0, i32 10
  %474 = load i32, i32* %8, align 4
  %475 = call i64 @wait_for_completion_timeout(i32* %473, i32 %474)
  %476 = icmp eq i64 %475, 0
  br i1 %476, label %477, label %506

477:                                              ; preds = %471
  %478 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %479 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %478, i32 0, i32 0
  %480 = call i32 @dev_err(i32* %479, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %481 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %482 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = icmp eq i32 %483, 128
  br i1 %484, label %490, label %485

485:                                              ; preds = %477
  %486 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %487 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = icmp eq i32 %488, 129
  br i1 %489, label %490, label %501

490:                                              ; preds = %485, %477
  %491 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %492 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %491, i32 0, i32 6
  %493 = load i64, i64* %492, align 8
  %494 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %495 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %494, i32 0, i32 5
  %496 = load %struct.TYPE_2__*, %struct.TYPE_2__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %496, i32 0, i32 0
  %498 = load i64, i64* %497, align 8
  %499 = add nsw i64 %493, %498
  %500 = call i32 @writel(i64 0, i64 %499)
  br label %501

501:                                              ; preds = %490, %485
  %502 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %503 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %502, i32 0, i32 9
  %504 = load i32, i32* %503, align 8
  %505 = call i32 @dmaengine_terminate_all(i32 %504)
  br label %506

506:                                              ; preds = %501, %471
  %507 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %508 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %507, i32 0, i32 0
  %509 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %510 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %509, i32 0, i32 8
  %511 = load i8*, i8** %510, align 8
  %512 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %513 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 8
  %515 = load i32, i32* @DMA_TO_DEVICE, align 4
  %516 = call i32 @dma_unmap_single(i32* %508, i8* %511, i32 %514, i32 %515)
  %517 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %518 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %517, i32 0, i32 0
  %519 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %520 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %519, i32 0, i32 7
  %521 = load i8*, i8** %520, align 8
  %522 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %523 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 8
  %525 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %526 = call i32 @dma_unmap_single(i32* %518, i8* %521, i32 %524, i32 %525)
  %527 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %528 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %527, i32 0, i32 6
  %529 = load i64, i64* %528, align 8
  %530 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %531 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %530, i32 0, i32 5
  %532 = load %struct.TYPE_2__*, %struct.TYPE_2__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %532, i32 0, i32 2
  %534 = load i64, i64* %533, align 8
  %535 = add nsw i64 %529, %534
  %536 = call i32 @writel(i64 0, i64 %535)
  %537 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %538 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %537, i32 0, i32 6
  %539 = load i64, i64* %538, align 8
  %540 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %541 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %540, i32 0, i32 5
  %542 = load %struct.TYPE_2__*, %struct.TYPE_2__** %541, align 8
  %543 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %542, i32 0, i32 1
  %544 = load i64, i64* %543, align 8
  %545 = add nsw i64 %539, %544
  %546 = call i32 @writel(i64 0, i64 %545)
  %547 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %548 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %547, i32 0, i32 1
  %549 = load i64, i64* %548, align 8
  %550 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %551 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %550, i32 0, i32 2
  %552 = load i64, i64* %551, align 8
  %553 = icmp sge i64 %549, %552
  br i1 %553, label %554, label %565

554:                                              ; preds = %506
  %555 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %556 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %555, i32 0, i32 6
  %557 = load i64, i64* %556, align 8
  %558 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %559 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %558, i32 0, i32 5
  %560 = load %struct.TYPE_2__*, %struct.TYPE_2__** %559, align 8
  %561 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %560, i32 0, i32 0
  %562 = load i64, i64* %561, align 8
  %563 = add nsw i64 %557, %562
  %564 = call i32 @writel(i64 0, i64 %563)
  br label %565

565:                                              ; preds = %554, %506
  %566 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %567 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 8
  %569 = icmp eq i32 %568, 128
  br i1 %569, label %575, label %570

570:                                              ; preds = %565
  %571 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %572 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %571, i32 0, i32 0
  %573 = load i32, i32* %572, align 8
  %574 = icmp eq i32 %573, 129
  br i1 %574, label %575, label %586

575:                                              ; preds = %570, %565
  %576 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %577 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %576, i32 0, i32 6
  %578 = load i64, i64* %577, align 8
  %579 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %580 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %579, i32 0, i32 5
  %581 = load %struct.TYPE_2__*, %struct.TYPE_2__** %580, align 8
  %582 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %581, i32 0, i32 0
  %583 = load i64, i64* %582, align 8
  %584 = add nsw i64 %578, %583
  %585 = call i32 @writel(i64 0, i64 %584)
  br label %586

586:                                              ; preds = %575, %570
  ret void
}

declare dso_local %struct.sirfsoc_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i8* @dma_map_single(i32*, i8*, i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
