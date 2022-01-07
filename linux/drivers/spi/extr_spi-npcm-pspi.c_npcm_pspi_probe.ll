; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-pspi.c_npcm_pspi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-pspi.c_npcm_pspi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.npcm_pspi = type { i32, i32, i32, i32, i32, i32, %struct.spi_master* }
%struct.spi_master = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, i8*, i8* }
%struct.TYPE_9__ = type { %struct.device_node* }

@.str = private unnamed_addr constant [9 x i8] c"cs-gpios\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"nuvoton,npcm750-rst\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to find nuvoton,npcm750-rst\0A\00", align 1
@npcm_pspi_handler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"npcm-pspi\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@NPCM_PSPI_MIN_CLK_DIVIDER = common dso_local global i32 0, align 4
@NPCM_PSPI_MAX_CLK_DIVIDER = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@npcm_pspi_transfer_one = common dso_local global i32 0, align 4
@npcm_pspi_prepare_transfer_hardware = common dso_local global i32 0, align 4
@npcm_pspi_unprepare_transfer_hardware = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"failed to get csgpio#%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"csgpio#%u = %d\0A\00", align 1
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"failed to configure csgpio#%u %d\0A\00", align 1
@NPCM_PSPI_DEFAULT_CLK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"NPCM Peripheral SPI %d probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @npcm_pspi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm_pspi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.npcm_pspi*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %7, align 8
  %17 = load %struct.device_node*, %struct.device_node** %7, align 8
  %18 = call i32 @of_gpio_named_count(%struct.device_node* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %2, align 4
  br label %256

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %7, align 8
  %25 = call i32 @of_alias_get_id(%struct.device_node* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %23
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 1
  %38 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_10__* %37, i32 32)
  store %struct.spi_master* %38, %struct.spi_master** %5, align 8
  %39 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %40 = icmp ne %struct.spi_master* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %256

44:                                               ; preds = %35
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %47 = call i32 @platform_set_drvdata(%struct.platform_device* %45, %struct.spi_master* %46)
  %48 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %49 = call %struct.npcm_pspi* @spi_master_get_devdata(%struct.spi_master* %48)
  store %struct.npcm_pspi* %49, %struct.npcm_pspi** %4, align 8
  %50 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %51 = load %struct.npcm_pspi*, %struct.npcm_pspi** %4, align 8
  %52 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %51, i32 0, i32 6
  store %struct.spi_master* %50, %struct.spi_master** %52, align 8
  %53 = load %struct.npcm_pspi*, %struct.npcm_pspi** %4, align 8
  %54 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.npcm_pspi*, %struct.npcm_pspi** %4, align 8
  %59 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %60, i32 0)
  %62 = load %struct.npcm_pspi*, %struct.npcm_pspi** %4, align 8
  %63 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.npcm_pspi*, %struct.npcm_pspi** %4, align 8
  %65 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @IS_ERR(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %44
  %70 = load %struct.npcm_pspi*, %struct.npcm_pspi** %4, align 8
  %71 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @PTR_ERR(i32 %72)
  store i32 %73, i32* %12, align 4
  br label %252

74:                                               ; preds = %44
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 1
  %77 = call i32 @devm_clk_get(%struct.TYPE_10__* %76, i32* null)
  %78 = load %struct.npcm_pspi*, %struct.npcm_pspi** %4, align 8
  %79 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.npcm_pspi*, %struct.npcm_pspi** %4, align 8
  %81 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @IS_ERR(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %74
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 1
  %88 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.npcm_pspi*, %struct.npcm_pspi** %4, align 8
  %90 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @PTR_ERR(i32 %91)
  store i32 %92, i32* %12, align 4
  br label %252

93:                                               ; preds = %74
  %94 = load %struct.npcm_pspi*, %struct.npcm_pspi** %4, align 8
  %95 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @clk_prepare_enable(i32 %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %252

101:                                              ; preds = %93
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = call i32 @platform_get_irq(%struct.platform_device* %102, i32 0)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %12, align 4
  br label %247

108:                                              ; preds = %101
  %109 = call i32 @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %110 = load %struct.npcm_pspi*, %struct.npcm_pspi** %4, align 8
  %111 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.npcm_pspi*, %struct.npcm_pspi** %4, align 8
  %113 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @IS_ERR(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %108
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 1
  %120 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %119, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %121 = load %struct.npcm_pspi*, %struct.npcm_pspi** %4, align 8
  %122 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @PTR_ERR(i32 %123)
  store i32 %124, i32* %2, align 4
  br label %256

125:                                              ; preds = %108
  %126 = load %struct.npcm_pspi*, %struct.npcm_pspi** %4, align 8
  %127 = call i32 @npcm_pspi_reset_hw(%struct.npcm_pspi* %126)
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 1
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @npcm_pspi_handler, align 4
  %132 = load %struct.npcm_pspi*, %struct.npcm_pspi** %4, align 8
  %133 = call i32 @devm_request_irq(%struct.TYPE_10__* %129, i32 %130, i32 %131, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.npcm_pspi* %132)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %125
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 1
  %139 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %138, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %247

140:                                              ; preds = %125
  %141 = load %struct.npcm_pspi*, %struct.npcm_pspi** %4, align 8
  %142 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %141, i32 0, i32 2
  %143 = call i32 @init_completion(i32* %142)
  %144 = load %struct.npcm_pspi*, %struct.npcm_pspi** %4, align 8
  %145 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @clk_get_rate(i32 %146)
  store i64 %147, i64* %6, align 8
  %148 = load i64, i64* %6, align 8
  %149 = load i32, i32* @NPCM_PSPI_MIN_CLK_DIVIDER, align 4
  %150 = call i8* @DIV_ROUND_UP(i64 %148, i32 %149)
  %151 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %152 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %151, i32 0, i32 9
  store i8* %150, i8** %152, align 8
  %153 = load i64, i64* %6, align 8
  %154 = load i32, i32* @NPCM_PSPI_MAX_CLK_DIVIDER, align 4
  %155 = call i8* @DIV_ROUND_UP(i64 %153, i32 %154)
  %156 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %157 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %156, i32 0, i32 8
  store i8* %155, i8** %157, align 8
  %158 = load i32, i32* @SPI_CPHA, align 4
  %159 = load i32, i32* @SPI_CPOL, align 4
  %160 = or i32 %158, %159
  %161 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %162 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load %struct.device_node*, %struct.device_node** %165, align 8
  %167 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %168 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %167, i32 0, i32 7
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  store %struct.device_node* %166, %struct.device_node** %169, align 8
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %174 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %173, i32 0, i32 6
  store i32 %172, i32* %174, align 8
  %175 = call i32 @SPI_BPW_MASK(i32 8)
  %176 = call i32 @SPI_BPW_MASK(i32 16)
  %177 = or i32 %175, %176
  %178 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %179 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* @npcm_pspi_transfer_one, align 4
  %181 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %182 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %181, i32 0, i32 5
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* @npcm_pspi_prepare_transfer_hardware, align 4
  %184 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %185 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 8
  %186 = load i32, i32* @npcm_pspi_unprepare_transfer_hardware, align 4
  %187 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %188 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* %8, align 4
  %190 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %191 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  store i32 0, i32* %9, align 4
  br label %192

192:                                              ; preds = %228, %140
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %231

196:                                              ; preds = %192
  %197 = load %struct.device_node*, %struct.device_node** %7, align 8
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @of_get_named_gpio(%struct.device_node* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %198)
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* %10, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %196
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 1
  %205 = load i32, i32* %9, align 4
  %206 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %204, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %205)
  br label %247

207:                                              ; preds = %196
  %208 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %209 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %208, i32 0, i32 1
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* %10, align 4
  %212 = call i32 @dev_dbg(%struct.TYPE_10__* %209, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %210, i32 %211)
  %213 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %214 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %213, i32 0, i32 1
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %217 = load i32, i32* @DRIVER_NAME, align 4
  %218 = call i32 @devm_gpio_request_one(%struct.TYPE_10__* %214, i32 %215, i32 %216, i32 %217)
  store i32 %218, i32* %12, align 4
  %219 = load i32, i32* %12, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %207
  %222 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %223 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %222, i32 0, i32 1
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* %10, align 4
  %226 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %223, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %224, i32 %225)
  br label %247

227:                                              ; preds = %207
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %9, align 4
  br label %192

231:                                              ; preds = %192
  %232 = load %struct.npcm_pspi*, %struct.npcm_pspi** %4, align 8
  %233 = load i32, i32* @NPCM_PSPI_DEFAULT_CLK, align 4
  %234 = call i32 @npcm_pspi_set_baudrate(%struct.npcm_pspi* %232, i32 %233)
  %235 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %236 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %235, i32 0, i32 1
  %237 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %238 = call i32 @devm_spi_register_master(%struct.TYPE_10__* %236, %struct.spi_master* %237)
  store i32 %238, i32* %12, align 4
  %239 = load i32, i32* %12, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %231
  br label %247

242:                                              ; preds = %231
  %243 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %244 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %245)
  store i32 0, i32* %2, align 4
  br label %256

247:                                              ; preds = %241, %221, %202, %136, %106
  %248 = load %struct.npcm_pspi*, %struct.npcm_pspi** %4, align 8
  %249 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @clk_disable_unprepare(i32 %250)
  br label %252

252:                                              ; preds = %247, %100, %85, %69
  %253 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %254 = call i32 @spi_master_put(%struct.spi_master* %253)
  %255 = load i32, i32* %12, align 4
  store i32 %255, i32* %2, align 4
  br label %256

256:                                              ; preds = %252, %242, %117, %41, %21
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local i32 @of_gpio_named_count(%struct.device_node*, i8*) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local %struct.npcm_pspi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i32 @npcm_pspi_reset_hw(%struct.npcm_pspi*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_10__*, i32, i32, i32, i8*, %struct.npcm_pspi*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i8* @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*, i32, i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @npcm_pspi_set_baudrate(%struct.npcm_pspi*, i32) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_10__*, %struct.spi_master*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
