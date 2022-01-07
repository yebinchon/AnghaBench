; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_act8865-regulator.c_act8865_pmic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_act8865-regulator.c_act8865_pmic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_desc = type { i32, i32 }
%struct.regmap_config = type { i32 }
%struct.i2c_client = type { %struct.device }
%struct.device = type { i64 }
%struct.i2c_device_id = type { i64 }
%struct.act8865_platform_data = type { i32 }
%struct.act8865 = type { i32, i32, %struct.regulator_dev* }
%struct.regulator_dev = type { i32 }
%struct.of_device_id = type { i64 }
%struct.regulator_config = type { i32, i32, %struct.regulator_dev*, %struct.act8865*, %struct.device* }
%struct.act8865_regulator_data = type { i32, i32 }

@act8865_dt_ids = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"active-semi,vsel-high\00", align 1
@act8600_regulators = common dso_local global %struct.regulator_desc* null, align 8
@act8600_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@act8846_regulators = common dso_local global %struct.regulator_desc* null, align 8
@act8865_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@ACT8846_GLB_OFF_CTRL = common dso_local global i32 0, align 4
@ACT8846_OFF_SYSMASK = common dso_local global i32 0, align 4
@act8865_alt_regulators = common dso_local global %struct.regulator_desc* null, align 8
@act8865_regulators = common dso_local global %struct.regulator_desc* null, align 8
@ACT8865_SYS_CTRL = common dso_local global i32 0, align 4
@ACT8865_MSTROFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid device id %lu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@pm_power_off = common dso_local global i64 0, align 8
@act8865_i2c_client = common dso_local global %struct.i2c_client* null, align 8
@act8865_power_off = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"Failed to set poweroff capability, already defined\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to register %s\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Failed to probe charger\00", align 1
@ACT8865_SYS_UNLK_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @act8865_pmic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act8865_pmic_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regulator_desc*, align 8
  %7 = alloca %struct.act8865_platform_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.act8865*, align 8
  %13 = alloca %struct.regmap_config*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.of_device_id*, align 8
  %19 = alloca %struct.regulator_desc*, align 8
  %20 = alloca %struct.regulator_config, align 8
  %21 = alloca %struct.regulator_dev*, align 8
  %22 = alloca %struct.act8865_regulator_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store %struct.act8865_platform_data* null, %struct.act8865_platform_data** %7, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  store %struct.device* %24, %struct.device** %8, align 8
  store i32 0, i32* %17, align 4
  %25 = load %struct.device*, %struct.device** %8, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %2
  %30 = load i32, i32* @act8865_dt_ids, align 4
  %31 = call i32 @of_match_ptr(i32 %30)
  %32 = load %struct.device*, %struct.device** %8, align 8
  %33 = call %struct.of_device_id* @of_match_device(i32 %31, %struct.device* %32)
  store %struct.of_device_id* %33, %struct.of_device_id** %18, align 8
  %34 = load %struct.of_device_id*, %struct.of_device_id** %18, align 8
  %35 = icmp ne %struct.of_device_id* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %238

39:                                               ; preds = %29
  %40 = load %struct.of_device_id*, %struct.of_device_id** %18, align 8
  %41 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %14, align 8
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @of_get_property(i64 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* null)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %17, align 4
  br label %57

51:                                               ; preds = %2
  %52 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %53 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %14, align 8
  %55 = load %struct.device*, %struct.device** %8, align 8
  %56 = call %struct.act8865_platform_data* @dev_get_platdata(%struct.device* %55)
  store %struct.act8865_platform_data* %56, %struct.act8865_platform_data** %7, align 8
  br label %57

57:                                               ; preds = %51, %39
  %58 = load i64, i64* %14, align 8
  switch i64 %58, label %83 [
    i64 130, label %59
    i64 129, label %63
    i64 128, label %69
  ]

