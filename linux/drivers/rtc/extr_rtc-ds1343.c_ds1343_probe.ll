; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32, i32, i32 }
%struct.spi_device = type { i32, i32, i32, i32 }
%struct.ds1343_priv = type { i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32, %struct.spi_device* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.nvmem_config = type { i8*, i32, i32, %struct.ds1343_priv*, i32, i32, i32 }

@__const.ds1343_probe.config = private unnamed_addr constant %struct.regmap_config { i32 8, i32 8, i32 128 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"ds1343-\00", align 1
@ds1343_nvram_write = common dso_local global i32 0, align 4
@ds1343_nvram_read = common dso_local global i32 0, align 4
@DS1343_NVRAM_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPI_MODE_3 = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"spi regmap init failed for rtc ds1343\0A\00", align 1
@DS1343_SECONDS_REG = common dso_local global i32 0, align 4
@DS1343_CONTROL_REG = common dso_local global i32 0, align 4
@DS1343_INTCN = common dso_local global i32 0, align 4
@DS1343_EOSC = common dso_local global i32 0, align 4
@DS1343_A1IE = common dso_local global i32 0, align 4
@DS1343_A0IE = common dso_local global i32 0, align 4
@DS1343_STATUS_REG = common dso_local global i32 0, align 4
@DS1343_OSF = common dso_local global i32 0, align 4
@DS1343_IRQF1 = common dso_local global i32 0, align 4
@DS1343_IRQF0 = common dso_local global i32 0, align 4
@ds1343_rtc_ops = common dso_local global i32 0, align 4
@ds1343_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ds1343\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"unable to request irq for rtc ds1343\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"unable to create sysfs entries for rtc ds1343\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ds1343_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1343_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ds1343_priv*, align 8
  %5 = alloca %struct.regmap_config, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvmem_config, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = bitcast %struct.regmap_config* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.regmap_config* @__const.ds1343_probe.config to i8*), i64 12, i1 false)
  %10 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 1
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 2
  store i32 1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 3
  store %struct.ds1343_priv* null, %struct.ds1343_priv** %13, align 8
  %14 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 4
  %15 = load i32, i32* @ds1343_nvram_write, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 5
  %17 = load i32, i32* @ds1343_nvram_read, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 6
  %19 = load i32, i32* @DS1343_NVRAM_LEN, align 4
  store i32 %19, i32* %18, align 8
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 3
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ds1343_priv* @devm_kzalloc(i32* %21, i32 40, i32 %22)
  store %struct.ds1343_priv* %23, %struct.ds1343_priv** %4, align 8
  %24 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %25 = icmp ne %struct.ds1343_priv* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %210

