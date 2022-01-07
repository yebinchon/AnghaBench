; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32.c_stm32_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_21__, i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.spi_master = type { i32, i32, i32, i32, i32*, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.stm32_spi = type { i32, i32, i32, i8*, i8*, %struct.TYPE_21__*, %struct.stm32_spi_cfg*, i32, i32, i64, i32, i32, %struct.spi_master* }
%struct.stm32_spi_cfg = type { i32 (%struct.stm32_spi.0*)*, i32, i32, i32 (%struct.stm32_spi.1*)*, i32 (%struct.stm32_spi.2*)*, i64, i32, i32 }
%struct.stm32_spi.0 = type opaque
%struct.stm32_spi.1 = type opaque
%struct.stm32_spi.2 = type opaque
%struct.resource = type { i64 }
%struct.TYPE_22__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"spi master allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to get irq: %d\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"irq%d request failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"clk get failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"clk enable failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"clk rate = 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"controller configuration failed: %d\0A\00", align 1
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_3WIRE = common dso_local global i32 0, align 4
@stm32_spi_setup = common dso_local global i32 0, align 4
@stm32_spi_prepare_msg = common dso_local global i32 0, align 4
@stm32_spi_transfer_one = common dso_local global i32 0, align 4
@stm32_spi_unprepare_msg = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"failed to request tx dma channel\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"failed to request rx dma channel\0A\00", align 1
@stm32_spi_can_dma = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"spi master registration failed: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"no CS gpios available\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"%i is not a valid gpio\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"can't get CS gpio %i\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"driver initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.stm32_spi*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_21__* %10, i32 80)
  store %struct.spi_master* %11, %struct.spi_master** %4, align 8
  %12 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %13 = icmp ne %struct.spi_master* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %483

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %23 = call i32 @platform_set_drvdata(%struct.platform_device* %21, %struct.spi_master* %22)
  %24 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %25 = call %struct.stm32_spi* @spi_master_get_devdata(%struct.spi_master* %24)
  store %struct.stm32_spi* %25, %struct.stm32_spi** %5, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %29 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %28, i32 0, i32 5
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %29, align 8
  %30 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %31 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %32 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %31, i32 0, i32 12
  store %struct.spi_master* %30, %struct.spi_master** %32, align 8
  %33 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %34 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %33, i32 0, i32 11
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call %struct.TYPE_22__* @of_match_device(i32 %41, %struct.TYPE_21__* %43)
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.stm32_spi_cfg*
  %48 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %49 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %48, i32 0, i32 6
  store %struct.stm32_spi_cfg* %47, %struct.stm32_spi_cfg** %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load i32, i32* @IORESOURCE_MEM, align 4
  %52 = call %struct.resource* @platform_get_resource(%struct.platform_device* %50, i32 %51, i32 0)
  store %struct.resource* %52, %struct.resource** %6, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.resource*, %struct.resource** %6, align 8
  %56 = call i32 @devm_ioremap_resource(%struct.TYPE_21__* %54, %struct.resource* %55)
  %57 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %58 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %57, i32 0, i32 10
  store i32 %56, i32* %58, align 8
  %59 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %60 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %20
  %65 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %66 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @PTR_ERR(i32 %67)
  store i32 %68, i32* %8, align 4
  br label %479

69:                                               ; preds = %20
  %70 = load %struct.resource*, %struct.resource** %6, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %74 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %73, i32 0, i32 9
  store i64 %72, i64* %74, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = call i32 @platform_get_irq(%struct.platform_device* %75, i32 0)
  %77 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %78 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %80 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sle i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %69
  %84 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %85 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @EPROBE_DEFER, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp ne i32 %87, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load i32, i32* %8, align 4
  %95 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %91, %83
  br label %479

97:                                               ; preds = %69
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %101 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %104 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %103, i32 0, i32 6
  %105 = load %struct.stm32_spi_cfg*, %struct.stm32_spi_cfg** %104, align 8
  %106 = getelementptr inbounds %struct.stm32_spi_cfg, %struct.stm32_spi_cfg* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %109 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %108, i32 0, i32 6
  %110 = load %struct.stm32_spi_cfg*, %struct.stm32_spi_cfg** %109, align 8
  %111 = getelementptr inbounds %struct.stm32_spi_cfg, %struct.stm32_spi_cfg* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @IRQF_ONESHOT, align 4
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %118 = call i32 @devm_request_threaded_irq(%struct.TYPE_21__* %99, i32 %102, i32 %107, i32 %112, i32 %113, i32 %116, %struct.spi_master* %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %97
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %125 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %126, i32 %127)
  br label %479

129:                                              ; preds = %97
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 @devm_clk_get(%struct.TYPE_21__* %131, i32* null)
  %133 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %134 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %136 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @IS_ERR(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %129
  %141 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %142 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @PTR_ERR(i32 %143)
  store i32 %144, i32* %8, align 4
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = load i32, i32* %8, align 4
  %148 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %147)
  br label %479

149:                                              ; preds = %129
  %150 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %151 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @clk_prepare_enable(i32 %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %149
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = load i32, i32* %8, align 4
  %160 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %158, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %159)
  br label %479

161:                                              ; preds = %149
  %162 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %163 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @clk_get_rate(i32 %164)
  %166 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %167 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %169 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %161
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %174, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %8, align 4
  br label %474

178:                                              ; preds = %161
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = call i32 @devm_reset_control_get_exclusive(%struct.TYPE_21__* %180, i32* null)
  %182 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %183 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %182, i32 0, i32 8
  store i32 %181, i32* %183, align 4
  %184 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %185 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %184, i32 0, i32 8
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @IS_ERR(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %199, label %189

189:                                              ; preds = %178
  %190 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %191 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @reset_control_assert(i32 %192)
  %194 = call i32 @udelay(i32 2)
  %195 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %196 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %195, i32 0, i32 8
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @reset_control_deassert(i32 %197)
  br label %199

199:                                              ; preds = %189, %178
  %200 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %201 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %200, i32 0, i32 6
  %202 = load %struct.stm32_spi_cfg*, %struct.stm32_spi_cfg** %201, align 8
  %203 = getelementptr inbounds %struct.stm32_spi_cfg, %struct.stm32_spi_cfg* %202, i32 0, i32 5
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %199
  %207 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %208 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %207, i32 0, i32 6
  %209 = load %struct.stm32_spi_cfg*, %struct.stm32_spi_cfg** %208, align 8
  %210 = getelementptr inbounds %struct.stm32_spi_cfg, %struct.stm32_spi_cfg* %209, i32 0, i32 4
  %211 = load i32 (%struct.stm32_spi.2*)*, i32 (%struct.stm32_spi.2*)** %210, align 8
  %212 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %213 = bitcast %struct.stm32_spi* %212 to %struct.stm32_spi.2*
  %214 = call i32 %211(%struct.stm32_spi.2* %213)
  %215 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %216 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %215, i32 0, i32 7
  store i32 %214, i32* %216, align 8
  br label %217

217:                                              ; preds = %206, %199
  %218 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %219 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %218, i32 0, i32 6
  %220 = load %struct.stm32_spi_cfg*, %struct.stm32_spi_cfg** %219, align 8
  %221 = getelementptr inbounds %struct.stm32_spi_cfg, %struct.stm32_spi_cfg* %220, i32 0, i32 0
  %222 = load i32 (%struct.stm32_spi.0*)*, i32 (%struct.stm32_spi.0*)** %221, align 8
  %223 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %224 = bitcast %struct.stm32_spi* %223 to %struct.stm32_spi.0*
  %225 = call i32 %222(%struct.stm32_spi.0* %224)
  store i32 %225, i32* %8, align 4
  %226 = load i32, i32* %8, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %217
  %229 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %230 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %229, i32 0, i32 0
  %231 = load i32, i32* %8, align 4
  %232 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %230, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %231)
  br label %474

233:                                              ; preds = %217
  %234 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %235 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %239 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %238, i32 0, i32 15
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 0
  store i32 %237, i32* %240, align 8
  %241 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %242 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %241, i32 0, i32 0
  store i32 1, i32* %242, align 8
  %243 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %244 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %247 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %246, i32 0, i32 14
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* @SPI_CPHA, align 4
  %249 = load i32, i32* @SPI_CPOL, align 4
  %250 = or i32 %248, %249
  %251 = load i32, i32* @SPI_CS_HIGH, align 4
  %252 = or i32 %250, %251
  %253 = load i32, i32* @SPI_LSB_FIRST, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @SPI_3WIRE, align 4
  %256 = or i32 %254, %255
  %257 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %258 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 4
  %259 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %260 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %259, i32 0, i32 6
  %261 = load %struct.stm32_spi_cfg*, %struct.stm32_spi_cfg** %260, align 8
  %262 = getelementptr inbounds %struct.stm32_spi_cfg, %struct.stm32_spi_cfg* %261, i32 0, i32 3
  %263 = load i32 (%struct.stm32_spi.1*)*, i32 (%struct.stm32_spi.1*)** %262, align 8
  %264 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %265 = bitcast %struct.stm32_spi* %264 to %struct.stm32_spi.1*
  %266 = call i32 %263(%struct.stm32_spi.1* %265)
  %267 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %268 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %267, i32 0, i32 13
  store i32 %266, i32* %268, align 8
  %269 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %270 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %273 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %272, i32 0, i32 6
  %274 = load %struct.stm32_spi_cfg*, %struct.stm32_spi_cfg** %273, align 8
  %275 = getelementptr inbounds %struct.stm32_spi_cfg, %struct.stm32_spi_cfg* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = sdiv i32 %271, %276
  %278 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %279 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 8
  %280 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %281 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %284 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %283, i32 0, i32 6
  %285 = load %struct.stm32_spi_cfg*, %struct.stm32_spi_cfg** %284, align 8
  %286 = getelementptr inbounds %struct.stm32_spi_cfg, %struct.stm32_spi_cfg* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = sdiv i32 %282, %287
  %289 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %290 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %289, i32 0, i32 3
  store i32 %288, i32* %290, align 4
  %291 = load i32, i32* @stm32_spi_setup, align 4
  %292 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %293 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %292, i32 0, i32 12
  store i32 %291, i32* %293, align 4
  %294 = load i32, i32* @stm32_spi_prepare_msg, align 4
  %295 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %296 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %295, i32 0, i32 11
  store i32 %294, i32* %296, align 8
  %297 = load i32, i32* @stm32_spi_transfer_one, align 4
  %298 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %299 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %298, i32 0, i32 10
  store i32 %297, i32* %299, align 4
  %300 = load i32, i32* @stm32_spi_unprepare_msg, align 4
  %301 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %302 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %301, i32 0, i32 9
  store i32 %300, i32* %302, align 8
  %303 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %304 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %303, i32 0, i32 5
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %304, align 8
  %306 = call i8* @dma_request_slave_channel(%struct.TYPE_21__* %305, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %307 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %308 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %307, i32 0, i32 4
  store i8* %306, i8** %308, align 8
  %309 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %310 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %309, i32 0, i32 4
  %311 = load i8*, i8** %310, align 8
  %312 = icmp ne i8* %311, null
  br i1 %312, label %317, label %313

313:                                              ; preds = %233
  %314 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %315 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %314, i32 0, i32 0
  %316 = call i32 @dev_warn(%struct.TYPE_21__* %315, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %323

317:                                              ; preds = %233
  %318 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %319 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %318, i32 0, i32 4
  %320 = load i8*, i8** %319, align 8
  %321 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %322 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %321, i32 0, i32 8
  store i8* %320, i8** %322, align 8
  br label %323

323:                                              ; preds = %317, %313
  %324 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %325 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %324, i32 0, i32 5
  %326 = load %struct.TYPE_21__*, %struct.TYPE_21__** %325, align 8
  %327 = call i8* @dma_request_slave_channel(%struct.TYPE_21__* %326, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %328 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %329 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %328, i32 0, i32 3
  store i8* %327, i8** %329, align 8
  %330 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %331 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %330, i32 0, i32 3
  %332 = load i8*, i8** %331, align 8
  %333 = icmp ne i8* %332, null
  br i1 %333, label %338, label %334

334:                                              ; preds = %323
  %335 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %336 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %335, i32 0, i32 0
  %337 = call i32 @dev_warn(%struct.TYPE_21__* %336, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %344

338:                                              ; preds = %323
  %339 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %340 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %339, i32 0, i32 3
  %341 = load i8*, i8** %340, align 8
  %342 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %343 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %342, i32 0, i32 7
  store i8* %341, i8** %343, align 8
  br label %344

344:                                              ; preds = %338, %334
  %345 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %346 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %345, i32 0, i32 4
  %347 = load i8*, i8** %346, align 8
  %348 = icmp ne i8* %347, null
  br i1 %348, label %354, label %349

349:                                              ; preds = %344
  %350 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %351 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %350, i32 0, i32 3
  %352 = load i8*, i8** %351, align 8
  %353 = icmp ne i8* %352, null
  br i1 %353, label %354, label %358

354:                                              ; preds = %349, %344
  %355 = load i32, i32* @stm32_spi_can_dma, align 4
  %356 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %357 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %356, i32 0, i32 6
  store i32 %355, i32* %357, align 4
  br label %358

358:                                              ; preds = %354, %349
  %359 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %360 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %359, i32 0, i32 0
  %361 = call i32 @pm_runtime_set_active(%struct.TYPE_21__* %360)
  %362 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %363 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %362, i32 0, i32 0
  %364 = call i32 @pm_runtime_enable(%struct.TYPE_21__* %363)
  %365 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %366 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %365, i32 0, i32 0
  %367 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %368 = call i32 @devm_spi_register_master(%struct.TYPE_21__* %366, %struct.spi_master* %367)
  store i32 %368, i32* %8, align 4
  %369 = load i32, i32* %8, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %376

371:                                              ; preds = %358
  %372 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %373 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %372, i32 0, i32 0
  %374 = load i32, i32* %8, align 4
  %375 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %373, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %374)
  br label %450

376:                                              ; preds = %358
  %377 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %378 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %377, i32 0, i32 4
  %379 = load i32*, i32** %378, align 8
  %380 = icmp ne i32* %379, null
  br i1 %380, label %387, label %381

381:                                              ; preds = %376
  %382 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %383 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %382, i32 0, i32 0
  %384 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %383, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %385 = load i32, i32* @EINVAL, align 4
  %386 = sub nsw i32 0, %385
  store i32 %386, i32* %8, align 4
  br label %450

387:                                              ; preds = %376
  store i32 0, i32* %7, align 4
  br label %388

388:                                              ; preds = %443, %387
  %389 = load i32, i32* %7, align 4
  %390 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %391 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %390, i32 0, i32 5
  %392 = load i32, i32* %391, align 8
  %393 = icmp slt i32 %389, %392
  br i1 %393, label %394, label %446

394:                                              ; preds = %388
  %395 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %396 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %395, i32 0, i32 4
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %7, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = call i32 @gpio_is_valid(i32 %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %417, label %404

404:                                              ; preds = %394
  %405 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %406 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %405, i32 0, i32 0
  %407 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %408 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %407, i32 0, i32 4
  %409 = load i32*, i32** %408, align 8
  %410 = load i32, i32* %7, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %406, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %413)
  %415 = load i32, i32* @EINVAL, align 4
  %416 = sub nsw i32 0, %415
  store i32 %416, i32* %8, align 4
  br label %450

417:                                              ; preds = %394
  %418 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %419 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %418, i32 0, i32 0
  %420 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %421 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %420, i32 0, i32 4
  %422 = load i32*, i32** %421, align 8
  %423 = load i32, i32* %7, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %422, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* @DRIVER_NAME, align 4
  %428 = call i32 @devm_gpio_request(%struct.TYPE_21__* %419, i32 %426, i32 %427)
  store i32 %428, i32* %8, align 4
  %429 = load i32, i32* %8, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %442

431:                                              ; preds = %417
  %432 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %433 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %432, i32 0, i32 0
  %434 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %435 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %434, i32 0, i32 4
  %436 = load i32*, i32** %435, align 8
  %437 = load i32, i32* %7, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %433, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %440)
  br label %450

442:                                              ; preds = %417
  br label %443

443:                                              ; preds = %442
  %444 = load i32, i32* %7, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %7, align 4
  br label %388

446:                                              ; preds = %388
  %447 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %448 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %447, i32 0, i32 0
  %449 = call i32 @dev_info(%struct.TYPE_21__* %448, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %483

450:                                              ; preds = %431, %404, %381, %371
  %451 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %452 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %451, i32 0, i32 4
  %453 = load i8*, i8** %452, align 8
  %454 = icmp ne i8* %453, null
  br i1 %454, label %455, label %460

455:                                              ; preds = %450
  %456 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %457 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %456, i32 0, i32 4
  %458 = load i8*, i8** %457, align 8
  %459 = call i32 @dma_release_channel(i8* %458)
  br label %460

460:                                              ; preds = %455, %450
  %461 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %462 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %461, i32 0, i32 3
  %463 = load i8*, i8** %462, align 8
  %464 = icmp ne i8* %463, null
  br i1 %464, label %465, label %470

465:                                              ; preds = %460
  %466 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %467 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %466, i32 0, i32 3
  %468 = load i8*, i8** %467, align 8
  %469 = call i32 @dma_release_channel(i8* %468)
  br label %470

470:                                              ; preds = %465, %460
  %471 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %472 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %471, i32 0, i32 0
  %473 = call i32 @pm_runtime_disable(%struct.TYPE_21__* %472)
  br label %474

474:                                              ; preds = %470, %228, %172
  %475 = load %struct.stm32_spi*, %struct.stm32_spi** %5, align 8
  %476 = getelementptr inbounds %struct.stm32_spi, %struct.stm32_spi* %475, i32 0, i32 2
  %477 = load i32, i32* %476, align 8
  %478 = call i32 @clk_disable_unprepare(i32 %477)
  br label %479

479:                                              ; preds = %474, %156, %140, %121, %96, %64
  %480 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %481 = call i32 @spi_master_put(%struct.spi_master* %480)
  %482 = load i32, i32* %8, align 4
  store i32 %482, i32* %2, align 4
  br label %483

483:                                              ; preds = %479, %446, %14
  %484 = load i32, i32* %2, align 4
  ret i32 %484
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_21__*, i8*, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local %struct.stm32_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.TYPE_22__* @of_match_device(i32, %struct.TYPE_21__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_21__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_21__*, i32, i32, i32, i32, i32, %struct.spi_master*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @devm_reset_control_get_exclusive(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i8* @dma_request_slave_channel(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_21__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_21__*) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_21__*, %struct.spi_master*) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @dma_release_channel(i8*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_21__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