59:                                               ; preds = %57
  %60 = load %struct.regulator_desc*, %struct.regulator_desc** @act8600_regulators, align 8
  store %struct.regulator_desc* %60, %struct.regulator_desc** %6, align 8
  %61 = load %struct.regulator_desc*, %struct.regulator_desc** @act8600_regulators, align 8
  %62 = call i32 @ARRAY_SIZE(%struct.regulator_desc* %61)
  store i32 %62, i32* %11, align 4
  store %struct.regmap_config* @act8600_regmap_config, %struct.regmap_config** %13, align 8
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  br label %89

63:                                               ; preds = %57
  %64 = load %struct.regulator_desc*, %struct.regulator_desc** @act8846_regulators, align 8
  store %struct.regulator_desc* %64, %struct.regulator_desc** %6, align 8
  %65 = load %struct.regulator_desc*, %struct.regulator_desc** @act8846_regulators, align 8
  %66 = call i32 @ARRAY_SIZE(%struct.regulator_desc* %65)
  store i32 %66, i32* %11, align 4
  store %struct.regmap_config* @act8865_regmap_config, %struct.regmap_config** %13, align 8
  %67 = load i32, i32* @ACT8846_GLB_OFF_CTRL, align 4
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* @ACT8846_OFF_SYSMASK, align 4
  store i32 %68, i32* %16, align 4
  br label %89

69:                                               ; preds = %57
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.regulator_desc*, %struct.regulator_desc** @act8865_alt_regulators, align 8
  store %struct.regulator_desc* %73, %struct.regulator_desc** %6, align 8
  %74 = load %struct.regulator_desc*, %struct.regulator_desc** @act8865_alt_regulators, align 8
  %75 = call i32 @ARRAY_SIZE(%struct.regulator_desc* %74)
  store i32 %75, i32* %11, align 4
  br label %80

76:                                               ; preds = %69
  %77 = load %struct.regulator_desc*, %struct.regulator_desc** @act8865_regulators, align 8
  store %struct.regulator_desc* %77, %struct.regulator_desc** %6, align 8
  %78 = load %struct.regulator_desc*, %struct.regulator_desc** @act8865_regulators, align 8
  %79 = call i32 @ARRAY_SIZE(%struct.regulator_desc* %78)
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %76, %72
  store %struct.regmap_config* @act8865_regmap_config, %struct.regmap_config** %13, align 8
  %81 = load i32, i32* @ACT8865_SYS_CTRL, align 4
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* @ACT8865_MSTROFF, align 4
  store i32 %82, i32* %16, align 4
  br label %89

83:                                               ; preds = %57
  %84 = load %struct.device*, %struct.device** %8, align 8
  %85 = load i64, i64* %14, align 8
  %86 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %238

89:                                               ; preds = %80, %63, %59
  %90 = load %struct.device*, %struct.device** %8, align 8
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call %struct.act8865* @devm_kzalloc(%struct.device* %90, i32 16, i32 %91)
  store %struct.act8865* %92, %struct.act8865** %12, align 8
  %93 = load %struct.act8865*, %struct.act8865** %12, align 8
  %94 = icmp ne %struct.act8865* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %238

