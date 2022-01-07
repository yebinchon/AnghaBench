; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1307.c_ds1307_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1307.c_ds1307_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chip_desc = type { i64, i8, i32, i64, i64, i64, i64 }
%struct.i2c_client = type { i32, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.i2c_device_id = type { i64 }
%struct.ds1307 = type { i32, %struct.TYPE_21__*, %struct.TYPE_22__*, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32* }
%struct.ds1307_platform_data = type { i32 }
%struct.acpi_device_id = type { i64 }
%struct.nvmem_config = type { i8*, i32, i32, %struct.ds1307*, i32, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"regmap allocation failed\0A\00", align 1
@chips = common dso_local global %struct.chip_desc* null, align 8
@ds1307_acpi_ids = common dso_local global i32 0, align 4
@DS13XX_TRICKLE_CHARGER_MAGIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"writing trickle charger info 0x%x to 0x%x\0A\00", align 1
@DS1337_REG_CONTROL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"read error %d\0A\00", align 1
@DS1337_BIT_nEOSC = common dso_local global i8 0, align 1
@DS1337_BIT_INTCN = common dso_local global i8 0, align 1
@DS1337_BIT_A2IE = common dso_local global i8 0, align 1
@DS1337_BIT_A1IE = common dso_local global i8 0, align 1
@DS1337_BIT_OSF = common dso_local global i8 0, align 1
@DS1337_REG_STATUS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"SET TIME!\0A\00", align 1
@RX8025_REG_CTRL1 = common dso_local global i32 0, align 4
@RX8025_BIT_XST = common dso_local global i8 0, align 1
@RX8025_REG_CTRL2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"oscillator stop detected - SET TIME!\0A\00", align 1
@RX8025_BIT_PON = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"power-on detected\0A\00", align 1
@RX8025_BIT_VDET = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"voltage drop detected\0A\00", align 1
@RX8025_BIT_2412 = common dso_local global i8 0, align 1
@DS1307_REG_HOUR = common dso_local global i64 0, align 8
@DS1307_BIT_PM = common dso_local global i8 0, align 1
@mcp794xx = common dso_local global i32 0, align 4
@DS1307_REG_WDAY = common dso_local global i64 0, align 8
@MCP794XX_BIT_VBATEN = common dso_local global i8 0, align 1
@DS1307_BIT_12HR = common dso_local global i32 0, align 4
@HAS_ALARM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [57 x i8] c"'wakeup-source' is set, request for an IRQ is disabled!\0A\00", align 1
@ds1307_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"unable to request IRQ!\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"got IRQ %d\0A\00", align 1
@ds13xx_rtc_ops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"ds1307_nvram\00", align 1
@ds1307_nvram_write = common dso_local global i32 0, align 4
@ds1307_nvram_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ds1307_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1307_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ds1307*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.chip_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [8 x i8], align 1
  %13 = alloca %struct.ds1307_platform_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.acpi_device_id*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.nvmem_config, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = call %struct.ds1307_platform_data* @dev_get_platdata(%struct.TYPE_22__* %21)
  store %struct.ds1307_platform_data* %22, %struct.ds1307_platform_data** %13, align 8
  store i32 0, i32* %14, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.ds1307* @devm_kzalloc(%struct.TYPE_22__* %24, i32 40, i32 %25)
  store %struct.ds1307* %26, %struct.ds1307** %6, align 8
  %27 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %28 = icmp ne %struct.ds1307* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %726

32:                                               ; preds = %2
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %36 = call i32 @dev_set_drvdata(%struct.TYPE_22__* %34, %struct.ds1307* %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 1
  %39 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %40 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %39, i32 0, i32 2
  store %struct.TYPE_22__* %38, %struct.TYPE_22__** %40, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %45 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = call %struct.TYPE_21__* @devm_regmap_init_i2c(%struct.i2c_client* %46, i32* @regmap_config)
  %48 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %49 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %48, i32 0, i32 5
  store %struct.TYPE_21__* %47, %struct.TYPE_21__** %49, align 8
  %50 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %51 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %50, i32 0, i32 5
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %51, align 8
  %53 = call i64 @IS_ERR(%struct.TYPE_21__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %32
  %56 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %57 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %56, i32 0, i32 2
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %57, align 8
  %59 = call i32 @dev_err(%struct.TYPE_22__* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %61 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %60, i32 0, i32 5
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  %63 = call i32 @PTR_ERR(%struct.TYPE_21__* %62)
  store i32 %63, i32* %3, align 4
  br label %726

64:                                               ; preds = %32
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %67 = call i32 @i2c_set_clientdata(%struct.i2c_client* %65, %struct.ds1307* %66)
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %64
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 1
  %76 = call i64 @of_device_get_match_data(%struct.TYPE_22__* %75)
  %77 = trunc i64 %76 to i32
  %78 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %79 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.chip_desc*, %struct.chip_desc** @chips, align 8
  %81 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %82 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %80, i64 %84
  store %struct.chip_desc* %85, %struct.chip_desc** %9, align 8
  br label %126

86:                                               ; preds = %64
  %87 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %88 = icmp ne %struct.i2c_device_id* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load %struct.chip_desc*, %struct.chip_desc** @chips, align 8
  %91 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %92 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %90, i64 %93
  store %struct.chip_desc* %94, %struct.chip_desc** %9, align 8
  %95 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %96 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %100 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %125

101:                                              ; preds = %86
  %102 = load i32, i32* @ds1307_acpi_ids, align 4
  %103 = call i32 @ACPI_PTR(i32 %102)
  %104 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %105 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %104, i32 0, i32 2
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %105, align 8
  %107 = call %struct.acpi_device_id* @acpi_match_device(i32 %103, %struct.TYPE_22__* %106)
  store %struct.acpi_device_id* %107, %struct.acpi_device_id** %15, align 8
  %108 = load %struct.acpi_device_id*, %struct.acpi_device_id** %15, align 8
  %109 = icmp ne %struct.acpi_device_id* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %101
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %726

113:                                              ; preds = %101
  %114 = load %struct.chip_desc*, %struct.chip_desc** @chips, align 8
  %115 = load %struct.acpi_device_id*, %struct.acpi_device_id** %15, align 8
  %116 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %114, i64 %117
  store %struct.chip_desc* %118, %struct.chip_desc** %9, align 8
  %119 = load %struct.acpi_device_id*, %struct.acpi_device_id** %15, align 8
  %120 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %124 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %113, %89
  br label %126

126:                                              ; preds = %125, %73
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.chip_desc*, %struct.chip_desc** %9, align 8
  %133 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %132, i32 0, i32 6
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br label %136

136:                                              ; preds = %131, %126
  %137 = phi i1 [ false, %126 ], [ %135, %131 ]
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %10, align 4
  %139 = load %struct.ds1307_platform_data*, %struct.ds1307_platform_data** %13, align 8
  %140 = icmp ne %struct.ds1307_platform_data* %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %143 = load %struct.chip_desc*, %struct.chip_desc** %9, align 8
  %144 = call i32 @ds1307_trickle_init(%struct.ds1307* %142, %struct.chip_desc* %143)
  store i32 %144, i32* %14, align 4
  br label %155

145:                                              ; preds = %136
  %146 = load %struct.ds1307_platform_data*, %struct.ds1307_platform_data** %13, align 8
  %147 = getelementptr inbounds %struct.ds1307_platform_data, %struct.ds1307_platform_data* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load %struct.ds1307_platform_data*, %struct.ds1307_platform_data** %13, align 8
  %152 = getelementptr inbounds %struct.ds1307_platform_data, %struct.ds1307_platform_data* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %14, align 4
  br label %154

154:                                              ; preds = %150, %145
  br label %155

155:                                              ; preds = %154, %141
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %184

158:                                              ; preds = %155
  %159 = load %struct.chip_desc*, %struct.chip_desc** %9, align 8
  %160 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %184

163:                                              ; preds = %158
  %164 = load i32, i32* @DS13XX_TRICKLE_CHARGER_MAGIC, align 4
  %165 = load i32, i32* %14, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %14, align 4
  %167 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %168 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %167, i32 0, i32 2
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %168, align 8
  %170 = load i32, i32* %14, align 4
  %171 = load %struct.chip_desc*, %struct.chip_desc** %9, align 8
  %172 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 (%struct.TYPE_22__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_22__* %169, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %170, i64 %173)
  %175 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %176 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %175, i32 0, i32 5
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %176, align 8
  %178 = load %struct.chip_desc*, %struct.chip_desc** %9, align 8
  %179 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* %14, align 4
  %182 = trunc i32 %181 to i8
  %183 = call i32 @regmap_write(%struct.TYPE_21__* %177, i64 %180, i8 zeroext %182)
  br label %184

184:                                              ; preds = %163, %158, %155
  %185 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %186 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  switch i32 %187, label %466 [
    i32 136, label %188
    i32 135, label %188
    i32 133, label %188
    i32 132, label %188
    i32 128, label %285
  ]

188:                                              ; preds = %184, %184, %184, %184
  %189 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %190 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %189, i32 0, i32 5
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %190, align 8
  %192 = load i64, i64* @DS1337_REG_CONTROL, align 8
  %193 = trunc i64 %192 to i32
  %194 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %195 = call i32 @regmap_bulk_read(%struct.TYPE_21__* %191, i32 %193, i8* %194, i32 2)
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* %7, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %188
  %199 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %200 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %199, i32 0, i32 2
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = call i32 (%struct.TYPE_22__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_22__* %201, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %202)
  br label %724

204:                                              ; preds = %188
  %205 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = load i8, i8* @DS1337_BIT_nEOSC, align 1
  %209 = zext i8 %208 to i32
  %210 = and i32 %207, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %204
  %213 = load i8, i8* @DS1337_BIT_nEOSC, align 1
  %214 = zext i8 %213 to i32
  %215 = xor i32 %214, -1
  %216 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = and i32 %218, %215
  %220 = trunc i32 %219 to i8
  store i8 %220, i8* %216, align 1
  br label %221

221:                                              ; preds = %212, %204
  %222 = load i32, i32* %10, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %221
  %225 = load i32, i32* %11, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %251

227:                                              ; preds = %224, %221
  %228 = load i8, i8* @DS1337_BIT_INTCN, align 1
  %229 = zext i8 %228 to i32
  %230 = load %struct.chip_desc*, %struct.chip_desc** %9, align 8
  %231 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %230, i32 0, i32 1
  %232 = load i8, i8* %231, align 8
  %233 = zext i8 %232 to i32
  %234 = or i32 %229, %233
  %235 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = or i32 %237, %234
  %239 = trunc i32 %238 to i8
  store i8 %239, i8* %235, align 1
  %240 = load i8, i8* @DS1337_BIT_A2IE, align 1
  %241 = zext i8 %240 to i32
  %242 = load i8, i8* @DS1337_BIT_A1IE, align 1
  %243 = zext i8 %242 to i32
  %244 = or i32 %241, %243
  %245 = xor i32 %244, -1
  %246 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = and i32 %248, %245
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %246, align 1
  br label %251

251:                                              ; preds = %227, %224
  %252 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %253 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %252, i32 0, i32 5
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %253, align 8
  %255 = load i64, i64* @DS1337_REG_CONTROL, align 8
  %256 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %257 = load i8, i8* %256, align 1
  %258 = call i32 @regmap_write(%struct.TYPE_21__* %254, i64 %255, i8 zeroext %257)
  %259 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 1
  %260 = load i8, i8* %259, align 1
  %261 = zext i8 %260 to i32
  %262 = load i8, i8* @DS1337_BIT_OSF, align 1
  %263 = zext i8 %262 to i32
  %264 = and i32 %261, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %284

266:                                              ; preds = %251
  %267 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %268 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %267, i32 0, i32 5
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %268, align 8
  %270 = load i64, i64* @DS1337_REG_STATUS, align 8
  %271 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 1
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  %274 = load i8, i8* @DS1337_BIT_OSF, align 1
  %275 = zext i8 %274 to i32
  %276 = xor i32 %275, -1
  %277 = and i32 %273, %276
  %278 = trunc i32 %277 to i8
  %279 = call i32 @regmap_write(%struct.TYPE_21__* %269, i64 %270, i8 zeroext %278)
  %280 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %281 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %280, i32 0, i32 2
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %281, align 8
  %283 = call i32 @dev_warn(%struct.TYPE_22__* %282, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %284

284:                                              ; preds = %266, %251
  br label %467

285:                                              ; preds = %184
  %286 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %287 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %286, i32 0, i32 5
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %287, align 8
  %289 = load i32, i32* @RX8025_REG_CTRL1, align 4
  %290 = shl i32 %289, 4
  %291 = or i32 %290, 8
  %292 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %293 = call i32 @regmap_bulk_read(%struct.TYPE_21__* %288, i32 %291, i8* %292, i32 2)
  store i32 %293, i32* %7, align 4
  %294 = load i32, i32* %7, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %285
  %297 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %298 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %297, i32 0, i32 2
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %298, align 8
  %300 = load i32, i32* %7, align 4
  %301 = call i32 (%struct.TYPE_22__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_22__* %299, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %300)
  br label %724

302:                                              ; preds = %285
  %303 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 1
  %304 = load i8, i8* %303, align 1
  %305 = zext i8 %304 to i32
  %306 = load i8, i8* @RX8025_BIT_XST, align 1
  %307 = zext i8 %306 to i32
  %308 = and i32 %305, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %332, label %310

310:                                              ; preds = %302
  %311 = load i8, i8* @RX8025_BIT_XST, align 1
  %312 = zext i8 %311 to i32
  %313 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 1
  %314 = load i8, i8* %313, align 1
  %315 = zext i8 %314 to i32
  %316 = or i32 %315, %312
  %317 = trunc i32 %316 to i8
  store i8 %317, i8* %313, align 1
  %318 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %319 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %318, i32 0, i32 5
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %319, align 8
  %321 = load i32, i32* @RX8025_REG_CTRL2, align 4
  %322 = shl i32 %321, 4
  %323 = or i32 %322, 8
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 1
  %326 = load i8, i8* %325, align 1
  %327 = call i32 @regmap_write(%struct.TYPE_21__* %320, i64 %324, i8 zeroext %326)
  %328 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %329 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %328, i32 0, i32 2
  %330 = load %struct.TYPE_22__*, %struct.TYPE_22__** %329, align 8
  %331 = call i32 @dev_warn(%struct.TYPE_22__* %330, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %332

332:                                              ; preds = %310, %302
  %333 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 1
  %334 = load i8, i8* %333, align 1
  %335 = zext i8 %334 to i32
  %336 = load i8, i8* @RX8025_BIT_PON, align 1
  %337 = zext i8 %336 to i32
  %338 = and i32 %335, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %363

340:                                              ; preds = %332
  %341 = load i8, i8* @RX8025_BIT_PON, align 1
  %342 = zext i8 %341 to i32
  %343 = xor i32 %342, -1
  %344 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 1
  %345 = load i8, i8* %344, align 1
  %346 = zext i8 %345 to i32
  %347 = and i32 %346, %343
  %348 = trunc i32 %347 to i8
  store i8 %348, i8* %344, align 1
  %349 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %350 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %349, i32 0, i32 5
  %351 = load %struct.TYPE_21__*, %struct.TYPE_21__** %350, align 8
  %352 = load i32, i32* @RX8025_REG_CTRL2, align 4
  %353 = shl i32 %352, 4
  %354 = or i32 %353, 8
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 1
  %357 = load i8, i8* %356, align 1
  %358 = call i32 @regmap_write(%struct.TYPE_21__* %351, i64 %355, i8 zeroext %357)
  %359 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %360 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %359, i32 0, i32 2
  %361 = load %struct.TYPE_22__*, %struct.TYPE_22__** %360, align 8
  %362 = call i32 @dev_warn(%struct.TYPE_22__* %361, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %363

363:                                              ; preds = %340, %332
  %364 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 1
  %365 = load i8, i8* %364, align 1
  %366 = zext i8 %365 to i32
  %367 = load i8, i8* @RX8025_BIT_VDET, align 1
  %368 = zext i8 %367 to i32
  %369 = and i32 %366, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %394

371:                                              ; preds = %363
  %372 = load i8, i8* @RX8025_BIT_VDET, align 1
  %373 = zext i8 %372 to i32
  %374 = xor i32 %373, -1
  %375 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 1
  %376 = load i8, i8* %375, align 1
  %377 = zext i8 %376 to i32
  %378 = and i32 %377, %374
  %379 = trunc i32 %378 to i8
  store i8 %379, i8* %375, align 1
  %380 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %381 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %380, i32 0, i32 5
  %382 = load %struct.TYPE_21__*, %struct.TYPE_21__** %381, align 8
  %383 = load i32, i32* @RX8025_REG_CTRL2, align 4
  %384 = shl i32 %383, 4
  %385 = or i32 %384, 8
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 1
  %388 = load i8, i8* %387, align 1
  %389 = call i32 @regmap_write(%struct.TYPE_21__* %382, i64 %386, i8 zeroext %388)
  %390 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %391 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %390, i32 0, i32 2
  %392 = load %struct.TYPE_22__*, %struct.TYPE_22__** %391, align 8
  %393 = call i32 @dev_warn(%struct.TYPE_22__* %392, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %394

394:                                              ; preds = %371, %363
  %395 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %396 = load i8, i8* %395, align 1
  %397 = zext i8 %396 to i32
  %398 = load i8, i8* @RX8025_BIT_2412, align 1
  %399 = zext i8 %398 to i32
  %400 = and i32 %397, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %465, label %402

402:                                              ; preds = %394
  %403 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %404 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %403, i32 0, i32 5
  %405 = load %struct.TYPE_21__*, %struct.TYPE_21__** %404, align 8
  %406 = load i32, i32* @RX8025_REG_CTRL1, align 4
  %407 = shl i32 %406, 4
  %408 = or i32 %407, 8
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %411 = load i8, i8* %410, align 1
  %412 = zext i8 %411 to i32
  %413 = load i8, i8* @RX8025_BIT_2412, align 1
  %414 = zext i8 %413 to i32
  %415 = or i32 %412, %414
  %416 = trunc i32 %415 to i8
  %417 = call i32 @regmap_write(%struct.TYPE_21__* %405, i64 %409, i8 zeroext %416)
  %418 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %419 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %418, i32 0, i32 5
  %420 = load %struct.TYPE_21__*, %struct.TYPE_21__** %419, align 8
  %421 = load i32, i32* @RX8025_REG_CTRL1, align 4
  %422 = shl i32 %421, 4
  %423 = or i32 %422, 8
  %424 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %425 = call i32 @regmap_bulk_read(%struct.TYPE_21__* %420, i32 %423, i8* %424, i32 2)
  store i32 %425, i32* %7, align 4
  %426 = load i32, i32* %7, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %434

428:                                              ; preds = %402
  %429 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %430 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %429, i32 0, i32 2
  %431 = load %struct.TYPE_22__*, %struct.TYPE_22__** %430, align 8
  %432 = load i32, i32* %7, align 4
  %433 = call i32 (%struct.TYPE_22__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_22__* %431, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %432)
  br label %724

434:                                              ; preds = %402
  %435 = load i64, i64* @DS1307_REG_HOUR, align 8
  %436 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 %435
  %437 = load i8, i8* %436, align 1
  %438 = zext i8 %437 to i32
  %439 = call i32 @bcd2bin(i32 %438)
  store i32 %439, i32* %16, align 4
  %440 = load i32, i32* %16, align 4
  %441 = icmp eq i32 %440, 12
  br i1 %441, label %442, label %443

442:                                              ; preds = %434
  store i32 0, i32* %16, align 4
  br label %443

443:                                              ; preds = %442, %434
  %444 = load i64, i64* @DS1307_REG_HOUR, align 8
  %445 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 %444
  %446 = load i8, i8* %445, align 1
  %447 = zext i8 %446 to i32
  %448 = load i8, i8* @DS1307_BIT_PM, align 1
  %449 = zext i8 %448 to i32
  %450 = and i32 %447, %449
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %455

452:                                              ; preds = %443
  %453 = load i32, i32* %16, align 4
  %454 = add nsw i32 %453, 12
  store i32 %454, i32* %16, align 4
  br label %455

455:                                              ; preds = %452, %443
  %456 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %457 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %456, i32 0, i32 5
  %458 = load %struct.TYPE_21__*, %struct.TYPE_21__** %457, align 8
  %459 = load i64, i64* @DS1307_REG_HOUR, align 8
  %460 = shl i64 %459, 4
  %461 = or i64 %460, 8
  %462 = load i32, i32* %16, align 4
  %463 = trunc i32 %462 to i8
  %464 = call i32 @regmap_write(%struct.TYPE_21__* %458, i64 %461, i8 zeroext %463)
  br label %465

465:                                              ; preds = %455, %394
  br label %467

466:                                              ; preds = %184
  br label %467

467:                                              ; preds = %466, %465, %284
  %468 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %469 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %468, i32 0, i32 5
  %470 = load %struct.TYPE_21__*, %struct.TYPE_21__** %469, align 8
  %471 = load %struct.chip_desc*, %struct.chip_desc** %9, align 8
  %472 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %471, i32 0, i32 2
  %473 = load i32, i32* %472, align 4
  %474 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %475 = call i32 @regmap_bulk_read(%struct.TYPE_21__* %470, i32 %473, i8* %474, i32 8)
  store i32 %475, i32* %7, align 4
  %476 = load i32, i32* %7, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %484

478:                                              ; preds = %467
  %479 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %480 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %479, i32 0, i32 2
  %481 = load %struct.TYPE_22__*, %struct.TYPE_22__** %480, align 8
  %482 = load i32, i32* %7, align 4
  %483 = call i32 (%struct.TYPE_22__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_22__* %481, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %482)
  br label %724

484:                                              ; preds = %467
  %485 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %486 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = load i32, i32* @mcp794xx, align 4
  %489 = icmp eq i32 %487, %488
  br i1 %489, label %490, label %513

490:                                              ; preds = %484
  %491 = load i64, i64* @DS1307_REG_WDAY, align 8
  %492 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 %491
  %493 = load i8, i8* %492, align 1
  %494 = zext i8 %493 to i32
  %495 = load i8, i8* @MCP794XX_BIT_VBATEN, align 1
  %496 = zext i8 %495 to i32
  %497 = and i32 %494, %496
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %513, label %499

499:                                              ; preds = %490
  %500 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %501 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %500, i32 0, i32 5
  %502 = load %struct.TYPE_21__*, %struct.TYPE_21__** %501, align 8
  %503 = load i64, i64* @DS1307_REG_WDAY, align 8
  %504 = load i64, i64* @DS1307_REG_WDAY, align 8
  %505 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 %504
  %506 = load i8, i8* %505, align 1
  %507 = zext i8 %506 to i32
  %508 = load i8, i8* @MCP794XX_BIT_VBATEN, align 1
  %509 = zext i8 %508 to i32
  %510 = or i32 %507, %509
  %511 = trunc i32 %510 to i8
  %512 = call i32 @regmap_write(%struct.TYPE_21__* %502, i64 %503, i8 zeroext %511)
  br label %513

513:                                              ; preds = %499, %490, %484
  %514 = load i64, i64* @DS1307_REG_HOUR, align 8
  %515 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 %514
  %516 = load i8, i8* %515, align 1
  %517 = zext i8 %516 to i32
  store i32 %517, i32* %8, align 4
  %518 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %519 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  switch i32 %520, label %523 [
    i32 134, label %521
    i32 131, label %521
    i32 130, label %521
    i32 129, label %521
    i32 128, label %522
  ]

521:                                              ; preds = %513, %513, %513, %513
  br label %561

522:                                              ; preds = %513
  br label %561

523:                                              ; preds = %513
  %524 = load i32, i32* %8, align 4
  %525 = load i32, i32* @DS1307_BIT_12HR, align 4
  %526 = and i32 %524, %525
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %529, label %528

528:                                              ; preds = %523
  br label %561

529:                                              ; preds = %523
  %530 = load i32, i32* %8, align 4
  %531 = and i32 %530, 31
  %532 = call i32 @bcd2bin(i32 %531)
  store i32 %532, i32* %8, align 4
  %533 = load i32, i32* %8, align 4
  %534 = icmp eq i32 %533, 12
  br i1 %534, label %535, label %536

535:                                              ; preds = %529
  store i32 0, i32* %8, align 4
  br label %536

536:                                              ; preds = %535, %529
  %537 = load i64, i64* @DS1307_REG_HOUR, align 8
  %538 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 %537
  %539 = load i8, i8* %538, align 1
  %540 = zext i8 %539 to i32
  %541 = load i8, i8* @DS1307_BIT_PM, align 1
  %542 = zext i8 %541 to i32
  %543 = and i32 %540, %542
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %548

545:                                              ; preds = %536
  %546 = load i32, i32* %8, align 4
  %547 = add nsw i32 %546, 12
  store i32 %547, i32* %8, align 4
  br label %548

548:                                              ; preds = %545, %536
  %549 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %550 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %549, i32 0, i32 5
  %551 = load %struct.TYPE_21__*, %struct.TYPE_21__** %550, align 8
  %552 = load %struct.chip_desc*, %struct.chip_desc** %9, align 8
  %553 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %552, i32 0, i32 2
  %554 = load i32, i32* %553, align 4
  %555 = sext i32 %554 to i64
  %556 = load i64, i64* @DS1307_REG_HOUR, align 8
  %557 = add i64 %555, %556
  %558 = load i32, i32* %8, align 4
  %559 = call zeroext i8 @bin2bcd(i32 %558)
  %560 = call i32 @regmap_write(%struct.TYPE_21__* %551, i64 %557, i8 zeroext %559)
  br label %561

561:                                              ; preds = %548, %528, %522, %521
  %562 = load i32, i32* %10, align 4
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %567, label %564

564:                                              ; preds = %561
  %565 = load i32, i32* %11, align 4
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %576

567:                                              ; preds = %564, %561
  %568 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %569 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %568, i32 0, i32 2
  %570 = load %struct.TYPE_22__*, %struct.TYPE_22__** %569, align 8
  %571 = call i32 @device_set_wakeup_capable(%struct.TYPE_22__* %570, i32 1)
  %572 = load i32, i32* @HAS_ALARM, align 4
  %573 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %574 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %573, i32 0, i32 3
  %575 = call i32 @set_bit(i32 %572, i32* %574)
  br label %576

576:                                              ; preds = %567, %564
  %577 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %578 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %577, i32 0, i32 2
  %579 = load %struct.TYPE_22__*, %struct.TYPE_22__** %578, align 8
  %580 = call %struct.TYPE_21__* @devm_rtc_allocate_device(%struct.TYPE_22__* %579)
  %581 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %582 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %581, i32 0, i32 1
  store %struct.TYPE_21__* %580, %struct.TYPE_21__** %582, align 8
  %583 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %584 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %583, i32 0, i32 1
  %585 = load %struct.TYPE_21__*, %struct.TYPE_21__** %584, align 8
  %586 = call i64 @IS_ERR(%struct.TYPE_21__* %585)
  %587 = icmp ne i64 %586, 0
  br i1 %587, label %588, label %593

588:                                              ; preds = %576
  %589 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %590 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %589, i32 0, i32 1
  %591 = load %struct.TYPE_21__*, %struct.TYPE_21__** %590, align 8
  %592 = call i32 @PTR_ERR(%struct.TYPE_21__* %591)
  store i32 %592, i32* %3, align 4
  br label %726

593:                                              ; preds = %576
  %594 = load i32, i32* %11, align 4
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %608

596:                                              ; preds = %593
  %597 = load i32, i32* %10, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %608, label %599

599:                                              ; preds = %596
  %600 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %601 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %600, i32 0, i32 2
  %602 = load %struct.TYPE_22__*, %struct.TYPE_22__** %601, align 8
  %603 = call i32 @dev_info(%struct.TYPE_22__* %602, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  %604 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %605 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %604, i32 0, i32 1
  %606 = load %struct.TYPE_21__*, %struct.TYPE_21__** %605, align 8
  %607 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %606, i32 0, i32 0
  store i32 1, i32* %607, align 8
  br label %608

608:                                              ; preds = %599, %596, %593
  %609 = load i32, i32* %10, align 4
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %663

611:                                              ; preds = %608
  %612 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %613 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %612, i32 0, i32 2
  %614 = load %struct.TYPE_22__*, %struct.TYPE_22__** %613, align 8
  %615 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %616 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %615, i32 0, i32 0
  %617 = load i32, i32* %616, align 8
  %618 = load %struct.chip_desc*, %struct.chip_desc** %9, align 8
  %619 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %618, i32 0, i32 5
  %620 = load i64, i64* %619, align 8
  %621 = icmp ne i64 %620, 0
  br i1 %621, label %622, label %623

622:                                              ; preds = %611
  br label %626

623:                                              ; preds = %611
  %624 = load i32, i32* @ds1307_irq, align 4
  %625 = sext i32 %624 to i64
  br label %626

626:                                              ; preds = %623, %622
  %627 = phi i64 [ %620, %622 ], [ %625, %623 ]
  %628 = trunc i64 %627 to i32
  %629 = load i32, i32* @IRQF_SHARED, align 4
  %630 = load i32, i32* @IRQF_ONESHOT, align 4
  %631 = or i32 %629, %630
  %632 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %633 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %632, i32 0, i32 4
  %634 = load i32, i32* %633, align 4
  %635 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %636 = call i32 @devm_request_threaded_irq(%struct.TYPE_22__* %614, i32 %617, i32* null, i32 %628, i32 %631, i32 %634, %struct.ds1307* %635)
  store i32 %636, i32* %7, align 4
  %637 = load i32, i32* %7, align 4
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %654

639:                                              ; preds = %626
  %640 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %641 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %640, i32 0, i32 0
  store i32 0, i32* %641, align 8
  %642 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %643 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %642, i32 0, i32 2
  %644 = load %struct.TYPE_22__*, %struct.TYPE_22__** %643, align 8
  %645 = call i32 @device_set_wakeup_capable(%struct.TYPE_22__* %644, i32 0)
  %646 = load i32, i32* @HAS_ALARM, align 4
  %647 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %648 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %647, i32 0, i32 3
  %649 = call i32 @clear_bit(i32 %646, i32* %648)
  %650 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %651 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %650, i32 0, i32 2
  %652 = load %struct.TYPE_22__*, %struct.TYPE_22__** %651, align 8
  %653 = call i32 @dev_err(%struct.TYPE_22__* %652, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %662

654:                                              ; preds = %626
  %655 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %656 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %655, i32 0, i32 2
  %657 = load %struct.TYPE_22__*, %struct.TYPE_22__** %656, align 8
  %658 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %659 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %658, i32 0, i32 0
  %660 = load i32, i32* %659, align 8
  %661 = call i32 (%struct.TYPE_22__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_22__* %657, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %660)
  br label %662

662:                                              ; preds = %654, %639
  br label %663

663:                                              ; preds = %662, %608
  %664 = load %struct.chip_desc*, %struct.chip_desc** %9, align 8
  %665 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %664, i32 0, i32 4
  %666 = load i64, i64* %665, align 8
  %667 = icmp ne i64 %666, 0
  br i1 %667, label %668, label %670

668:                                              ; preds = %663
  %669 = inttoptr i64 %666 to i32*
  br label %671

670:                                              ; preds = %663
  br label %671

671:                                              ; preds = %670, %668
  %672 = phi i32* [ %669, %668 ], [ @ds13xx_rtc_ops, %670 ]
  %673 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %674 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %673, i32 0, i32 1
  %675 = load %struct.TYPE_21__*, %struct.TYPE_21__** %674, align 8
  %676 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %675, i32 0, i32 2
  store i32* %672, i32** %676, align 8
  %677 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %678 = call i32 @ds1307_add_frequency_test(%struct.ds1307* %677)
  store i32 %678, i32* %7, align 4
  %679 = load i32, i32* %7, align 4
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %681, label %683

681:                                              ; preds = %671
  %682 = load i32, i32* %7, align 4
  store i32 %682, i32* %3, align 4
  br label %726

683:                                              ; preds = %671
  %684 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %685 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %684, i32 0, i32 1
  %686 = load %struct.TYPE_21__*, %struct.TYPE_21__** %685, align 8
  %687 = call i32 @rtc_register_device(%struct.TYPE_21__* %686)
  store i32 %687, i32* %7, align 4
  %688 = load i32, i32* %7, align 4
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %692

690:                                              ; preds = %683
  %691 = load i32, i32* %7, align 4
  store i32 %691, i32* %3, align 4
  br label %726

692:                                              ; preds = %683
  %693 = load %struct.chip_desc*, %struct.chip_desc** %9, align 8
  %694 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %693, i32 0, i32 3
  %695 = load i64, i64* %694, align 8
  %696 = icmp ne i64 %695, 0
  br i1 %696, label %697, label %719

697:                                              ; preds = %692
  %698 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %698, align 8
  %699 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %17, i32 0, i32 1
  store i32 1, i32* %699, align 8
  %700 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %17, i32 0, i32 2
  store i32 1, i32* %700, align 4
  %701 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %17, i32 0, i32 3
  %702 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  store %struct.ds1307* %702, %struct.ds1307** %701, align 8
  %703 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %17, i32 0, i32 4
  %704 = load i32, i32* @ds1307_nvram_write, align 4
  store i32 %704, i32* %703, align 8
  %705 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %17, i32 0, i32 5
  %706 = load i32, i32* @ds1307_nvram_read, align 4
  store i32 %706, i32* %705, align 4
  %707 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %17, i32 0, i32 6
  %708 = load %struct.chip_desc*, %struct.chip_desc** %9, align 8
  %709 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %708, i32 0, i32 3
  %710 = load i64, i64* %709, align 8
  store i64 %710, i64* %707, align 8
  %711 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %712 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %711, i32 0, i32 1
  %713 = load %struct.TYPE_21__*, %struct.TYPE_21__** %712, align 8
  %714 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %713, i32 0, i32 1
  store i32 1, i32* %714, align 4
  %715 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %716 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %715, i32 0, i32 1
  %717 = load %struct.TYPE_21__*, %struct.TYPE_21__** %716, align 8
  %718 = call i32 @rtc_nvmem_register(%struct.TYPE_21__* %717, %struct.nvmem_config* %17)
  br label %719

719:                                              ; preds = %697, %692
  %720 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %721 = call i32 @ds1307_hwmon_register(%struct.ds1307* %720)
  %722 = load %struct.ds1307*, %struct.ds1307** %6, align 8
  %723 = call i32 @ds1307_clks_register(%struct.ds1307* %722)
  store i32 0, i32* %3, align 4
  br label %726

724:                                              ; preds = %478, %428, %296, %198
  %725 = load i32, i32* %7, align 4
  store i32 %725, i32* %3, align 4
  br label %726

726:                                              ; preds = %724, %719, %690, %681, %588, %110, %55, %29
  %727 = load i32, i32* %3, align 4
  ret i32 %727
}

declare dso_local %struct.ds1307_platform_data* @dev_get_platdata(%struct.TYPE_22__*) #1

declare dso_local %struct.ds1307* @devm_kzalloc(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_22__*, %struct.ds1307*) #1

declare dso_local %struct.TYPE_21__* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_21__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_21__*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ds1307*) #1

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_22__*) #1

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @ACPI_PTR(i32) #1

declare dso_local i32 @ds1307_trickle_init(%struct.ds1307*, %struct.chip_desc*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_22__*, i8*, i32, ...) #1

declare dso_local i32 @regmap_write(%struct.TYPE_21__*, i64, i8 zeroext) #1

declare dso_local i32 @regmap_bulk_read(%struct.TYPE_21__*, i32, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @bcd2bin(i32) #1

declare dso_local zeroext i8 @bin2bcd(i32) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.TYPE_21__* @devm_rtc_allocate_device(%struct.TYPE_22__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_22__*, i32, i32*, i32, i32, i32, %struct.ds1307*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ds1307_add_frequency_test(%struct.ds1307*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_21__*) #1

declare dso_local i32 @rtc_nvmem_register(%struct.TYPE_21__*, %struct.nvmem_config*) #1

declare dso_local i32 @ds1307_hwmon_register(%struct.ds1307*) #1

declare dso_local i32 @ds1307_clks_register(%struct.ds1307*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
