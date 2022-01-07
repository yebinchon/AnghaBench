; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_ti_qspi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_ti_qspi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ti_qspi = type { i32, i32, i32*, i32*, i64, i32, %struct.TYPE_14__*, i32, i32, i32*, i32, i32*, i32*, i32, i32, %struct.spi_master* }
%struct.spi_master = type { i32, i32, i32, i32, i32*, i32*, %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.device_node* }
%struct.resource = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@SPI_MASTER_HALF_DUPLEX = common dso_local global i32 0, align 4
@ti_qspi_setup = common dso_local global i32 0, align 4
@ti_qspi_start_transfer_one = common dso_local global i32 0, align 4
@ti_qspi_mem_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"num-cs\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"qspi_base\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"missing platform data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"qspi_mmap\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"memory mapped resource not required\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"syscon-chipselects\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"couldn't get ctrl_mod reg index\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"could not get clk: %d\0A\00", align 1
@QSPI_AUTOSUSPEND_TIMEOUT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"spi-max-frequency\00", align 1
@DMA_MEMCPY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"No Rx DMA available, trying mmap mode\0A\00", align 1
@QSPI_DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [43 x i8] c"dma_alloc_coherent failed, using PIO mode\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"mmap failed with error %ld using PIO mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ti_qspi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_qspi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ti_qspi*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_14__* %19, i32 104)
  store %struct.spi_master* %20, %struct.spi_master** %5, align 8
  %21 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %22 = icmp ne %struct.spi_master* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %340

26:                                               ; preds = %1
  %27 = load i32, i32* @SPI_CPOL, align 4
  %28 = load i32, i32* @SPI_CPHA, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SPI_RX_DUAL, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SPI_RX_QUAD, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %35 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @SPI_MASTER_HALF_DUPLEX, align 4
  %37 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %38 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @ti_qspi_setup, align 4
  %40 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %41 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 4
  %42 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %43 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* @ti_qspi_start_transfer_one, align 4
  %45 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %46 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load %struct.device_node*, %struct.device_node** %49, align 8
  %51 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %52 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  store %struct.device_node* %50, %struct.device_node** %53, align 8
  %54 = call i32 @SPI_BPW_MASK(i32 32)
  %55 = call i32 @SPI_BPW_MASK(i32 16)
  %56 = or i32 %54, %55
  %57 = call i32 @SPI_BPW_MASK(i32 8)
  %58 = or i32 %56, %57
  %59 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %60 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %62 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %61, i32 0, i32 4
  store i32* @ti_qspi_mem_ops, i32** %62, align 8
  %63 = load %struct.device_node*, %struct.device_node** %8, align 8
  %64 = call i32 @of_property_read_u32(%struct.device_node* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %11)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %26
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %69 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %26
  %71 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %72 = call %struct.ti_qspi* @spi_master_get_devdata(%struct.spi_master* %71)
  store %struct.ti_qspi* %72, %struct.ti_qspi** %4, align 8
  %73 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %74 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %75 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %74, i32 0, i32 15
  store %struct.spi_master* %73, %struct.spi_master** %75, align 8
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %79 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %78, i32 0, i32 6
  store %struct.TYPE_14__* %77, %struct.TYPE_14__** %79, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %82 = call i32 @platform_set_drvdata(%struct.platform_device* %80, %struct.ti_qspi* %81)
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = load i32, i32* @IORESOURCE_MEM, align 4
  %85 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %83, i32 %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %85, %struct.resource** %6, align 8
  %86 = load %struct.resource*, %struct.resource** %6, align 8
  %87 = icmp eq %struct.resource* %86, null
  br i1 %87, label %88, label %101

88:                                               ; preds = %70
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = load i32, i32* @IORESOURCE_MEM, align 4
  %91 = call %struct.resource* @platform_get_resource(%struct.platform_device* %89, i32 %90, i32 0)
  store %struct.resource* %91, %struct.resource** %6, align 8
  %92 = load %struct.resource*, %struct.resource** %6, align 8
  %93 = icmp eq %struct.resource* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* @ENODEV, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %10, align 4
  br label %336

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %70
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load i32, i32* @IORESOURCE_MEM, align 4
  %104 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %102, i32 %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store %struct.resource* %104, %struct.resource** %7, align 8
  %105 = load %struct.resource*, %struct.resource** %7, align 8
  %106 = icmp eq %struct.resource* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %101
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = load i32, i32* @IORESOURCE_MEM, align 4
  %110 = call %struct.resource* @platform_get_resource(%struct.platform_device* %108, i32 %109, i32 1)
  store %struct.resource* %110, %struct.resource** %7, align 8
  %111 = load %struct.resource*, %struct.resource** %7, align 8
  %112 = icmp eq %struct.resource* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %115, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %113, %107
  br label %118

