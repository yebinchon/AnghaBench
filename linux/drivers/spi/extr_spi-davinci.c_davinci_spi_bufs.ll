; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_spi_config = type { i64 }
%struct.spi_device = type { i64, i32, i32, i64 }
%struct.spi_transfer = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.davinci_spi = type { i32*, i32, i32, i32 (%struct.davinci_spi*)*, i64, i32, i32, i32, i64, i32, i32, %struct.davinci_spi_platform_data }
%struct.davinci_spi_platform_data = type { i64 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.dma_async_tx_descriptor = type { i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@davinci_spi_default_cfg = common dso_local global %struct.davinci_spi_config zeroinitializer, align 8
@SPIDAT1 = common dso_local global i64 0, align 8
@SPIGCR1 = common dso_local global i64 0, align 8
@SPIGCR1_POWERDOWN_MASK = common dso_local global i32 0, align 4
@SPIGCR1_SPIENA_MASK = common dso_local global i32 0, align 4
@SPI_IO_TYPE_POLL = common dso_local global i64 0, align 8
@SPIINT = common dso_local global i64 0, align 8
@SPIINT_MASKINT = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@SPIBUF = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@davinci_spi_dma_rx_callback = common dso_local global i32 0, align 4
@davinci_spi_dma_tx_callback = common dso_local global i32 0, align 4
@SPIINT_DMA_REQ_EN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@SPIFLG_TIMEOUT_MASK = common dso_local global i32 0, align 4
@SPIINT_MASKALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: error reported but no error found!\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"SPI data transfer error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @davinci_spi_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_spi_bufs(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.davinci_spi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.davinci_spi_config*, align 8
  %13 = alloca %struct.davinci_spi_platform_data*, align 8
  %14 = alloca %struct.dma_slave_config, align 8
  %15 = alloca %struct.dma_slave_config, align 8
  %16 = alloca %struct.dma_async_tx_descriptor*, align 8
  %17 = alloca %struct.dma_async_tx_descriptor*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.davinci_spi* @spi_master_get_devdata(i32 %22)
  store %struct.davinci_spi* %23, %struct.davinci_spi** %6, align 8
  %24 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %25 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %24, i32 0, i32 11
  store %struct.davinci_spi_platform_data* %25, %struct.davinci_spi_platform_data** %13, align 8
  %26 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.davinci_spi_config*
  store %struct.davinci_spi_config* %29, %struct.davinci_spi_config** %12, align 8
  %30 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %12, align 8
  %31 = icmp ne %struct.davinci_spi_config* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  store %struct.davinci_spi_config* @davinci_spi_default_cfg, %struct.davinci_spi_config** %12, align 8
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %35 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  %42 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %43 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %46 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %45, i32 0, i32 10
  store i32 %44, i32* %46, align 4
  %47 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %48 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %51 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 8
  %52 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %53 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sdiv i32 %54, %55
  %57 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %58 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %60 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %63 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %65 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SPIDAT1, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @ioread32(i64 %68)
  store i32 %69, i32* %10, align 4
  %70 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %71 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SPIGCR1, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i32, i32* @SPIGCR1_POWERDOWN_MASK, align 4
  %76 = call i32 @clear_io_bits(i64 %74, i32 %75)
  %77 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %78 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SPIGCR1, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i32, i32* @SPIGCR1_SPIENA_MASK, align 4
  %83 = call i32 @set_io_bits(i64 %81, i32 %82)
  %84 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %85 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %84, i32 0, i32 5
  %86 = call i32 @reinit_completion(i32* %85)
  %87 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %88 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %91 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %92 = call i64 @davinci_spi_can_dma(i32 %89, %struct.spi_device* %90, %struct.spi_transfer* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %131, label %94

94:                                               ; preds = %33
  %95 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %12, align 8
  %96 = getelementptr inbounds %struct.davinci_spi_config, %struct.davinci_spi_config* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SPI_IO_TYPE_POLL, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %102 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SPIINT, align 8
  %105 = add nsw i64 %103, %104
  %106 = load i32, i32* @SPIINT_MASKINT, align 4
  %107 = call i32 @set_io_bits(i64 %105, i32 %106)
  br label %108

108:                                              ; preds = %100, %94
  %109 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %110 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %110, align 8
  %113 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %114 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %113, i32 0, i32 3
  %115 = load i32 (%struct.davinci_spi*)*, i32 (%struct.davinci_spi*)** %114, align 8
  %116 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %117 = call i32 %115(%struct.davinci_spi* %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = and i32 %118, -65536
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %9, align 4
  %121 = and i32 %120, 65535
  %122 = load i32, i32* %10, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %126 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @SPIDAT1, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @iowrite32(i32 %124, i64 %129)
  br label %278

131:                                              ; preds = %33
  %132 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %14, i32 0, i32 0
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %132, align 8
  %134 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %14, i32 0, i32 1
  store i32 1, i32* %134, align 4
  %135 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %14, i32 0, i32 2
  store i32 0, i32* %135, align 8
  %136 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %14, i32 0, i32 3
  store i32 0, i32* %136, align 4
  %137 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %14, i32 0, i32 4
  store i64 0, i64* %137, align 8
  %138 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %14, i32 0, i32 5
  %139 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  store i32 %139, i32* %138, align 8
  %140 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %14, i32 0, i32 6
  %141 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %142 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %141, i32 0, i32 8
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* @SPIBUF, align 4
  %145 = sext i32 %144 to i64
  %146 = add i64 %143, %145
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %140, align 4
  %148 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %15, i32 0, i32 0
  store i32 0, i32* %148, align 8
  %149 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %15, i32 0, i32 1
  store i32 0, i32* %149, align 4
  %150 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %15, i32 0, i32 2
  %151 = load i32, i32* %7, align 4
  store i32 %151, i32* %150, align 8
  %152 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %15, i32 0, i32 3
  store i32 1, i32* %152, align 4
  %153 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %15, i32 0, i32 4
  %154 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %155 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %154, i32 0, i32 8
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @SPIDAT1, align 8
  %158 = add i64 %156, %157
  store i64 %158, i64* %153, align 8
  %159 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %15, i32 0, i32 5
  %160 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  store i32 %160, i32* %159, align 8
  %161 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %15, i32 0, i32 6
  store i32 0, i32* %161, align 4
  %162 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %163 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @dmaengine_slave_config(i32 %164, %struct.dma_slave_config* %14)
  %166 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %167 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @dmaengine_slave_config(i32 %168, %struct.dma_slave_config* %15)
  %170 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %171 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %174 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %178 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %182 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %183 = load i32, i32* @DMA_CTRL_ACK, align 4
  %184 = or i32 %182, %183
  %185 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %172, i32 %176, i32 %180, i32 %181, i32 %184)
  store %struct.dma_async_tx_descriptor* %185, %struct.dma_async_tx_descriptor** %16, align 8
  %186 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %16, align 8
  %187 = icmp ne %struct.dma_async_tx_descriptor* %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %131
  br label %388

189:                                              ; preds = %131
  %190 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %191 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %209, label %194

194:                                              ; preds = %189
  %195 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %196 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %200 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  store i32 %198, i32* %201, align 4
  %202 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %203 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %207 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  store i32 %205, i32* %208, align 4
  br label %209

209:                                              ; preds = %194, %189
  %210 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %211 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %214 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %218 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %222 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %223 = load i32, i32* @DMA_CTRL_ACK, align 4
  %224 = or i32 %222, %223
  %225 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %212, i32 %216, i32 %220, i32 %221, i32 %224)
  store %struct.dma_async_tx_descriptor* %225, %struct.dma_async_tx_descriptor** %17, align 8
  %226 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %17, align 8
  %227 = icmp ne %struct.dma_async_tx_descriptor* %226, null
  br i1 %227, label %229, label %228

228:                                              ; preds = %209
  br label %388

229:                                              ; preds = %209
  %230 = load i32, i32* @davinci_spi_dma_rx_callback, align 4
  %231 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %16, align 8
  %232 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 8
  %233 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %234 = bitcast %struct.davinci_spi* %233 to i8*
  %235 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %16, align 8
  %236 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %235, i32 0, i32 0
  store i8* %234, i8** %236, align 8
  %237 = load i32, i32* @davinci_spi_dma_tx_callback, align 4
  %238 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %17, align 8
  %239 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 8
  %240 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %241 = bitcast %struct.davinci_spi* %240 to i8*
  %242 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %17, align 8
  %243 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %242, i32 0, i32 0
  store i8* %241, i8** %243, align 8
  %244 = load %struct.davinci_spi_platform_data*, %struct.davinci_spi_platform_data** %13, align 8
  %245 = getelementptr inbounds %struct.davinci_spi_platform_data, %struct.davinci_spi_platform_data* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %258

248:                                              ; preds = %229
  %249 = load i32, i32* %10, align 4
  %250 = ashr i32 %249, 16
  %251 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %252 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %251, i32 0, i32 4
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @SPIDAT1, align 8
  %255 = add nsw i64 %253, %254
  %256 = add nsw i64 %255, 2
  %257 = call i32 @iowrite16(i32 %250, i64 %256)
  br label %258

258:                                              ; preds = %248, %229
  %259 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %16, align 8
  %260 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %259)
  %261 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %17, align 8
  %262 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %261)
  %263 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %264 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %263, i32 0, i32 7
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @dma_async_issue_pending(i32 %265)
  %267 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %268 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %267, i32 0, i32 6
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @dma_async_issue_pending(i32 %269)
  %271 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %272 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %271, i32 0, i32 4
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @SPIINT, align 8
  %275 = add nsw i64 %273, %274
  %276 = load i32, i32* @SPIINT_DMA_REQ_EN, align 4
  %277 = call i32 @set_io_bits(i64 %275, i32 %276)
  br label %278

