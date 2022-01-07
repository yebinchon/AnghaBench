; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply_desc = type { i32 }
%struct.i2c_client = type { %struct.device, i64, %struct.i2c_adapter* }
%struct.device = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.power_supply_config = type { i32, %struct.max17042_chip* }
%struct.max17042_chip = type { i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_16__*, i32, %struct.i2c_client* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.acpi_device_id = type { i32 }

@max17042_psy_desc = common dso_local global %struct.power_supply_desc zeroinitializer, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@max17042_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to initialize regmap\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"no platform data provided\0A\00", align 1
@max17042_no_current_sense_psy_desc = common dso_local global %struct.power_supply_desc zeroinitializer, align 4
@MAX17042_DEFAULT_SNS_RESISTOR = common dso_local global i64 0, align 8
@MAX17042_CGAIN = common dso_local global i32 0, align 4
@MAX17042_MiscCFG = common dso_local global i32 0, align 4
@MAX17042_LearnCFG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed: power supply register\0A\00", align 1
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_PROBE_SHARED = common dso_local global i32 0, align 4
@max17042_thread_handler = common dso_local global i32 0, align 4
@MAX17042_CONFIG = common dso_local global i32 0, align 4
@CONFIG_ALRT_BIT_ENBL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Failed to get IRQ\0A\00", align 1
@MAX17042_SALRT_Th = common dso_local global i32 0, align 4
@MAX17042_STATUS = common dso_local global i32 0, align 4
@STATUS_POR_BIT = common dso_local global i32 0, align 4
@max17042_init_worker = common dso_local global i32 0, align 4
@max17042_stop_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max17042_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max17042_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.power_supply_desc*, align 8
  %8 = alloca %struct.power_supply_config, align 8
  %9 = alloca %struct.acpi_device_id*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.max17042_chip*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 2
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %17, align 8
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %6, align 8
  store %struct.power_supply_desc* @max17042_psy_desc, %struct.power_supply_desc** %7, align 8
  %19 = bitcast %struct.power_supply_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 16, i1 false)
  store %struct.acpi_device_id* null, %struct.acpi_device_id** %9, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %10, align 8
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %23 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %24 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %321

29:                                               ; preds = %2
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.max17042_chip* @devm_kzalloc(%struct.device* %31, i32 48, i32 %32)
  store %struct.max17042_chip* %33, %struct.max17042_chip** %11, align 8
  %34 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %35 = icmp ne %struct.max17042_chip* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %321

39:                                               ; preds = %29
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %42 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %41, i32 0, i32 6
  store %struct.i2c_client* %40, %struct.i2c_client** %42, align 8
  %43 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %44 = icmp ne %struct.i2c_device_id* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %47 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %50 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  br label %70

51:                                               ; preds = %39
  %52 = load %struct.device*, %struct.device** %10, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 1
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.device*, %struct.device** %10, align 8
  %58 = call %struct.acpi_device_id* @acpi_match_device(i32 %56, %struct.device* %57)
  store %struct.acpi_device_id* %58, %struct.acpi_device_id** %9, align 8
  %59 = load %struct.acpi_device_id*, %struct.acpi_device_id** %9, align 8
  %60 = icmp ne %struct.acpi_device_id* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %321