29:                                               ; preds = %1
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %32 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %31, i32 0, i32 4
  store %struct.spi_device* %30, %struct.spi_device** %32, align 8
  %33 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %34 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %33, i32 0, i32 3
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load i32, i32* @SPI_MODE_3, align 4
  %37 = load i32, i32* @SPI_CS_HIGH, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 1
  store i32 8, i32* %42, align 4
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = call i32 @spi_setup(%struct.spi_device* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %29
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %210

49:                                               ; preds = %29
  %50 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %51 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %52 = call i32 @spi_set_drvdata(%struct.spi_device* %50, %struct.ds1343_priv* %51)
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = call %struct.TYPE_9__* @devm_regmap_init_spi(%struct.spi_device* %53, %struct.regmap_config* %5)
  %55 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %56 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %55, i32 0, i32 2
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %56, align 8
  %57 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %58 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %57, i32 0, i32 2
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = call i64 @IS_ERR(%struct.TYPE_9__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %49
  %63 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 3
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %67 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %66, i32 0, i32 2
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = call i32 @PTR_ERR(%struct.TYPE_9__* %68)
  store i32 %69, i32* %2, align 4
  br label %210

70:                                               ; preds = %49
  %71 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %72 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %71, i32 0, i32 2
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = load i32, i32* @DS1343_SECONDS_REG, align 4
  %75 = call i32 @regmap_read(%struct.TYPE_9__* %73, i32 %74, i32* %6)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  br label %210

80:                                               ; preds = %70
  %81 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %82 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %81, i32 0, i32 2
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = load i32, i32* @DS1343_CONTROL_REG, align 4
  %85 = call i32 @regmap_read(%struct.TYPE_9__* %83, i32 %84, i32* %6)
  %86 = load i32, i32* @DS1343_INTCN, align 4
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* @DS1343_EOSC, align 4
  %90 = load i32, i32* @DS1343_A1IE, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @DS1343_A0IE, align 4
  %93 = or i32 %91, %92
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %6, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %6, align 4
  %97 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %98 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %97, i32 0, i32 2
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = load i32, i32* @DS1343_CONTROL_REG, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @regmap_write(%struct.TYPE_9__* %99, i32 %100, i32 %101)
  %103 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %104 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %103, i32 0, i32 2
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = load i32, i32* @DS1343_STATUS_REG, align 4
  %107 = call i32 @regmap_read(%struct.TYPE_9__* %105, i32 %106, i32* %6)
  %108 = load i32, i32* @DS1343_OSF, align 4
  %109 = load i32, i32* @DS1343_IRQF1, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @DS1343_IRQF0, align 4
  %112 = or i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %6, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %6, align 4
  %116 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %117 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %116, i32 0, i32 2
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = load i32, i32* @DS1343_STATUS_REG, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @regmap_write(%struct.TYPE_9__* %118, i32 %119, i32 %120)
  %122 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %123 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %122, i32 0, i32 3
  %124 = call %struct.TYPE_9__* @devm_rtc_allocate_device(i32* %123)
  %125 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %126 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %125, i32 0, i32 1
  store %struct.TYPE_9__* %124, %struct.TYPE_9__** %126, align 8
  %127 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %128 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %127, i32 0, i32 1
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = call i64 @IS_ERR(%struct.TYPE_9__* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %80
  %133 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %134 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %133, i32 0, i32 1
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = call i32 @PTR_ERR(%struct.TYPE_9__* %135)
  store i32 %136, i32* %2, align 4
  br label %210

137:                                              ; preds = %80
  %138 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %139 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %138, i32 0, i32 1
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  %142 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %143 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %142, i32 0, i32 1
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  store i32* @ds1343_rtc_ops, i32** %145, align 8
  %146 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %147 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %146, i32 0, i32 1
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = call i32 @rtc_register_device(%struct.TYPE_9__* %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %137
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %2, align 4
  br label %210

154:                                              ; preds = %137
  %155 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %156 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 3
  store %struct.ds1343_priv* %155, %struct.ds1343_priv** %156, align 8
  %157 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %158 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %157, i32 0, i32 1
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = call i32 @rtc_nvmem_register(%struct.TYPE_9__* %159, %struct.nvmem_config* %8)
  %161 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %162 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %165 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %167 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %199

170:                                              ; preds = %154
  %171 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %172 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %171, i32 0, i32 3
  %173 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %174 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @ds1343_thread, align 4
  %177 = load i32, i32* @IRQF_ONESHOT, align 4
  %178 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %179 = call i32 @devm_request_threaded_irq(i32* %172, i32 %175, i32* null, i32 %176, i32 %177, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.ds1343_priv* %178)
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %170
  %183 = load %struct.ds1343_priv*, %struct.ds1343_priv** %4, align 8
  %184 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %183, i32 0, i32 0
  store i32 -1, i32* %184, align 8
  %185 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %186 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %185, i32 0, i32 3
  %187 = call i32 @dev_err(i32* %186, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %198

188:                                              ; preds = %170
  %189 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %190 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %189, i32 0, i32 3
  %191 = call i32 @device_init_wakeup(i32* %190, i32 1)
  %192 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %193 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %192, i32 0, i32 3
  %194 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %195 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @dev_pm_set_wake_irq(i32* %193, i32 %196)
  br label %198

198:                                              ; preds = %188, %182
  br label %199

199:                                              ; preds = %198, %154
  %200 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %201 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %200, i32 0, i32 3
  %202 = call i32 @ds1343_sysfs_register(i32* %201)
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %199
  %206 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %207 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %206, i32 0, i32 3
  %208 = call i32 @dev_err(i32* %207, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %209

209:                                              ; preds = %205, %199
  store i32 0, i32* %2, align 4
  br label %210

210:                                              ; preds = %209, %152, %132, %78, %62, %47, %26
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.ds1343_priv* @devm_kzalloc(i32*, i32, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @spi_setup(%struct.spi_device*) #2

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.ds1343_priv*) #2

declare dso_local %struct.TYPE_9__* @devm_regmap_init_spi(%struct.spi_device*, %struct.regmap_config*) #2

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #2

declare dso_local i32 @regmap_read(%struct.TYPE_9__*, i32, i32*) #2

declare dso_local i32 @regmap_write(%struct.TYPE_9__*, i32, i32) #2

declare dso_local %struct.TYPE_9__* @devm_rtc_allocate_device(i32*) #2

declare dso_local i32 @rtc_register_device(%struct.TYPE_9__*) #2

declare dso_local i32 @rtc_nvmem_register(%struct.TYPE_9__*, %struct.nvmem_config*) #2

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.ds1343_priv*) #2

declare dso_local i32 @device_init_wakeup(i32*, i32) #2

declare dso_local i32 @dev_pm_set_wake_irq(i32*, i32) #2

declare dso_local i32 @ds1343_sysfs_register(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
