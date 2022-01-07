; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.rockchip_spi = type { i32, i32, i32*, i32*, i64, i64, %struct.TYPE_15__*, i32, i32* }
%struct.spi_master = type { i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.resource = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"apb_pclk\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to get apb_pclk\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"spiclk\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to get spi_pclk\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to enable apb_pclk\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to enable spi_clk\0A\00", align 1
@rockchip_spi_isr = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"rx-sample-delay-ns\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"%u Hz are too slow to express %u ns delay\0A\00", align 1
@CR0_RSD_MAX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [62 x i8] c"%u Hz are too fast to express %u ns delay, clamping at %u ns\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Failed to get fifo length\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@ROCKCHIP_SPI_MAX_CS_NUM = common dso_local global i32 0, align 4
@BAUDR_SCKDV_MAX = common dso_local global i32 0, align 4
@BAUDR_SCKDV_MIN = common dso_local global i32 0, align 4
@MAX_SCLK_OUT = common dso_local global i32 0, align 4
@rockchip_spi_set_cs = common dso_local global i32 0, align 4
@rockchip_spi_transfer_one = common dso_local global i32 0, align 4
@rockchip_spi_max_transfer_size = common dso_local global i32 0, align 4
@rockchip_spi_handle_err = common dso_local global i32 0, align 4
@SPI_MASTER_GPIO_SS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"Failed to request TX DMA channel\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Failed to request RX DMA channel\0A\00", align 1
@ROCKCHIP_SPI_TXDR = common dso_local global i64 0, align 8
@ROCKCHIP_SPI_RXDR = common dso_local global i64 0, align 8
@rockchip_spi_can_dma = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"Failed to register master\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rockchip_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rockchip_spi*, align 8
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_15__* %11, i32 64)
  store %struct.spi_master* %12, %struct.spi_master** %6, align 8
  %13 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %14 = icmp ne %struct.spi_master* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %415

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.spi_master* %20)
  %22 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %23 = call %struct.rockchip_spi* @spi_master_get_devdata(%struct.spi_master* %22)
  store %struct.rockchip_spi* %23, %struct.rockchip_spi** %5, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %7, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.resource*, %struct.resource** %7, align 8
  %30 = call i32* @devm_ioremap_resource(%struct.TYPE_15__* %28, %struct.resource* %29)
  %31 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %32 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %31, i32 0, i32 8
  store i32* %30, i32** %32, align 8
  %33 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %34 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %33, i32 0, i32 8
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @IS_ERR(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %18
  %39 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %40 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %39, i32 0, i32 8
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @PTR_ERR(i32* %41)
  store i32 %42, i32* %4, align 4
  br label %411

43:                                               ; preds = %18
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i8* @devm_clk_get(%struct.TYPE_15__* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %49 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %51 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @IS_ERR(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %43
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @dev_err(%struct.TYPE_15__* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %60 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @PTR_ERR(i32* %61)
  store i32 %62, i32* %4, align 4
  br label %411

63:                                               ; preds = %43
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i8* @devm_clk_get(%struct.TYPE_15__* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %69 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %68, i32 0, i32 3
  store i32* %67, i32** %69, align 8
  %70 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %71 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = call i64 @IS_ERR(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %63
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 @dev_err(%struct.TYPE_15__* %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %80 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @PTR_ERR(i32* %81)
  store i32 %82, i32* %4, align 4
  br label %411

83:                                               ; preds = %63
  %84 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %85 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @clk_prepare_enable(i32* %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = call i32 @dev_err(%struct.TYPE_15__* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %411

94:                                               ; preds = %83
  %95 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %96 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @clk_prepare_enable(i32* %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @dev_err(%struct.TYPE_15__* %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %406

105:                                              ; preds = %94
  %106 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %107 = call i32 @spi_enable_chip(%struct.rockchip_spi* %106, i32 0)
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = call i32 @platform_get_irq(%struct.platform_device* %108, i32 0)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %401

113:                                              ; preds = %105
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @rockchip_spi_isr, align 4
  %118 = load i32, i32* @IRQF_ONESHOT, align 4
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 @dev_name(%struct.TYPE_15__* %120)
  %122 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %123 = call i32 @devm_request_threaded_irq(%struct.TYPE_15__* %115, i32 %116, i32 %117, i32* null, i32 %118, i32 %121, %struct.spi_master* %122)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %113
  br label %401

127:                                              ; preds = %113
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %131 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %130, i32 0, i32 6
  store %struct.TYPE_15__* %129, %struct.TYPE_15__** %131, align 8
  %132 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %133 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @clk_get_rate(i32* %134)
  %136 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %137 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @of_property_read_u32(i32 %141, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32* %8)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %188, label %144

144:                                              ; preds = %127
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %147 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = ashr i32 %148, 8
  %150 = mul nsw i32 %145, %149
  %151 = call i32 @DIV_ROUND_CLOSEST(i32 %150, i32 3906250)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %163, label %154

154:                                              ; preds = %144
  %155 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %156 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %155, i32 0, i32 6
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %159 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_warn(%struct.TYPE_15__* %157, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %160, i32 %161)
  br label %184

163:                                              ; preds = %144
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @CR0_RSD_MAX, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %183

167:                                              ; preds = %163
  %168 = load i32, i32* @CR0_RSD_MAX, align 4
  store i32 %168, i32* %9, align 4
  %169 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %170 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %169, i32 0, i32 6
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %170, align 8
  %172 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %173 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @CR0_RSD_MAX, align 4
  %177 = mul i32 %176, 1000000000
  %178 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %179 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = udiv i32 %177, %180
  %182 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_warn(%struct.TYPE_15__* %171, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 %174, i32 %175, i32 %181)
  br label %183

183:                                              ; preds = %167, %163
  br label %184

184:                                              ; preds = %183, %154
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %187 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %184, %127
  %189 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %190 = call i32 @get_fifo_len(%struct.rockchip_spi* %189)
  %191 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %192 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %191, i32 0, i32 7
  store i32 %190, i32* %192, align 8
  %193 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %194 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %188
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %198, i32 0, i32 0
  %200 = call i32 @dev_err(%struct.TYPE_15__* %199, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %4, align 4
  br label %401

203:                                              ; preds = %188
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 0
  %206 = call i32 @pm_runtime_set_active(%struct.TYPE_15__* %205)
  %207 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %208 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %207, i32 0, i32 0
  %209 = call i32 @pm_runtime_enable(%struct.TYPE_15__* %208)
  %210 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %211 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %210, i32 0, i32 0
  store i32 1, i32* %211, align 8
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %216 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %215, i32 0, i32 15
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* @SPI_CPOL, align 4
  %218 = load i32, i32* @SPI_CPHA, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @SPI_LOOP, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @SPI_LSB_FIRST, align 4
  %223 = or i32 %221, %222
  %224 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %225 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* @ROCKCHIP_SPI_MAX_CS_NUM, align 4
  %227 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %228 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %227, i32 0, i32 14
  store i32 %226, i32* %228, align 8
  %229 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %230 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %234 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %233, i32 0, i32 13
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 0
  store i32 %232, i32* %235, align 4
  %236 = call i32 @SPI_BPW_MASK(i32 16)
  %237 = call i32 @SPI_BPW_MASK(i32 8)
  %238 = or i32 %236, %237
  %239 = call i32 @SPI_BPW_MASK(i32 4)
  %240 = or i32 %238, %239
  %241 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %242 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 8
  %243 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %244 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @BAUDR_SCKDV_MAX, align 4
  %247 = sdiv i32 %245, %246
  %248 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %249 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %248, i32 0, i32 3
  store i32 %247, i32* %249, align 4
  %250 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %251 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @BAUDR_SCKDV_MIN, align 4
  %254 = sdiv i32 %252, %253
  %255 = load i32, i32* @MAX_SCLK_OUT, align 4
  %256 = call i32 @min(i32 %254, i32 %255)
  %257 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %258 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %257, i32 0, i32 12
  store i32 %256, i32* %258, align 8
  %259 = load i32, i32* @rockchip_spi_set_cs, align 4
  %260 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %261 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %260, i32 0, i32 11
  store i32 %259, i32* %261, align 4
  %262 = load i32, i32* @rockchip_spi_transfer_one, align 4
  %263 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %264 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %263, i32 0, i32 10
  store i32 %262, i32* %264, align 8
  %265 = load i32, i32* @rockchip_spi_max_transfer_size, align 4
  %266 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %267 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %266, i32 0, i32 9
  store i32 %265, i32* %267, align 4
  %268 = load i32, i32* @rockchip_spi_handle_err, align 4
  %269 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %270 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %269, i32 0, i32 8
  store i32 %268, i32* %270, align 8
  %271 = load i32, i32* @SPI_MASTER_GPIO_SS, align 4
  %272 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %273 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %272, i32 0, i32 7
  store i32 %271, i32* %273, align 4
  %274 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %275 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %274, i32 0, i32 6
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %275, align 8
  %277 = call i8* @dma_request_chan(%struct.TYPE_15__* %276, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %278 = bitcast i8* %277 to i32*
  %279 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %280 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %279, i32 0, i32 4
  store i32* %278, i32** %280, align 8
  %281 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %282 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %281, i32 0, i32 4
  %283 = load i32*, i32** %282, align 8
  %284 = call i64 @IS_ERR(i32* %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %304

286:                                              ; preds = %203
  %287 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %288 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %287, i32 0, i32 4
  %289 = load i32*, i32** %288, align 8
  %290 = call i32 @PTR_ERR(i32* %289)
  %291 = load i32, i32* @EPROBE_DEFER, align 4
  %292 = sub nsw i32 0, %291
  %293 = icmp eq i32 %290, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %286
  %295 = load i32, i32* @EPROBE_DEFER, align 4
  %296 = sub nsw i32 0, %295
  store i32 %296, i32* %4, align 4
  br label %397

297:                                              ; preds = %286
  %298 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %299 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %298, i32 0, i32 6
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %299, align 8
  %301 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_warn(%struct.TYPE_15__* %300, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %302 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %303 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %302, i32 0, i32 4
  store i32* null, i32** %303, align 8
  br label %304

304:                                              ; preds = %297, %203
  %305 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %306 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %305, i32 0, i32 6
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %306, align 8
  %308 = call i8* @dma_request_chan(%struct.TYPE_15__* %307, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %309 = bitcast i8* %308 to i32*
  %310 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %311 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %310, i32 0, i32 5
  store i32* %309, i32** %311, align 8
  %312 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %313 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %312, i32 0, i32 5
  %314 = load i32*, i32** %313, align 8
  %315 = call i64 @IS_ERR(i32* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %335

317:                                              ; preds = %304
  %318 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %319 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %318, i32 0, i32 5
  %320 = load i32*, i32** %319, align 8
  %321 = call i32 @PTR_ERR(i32* %320)
  %322 = load i32, i32* @EPROBE_DEFER, align 4
  %323 = sub nsw i32 0, %322
  %324 = icmp eq i32 %321, %323
  br i1 %324, label %325, label %328

325:                                              ; preds = %317
  %326 = load i32, i32* @EPROBE_DEFER, align 4
  %327 = sub nsw i32 0, %326
  store i32 %327, i32* %4, align 4
  br label %386

328:                                              ; preds = %317
  %329 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %330 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %329, i32 0, i32 6
  %331 = load %struct.TYPE_15__*, %struct.TYPE_15__** %330, align 8
  %332 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_warn(%struct.TYPE_15__* %331, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %333 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %334 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %333, i32 0, i32 5
  store i32* null, i32** %334, align 8
  br label %335

335:                                              ; preds = %328, %304
  %336 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %337 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %336, i32 0, i32 4
  %338 = load i32*, i32** %337, align 8
  %339 = icmp ne i32* %338, null
  br i1 %339, label %340, label %363

340:                                              ; preds = %335
  %341 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %342 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %341, i32 0, i32 5
  %343 = load i32*, i32** %342, align 8
  %344 = icmp ne i32* %343, null
  br i1 %344, label %345, label %363

345:                                              ; preds = %340
  %346 = load %struct.resource*, %struct.resource** %7, align 8
  %347 = getelementptr inbounds %struct.resource, %struct.resource* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @ROCKCHIP_SPI_TXDR, align 8
  %350 = add nsw i64 %348, %349
  %351 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %352 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %351, i32 0, i32 5
  store i64 %350, i64* %352, align 8
  %353 = load %struct.resource*, %struct.resource** %7, align 8
  %354 = getelementptr inbounds %struct.resource, %struct.resource* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @ROCKCHIP_SPI_RXDR, align 8
  %357 = add nsw i64 %355, %356
  %358 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %359 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %358, i32 0, i32 4
  store i64 %357, i64* %359, align 8
  %360 = load i32, i32* @rockchip_spi_can_dma, align 4
  %361 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %362 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %361, i32 0, i32 6
  store i32 %360, i32* %362, align 8
  br label %363

363:                                              ; preds = %345, %340, %335
  %364 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %365 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %364, i32 0, i32 0
  %366 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %367 = call i32 @devm_spi_register_master(%struct.TYPE_15__* %365, %struct.spi_master* %366)
  store i32 %367, i32* %4, align 4
  %368 = load i32, i32* %4, align 4
  %369 = icmp slt i32 %368, 0
  br i1 %369, label %370, label %374

370:                                              ; preds = %363
  %371 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %372 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %371, i32 0, i32 0
  %373 = call i32 @dev_err(%struct.TYPE_15__* %372, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  br label %375

374:                                              ; preds = %363
  store i32 0, i32* %2, align 4
  br label %415

375:                                              ; preds = %370
  %376 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %377 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %376, i32 0, i32 5
  %378 = load i32*, i32** %377, align 8
  %379 = icmp ne i32* %378, null
  br i1 %379, label %380, label %385

380:                                              ; preds = %375
  %381 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %382 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %381, i32 0, i32 5
  %383 = load i32*, i32** %382, align 8
  %384 = call i32 @dma_release_channel(i32* %383)
  br label %385

385:                                              ; preds = %380, %375
  br label %386

386:                                              ; preds = %385, %325
  %387 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %388 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %387, i32 0, i32 4
  %389 = load i32*, i32** %388, align 8
  %390 = icmp ne i32* %389, null
  br i1 %390, label %391, label %396

391:                                              ; preds = %386
  %392 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %393 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %392, i32 0, i32 4
  %394 = load i32*, i32** %393, align 8
  %395 = call i32 @dma_release_channel(i32* %394)
  br label %396

396:                                              ; preds = %391, %386
  br label %397

397:                                              ; preds = %396, %294
  %398 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %399 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %398, i32 0, i32 0
  %400 = call i32 @pm_runtime_disable(%struct.TYPE_15__* %399)
  br label %401

401:                                              ; preds = %397, %197, %126, %112
  %402 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %403 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %402, i32 0, i32 3
  %404 = load i32*, i32** %403, align 8
  %405 = call i32 @clk_disable_unprepare(i32* %404)
  br label %406

406:                                              ; preds = %401, %101
  %407 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %408 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %407, i32 0, i32 2
  %409 = load i32*, i32** %408, align 8
  %410 = call i32 @clk_disable_unprepare(i32* %409)
  br label %411

411:                                              ; preds = %406, %90, %75, %55, %38
  %412 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %413 = call i32 @spi_master_put(%struct.spi_master* %412)
  %414 = load i32, i32* %4, align 4
  store i32 %414, i32* %2, align 4
  br label %415

415:                                              ; preds = %411, %374, %15
  %416 = load i32, i32* %2, align 4
  ret i32 %416
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local %struct.rockchip_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.TYPE_15__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @spi_enable_chip(%struct.rockchip_spi*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_15__*, i32, i32, i32*, i32, i32, %struct.spi_master*) #1

declare dso_local i32 @dev_name(%struct.TYPE_15__*) #1

declare dso_local i32 @clk_get_rate(i32*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local i32 @get_fifo_len(%struct.rockchip_spi*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_15__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_15__*) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @dma_request_chan(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_15__*, %struct.spi_master*) #1

declare dso_local i32 @dma_release_channel(i32*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_15__*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