64:                                               ; preds = %51
  %65 = load %struct.acpi_device_id*, %struct.acpi_device_id** %9, align 8
  %66 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %69 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %64, %45
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = call %struct.TYPE_15__* @devm_regmap_init_i2c(%struct.i2c_client* %71, i32* @max17042_regmap_config)
  %73 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %74 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %73, i32 0, i32 2
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %74, align 8
  %75 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %76 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %75, i32 0, i32 2
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = call i64 @IS_ERR(%struct.TYPE_15__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %70
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %321

86:                                               ; preds = %70
  %87 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %88 = call %struct.TYPE_16__* @max17042_get_pdata(%struct.max17042_chip* %87)
  %89 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %90 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %89, i32 0, i32 4
  store %struct.TYPE_16__* %88, %struct.TYPE_16__** %90, align 8
  %91 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %92 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %91, i32 0, i32 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = icmp ne %struct.TYPE_16__* %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %86
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %321

101:                                              ; preds = %86
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %104 = call i32 @i2c_set_clientdata(%struct.i2c_client* %102, %struct.max17042_chip* %103)
  %105 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %106 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %8, i32 0, i32 1
  store %struct.max17042_chip* %105, %struct.max17042_chip** %106, align 8
  %107 = load %struct.device*, %struct.device** %10, align 8
  %108 = getelementptr inbounds %struct.device, %struct.device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %8, i32 0, i32 0
  store i32 %109, i32* %110, align 8
  %111 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %112 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %111, i32 0, i32 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %101
  store %struct.power_supply_desc* @max17042_no_current_sense_psy_desc, %struct.power_supply_desc** %7, align 8
  br label %118

118:                                              ; preds = %117, %101
  %119 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %120 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %119, i32 0, i32 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load i64, i64* @MAX17042_DEFAULT_SNS_RESISTOR, align 8
  %127 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %128 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %127, i32 0, i32 4
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  store i64 %126, i64* %130, align 8
  br label %131

131:                                              ; preds = %125, %118
  %132 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %133 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %132, i32 0, i32 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = icmp ne %struct.TYPE_13__* %136, null
  br i1 %137, label %138, label %176

138:                                              ; preds = %131
  store i32 0, i32* %13, align 4
  br label %139

139:                                              ; preds = %172, %138
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %142 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %141, i32 0, i32 4
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %140, %145
  br i1 %146, label %147, label %175

147:                                              ; preds = %139
  %148 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %149 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %148, i32 0, i32 2
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %152 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %151, i32 0, i32 4
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %162 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %161, i32 0, i32 4
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @regmap_write(%struct.TYPE_15__* %150, i32 %160, i32 %170)
  br label %172

172:                                              ; preds = %147
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %13, align 4
  br label %139

175:                                              ; preds = %139
  br label %176

176:                                              ; preds = %175, %131
  %177 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %178 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %177, i32 0, i32 4
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %199, label %183

183:                                              ; preds = %176
  %184 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %185 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %184, i32 0, i32 2
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %185, align 8
  %187 = load i32, i32* @MAX17042_CGAIN, align 4
  %188 = call i32 @regmap_write(%struct.TYPE_15__* %186, i32 %187, i32 0)
  %189 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %190 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %189, i32 0, i32 2
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %190, align 8
  %192 = load i32, i32* @MAX17042_MiscCFG, align 4
  %193 = call i32 @regmap_write(%struct.TYPE_15__* %191, i32 %192, i32 3)
  %194 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %195 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %194, i32 0, i32 2
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %195, align 8
  %197 = load i32, i32* @MAX17042_LearnCFG, align 4
  %198 = call i32 @regmap_write(%struct.TYPE_15__* %196, i32 %197, i32 7)
  br label %199

199:                                              ; preds = %183, %176
  %200 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %201 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %200, i32 0, i32 0
  %202 = load %struct.power_supply_desc*, %struct.power_supply_desc** %7, align 8
  %203 = call %struct.TYPE_15__* @devm_power_supply_register(%struct.device* %201, %struct.power_supply_desc* %202, %struct.power_supply_config* %8)
  %204 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %205 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %204, i32 0, i32 3
  store %struct.TYPE_15__* %203, %struct.TYPE_15__** %205, align 8
  %206 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %207 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %206, i32 0, i32 3
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %207, align 8
  %209 = call i64 @IS_ERR(%struct.TYPE_15__* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %199
  %212 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %213 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %212, i32 0, i32 0
  %214 = call i32 @dev_err(%struct.device* %213, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %215 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %216 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %215, i32 0, i32 3
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %216, align 8
  %218 = call i32 @PTR_ERR(%struct.TYPE_15__* %217)
  store i32 %218, i32* %3, align 4
  br label %321

219:                                              ; preds = %199
  %220 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %221 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %278

224:                                              ; preds = %219
  %225 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %226 = load i32, i32* @IRQF_ONESHOT, align 4
  %227 = or i32 %225, %226
  store i32 %227, i32* %15, align 4
  %228 = load %struct.acpi_device_id*, %struct.acpi_device_id** %9, align 8
  %229 = icmp ne %struct.acpi_device_id* %228, null
  br i1 %229, label %230, label %236

230:                                              ; preds = %224
  %231 = load i32, i32* @IRQF_SHARED, align 4
  %232 = load i32, i32* @IRQF_PROBE_SHARED, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* %15, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %15, align 4
  br label %236

236:                                              ; preds = %230, %224
  %237 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %238 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %237, i32 0, i32 0
  %239 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %240 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load i32, i32* @max17042_thread_handler, align 4
  %243 = load i32, i32* %15, align 4
  %244 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %245 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %244, i32 0, i32 3
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %252 = call i32 @devm_request_threaded_irq(%struct.device* %238, i64 %241, i32* null, i32 %242, i32 %243, i32 %250, %struct.max17042_chip* %251)
  store i32 %252, i32* %12, align 4
  %253 = load i32, i32* %12, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %265, label %255

255:                                              ; preds = %236
  %256 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %257 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %256, i32 0, i32 2
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %257, align 8
  %259 = load i32, i32* @MAX17042_CONFIG, align 4
  %260 = load i32, i32* @CONFIG_ALRT_BIT_ENBL, align 4
  %261 = load i32, i32* @CONFIG_ALRT_BIT_ENBL, align 4
  %262 = call i32 @regmap_update_bits(%struct.TYPE_15__* %258, i32 %259, i32 %260, i32 %261)
  %263 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %264 = call i32 @max17042_set_soc_threshold(%struct.max17042_chip* %263, i32 1)
  br label %277

265:                                              ; preds = %236
  %266 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %267 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %266, i32 0, i32 1
  store i64 0, i64* %267, align 8
  %268 = load i32, i32* %12, align 4
  %269 = load i32, i32* @EBUSY, align 4
  %270 = sub nsw i32 0, %269
  %271 = icmp ne i32 %268, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %265
  %273 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %274 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %273, i32 0, i32 0
  %275 = call i32 @dev_err(%struct.device* %274, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %276

276:                                              ; preds = %272, %265
  br label %277

277:                                              ; preds = %276, %255
  br label %278

278:                                              ; preds = %277, %219
  %279 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %280 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %289, label %283

283:                                              ; preds = %278
  %284 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %285 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %284, i32 0, i32 2
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %285, align 8
  %287 = load i32, i32* @MAX17042_SALRT_Th, align 4
  %288 = call i32 @regmap_write(%struct.TYPE_15__* %286, i32 %287, i32 65280)
  br label %289

289:                                              ; preds = %283, %278
  %290 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %291 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %290, i32 0, i32 2
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %291, align 8
  %293 = load i32, i32* @MAX17042_STATUS, align 4
  %294 = call i32 @regmap_read(%struct.TYPE_15__* %292, i32 %293, i32* %14)
  %295 = load i32, i32* %14, align 4
  %296 = load i32, i32* @STATUS_POR_BIT, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %317

299:                                              ; preds = %289
  %300 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %301 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %300, i32 0, i32 1
  %302 = load i32, i32* @max17042_init_worker, align 4
  %303 = call i32 @INIT_WORK(i32* %301, i32 %302)
  %304 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %305 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %304, i32 0, i32 0
  %306 = load i32, i32* @max17042_stop_work, align 4
  %307 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %308 = call i32 @devm_add_action(%struct.device* %305, i32 %306, %struct.max17042_chip* %307)
  store i32 %308, i32* %12, align 4
  %309 = load i32, i32* %12, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %299
  %312 = load i32, i32* %12, align 4
  store i32 %312, i32* %3, align 4
  br label %321

313:                                              ; preds = %299
  %314 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %315 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %314, i32 0, i32 1
  %316 = call i32 @schedule_work(i32* %315)
  br label %320

317:                                              ; preds = %289
  %318 = load %struct.max17042_chip*, %struct.max17042_chip** %11, align 8
  %319 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %318, i32 0, i32 0
  store i32 1, i32* %319, align 8
  br label %320

320:                                              ; preds = %317, %313
  store i32 0, i32* %3, align 4
  br label %321

321:                                              ; preds = %320, %311, %211, %95, %80, %61, %36, %26
  %322 = load i32, i32* %3, align 4
  ret i32 %322
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #2

declare dso_local %struct.max17042_chip* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.device*) #2

declare dso_local %struct.TYPE_15__* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #2

declare dso_local i64 @IS_ERR(%struct.TYPE_15__*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local %struct.TYPE_16__* @max17042_get_pdata(%struct.max17042_chip*) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max17042_chip*) #2

declare dso_local i32 @regmap_write(%struct.TYPE_15__*, i32, i32) #2

declare dso_local %struct.TYPE_15__* @devm_power_supply_register(%struct.device*, %struct.power_supply_desc*, %struct.power_supply_config*) #2

declare dso_local i32 @PTR_ERR(%struct.TYPE_15__*) #2

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i64, i32*, i32, i32, i32, %struct.max17042_chip*) #2

declare dso_local i32 @regmap_update_bits(%struct.TYPE_15__*, i32, i32, i32) #2

declare dso_local i32 @max17042_set_soc_threshold(%struct.max17042_chip*, i32) #2

declare dso_local i32 @regmap_read(%struct.TYPE_15__*, i32, i32*) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i32 @devm_add_action(%struct.device*, i32, %struct.max17042_chip*) #2

declare dso_local i32 @schedule_work(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
