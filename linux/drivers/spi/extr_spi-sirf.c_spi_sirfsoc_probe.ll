; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.sirfsoc_spi = type { i32, i32, i8*, i8*, i32, %struct.TYPE_11__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.spi_master*, i32, i32, i32 }
%struct.spi_master = type { i32, i32, i32, i32, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.sirf_spi_comp_data = type { i32, i32 (%struct.sirfsoc_spi*)*, i32, i32, i32 }
%struct.of_device_id = type { %struct.sirf_spi_comp_data* }

@.str = private unnamed_addr constant [19 x i8] c"SPI reset failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to allocate SPI master\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@spi_sirfsoc_of_match = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@spi_sirfsoc_irq = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@spi_sirfsoc_chipselect = common dso_local global i32 0, align 4
@spi_sirfsoc_setup_transfer = common dso_local global i32 0, align 4
@spi_sirfsoc_transfer = common dso_local global i32 0, align 4
@spi_sirfsoc_setup = common dso_local global i32 0, align 4
@spi_sirfsoc_cleanup = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SIRFSOC_SPI_DEFAULT_FRQ = common dso_local global i32 0, align 4
@SPI_MASTER_MUST_RX = common dso_local global i32 0, align 4
@SPI_MASTER_MUST_TX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"can not allocate rx dma channel\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"can not allocate tx dma channel\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"registered, bus number = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spi_sirfsoc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_sirfsoc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sirfsoc_spi*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.sirf_spi_comp_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call i32 @device_reset(%struct.TYPE_12__* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 @dev_err(%struct.TYPE_12__* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %2, align 4
  br label %294

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_12__* %22, i32 88)
  store %struct.spi_master* %23, %struct.spi_master** %5, align 8
  %24 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %25 = icmp ne %struct.spi_master* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(%struct.TYPE_12__* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %294

32:                                               ; preds = %20
  %33 = load i32, i32* @spi_sirfsoc_of_match, align 4
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.of_device_id* @of_match_node(i32 %33, i32 %37)
  store %struct.of_device_id* %38, %struct.of_device_id** %9, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %41 = call i32 @platform_set_drvdata(%struct.platform_device* %39, %struct.spi_master* %40)
  %42 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %43 = call %struct.sirfsoc_spi* @spi_master_get_devdata(%struct.spi_master* %42)
  store %struct.sirfsoc_spi* %43, %struct.sirfsoc_spi** %4, align 8
  %44 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %45 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ilog2(i32 %46)
  %48 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %49 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %48, i32 0, i32 13
  store i32 %47, i32* %49, align 4
  %50 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %51 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %50, i32 0, i32 0
  %52 = load %struct.sirf_spi_comp_data*, %struct.sirf_spi_comp_data** %51, align 8
  store %struct.sirf_spi_comp_data* %52, %struct.sirf_spi_comp_data** %6, align 8
  %53 = load %struct.sirf_spi_comp_data*, %struct.sirf_spi_comp_data** %6, align 8
  %54 = getelementptr inbounds %struct.sirf_spi_comp_data, %struct.sirf_spi_comp_data* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %57 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %56, i32 0, i32 12
  store i32 %55, i32* %57, align 8
  %58 = load %struct.sirf_spi_comp_data*, %struct.sirf_spi_comp_data** %6, align 8
  %59 = getelementptr inbounds %struct.sirf_spi_comp_data, %struct.sirf_spi_comp_data* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %62 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %61, i32 0, i32 11
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %64 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sdiv i32 %65, 4
  %67 = sub nsw i32 %66, 1
  %68 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %69 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.sirf_spi_comp_data*, %struct.sirf_spi_comp_data** %6, align 8
  %71 = getelementptr inbounds %struct.sirf_spi_comp_data, %struct.sirf_spi_comp_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %74 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %73, i32 0, i32 10
  store i32 %72, i32* %74, align 8
  %75 = load %struct.sirf_spi_comp_data*, %struct.sirf_spi_comp_data** %6, align 8
  %76 = getelementptr inbounds %struct.sirf_spi_comp_data, %struct.sirf_spi_comp_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %79 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %80, i32 0)
  %82 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %83 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %82, i32 0, i32 9
  store i32 %81, i32* %83, align 4
  %84 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %85 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %32
  %90 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %91 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @PTR_ERR(i32 %92)
  store i32 %93, i32* %8, align 4
  br label %290