278:                                              ; preds = %258, %108
  %279 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %12, align 8
  %280 = getelementptr inbounds %struct.davinci_spi_config, %struct.davinci_spi_config* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @SPI_IO_TYPE_POLL, align 8
  %283 = icmp ne i64 %281, %282
  br i1 %283, label %284, label %293

284:                                              ; preds = %278
  %285 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %286 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %285, i32 0, i32 5
  %287 = load i32, i32* @HZ, align 4
  %288 = call i64 @wait_for_completion_timeout(i32* %286, i32 %287)
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %284
  %291 = load i32, i32* @SPIFLG_TIMEOUT_MASK, align 4
  store i32 %291, i32* %11, align 4
  br label %292

292:                                              ; preds = %290, %284
  br label %315

293:                                              ; preds = %278
  br label %294

294:                                              ; preds = %312, %293
  %295 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %296 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = icmp sgt i32 %297, 0
  br i1 %298, label %304, label %299

299:                                              ; preds = %294
  %300 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %301 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = icmp sgt i32 %302, 0
  br label %304

304:                                              ; preds = %299, %294
  %305 = phi i1 [ true, %294 ], [ %303, %299 ]
  br i1 %305, label %306, label %314

306:                                              ; preds = %304
  %307 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %308 = call i32 @davinci_spi_process_events(%struct.davinci_spi* %307)
  store i32 %308, i32* %11, align 4
  %309 = load i32, i32* %11, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %306
  br label %314

