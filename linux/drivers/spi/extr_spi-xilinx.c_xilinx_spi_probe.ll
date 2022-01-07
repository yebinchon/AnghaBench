; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xilinx.c_xilinx_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xilinx.c_xilinx_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.xilinx_spi = type { i32, i32, i32, i64, %struct.TYPE_11__, i32, i32 (i32, i64)*, i32 (i64)*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.spi_master* }
%struct.spi_master = type { i32, i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.xspi_platform_data = type { i32, i32, i64, i64 }
%struct.resource = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"xlnx,num-ss-bits\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Missing slave select configuration data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XILINX_SPI_MAX_CS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid number of spi slaves\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@xilinx_spi_chipselect = common dso_local global i32 0, align 4
@xilinx_spi_setup_transfer = common dso_local global i32 0, align 4
@xilinx_spi_txrx_bufs = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@XSPI_CR_LOOP = common dso_local global i32 0, align 4
@XSPI_CR_OFFSET = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@xilinx_spi_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"spi_bitbang_start FAILED\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"at 0x%08llX mapped to 0x%p, irq=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xilinx_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xilinx_spi*, align 8
  %5 = alloca %struct.xspi_platform_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_master*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 8, i32* %9, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.xspi_platform_data* @dev_get_platdata(%struct.TYPE_12__* %14)
  store %struct.xspi_platform_data* %15, %struct.xspi_platform_data** %5, align 8
  %16 = load %struct.xspi_platform_data*, %struct.xspi_platform_data** %5, align 8
  %17 = icmp ne %struct.xspi_platform_data* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.xspi_platform_data*, %struct.xspi_platform_data** %5, align 8
  %20 = getelementptr inbounds %struct.xspi_platform_data, %struct.xspi_platform_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.xspi_platform_data*, %struct.xspi_platform_data** %5, align 8
  %23 = getelementptr inbounds %struct.xspi_platform_data, %struct.xspi_platform_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  br label %31

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @of_property_read_u32(i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %8)
  br label %31

31:                                               ; preds = %25, %18
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @dev_err(%struct.TYPE_12__* %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %271

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @XILINX_SPI_MAX_CS, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @dev_err(%struct.TYPE_12__* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %271

50:                                               ; preds = %40
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_12__* %52, i32 80)
  store %struct.spi_master* %53, %struct.spi_master** %10, align 8
  %54 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %55 = icmp ne %struct.spi_master* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %271

59:                                               ; preds = %50
  %60 = load i32, i32* @SPI_CPOL, align 4
  %61 = load i32, i32* @SPI_CPHA, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SPI_LSB_FIRST, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @SPI_LOOP, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @SPI_CS_HIGH, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %70 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %72 = call %struct.xilinx_spi* @spi_master_get_devdata(%struct.spi_master* %71)
  store %struct.xilinx_spi* %72, %struct.xilinx_spi** %4, align 8
  %73 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %74 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %73, i32 0, i32 0
  store i32 -1, i32* %74, align 8
  %75 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %76 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %77 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  store %struct.spi_master* %75, %struct.spi_master** %78, align 8
  %79 = load i32, i32* @xilinx_spi_chipselect, align 4
  %80 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %81 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 8
  %83 = load i32, i32* @xilinx_spi_setup_transfer, align 4
  %84 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %85 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @xilinx_spi_txrx_bufs, align 4
  %88 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %89 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %92 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %91, i32 0, i32 8
  %93 = call i32 @init_completion(i32* %92)
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = load i32, i32* @IORESOURCE_MEM, align 4
  %96 = call %struct.resource* @platform_get_resource(%struct.platform_device* %94, i32 %95, i32 0)
  store %struct.resource* %96, %struct.resource** %6, align 8
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load %struct.resource*, %struct.resource** %6, align 8
  %100 = call i64 @devm_ioremap_resource(%struct.TYPE_12__* %98, %struct.resource* %99)
  %101 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %102 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %101, i32 0, i32 3
  store i64 %100, i64* %102, align 8
  %103 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %104 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @IS_ERR(i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %59
  %109 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %110 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @PTR_ERR(i64 %111)
  store i32 %112, i32* %7, align 4
  br label %267

113:                                              ; preds = %59
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %118 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %121 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %127 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 4
  %129 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %130 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %129, i32 0, i32 7
  store i32 (i64)* @xspi_read32, i32 (i64)** %130, align 8
  %131 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %132 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %131, i32 0, i32 6
  store i32 (i32, i64)* @xspi_write32, i32 (i32, i64)** %132, align 8
  %133 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %134 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %133, i32 0, i32 6
  %135 = load i32 (i32, i64)*, i32 (i32, i64)** %134, align 8
  %136 = load i32, i32* @XSPI_CR_LOOP, align 4
  %137 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %138 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @XSPI_CR_OFFSET, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 %135(i32 %136, i64 %141)
  %143 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %144 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %143, i32 0, i32 7
  %145 = load i32 (i64)*, i32 (i64)** %144, align 8
  %146 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %147 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @XSPI_CR_OFFSET, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 %145(i64 %150)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* @XSPI_CR_LOOP, align 4
  %153 = load i32, i32* %11, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @XSPI_CR_LOOP, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %113
  %159 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %160 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %159, i32 0, i32 7
  store i32 (i64)* @xspi_read32_be, i32 (i64)** %160, align 8
  %161 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %162 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %161, i32 0, i32 6
  store i32 (i32, i64)* @xspi_write32_be, i32 (i32, i64)** %162, align 8
  br label %163

163:                                              ; preds = %158, %113
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @SPI_BPW_MASK(i32 %164)
  %166 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %167 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %9, align 4
  %169 = sdiv i32 %168, 8
  %170 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %171 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %173 = call i32 @xilinx_spi_find_buffer_size(%struct.xilinx_spi* %172)
  %174 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %175 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %174, i32 0, i32 5
  store i32 %173, i32* %175, align 8
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = call i32 @platform_get_irq(%struct.platform_device* %176, i32 0)
  %178 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %179 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  %180 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %181 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %163
  %185 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %186 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @ENXIO, align 4
  %189 = sub nsw i32 0, %188
  %190 = icmp ne i32 %187, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %184
  %192 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %193 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  store i32 %194, i32* %7, align 4
  br label %267

195:                                              ; preds = %184, %163
  %196 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %197 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = icmp sge i32 %198, 0
  br i1 %199, label %200, label %216

200:                                              ; preds = %195
  %201 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %202 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %201, i32 0, i32 0
  %203 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %204 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @xilinx_spi_irq, align 4
  %207 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %208 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %207, i32 0, i32 0
  %209 = call i32 @dev_name(%struct.TYPE_12__* %208)
  %210 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %211 = call i32 @devm_request_irq(%struct.TYPE_12__* %202, i32 %205, i32 %206, i32 0, i32 %209, %struct.xilinx_spi* %210)
  store i32 %211, i32* %7, align 4
  %212 = load i32, i32* %7, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %200
  br label %267

215:                                              ; preds = %200
  br label %216

216:                                              ; preds = %215, %195
  br label %217

217:                                              ; preds = %216
  %218 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %219 = call i32 @xspi_init_hw(%struct.xilinx_spi* %218)
  %220 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %221 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %220, i32 0, i32 4
  %222 = call i32 @spi_bitbang_start(%struct.TYPE_11__* %221)
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %217
  %226 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %227 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %226, i32 0, i32 0
  %228 = call i32 @dev_err(%struct.TYPE_12__* %227, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %267

229:                                              ; preds = %217
  %230 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %231 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %230, i32 0, i32 0
  %232 = load %struct.resource*, %struct.resource** %6, align 8
  %233 = getelementptr inbounds %struct.resource, %struct.resource* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %236 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.xilinx_spi*, %struct.xilinx_spi** %4, align 8
  %239 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @dev_info(%struct.TYPE_12__* %231, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %234, i64 %237, i32 %240)
  %242 = load %struct.xspi_platform_data*, %struct.xspi_platform_data** %5, align 8
  %243 = icmp ne %struct.xspi_platform_data* %242, null
  br i1 %243, label %244, label %263

244:                                              ; preds = %229
  store i64 0, i64* %12, align 8
  br label %245

245:                                              ; preds = %259, %244
  %246 = load i64, i64* %12, align 8
  %247 = load %struct.xspi_platform_data*, %struct.xspi_platform_data** %5, align 8
  %248 = getelementptr inbounds %struct.xspi_platform_data, %struct.xspi_platform_data* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = icmp slt i64 %246, %249
  br i1 %250, label %251, label %262

251:                                              ; preds = %245
  %252 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %253 = load %struct.xspi_platform_data*, %struct.xspi_platform_data** %5, align 8
  %254 = getelementptr inbounds %struct.xspi_platform_data, %struct.xspi_platform_data* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* %12, align 8
  %257 = add nsw i64 %255, %256
  %258 = call i32 @spi_new_device(%struct.spi_master* %252, i64 %257)
  br label %259

259:                                              ; preds = %251
  %260 = load i64, i64* %12, align 8
  %261 = add nsw i64 %260, 1
  store i64 %261, i64* %12, align 8
  br label %245

262:                                              ; preds = %245
  br label %263

263:                                              ; preds = %262, %229
  %264 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %265 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %266 = call i32 @platform_set_drvdata(%struct.platform_device* %264, %struct.spi_master* %265)
  store i32 0, i32* %2, align 4
  br label %271

267:                                              ; preds = %225, %214, %191, %108
  %268 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %269 = call i32 @spi_master_put(%struct.spi_master* %268)
  %270 = load i32, i32* %7, align 4
  store i32 %270, i32* %2, align 4
  br label %271

271:                                              ; preds = %267, %263, %56, %44, %34
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local %struct.xspi_platform_data* @dev_get_platdata(%struct.TYPE_12__*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.xilinx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @xspi_read32(i64) #1

declare dso_local i32 @xspi_write32(i32, i64) #1

declare dso_local i32 @xspi_read32_be(i64) #1

declare dso_local i32 @xspi_write32_be(i32, i64) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i32 @xilinx_spi_find_buffer_size(%struct.xilinx_spi*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_12__*, i32, i32, i32, i32, %struct.xilinx_spi*) #1

declare dso_local i32 @dev_name(%struct.TYPE_12__*) #1

declare dso_local i32 @xspi_init_hw(%struct.xilinx_spi*) #1

declare dso_local i32 @spi_bitbang_start(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*, i64, i64, i32) #1

declare dso_local i32 @spi_new_device(%struct.spi_master*, i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