94:                                               ; preds = %32
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = call i32 @platform_get_irq(%struct.platform_device* %95, i32 0)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @ENXIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %8, align 4
  br label %290

102:                                              ; preds = %94
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @spi_sirfsoc_irq, align 4
  %107 = load i32, i32* @DRIVER_NAME, align 4
  %108 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %109 = call i32 @devm_request_irq(%struct.TYPE_12__* %104, i32 %105, i32 %106, i32 0, i32 %107, %struct.sirfsoc_spi* %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %290

113:                                              ; preds = %102
  %114 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %115 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %116 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  store %struct.spi_master* %114, %struct.spi_master** %117, align 8
  %118 = load i32, i32* @spi_sirfsoc_chipselect, align 4
  %119 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %120 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 3
  store i32 %118, i32* %121, align 8
  %122 = load i32, i32* @spi_sirfsoc_setup_transfer, align 4
  %123 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %124 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 2
  store i32 %122, i32* %125, align 4
  %126 = load i32, i32* @spi_sirfsoc_transfer, align 4
  %127 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %128 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 8
  %130 = load i32, i32* @spi_sirfsoc_setup, align 4
  %131 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %132 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load %struct.spi_master*, %struct.spi_master** %133, align 8
  %135 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %134, i32 0, i32 7
  store i32 %130, i32* %135, align 4
  %136 = load i32, i32* @spi_sirfsoc_cleanup, align 4
  %137 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %138 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load %struct.spi_master*, %struct.spi_master** %139, align 8
  %141 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %140, i32 0, i32 6
  store i32 %136, i32* %141, align 4
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %146 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* @SPI_CPOL, align 4
  %148 = load i32, i32* @SPI_CPHA, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @SPI_LSB_FIRST, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @SPI_CS_HIGH, align 4
  %153 = or i32 %151, %152
  %154 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %155 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 4
  %156 = call i32 @SPI_BPW_MASK(i32 8)
  %157 = call i32 @SPI_BPW_MASK(i32 12)
  %158 = or i32 %156, %157
  %159 = call i32 @SPI_BPW_MASK(i32 16)
  %160 = or i32 %158, %159
  %161 = call i32 @SPI_BPW_MASK(i32 32)
  %162 = or i32 %160, %161
  %163 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %164 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @SIRFSOC_SPI_DEFAULT_FRQ, align 4
  %166 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %167 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %166, i32 0, i32 5
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @SPI_MASTER_MUST_RX, align 4
  %169 = load i32, i32* @SPI_MASTER_MUST_TX, align 4
  %170 = or i32 %168, %169
  %171 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %172 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 4
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %178 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load %struct.spi_master*, %struct.spi_master** %179, align 8
  %181 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  store i32 %176, i32* %182, align 4
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = call i8* @dma_request_slave_channel(%struct.TYPE_12__* %184, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %186 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %187 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %186, i32 0, i32 2
  store i8* %185, i8** %187, align 8
  %188 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %189 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %188, i32 0, i32 2
  %190 = load i8*, i8** %189, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %198, label %192

192:                                              ; preds = %113
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %193, i32 0, i32 0
  %195 = call i32 @dev_err(%struct.TYPE_12__* %194, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %196 = load i32, i32* @ENODEV, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %8, align 4
  br label %290

198:                                              ; preds = %113
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = call i8* @dma_request_slave_channel(%struct.TYPE_12__* %200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %202 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %203 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %202, i32 0, i32 3
  store i8* %201, i8** %203, align 8
  %204 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %205 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %204, i32 0, i32 3
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %214, label %208

208:                                              ; preds = %198
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 0
  %211 = call i32 @dev_err(%struct.TYPE_12__* %210, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %212 = load i32, i32* @ENODEV, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %8, align 4
  br label %285

214:                                              ; preds = %198
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %215, i32 0, i32 0
  %217 = call i32 @clk_get(%struct.TYPE_12__* %216, i32* null)
  %218 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %219 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %218, i32 0, i32 4
  store i32 %217, i32* %219, align 8
  %220 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %221 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = call i64 @IS_ERR(i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %214
  %226 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %227 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @PTR_ERR(i32 %228)
  store i32 %229, i32* %8, align 4
  br label %280

230:                                              ; preds = %214
  %231 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %232 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @clk_prepare_enable(i32 %233)
  %235 = load %struct.sirf_spi_comp_data*, %struct.sirf_spi_comp_data** %6, align 8
  %236 = getelementptr inbounds %struct.sirf_spi_comp_data, %struct.sirf_spi_comp_data* %235, i32 0, i32 1
  %237 = load i32 (%struct.sirfsoc_spi*)*, i32 (%struct.sirfsoc_spi*)** %236, align 8
  %238 = icmp ne i32 (%struct.sirfsoc_spi*)* %237, null
  br i1 %238, label %239, label %245

239:                                              ; preds = %230
  %240 = load %struct.sirf_spi_comp_data*, %struct.sirf_spi_comp_data** %6, align 8
  %241 = getelementptr inbounds %struct.sirf_spi_comp_data, %struct.sirf_spi_comp_data* %240, i32 0, i32 1
  %242 = load i32 (%struct.sirfsoc_spi*)*, i32 (%struct.sirfsoc_spi*)** %241, align 8
  %243 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %244 = call i32 %242(%struct.sirfsoc_spi* %243)
  br label %245

245:                                              ; preds = %239, %230
  %246 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %247 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @clk_get_rate(i32 %248)
  %250 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %251 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %250, i32 0, i32 8
  store i32 %249, i32* %251, align 8
  %252 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %253 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %252, i32 0, i32 7
  %254 = call i32 @init_completion(i32* %253)
  %255 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %256 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %255, i32 0, i32 6
  %257 = call i32 @init_completion(i32* %256)
  %258 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %259 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %258, i32 0, i32 5
  %260 = call i32 @spi_bitbang_start(%struct.TYPE_11__* %259)
  store i32 %260, i32* %8, align 4
  %261 = load i32, i32* %8, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %245
  br label %271

264:                                              ; preds = %245
  %265 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %266 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %265, i32 0, i32 0
  %267 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %268 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @dev_info(%struct.TYPE_12__* %266, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %269)
  store i32 0, i32* %2, align 4
  br label %294

271:                                              ; preds = %263
  %272 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %273 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @clk_disable_unprepare(i32 %274)
  %276 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %277 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @clk_put(i32 %278)
  br label %280

280:                                              ; preds = %271, %225
  %281 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %282 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %281, i32 0, i32 3
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @dma_release_channel(i8* %283)
  br label %285

285:                                              ; preds = %280, %208
  %286 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %4, align 8
  %287 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %286, i32 0, i32 2
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 @dma_release_channel(i8* %288)
  br label %290

290:                                              ; preds = %285, %192, %112, %99, %89
  %291 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %292 = call i32 @spi_master_put(%struct.spi_master* %291)
  %293 = load i32, i32* %8, align 4
  store i32 %293, i32* %2, align 4
  br label %294

294:                                              ; preds = %290, %264, %26, %15
  %295 = load i32, i32* %2, align 4
  ret i32 %295
}

declare dso_local i32 @device_reset(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local %struct.sirfsoc_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_12__*, i32, i32, i32, i32, %struct.sirfsoc_spi*) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i8* @dma_request_slave_channel(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @clk_get(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spi_bitbang_start(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @dma_release_channel(i8*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