312:                                              ; preds = %306
  %313 = call i32 (...) @cpu_relax()
  br label %294

314:                                              ; preds = %311, %304
  br label %315

315:                                              ; preds = %314, %292
  %316 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %317 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %316, i32 0, i32 4
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @SPIINT, align 8
  %320 = add nsw i64 %318, %319
  %321 = load i32, i32* @SPIINT_MASKALL, align 4
  %322 = call i32 @clear_io_bits(i64 %320, i32 %321)
  %323 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %324 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %327 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %328 = call i64 @davinci_spi_can_dma(i32 %325, %struct.spi_device* %326, %struct.spi_transfer* %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %338

330:                                              ; preds = %315
  %331 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %332 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %331, i32 0, i32 4
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @SPIINT, align 8
  %335 = add nsw i64 %333, %334
  %336 = load i32, i32* @SPIINT_DMA_REQ_EN, align 4
  %337 = call i32 @clear_io_bits(i64 %335, i32 %336)
  br label %338

338:                                              ; preds = %330, %315
  %339 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %340 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %339, i32 0, i32 4
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @SPIGCR1, align 8
  %343 = add nsw i64 %341, %342
  %344 = load i32, i32* @SPIGCR1_SPIENA_MASK, align 4
  %345 = call i32 @clear_io_bits(i64 %343, i32 %344)
  %346 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %347 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %346, i32 0, i32 4
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @SPIGCR1, align 8
  %350 = add nsw i64 %348, %349
  %351 = load i32, i32* @SPIGCR1_POWERDOWN_MASK, align 4
  %352 = call i32 @set_io_bits(i64 %350, i32 %351)
  %353 = load i32, i32* %11, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %368

355:                                              ; preds = %338
  %356 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %357 = load i32, i32* %11, align 4
  %358 = call i32 @davinci_spi_check_error(%struct.davinci_spi* %356, i32 %357)
  store i32 %358, i32* %8, align 4
  %359 = load i32, i32* %8, align 4
  %360 = icmp ne i32 %359, 0
  %361 = xor i1 %360, true
  %362 = zext i1 %361 to i32
  %363 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %364 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %363, i32 0, i32 1
  %365 = call i32 @dev_name(i32* %364)
  %366 = call i32 @WARN(i32 %362, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %365)
  %367 = load i32, i32* %8, align 4
  store i32 %367, i32* %3, align 4
  br label %390

368:                                              ; preds = %338
  %369 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %370 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %378, label %373

373:                                              ; preds = %368
  %374 = load %struct.davinci_spi*, %struct.davinci_spi** %6, align 8
  %375 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %384

378:                                              ; preds = %373, %368
  %379 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %380 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %379, i32 0, i32 1
  %381 = call i32 @dev_err(i32* %380, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %382 = load i32, i32* @EIO, align 4
  %383 = sub nsw i32 0, %382
  store i32 %383, i32* %3, align 4
  br label %390

384:                                              ; preds = %373
  %385 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %386 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  store i32 %387, i32* %3, align 4
  br label %390

388:                                              ; preds = %228, %188
  %389 = load i32, i32* %8, align 4
  store i32 %389, i32* %3, align 4
  br label %390

390:                                              ; preds = %388, %384, %378, %355
  %391 = load i32, i32* %3, align 4
  ret i32 %391
}

declare dso_local %struct.davinci_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @clear_io_bits(i64, i32) #1

declare dso_local i32 @set_io_bits(i64, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @davinci_spi_can_dma(i32, %struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @dmaengine_slave_config(i32, %struct.dma_slave_config*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @davinci_spi_process_events(%struct.davinci_spi*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @davinci_spi_check_error(%struct.davinci_spi*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
