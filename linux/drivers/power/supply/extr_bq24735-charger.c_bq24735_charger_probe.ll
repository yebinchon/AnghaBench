; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24735-charger.c_bq24735_charger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24735-charger.c_bq24735_charger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.i2c_device_id = type { i32 }
%struct.bq24735 = type { i32, i32, i32, i32, i32, %struct.TYPE_11__*, %struct.power_supply_desc, %struct.i2c_client*, i32 }
%struct.power_supply_desc = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.power_supply_config = type { %struct.bq24735*, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONFIG_OF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no platform data provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"bq24735@%s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to alloc device name\0A\00", align 1
@POWER_SUPPLY_TYPE_MAINS = common dso_local global i32 0, align 4
@bq24735_charger_properties = common dso_local global i32 0, align 4
@bq24735_charger_get_property = common dso_local global i32 0, align 4
@bq24735_charger_set_property = common dso_local global i32 0, align 4
@bq24735_charger_property_is_writeable = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"ti,ac-detect\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Getting gpio failed: %d\0A\00", align 1
@BQ24735_MANUFACTURER_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to read manufacturer id : %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"manufacturer id mismatch. 0x0040 != 0x%04x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BQ24735_DEVICE_ID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Failed to read device id : %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"device id mismatch. 0x000b != 0x%04x\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Failed to enable charging\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Failed to register power supply: %d\0A\00", align 1
@bq24735_charger_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"Unable to register IRQ %d err %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"poll-interval\00", align 1
@bq24735_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bq24735_charger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24735_charger_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bq24735*, align 8
  %8 = alloca %struct.power_supply_desc*, align 8
  %9 = alloca %struct.power_supply_config, align 8
  %10 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = bitcast %struct.power_supply_config* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.bq24735* @devm_kzalloc(%struct.TYPE_10__* %13, i32 80, i32 %14)
  store %struct.bq24735* %15, %struct.bq24735** %7, align 8
  %16 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %17 = icmp ne %struct.bq24735* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %307

21:                                               ; preds = %2
  %22 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %23 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %22, i32 0, i32 8
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %26 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %32 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %31, i32 0, i32 5
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %32, align 8
  %33 = load i32, i32* @CONFIG_OF, align 4
  %34 = call i64 @IS_ENABLED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %21
  %37 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %38 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %37, i32 0, i32 5
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = icmp ne %struct.TYPE_11__* %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %36
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = call %struct.TYPE_11__* @bq24735_parse_dt_data(%struct.i2c_client* %48)
  %50 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %51 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %50, i32 0, i32 5
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %51, align 8
  br label %52

52:                                               ; preds = %47, %41, %36, %21
  %53 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %54 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %53, i32 0, i32 5
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = icmp ne %struct.TYPE_11__* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 1
  %60 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %307

63:                                               ; preds = %52
  %64 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %65 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %64, i32 0, i32 5
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  store i8* %69, i8** %10, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %89, label %72

72:                                               ; preds = %63
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 1
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 1
  %78 = call i32 @dev_name(%struct.TYPE_10__* %77)
  %79 = call i8* @devm_kasprintf(%struct.TYPE_10__* %74, i32 %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  store i8* %79, i8** %10, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %72
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 1
  %85 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %307

88:                                               ; preds = %72
  br label %89

89:                                               ; preds = %88, %63
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %92 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %91, i32 0, i32 7
  store %struct.i2c_client* %90, %struct.i2c_client** %92, align 8
  %93 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %94 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %93, i32 0, i32 6
  store %struct.power_supply_desc* %94, %struct.power_supply_desc** %8, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %97 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* @POWER_SUPPLY_TYPE_MAINS, align 4
  %99 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %100 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @bq24735_charger_properties, align 4
  %102 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %103 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @bq24735_charger_properties, align 4
  %105 = call i32 @ARRAY_SIZE(i32 %104)
  %106 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %107 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @bq24735_charger_get_property, align 4
  %109 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %110 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @bq24735_charger_set_property, align 4
  %112 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %113 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @bq24735_charger_property_is_writeable, align 4
  %115 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %116 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %118 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %117, i32 0, i32 5
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %9, i32 0, i32 3
  store i32 %121, i32* %122, align 4
  %123 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %124 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %123, i32 0, i32 5
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %9, i32 0, i32 2
  store i32 %127, i32* %128, align 8
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %9, i32 0, i32 1
  store i64 %132, i64* %133, align 8
  %134 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %135 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %9, i32 0, i32 0
  store %struct.bq24735* %134, %struct.bq24735** %135, align 8
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %138 = call i32 @i2c_set_clientdata(%struct.i2c_client* %136, %struct.bq24735* %137)
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 1
  %141 = load i32, i32* @GPIOD_IN, align 4
  %142 = call i32 @devm_gpiod_get_optional(%struct.TYPE_10__* %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %144 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 8
  %145 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %146 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @IS_ERR(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %89
  %151 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %152 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @PTR_ERR(i32 %153)
  store i32 %154, i32* %6, align 4
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %155, i32 0, i32 1
  %157 = load i32, i32* %6, align 4
  %158 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %156, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %3, align 4
  br label %307

160:                                              ; preds = %89
  %161 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %162 = call i64 @bq24735_charger_is_present(%struct.bq24735* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %221

164:                                              ; preds = %160
  %165 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %166 = load i32, i32* @BQ24735_MANUFACTURER_ID, align 4
  %167 = call i32 @bq24735_read_word(%struct.i2c_client* %165, i32 %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %172 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %171, i32 0, i32 1
  %173 = load i32, i32* %6, align 4
  %174 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %172, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* %6, align 4
  store i32 %175, i32* %3, align 4
  br label %307

176:                                              ; preds = %164
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 64
  br i1 %178, label %179, label %186

179:                                              ; preds = %176
  %180 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %181 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %180, i32 0, i32 1
  %182 = load i32, i32* %6, align 4
  %183 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %181, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* @ENODEV, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %3, align 4
  br label %307

186:                                              ; preds = %176
  br label %187

187:                                              ; preds = %186
  %188 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %189 = load i32, i32* @BQ24735_DEVICE_ID, align 4
  %190 = call i32 @bq24735_read_word(%struct.i2c_client* %188, i32 %189)
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %187
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %194, i32 0, i32 1
  %196 = load i32, i32* %6, align 4
  %197 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %195, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* %6, align 4
  store i32 %198, i32* %3, align 4
  br label %307

199:                                              ; preds = %187
  %200 = load i32, i32* %6, align 4
  %201 = icmp ne i32 %200, 11
  br i1 %201, label %202, label %209

202:                                              ; preds = %199
  %203 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %204 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %203, i32 0, i32 1
  %205 = load i32, i32* %6, align 4
  %206 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %204, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* @ENODEV, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %3, align 4
  br label %307

209:                                              ; preds = %199
  br label %210

210:                                              ; preds = %209
  %211 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %212 = call i32 @bq24735_enable_charging(%struct.bq24735* %211)
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %6, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %217 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %216, i32 0, i32 1
  %218 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %217, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %219 = load i32, i32* %6, align 4
  store i32 %219, i32* %3, align 4
  br label %307

220:                                              ; preds = %210
  br label %221

221:                                              ; preds = %220, %160
  %222 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %223 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %222, i32 0, i32 1
  %224 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %225 = call i32 @devm_power_supply_register(%struct.TYPE_10__* %223, %struct.power_supply_desc* %224, %struct.power_supply_config* %9)
  %226 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %227 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %226, i32 0, i32 3
  store i32 %225, i32* %227, align 4
  %228 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %229 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = call i64 @IS_ERR(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %243

233:                                              ; preds = %221
  %234 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %235 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @PTR_ERR(i32 %236)
  store i32 %237, i32* %6, align 4
  %238 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %239 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %238, i32 0, i32 1
  %240 = load i32, i32* %6, align 4
  %241 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %239, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %240)
  %242 = load i32, i32* %6, align 4
  store i32 %242, i32* %3, align 4
  br label %307

243:                                              ; preds = %221
  %244 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %245 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %279

248:                                              ; preds = %243
  %249 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %250 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %249, i32 0, i32 1
  %251 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %252 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @bq24735_charger_isr, align 4
  %255 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %256 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @IRQF_ONESHOT, align 4
  %259 = or i32 %257, %258
  %260 = load %struct.power_supply_desc*, %struct.power_supply_desc** %8, align 8
  %261 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  %263 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %264 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @devm_request_threaded_irq(%struct.TYPE_10__* %250, i32 %253, i32* null, i32 %254, i32 %259, i8* %262, i32 %265)
  store i32 %266, i32* %6, align 4
  %267 = load i32, i32* %6, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %278

269:                                              ; preds = %248
  %270 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %271 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %270, i32 0, i32 1
  %272 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %273 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* %6, align 4
  %276 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %271, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %274, i32 %275)
  %277 = load i32, i32* %6, align 4
  store i32 %277, i32* %3, align 4
  br label %307

278:                                              ; preds = %248
  br label %306

279:                                              ; preds = %243
  %280 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %281 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %280, i32 0, i32 1
  %282 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %283 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %282, i32 0, i32 1
  %284 = call i32 @device_property_read_u32(%struct.TYPE_10__* %281, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32* %283)
  store i32 %284, i32* %6, align 4
  %285 = load i32, i32* %6, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %279
  store i32 0, i32* %3, align 4
  br label %307

288:                                              ; preds = %279
  %289 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %290 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %288
  store i32 0, i32* %3, align 4
  br label %307

294:                                              ; preds = %288
  %295 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %296 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %295, i32 0, i32 2
  %297 = load i32, i32* @bq24735_poll, align 4
  %298 = call i32 @INIT_DELAYED_WORK(i32* %296, i32 %297)
  %299 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %300 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %299, i32 0, i32 2
  %301 = load %struct.bq24735*, %struct.bq24735** %7, align 8
  %302 = getelementptr inbounds %struct.bq24735, %struct.bq24735* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @msecs_to_jiffies(i32 %303)
  %305 = call i32 @schedule_delayed_work(i32* %300, i32 %304)
  br label %306

306:                                              ; preds = %294, %278
  store i32 0, i32* %3, align 4
  br label %307

307:                                              ; preds = %306, %293, %287, %269, %233, %215, %202, %193, %179, %170, %150, %82, %57, %18
  %308 = load i32, i32* %3, align 4
  ret i32 %308
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.bq24735* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i64 @IS_ENABLED(i32) #2

declare dso_local %struct.TYPE_11__* @bq24735_parse_dt_data(%struct.i2c_client*) #2

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #2

declare dso_local i8* @devm_kasprintf(%struct.TYPE_10__*, i32, i8*, i32) #2

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.bq24735*) #2

declare dso_local i32 @devm_gpiod_get_optional(%struct.TYPE_10__*, i8*, i32) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i64 @bq24735_charger_is_present(%struct.bq24735*) #2

declare dso_local i32 @bq24735_read_word(%struct.i2c_client*, i32) #2

declare dso_local i32 @bq24735_enable_charging(%struct.bq24735*) #2

declare dso_local i32 @devm_power_supply_register(%struct.TYPE_10__*, %struct.power_supply_desc*, %struct.power_supply_config*) #2

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_10__*, i32, i32*, i32, i32, i8*, i32) #2

declare dso_local i32 @device_property_read_u32(%struct.TYPE_10__*, i8*, i32*) #2

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #2

declare dso_local i32 @schedule_delayed_work(i32*, i32) #2

declare dso_local i32 @msecs_to_jiffies(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