98:                                               ; preds = %89
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = load %struct.regmap_config*, %struct.regmap_config** %13, align 8
  %101 = call %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client* %99, %struct.regmap_config* %100)
  %102 = load %struct.act8865*, %struct.act8865** %12, align 8
  %103 = getelementptr inbounds %struct.act8865, %struct.act8865* %102, i32 0, i32 2
  store %struct.regulator_dev* %101, %struct.regulator_dev** %103, align 8
  %104 = load %struct.act8865*, %struct.act8865** %12, align 8
  %105 = getelementptr inbounds %struct.act8865, %struct.act8865* %104, i32 0, i32 2
  %106 = load %struct.regulator_dev*, %struct.regulator_dev** %105, align 8
  %107 = call i64 @IS_ERR(%struct.regulator_dev* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %98
  %110 = load %struct.act8865*, %struct.act8865** %12, align 8
  %111 = getelementptr inbounds %struct.act8865, %struct.act8865* %110, i32 0, i32 2
  %112 = load %struct.regulator_dev*, %struct.regulator_dev** %111, align 8
  %113 = call i32 @PTR_ERR(%struct.regulator_dev* %112)
  store i32 %113, i32* %10, align 4
  %114 = load %struct.device*, %struct.device** %8, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %114, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %3, align 4
  br label %238

118:                                              ; preds = %98
  %119 = load %struct.device*, %struct.device** %8, align 8
  %120 = getelementptr inbounds %struct.device, %struct.device* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @of_device_is_system_power_controller(i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %118
  %125 = load i64, i64* @pm_power_off, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %139, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %15, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  store %struct.i2c_client* %131, %struct.i2c_client** @act8865_i2c_client, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load %struct.act8865*, %struct.act8865** %12, align 8
  %134 = getelementptr inbounds %struct.act8865, %struct.act8865* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %16, align 4
  %136 = load %struct.act8865*, %struct.act8865** %12, align 8
  %137 = getelementptr inbounds %struct.act8865, %struct.act8865* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load i64, i64* @act8865_power_off, align 8
  store i64 %138, i64* @pm_power_off, align 8
  br label %142

139:                                              ; preds = %127, %124
  %140 = load %struct.device*, %struct.device** %8, align 8
  %141 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %140, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %130
  br label %143

143:                                              ; preds = %142, %118
  store i32 0, i32* %9, align 4
  br label %144

144:                                              ; preds = %198, %143
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %201

148:                                              ; preds = %144
  %149 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %149, i64 %151
  store %struct.regulator_desc* %152, %struct.regulator_desc** %19, align 8
  %153 = bitcast %struct.regulator_config* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %153, i8 0, i64 32, i1 false)
  %154 = load %struct.device*, %struct.device** %8, align 8
  %155 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %20, i32 0, i32 4
  store %struct.device* %154, %struct.device** %155, align 8
  %156 = load %struct.act8865*, %struct.act8865** %12, align 8
  %157 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %20, i32 0, i32 3
  store %struct.act8865* %156, %struct.act8865** %157, align 8
  %158 = load %struct.act8865*, %struct.act8865** %12, align 8
  %159 = getelementptr inbounds %struct.act8865, %struct.act8865* %158, i32 0, i32 2
  %160 = load %struct.regulator_dev*, %struct.regulator_dev** %159, align 8
  %161 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %20, i32 0, i32 2
  store %struct.regulator_dev* %160, %struct.regulator_dev** %161, align 8
  %162 = load %struct.act8865_platform_data*, %struct.act8865_platform_data** %7, align 8
  %163 = icmp ne %struct.act8865_platform_data* %162, null
  br i1 %163, label %164, label %182

164:                                              ; preds = %148
  %165 = load %struct.regulator_desc*, %struct.regulator_desc** %19, align 8
  %166 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.act8865_platform_data*, %struct.act8865_platform_data** %7, align 8
  %169 = call %struct.act8865_regulator_data* @act8865_get_regulator_data(i32 %167, %struct.act8865_platform_data* %168)
  store %struct.act8865_regulator_data* %169, %struct.act8865_regulator_data** %22, align 8
  %170 = load %struct.act8865_regulator_data*, %struct.act8865_regulator_data** %22, align 8
  %171 = icmp ne %struct.act8865_regulator_data* %170, null
  br i1 %171, label %172, label %181

172:                                              ; preds = %164
  %173 = load %struct.act8865_regulator_data*, %struct.act8865_regulator_data** %22, align 8
  %174 = getelementptr inbounds %struct.act8865_regulator_data, %struct.act8865_regulator_data* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %20, i32 0, i32 1
  store i32 %175, i32* %176, align 4
  %177 = load %struct.act8865_regulator_data*, %struct.act8865_regulator_data** %22, align 8
  %178 = getelementptr inbounds %struct.act8865_regulator_data, %struct.act8865_regulator_data* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %20, i32 0, i32 0
  store i32 %179, i32* %180, align 8
  br label %181

181:                                              ; preds = %172, %164
  br label %182

182:                                              ; preds = %181, %148
  %183 = load %struct.device*, %struct.device** %8, align 8
  %184 = load %struct.regulator_desc*, %struct.regulator_desc** %19, align 8
  %185 = call %struct.regulator_dev* @devm_regulator_register(%struct.device* %183, %struct.regulator_desc* %184, %struct.regulator_config* %20)
  store %struct.regulator_dev* %185, %struct.regulator_dev** %21, align 8
  %186 = load %struct.regulator_dev*, %struct.regulator_dev** %21, align 8
  %187 = call i64 @IS_ERR(%struct.regulator_dev* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %182
  %190 = load %struct.device*, %struct.device** %8, align 8
  %191 = load %struct.regulator_desc*, %struct.regulator_desc** %19, align 8
  %192 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %190, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %193)
  %195 = load %struct.regulator_dev*, %struct.regulator_dev** %21, align 8
  %196 = call i32 @PTR_ERR(%struct.regulator_dev* %195)
  store i32 %196, i32* %3, align 4
  br label %238

197:                                              ; preds = %182
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %9, align 4
  br label %144

201:                                              ; preds = %144
  %202 = load i64, i64* %14, align 8
  %203 = icmp eq i64 %202, 130
  br i1 %203, label %204, label %223

204:                                              ; preds = %201
  %205 = load %struct.device*, %struct.device** %8, align 8
  %206 = load %struct.act8865*, %struct.act8865** %12, align 8
  %207 = getelementptr inbounds %struct.act8865, %struct.act8865* %206, i32 0, i32 2
  %208 = load %struct.regulator_dev*, %struct.regulator_dev** %207, align 8
  %209 = call i32 @act8600_charger_probe(%struct.device* %205, %struct.regulator_dev* %208)
  store i32 %209, i32* %10, align 4
  %210 = load i32, i32* %10, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %204
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* @EPROBE_DEFER, align 4
  %215 = sub nsw i32 0, %214
  %216 = icmp ne i32 %213, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load %struct.device*, %struct.device** %8, align 8
  %219 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %218, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %220

220:                                              ; preds = %217, %212
  %221 = load i32, i32* %10, align 4
  store i32 %221, i32* %3, align 4
  br label %238

222:                                              ; preds = %204
  br label %223

223:                                              ; preds = %222, %201
  %224 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %225 = load %struct.act8865*, %struct.act8865** %12, align 8
  %226 = call i32 @i2c_set_clientdata(%struct.i2c_client* %224, %struct.act8865* %225)
  %227 = load i64, i64* %14, align 8
  %228 = icmp ne i64 %227, 128
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  br label %236

230:                                              ; preds = %223
  %231 = load %struct.act8865*, %struct.act8865** %12, align 8
  %232 = getelementptr inbounds %struct.act8865, %struct.act8865* %231, i32 0, i32 2
  %233 = load %struct.regulator_dev*, %struct.regulator_dev** %232, align 8
  %234 = load i32, i32* @ACT8865_SYS_UNLK_REGS, align 4
  %235 = call i32 @regmap_write(%struct.regulator_dev* %233, i32 %234, i32 239)
  br label %236

236:                                              ; preds = %230, %229
  %237 = phi i32 [ 0, %229 ], [ %235, %230 ]
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %236, %220, %189, %109, %95, %83, %36
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local i32 @of_get_property(i64, i8*, i32*) #1

declare dso_local %struct.act8865_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.regulator_desc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.act8865* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i64 @of_device_is_system_power_controller(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.act8865_regulator_data* @act8865_get_regulator_data(i32, %struct.act8865_platform_data*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.device*, %struct.regulator_desc*, %struct.regulator_config*) #1

declare dso_local i32 @act8600_charger_probe(%struct.device*, %struct.regulator_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.act8865*) #1

declare dso_local i32 @regmap_write(%struct.regulator_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
