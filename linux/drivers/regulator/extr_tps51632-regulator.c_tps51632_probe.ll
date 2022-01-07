; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps51632-regulator.c_tps51632_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps51632-regulator.c_tps51632_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.tps51632_regulator_platform_data = type { i64, i64, i32, i64 }
%struct.regulator_dev = type { i32 }
%struct.tps51632_chip = type { %struct.regulator_dev*, %struct.TYPE_9__*, %struct.TYPE_10__, %struct.regulator_dev* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32*, i64, i32, i32, i64, i32, i64, i32 }
%struct.regulator_config = type { i64, %struct.regulator_dev*, %struct.tps51632_chip*, i32, %struct.TYPE_9__* }
%struct.of_device_id = type { i32 }

@tps51632_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error: No device match found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TPS51632_DEFAULT_RAMP_DELAY = common dso_local global i32 0, align 4
@TPS51632_MIN_VOLTAGE = common dso_local global i64 0, align 8
@TPS51632_VOLTAGE_STEP_10mV = common dso_local global i32 0, align 4
@TPS51632_MIN_VSEL = common dso_local global i32 0, align 4
@TPS51632_MAX_VSEL = common dso_local global i64 0, align 8
@tps51632_dcdc_ops = common dso_local global i32 0, align 4
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"No Platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TPS51632_MAX_VOLTAGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Invalid base_voltage_uV setting\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Invalid max_voltage_uV setting\0A\00", align 1
@TPS51632_VOLTAGE_BASE_REG = common dso_local global i32 0, align 4
@TPS51632_VOLTAGE_SELECT_REG = common dso_local global i32 0, align 4
@TPS51632_VOUT_MASK = common dso_local global i32 0, align 4
@tps51632_regmap_config = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"regmap init failed, err %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Init failed, err = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"regulator register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tps51632_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps51632_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tps51632_regulator_platform_data*, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca %struct.tps51632_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.regulator_config, align 8
  %11 = alloca %struct.of_device_id*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = bitcast %struct.regulator_config* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 40, i1 false)
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load i32, i32* @tps51632_of_match, align 4
  %20 = call i32 @of_match_ptr(i32 %19)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = call %struct.of_device_id* @of_match_device(i32 %20, %struct.TYPE_9__* %22)
  store %struct.of_device_id* %23, %struct.of_device_id** %11, align 8
  %24 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %25 = icmp ne %struct.of_device_id* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %255

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.tps51632_chip* @devm_kzalloc(%struct.TYPE_9__* %35, i32 96, i32 %36)
  store %struct.tps51632_chip* %37, %struct.tps51632_chip** %8, align 8
  %38 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %39 = icmp ne %struct.tps51632_chip* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %255

43:                                               ; preds = %33
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %47 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %46, i32 0, i32 1
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %47, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %52 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 11
  store i32 %50, i32* %53, align 8
  %54 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %55 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 10
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @TPS51632_DEFAULT_RAMP_DELAY, align 4
  %58 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %59 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 9
  store i32 %57, i32* %60, align 8
  %61 = load i64, i64* @TPS51632_MIN_VOLTAGE, align 8
  %62 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %63 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 8
  store i64 %61, i64* %64, align 8
  %65 = load i32, i32* @TPS51632_VOLTAGE_STEP_10mV, align 4
  %66 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %67 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 7
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @TPS51632_MIN_VSEL, align 4
  %70 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %71 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 6
  store i32 %69, i32* %72, align 8
  %73 = load i64, i64* @TPS51632_MAX_VSEL, align 8
  %74 = add nsw i64 %73, 1
  %75 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %76 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 5
  store i64 %74, i64* %77, align 8
  %78 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %79 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 4
  store i32* @tps51632_dcdc_ops, i32** %80, align 8
  %81 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %82 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %83 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @THIS_MODULE, align 4
  %86 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %87 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 8
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = call %struct.tps51632_regulator_platform_data* @dev_get_platdata(%struct.TYPE_9__* %90)
  store %struct.tps51632_regulator_platform_data* %91, %struct.tps51632_regulator_platform_data** %6, align 8
  %92 = load %struct.tps51632_regulator_platform_data*, %struct.tps51632_regulator_platform_data** %6, align 8
  %93 = icmp ne %struct.tps51632_regulator_platform_data* %92, null
  br i1 %93, label %106, label %94