118:                                              ; preds = %117, %101
  %119 = load %struct.resource*, %struct.resource** %7, align 8
  %120 = icmp ne %struct.resource* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load %struct.resource*, %struct.resource** %7, align 8
  %123 = call i32 @resource_size(%struct.resource* %122)
  %124 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %125 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %124, i32 0, i32 14
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %121, %118
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = call i32 @platform_get_irq(%struct.platform_device* %127, i32 0)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i32, i32* %12, align 4
  store i32 %132, i32* %10, align 4
  br label %336

133:                                              ; preds = %126
  %134 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %135 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %134, i32 0, i32 13
  %136 = call i32 @mutex_init(i32* %135)
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = load %struct.resource*, %struct.resource** %6, align 8
  %140 = call i8* @devm_ioremap_resource(%struct.TYPE_14__* %138, %struct.resource* %139)
  %141 = bitcast i8* %140 to i32*
  %142 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %143 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %142, i32 0, i32 12
  store i32* %141, i32** %143, align 8
  %144 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %145 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %144, i32 0, i32 12
  %146 = load i32*, i32** %145, align 8
  %147 = call i64 @IS_ERR(i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %133
  %150 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %151 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %150, i32 0, i32 12
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @PTR_ERR(i32* %152)
  store i32 %153, i32* %10, align 4
  br label %336

154:                                              ; preds = %133
  %155 = load %struct.device_node*, %struct.device_node** %8, align 8
  %156 = call i64 @of_property_read_bool(%struct.device_node* %155, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %185

158:                                              ; preds = %154
  %159 = load %struct.device_node*, %struct.device_node** %8, align 8
  %160 = call i32* @syscon_regmap_lookup_by_phandle(%struct.device_node* %159, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %161 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %162 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %161, i32 0, i32 11
  store i32* %160, i32** %162, align 8
  %163 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %164 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %163, i32 0, i32 11
  %165 = load i32*, i32** %164, align 8
  %166 = call i64 @IS_ERR(i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %158
  %169 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %170 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %169, i32 0, i32 11
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @PTR_ERR(i32* %171)
  store i32 %172, i32* %10, align 4
  br label %336

173:                                              ; preds = %158
  %174 = load %struct.device_node*, %struct.device_node** %8, align 8
  %175 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %176 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %175, i32 0, i32 10
  %177 = call i32 @of_property_read_u32_index(%struct.device_node* %174, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 1, i32* %176)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %181, i32 0, i32 0
  %183 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %182, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %336

184:                                              ; preds = %173
  br label %185

185:                                              ; preds = %184, %154
  %186 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %187 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %186, i32 0, i32 0
  %188 = call i32* @devm_clk_get(%struct.TYPE_14__* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %189 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %190 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %189, i32 0, i32 9
  store i32* %188, i32** %190, align 8
  %191 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %192 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %191, i32 0, i32 9
  %193 = load i32*, i32** %192, align 8
  %194 = call i64 @IS_ERR(i32* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %185
  %197 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %198 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %197, i32 0, i32 9
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @PTR_ERR(i32* %199)
  store i32 %200, i32* %10, align 4
  %201 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %202 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %201, i32 0, i32 0
  %203 = load i32, i32* %10, align 4
  %204 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %202, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %196, %185
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_14__* %207)
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 0
  %211 = load i32, i32* @QSPI_AUTOSUSPEND_TIMEOUT, align 4
  %212 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_14__* %210, i32 %211)
  %213 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %214 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %213, i32 0, i32 0
  %215 = call i32 @pm_runtime_enable(%struct.TYPE_14__* %214)
  %216 = load %struct.device_node*, %struct.device_node** %8, align 8
  %217 = call i32 @of_property_read_u32(%struct.device_node* %216, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32* %9)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %205
  %220 = load i32, i32* %9, align 4
  %221 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %222 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %219, %205
  %224 = load i32, i32* %13, align 4
  %225 = call i32 @dma_cap_zero(i32 %224)
  %226 = load i32, i32* @DMA_MEMCPY, align 4
  %227 = load i32, i32* %13, align 4
  %228 = call i32 @dma_cap_set(i32 %226, i32 %227)
  %229 = call i32* @dma_request_chan_by_mask(i32* %13)
  %230 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %231 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %230, i32 0, i32 3
  store i32* %229, i32** %231, align 8
  %232 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %233 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = call i64 @IS_ERR(i32* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %223
  %238 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %239 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %238, i32 0, i32 6
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %239, align 8
  %241 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %240, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %242 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %243 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %242, i32 0, i32 3
  store i32* null, i32** %243, align 8
  store i32 0, i32* %10, align 4
  br label %288

244:                                              ; preds = %223
  %245 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %246 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %245, i32 0, i32 6
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %246, align 8
  %248 = load i32, i32* @QSPI_DMA_BUFFER_SIZE, align 4
  %249 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %250 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %249, i32 0, i32 8
  %251 = load i32, i32* @GFP_KERNEL, align 4
  %252 = load i32, i32* @GFP_DMA, align 4
  %253 = or i32 %251, %252
  %254 = call i32 @dma_alloc_coherent(%struct.TYPE_14__* %247, i32 %248, i32* %250, i32 %253)
  %255 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %256 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %255, i32 0, i32 7
  store i32 %254, i32* %256, align 8
  %257 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %258 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %270, label %261

261:                                              ; preds = %244
  %262 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %263 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %262, i32 0, i32 6
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %263, align 8
  %265 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %264, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  %266 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %267 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %266, i32 0, i32 3
  %268 = load i32*, i32** %267, align 8
  %269 = call i32 @dma_release_channel(i32* %268)
  br label %288

270:                                              ; preds = %244
  %271 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %272 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %271, i32 0, i32 3
  %273 = load i32*, i32** %272, align 8
  %274 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %275 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %274, i32 0, i32 5
  store i32* %273, i32** %275, align 8
  %276 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %277 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %276, i32 0, i32 5
  %278 = call i32 @init_completion(i32* %277)
  %279 = load %struct.resource*, %struct.resource** %7, align 8
  %280 = icmp ne %struct.resource* %279, null
  br i1 %280, label %281, label %287

281:                                              ; preds = %270
  %282 = load %struct.resource*, %struct.resource** %7, align 8
  %283 = getelementptr inbounds %struct.resource, %struct.resource* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %286 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %285, i32 0, i32 4
  store i64 %284, i64* %286, align 8
  br label %287

287:                                              ; preds = %281, %270
  br label %288

288:                                              ; preds = %287, %261, %237
  %289 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %290 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %289, i32 0, i32 3
  %291 = load i32*, i32** %290, align 8
  %292 = icmp ne i32* %291, null
  br i1 %292, label %322, label %293

293:                                              ; preds = %288
  %294 = load %struct.resource*, %struct.resource** %7, align 8
  %295 = icmp ne %struct.resource* %294, null
  br i1 %295, label %296, label %322

296:                                              ; preds = %293
  %297 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %298 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %297, i32 0, i32 0
  %299 = load %struct.resource*, %struct.resource** %7, align 8
  %300 = call i8* @devm_ioremap_resource(%struct.TYPE_14__* %298, %struct.resource* %299)
  %301 = bitcast i8* %300 to i32*
  %302 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %303 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %302, i32 0, i32 2
  store i32* %301, i32** %303, align 8
  %304 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %305 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %304, i32 0, i32 2
  %306 = load i32*, i32** %305, align 8
  %307 = call i64 @IS_ERR(i32* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %321

309:                                              ; preds = %296
  %310 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %311 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %310, i32 0, i32 0
  %312 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %313 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %312, i32 0, i32 2
  %314 = load i32*, i32** %313, align 8
  %315 = call i32 @PTR_ERR(i32* %314)
  %316 = call i32 @dev_info(%struct.TYPE_14__* %311, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32 %315)
  %317 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %318 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %317, i32 0, i32 2
  store i32* null, i32** %318, align 8
  %319 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %320 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %319, i32 0, i32 4
  store i32* null, i32** %320, align 8
  br label %321

321:                                              ; preds = %309, %296
  br label %322

322:                                              ; preds = %321, %293, %288
  %323 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %324 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %323, i32 0, i32 1
  store i32 0, i32* %324, align 4
  %325 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %326 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %325, i32 0, i32 0
  %327 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %328 = call i32 @devm_spi_register_master(%struct.TYPE_14__* %326, %struct.spi_master* %327)
  store i32 %328, i32* %10, align 4
  %329 = load i32, i32* %10, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %332, label %331

331:                                              ; preds = %322
  store i32 0, i32* %2, align 4
  br label %340

332:                                              ; preds = %322
  %333 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %334 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %333, i32 0, i32 0
  %335 = call i32 @pm_runtime_disable(%struct.TYPE_14__* %334)
  br label %336

336:                                              ; preds = %332, %180, %168, %149, %131, %94
  %337 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %338 = call i32 @spi_master_put(%struct.spi_master* %337)
  %339 = load i32, i32* %10, align 4
  store i32 %339, i32* %2, align 4
  br label %340

340:                                              ; preds = %336, %331, %23
  %341 = load i32, i32* %2, align 4
  ret i32 %341
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.ti_qspi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ti_qspi*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_14__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32* @devm_clk_get(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_14__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_14__*) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32* @dma_request_chan_by_mask(i32*) #1

declare dso_local i32 @dma_alloc_coherent(%struct.TYPE_14__*, i32, i32*, i32) #1

declare dso_local i32 @dma_release_channel(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_14__*, %struct.spi_master*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_14__*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
