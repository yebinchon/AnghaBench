; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9210-regulator.c_da9210_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9210-regulator.c_da9210_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.da9210 = type { %struct.regulator_dev*, %struct.regulator_dev* }
%struct.regulator_dev = type { i32 }
%struct.da9210_pdata = type { i32 }
%struct.regulator_config = type { i64, %struct.regulator_dev*, %struct.da9210*, i32*, %struct.device* }
%struct.of_device_id = type { i32 }

@da9210_dt_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error: No device match found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@da9210_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@da9210_reg = common dso_local global i32 0, align 4
@DA9210_REG_MASK_A = common dso_local global i32 0, align 4
@DA9210_REG_MASK_B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to write to mask reg: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to register DA9210 regulator\0A\00", align 1
@da9210_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"da9210\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to request IRQ%u: %d\0A\00", align 1
@DA9210_M_OVCURR = common dso_local global i32 0, align 4
@DA9210_M_NPWRGOOD = common dso_local global i32 0, align 4
@DA9210_M_TEMP_WARN = common dso_local global i32 0, align 4
@DA9210_M_TEMP_CRIT = common dso_local global i32 0, align 4
@DA9210_M_VMAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to update mask reg: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"No IRQ configured\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @da9210_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9210_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.da9210*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.da9210_pdata*, align 8
  %9 = alloca %struct.regulator_dev*, align 8
  %10 = alloca %struct.regulator_config, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.of_device_id*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = call %struct.da9210_pdata* @dev_get_platdata(%struct.device* %15)
  store %struct.da9210_pdata* %16, %struct.da9210_pdata** %8, align 8
  store %struct.regulator_dev* null, %struct.regulator_dev** %9, align 8
  %17 = bitcast %struct.regulator_config* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 40, i1 false)
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %2
  %24 = load %struct.da9210_pdata*, %struct.da9210_pdata** %8, align 8
  %25 = icmp ne %struct.da9210_pdata* %24, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @da9210_dt_ids, align 4
  %28 = call i32 @of_match_ptr(i32 %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = call %struct.of_device_id* @of_match_device(i32 %28, %struct.device* %30)
  store %struct.of_device_id* %31, %struct.of_device_id** %12, align 8
  %32 = load %struct.of_device_id*, %struct.of_device_id** %12, align 8
  %33 = icmp ne %struct.of_device_id* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %26
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 1
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %199

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40, %23, %2
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 1
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.da9210* @devm_kzalloc(%struct.device* %43, i32 16, i32 %44)
  store %struct.da9210* %45, %struct.da9210** %6, align 8
  %46 = load %struct.da9210*, %struct.da9210** %6, align 8
  %47 = icmp ne %struct.da9210* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %199

51:                                               ; preds = %41
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = call %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client* %52, i32* @da9210_regmap_config)
  %54 = load %struct.da9210*, %struct.da9210** %6, align 8
  %55 = getelementptr inbounds %struct.da9210, %struct.da9210* %54, i32 0, i32 0
  store %struct.regulator_dev* %53, %struct.regulator_dev** %55, align 8
  %56 = load %struct.da9210*, %struct.da9210** %6, align 8
  %57 = getelementptr inbounds %struct.da9210, %struct.da9210* %56, i32 0, i32 0
  %58 = load %struct.regulator_dev*, %struct.regulator_dev** %57, align 8
  %59 = call i64 @IS_ERR(%struct.regulator_dev* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %51
  %62 = load %struct.da9210*, %struct.da9210** %6, align 8
  %63 = getelementptr inbounds %struct.da9210, %struct.da9210* %62, i32 0, i32 0
  %64 = load %struct.regulator_dev*, %struct.regulator_dev** %63, align 8
  %65 = call i32 @PTR_ERR(%struct.regulator_dev* %64)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 1
  %68 = load i32, i32* %11, align 4
  %69 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %3, align 4
  br label %199

71:                                               ; preds = %51
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 4
  store %struct.device* %73, %struct.device** %74, align 8
  %75 = load %struct.da9210_pdata*, %struct.da9210_pdata** %8, align 8
  %76 = icmp ne %struct.da9210_pdata* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.da9210_pdata*, %struct.da9210_pdata** %8, align 8
  %79 = getelementptr inbounds %struct.da9210_pdata, %struct.da9210_pdata* %78, i32 0, i32 0
  br label %86

80:                                               ; preds = %71
  %81 = load %struct.device*, %struct.device** %7, align 8
  %82 = load %struct.device*, %struct.device** %7, align 8
  %83 = getelementptr inbounds %struct.device, %struct.device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32* @of_get_regulator_init_data(%struct.device* %81, i64 %84, i32* @da9210_reg)
  br label %86

86:                                               ; preds = %80, %77
  %87 = phi i32* [ %79, %77 ], [ %85, %80 ]
  %88 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 3
  store i32* %87, i32** %88, align 8
  %89 = load %struct.da9210*, %struct.da9210** %6, align 8
  %90 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 2
  store %struct.da9210* %89, %struct.da9210** %90, align 8
  %91 = load %struct.da9210*, %struct.da9210** %6, align 8
  %92 = getelementptr inbounds %struct.da9210, %struct.da9210* %91, i32 0, i32 0
  %93 = load %struct.regulator_dev*, %struct.regulator_dev** %92, align 8
  %94 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 1
  store %struct.regulator_dev* %93, %struct.regulator_dev** %94, align 8
  %95 = load %struct.device*, %struct.device** %7, align 8
  %96 = getelementptr inbounds %struct.device, %struct.device* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 0
  store i64 %97, i64* %98, align 8
  %99 = load %struct.da9210*, %struct.da9210** %6, align 8
  %100 = getelementptr inbounds %struct.da9210, %struct.da9210* %99, i32 0, i32 0
  %101 = load %struct.regulator_dev*, %struct.regulator_dev** %100, align 8
  %102 = load i32, i32* @DA9210_REG_MASK_A, align 4
  %103 = call i32 @regmap_write(%struct.regulator_dev* %101, i32 %102, i32 -1)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %86
  %107 = load %struct.da9210*, %struct.da9210** %6, align 8
  %108 = getelementptr inbounds %struct.da9210, %struct.da9210* %107, i32 0, i32 0
  %109 = load %struct.regulator_dev*, %struct.regulator_dev** %108, align 8
  %110 = load i32, i32* @DA9210_REG_MASK_B, align 4
  %111 = call i32 @regmap_write(%struct.regulator_dev* %109, i32 %110, i32 -1)
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %106, %86
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 1
  %118 = load i32, i32* %11, align 4
  %119 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %3, align 4
  br label %199

121:                                              ; preds = %112
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 1
  %124 = call %struct.regulator_dev* @devm_regulator_register(%struct.device* %123, i32* @da9210_reg, %struct.regulator_config* %10)
  store %struct.regulator_dev* %124, %struct.regulator_dev** %9, align 8
  %125 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %126 = call i64 @IS_ERR(%struct.regulator_dev* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %129, i32 0, i32 1
  %131 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %132 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %133 = call i32 @PTR_ERR(%struct.regulator_dev* %132)
  store i32 %133, i32* %3, align 4
  br label %199

134:                                              ; preds = %121
  %135 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %136 = load %struct.da9210*, %struct.da9210** %6, align 8
  %137 = getelementptr inbounds %struct.da9210, %struct.da9210* %136, i32 0, i32 1
  store %struct.regulator_dev* %135, %struct.regulator_dev** %137, align 8
  %138 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %139 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %191

142:                                              ; preds = %134
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %143, i32 0, i32 1
  %145 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %146 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @da9210_irq_handler, align 4
  %149 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %150 = load i32, i32* @IRQF_ONESHOT, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @IRQF_SHARED, align 4
  %153 = or i32 %151, %152
  %154 = load %struct.da9210*, %struct.da9210** %6, align 8
  %155 = call i32 @devm_request_threaded_irq(%struct.device* %144, i32 %147, i32* null, i32 %148, i32 %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %struct.da9210* %154)
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %142
  %159 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %160 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %159, i32 0, i32 1
  %161 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %162 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %160, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %163, i32 %164)
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %3, align 4
  br label %199

167:                                              ; preds = %142
  %168 = load %struct.da9210*, %struct.da9210** %6, align 8
  %169 = getelementptr inbounds %struct.da9210, %struct.da9210* %168, i32 0, i32 0
  %170 = load %struct.regulator_dev*, %struct.regulator_dev** %169, align 8
  %171 = load i32, i32* @DA9210_REG_MASK_B, align 4
  %172 = load i32, i32* @DA9210_M_OVCURR, align 4
  %173 = load i32, i32* @DA9210_M_NPWRGOOD, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @DA9210_M_TEMP_WARN, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @DA9210_M_TEMP_CRIT, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @DA9210_M_VMAX, align 4
  %180 = or i32 %178, %179
  %181 = call i32 @regmap_update_bits(%struct.regulator_dev* %170, i32 %171, i32 %180, i32 0)
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %11, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %167
  %185 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %186 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %185, i32 0, i32 1
  %187 = load i32, i32* %11, align 4
  %188 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %186, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %11, align 4
  store i32 %189, i32* %3, align 4
  br label %199

190:                                              ; preds = %167
  br label %195

191:                                              ; preds = %134
  %192 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %193 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %192, i32 0, i32 1
  %194 = call i32 @dev_warn(%struct.device* %193, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %195

195:                                              ; preds = %191, %190
  %196 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %197 = load %struct.da9210*, %struct.da9210** %6, align 8
  %198 = call i32 @i2c_set_clientdata(%struct.i2c_client* %196, %struct.da9210* %197)
  store i32 0, i32* %3, align 4
  br label %199

199:                                              ; preds = %195, %184, %158, %128, %115, %61, %48, %34
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local %struct.da9210_pdata* @dev_get_platdata(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.da9210* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32* @of_get_regulator_init_data(%struct.device*, i64, i32*) #1

declare dso_local i32 @regmap_write(%struct.regulator_dev*, i32, i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.device*, i32*, %struct.regulator_config*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.da9210*) #1

declare dso_local i32 @regmap_update_bits(%struct.regulator_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.da9210*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