94:                                               ; preds = %43
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %104 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %103, i32 0, i32 2
  %105 = call %struct.tps51632_regulator_platform_data* @of_get_tps51632_platform_data(%struct.TYPE_9__* %102, %struct.TYPE_10__* %104)
  store %struct.tps51632_regulator_platform_data* %105, %struct.tps51632_regulator_platform_data** %6, align 8
  br label %106

106:                                              ; preds = %100, %94, %43
  %107 = load %struct.tps51632_regulator_platform_data*, %struct.tps51632_regulator_platform_data** %6, align 8
  %108 = icmp ne %struct.tps51632_regulator_platform_data* %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %106
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 0
  %112 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %255

115:                                              ; preds = %106
  %116 = load %struct.tps51632_regulator_platform_data*, %struct.tps51632_regulator_platform_data** %6, align 8
  %117 = getelementptr inbounds %struct.tps51632_regulator_platform_data, %struct.tps51632_regulator_platform_data* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %162

120:                                              ; preds = %115
  %121 = load %struct.tps51632_regulator_platform_data*, %struct.tps51632_regulator_platform_data** %6, align 8
  %122 = getelementptr inbounds %struct.tps51632_regulator_platform_data, %struct.tps51632_regulator_platform_data* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @TPS51632_MIN_VOLTAGE, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load %struct.tps51632_regulator_platform_data*, %struct.tps51632_regulator_platform_data** %6, align 8
  %128 = getelementptr inbounds %struct.tps51632_regulator_platform_data, %struct.tps51632_regulator_platform_data* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @TPS51632_MAX_VOLTAGE, align 8
  %131 = icmp sgt i64 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %126, %120
  %133 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %134 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %133, i32 0, i32 0
  %135 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %255

138:                                              ; preds = %126
  %139 = load %struct.tps51632_regulator_platform_data*, %struct.tps51632_regulator_platform_data** %6, align 8
  %140 = getelementptr inbounds %struct.tps51632_regulator_platform_data, %struct.tps51632_regulator_platform_data* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %138
  %144 = load %struct.tps51632_regulator_platform_data*, %struct.tps51632_regulator_platform_data** %6, align 8
  %145 = getelementptr inbounds %struct.tps51632_regulator_platform_data, %struct.tps51632_regulator_platform_data* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @TPS51632_MIN_VOLTAGE, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = load %struct.tps51632_regulator_platform_data*, %struct.tps51632_regulator_platform_data** %6, align 8
  %151 = getelementptr inbounds %struct.tps51632_regulator_platform_data, %struct.tps51632_regulator_platform_data* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @TPS51632_MAX_VOLTAGE, align 8
  %154 = icmp sgt i64 %152, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %149, %143
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %156, i32 0, i32 0
  %158 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %157, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %3, align 4
  br label %255

161:                                              ; preds = %149, %138
  br label %162

162:                                              ; preds = %161, %115
  %163 = load %struct.tps51632_regulator_platform_data*, %struct.tps51632_regulator_platform_data** %6, align 8
  %164 = getelementptr inbounds %struct.tps51632_regulator_platform_data, %struct.tps51632_regulator_platform_data* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load i32, i32* @TPS51632_VOLTAGE_BASE_REG, align 4
  %169 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %170 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  store i32 %168, i32* %171, align 4
  br label %177

172:                                              ; preds = %162
  %173 = load i32, i32* @TPS51632_VOLTAGE_SELECT_REG, align 4
  %174 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %175 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  store i32 %173, i32* %176, align 4
  br label %177

177:                                              ; preds = %172, %167
  %178 = load i32, i32* @TPS51632_VOUT_MASK, align 4
  %179 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %180 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  store i32 %178, i32* %181, align 8
  %182 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %183 = call %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client* %182, i32* @tps51632_regmap_config)
  %184 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %185 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %184, i32 0, i32 3
  store %struct.regulator_dev* %183, %struct.regulator_dev** %185, align 8
  %186 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %187 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %186, i32 0, i32 3
  %188 = load %struct.regulator_dev*, %struct.regulator_dev** %187, align 8
  %189 = call i64 @IS_ERR(%struct.regulator_dev* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %177
  %192 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %193 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %192, i32 0, i32 3
  %194 = load %struct.regulator_dev*, %struct.regulator_dev** %193, align 8
  %195 = call i32 @PTR_ERR(%struct.regulator_dev* %194)
  store i32 %195, i32* %9, align 4
  %196 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %197 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %196, i32 0, i32 0
  %198 = load i32, i32* %9, align 4
  %199 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %197, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %198)
  %200 = load i32, i32* %9, align 4
  store i32 %200, i32* %3, align 4
  br label %255

201:                                              ; preds = %177
  %202 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %203 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %204 = call i32 @i2c_set_clientdata(%struct.i2c_client* %202, %struct.tps51632_chip* %203)
  %205 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %206 = load %struct.tps51632_regulator_platform_data*, %struct.tps51632_regulator_platform_data** %6, align 8
  %207 = call i32 @tps51632_init_dcdc(%struct.tps51632_chip* %205, %struct.tps51632_regulator_platform_data* %206)
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %201
  %211 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %212 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %211, i32 0, i32 1
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %213, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* %9, align 4
  store i32 %216, i32* %3, align 4
  br label %255

217:                                              ; preds = %201
  %218 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %219 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 4
  store %struct.TYPE_9__* %219, %struct.TYPE_9__** %220, align 8
  %221 = load %struct.tps51632_regulator_platform_data*, %struct.tps51632_regulator_platform_data** %6, align 8
  %222 = getelementptr inbounds %struct.tps51632_regulator_platform_data, %struct.tps51632_regulator_platform_data* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 3
  store i32 %223, i32* %224, align 8
  %225 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %226 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 2
  store %struct.tps51632_chip* %225, %struct.tps51632_chip** %226, align 8
  %227 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %228 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %227, i32 0, i32 3
  %229 = load %struct.regulator_dev*, %struct.regulator_dev** %228, align 8
  %230 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 1
  store %struct.regulator_dev* %229, %struct.regulator_dev** %230, align 8
  %231 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %232 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 0
  store i64 %234, i64* %235, align 8
  %236 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %237 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %236, i32 0, i32 0
  %238 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %239 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %238, i32 0, i32 2
  %240 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_9__* %237, %struct.TYPE_10__* %239, %struct.regulator_config* %10)
  store %struct.regulator_dev* %240, %struct.regulator_dev** %7, align 8
  %241 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %242 = call i64 @IS_ERR(%struct.regulator_dev* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %217
  %245 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %246 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %245, i32 0, i32 1
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %246, align 8
  %248 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %247, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %249 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %250 = call i32 @PTR_ERR(%struct.regulator_dev* %249)
  store i32 %250, i32* %3, align 4
  br label %255

251:                                              ; preds = %217
  %252 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %253 = load %struct.tps51632_chip*, %struct.tps51632_chip** %8, align 8
  %254 = getelementptr inbounds %struct.tps51632_chip, %struct.tps51632_chip* %253, i32 0, i32 0
  store %struct.regulator_dev* %252, %struct.regulator_dev** %254, align 8
  store i32 0, i32* %3, align 4
  br label %255

255:                                              ; preds = %251, %244, %210, %191, %155, %132, %109, %40, %26
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_9__*) #2

declare dso_local i32 @of_match_ptr(i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #2

declare dso_local %struct.tps51632_chip* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #2

declare dso_local %struct.tps51632_regulator_platform_data* @dev_get_platdata(%struct.TYPE_9__*) #2

declare dso_local %struct.tps51632_regulator_platform_data* @of_get_tps51632_platform_data(%struct.TYPE_9__*, %struct.TYPE_10__*) #2

declare dso_local %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tps51632_chip*) #2

declare dso_local i32 @tps51632_init_dcdc(%struct.tps51632_chip*, %struct.tps51632_regulator_platform_data*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.regulator_config*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
