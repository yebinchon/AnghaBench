; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9063-regulator.c_da9063_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9063-regulator.c_da9063_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9063_dev_model = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.da9063 = type { i64, i32 }
%struct.of_regulator_match = type { i32 }
%struct.da9063_regulators_pdata = type { i64 }
%struct.da9063_regulators = type { i32, %struct.da9063_regulator* }
%struct.da9063_regulator = type { %struct.da9063_regulators_pdata*, %struct.TYPE_11__, %struct.da9063_regulators_pdata*, %struct.TYPE_9__*, %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata*, %struct.da9063* }
%struct.regulator_config = type { i32, i32, %struct.da9063_regulator*, i32, %struct.TYPE_10__* }

@.str = private unnamed_addr constant [40 x i8] c"No regulators defined for the platform\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@regulators_models = common dso_local global %struct.da9063_dev_model* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Chip model not recognised (%u)\0A\00", align 1
@DA9063_REG_CONFIG_H = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Error while reading BUCKs configuration\0A\00", align 1
@DA9063_BCORE_MERGE = common dso_local global i32 0, align 4
@DA9063_BUCK_MERGE = common dso_local global i32 0, align 4
@regulator = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to register %s regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"LDO_LIM\00", align 1
@da9063_ldo_lim_event = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to request LDO_LIM IRQ.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9063_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9063_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da9063*, align 8
  %5 = alloca %struct.of_regulator_match*, align 8
  %6 = alloca %struct.da9063_regulators_pdata*, align 8
  %7 = alloca %struct.da9063_dev_model*, align 8
  %8 = alloca %struct.da9063_regulators*, align 8
  %9 = alloca %struct.da9063_regulator*, align 8
  %10 = alloca %struct.regulator_config, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.da9063* @dev_get_drvdata(i32 %22)
  store %struct.da9063* %23, %struct.da9063** %4, align 8
  store %struct.of_regulator_match* null, %struct.of_regulator_match** %5, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call %struct.da9063_regulators_pdata* @da9063_parse_regulators_dt(%struct.platform_device* %24, %struct.of_regulator_match** %5)
  store %struct.da9063_regulators_pdata* %25, %struct.da9063_regulators_pdata** %6, align 8
  %26 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %6, align 8
  %27 = call i64 @IS_ERR(%struct.da9063_regulators_pdata* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %6, align 8
  %31 = getelementptr inbounds %struct.da9063_regulators_pdata, %struct.da9063_regulators_pdata* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29, %1
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %424

40:                                               ; preds = %29
  %41 = load %struct.da9063_dev_model*, %struct.da9063_dev_model** @regulators_models, align 8
  store %struct.da9063_dev_model* %41, %struct.da9063_dev_model** %7, align 8
  br label %42

42:                                               ; preds = %57, %40
  %43 = load %struct.da9063_dev_model*, %struct.da9063_dev_model** %7, align 8
  %44 = getelementptr inbounds %struct.da9063_dev_model, %struct.da9063_dev_model* %43, i32 0, i32 2
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = icmp ne %struct.TYPE_9__* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.da9063_dev_model*, %struct.da9063_dev_model** %7, align 8
  %49 = getelementptr inbounds %struct.da9063_dev_model, %struct.da9063_dev_model* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.da9063*, %struct.da9063** %4, align 8
  %52 = getelementptr inbounds %struct.da9063, %struct.da9063* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %60

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.da9063_dev_model*, %struct.da9063_dev_model** %7, align 8
  %59 = getelementptr inbounds %struct.da9063_dev_model, %struct.da9063_dev_model* %58, i32 1
  store %struct.da9063_dev_model* %59, %struct.da9063_dev_model** %7, align 8
  br label %42

60:                                               ; preds = %55, %42
  %61 = load %struct.da9063_dev_model*, %struct.da9063_dev_model** %7, align 8
  %62 = getelementptr inbounds %struct.da9063_dev_model, %struct.da9063_dev_model* %61, i32 0, i32 2
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = icmp ne %struct.TYPE_9__* %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %60
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.da9063*, %struct.da9063** %4, align 8
  %69 = getelementptr inbounds %struct.da9063, %struct.da9063* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %424

74:                                               ; preds = %60
  %75 = load %struct.da9063*, %struct.da9063** %4, align 8
  %76 = getelementptr inbounds %struct.da9063, %struct.da9063* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @DA9063_REG_CONFIG_H, align 4
  %79 = call i32 @regmap_read(i32 %77, i32 %78, i32* %18)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* %17, align 4
  store i32 %86, i32* %2, align 4
  br label %424

87:                                               ; preds = %74
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* @DA9063_BCORE_MERGE, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* @DA9063_BUCK_MERGE, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %12, align 4
  %94 = load %struct.da9063_dev_model*, %struct.da9063_dev_model** %7, align 8
  %95 = getelementptr inbounds %struct.da9063_dev_model, %struct.da9063_dev_model* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %87
  %100 = load i32, i32* %16, align 4
  %101 = sub nsw i32 %100, 2
  store i32 %101, i32* %16, align 4
  br label %105

102:                                              ; preds = %87
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %16, align 4
  %110 = sub nsw i32 %109, 2
  store i32 %110, i32* %16, align 4
  br label %114

111:                                              ; preds = %105
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %16, align 4
  br label %114

114:                                              ; preds = %111, %108
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load %struct.da9063_regulators*, %struct.da9063_regulators** %8, align 8
  %118 = load i32, i32* @regulator, align 4
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @struct_size(%struct.da9063_regulators* %117, i32 %118, i32 %119)
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call %struct.da9063_regulators* @devm_kzalloc(%struct.TYPE_10__* %116, i32 %120, i32 %121)
  store %struct.da9063_regulators* %122, %struct.da9063_regulators** %8, align 8
  %123 = load %struct.da9063_regulators*, %struct.da9063_regulators** %8, align 8
  %124 = icmp ne %struct.da9063_regulators* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %114
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %2, align 4
  br label %424

128:                                              ; preds = %114
  %129 = load i32, i32* %16, align 4
  %130 = load %struct.da9063_regulators*, %struct.da9063_regulators** %8, align 8
  %131 = getelementptr inbounds %struct.da9063_regulators, %struct.da9063_regulators* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = load %struct.da9063_regulators*, %struct.da9063_regulators** %8, align 8
  %134 = call i32 @platform_set_drvdata(%struct.platform_device* %132, %struct.da9063_regulators* %133)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %135

135:                                              ; preds = %394, %167, %160, %153, %146, %128
  %136 = load i32, i32* %15, align 4
  %137 = load %struct.da9063_regulators*, %struct.da9063_regulators** %8, align 8
  %138 = getelementptr inbounds %struct.da9063_regulators, %struct.da9063_regulators* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %399

141:                                              ; preds = %135
  %142 = load i32, i32* %13, align 4
  switch i32 %142, label %171 [
    i32 133, label %143
    i32 132, label %143
    i32 129, label %150
    i32 130, label %150
    i32 131, label %157
    i32 128, label %164
  ]

143:                                              ; preds = %141, %141
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %135

149:                                              ; preds = %143
  br label %171

150:                                              ; preds = %141, %141
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %13, align 4
  br label %135

156:                                              ; preds = %150
  br label %171

157:                                              ; preds = %141
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %13, align 4
  br label %135

163:                                              ; preds = %157
  br label %171

164:                                              ; preds = %141
  %165 = load i32, i32* %12, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %13, align 4
  br label %135

170:                                              ; preds = %164
  br label %171

171:                                              ; preds = %141, %170, %163, %156, %149
  %172 = load %struct.da9063_regulators*, %struct.da9063_regulators** %8, align 8
  %173 = getelementptr inbounds %struct.da9063_regulators, %struct.da9063_regulators* %172, i32 0, i32 1
  %174 = load %struct.da9063_regulator*, %struct.da9063_regulator** %173, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %174, i64 %176
  store %struct.da9063_regulator* %177, %struct.da9063_regulator** %9, align 8
  %178 = load %struct.da9063*, %struct.da9063** %4, align 8
  %179 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %180 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %179, i32 0, i32 7
  store %struct.da9063* %178, %struct.da9063** %180, align 8
  %181 = load %struct.da9063_dev_model*, %struct.da9063_dev_model** %7, align 8
  %182 = getelementptr inbounds %struct.da9063_dev_model, %struct.da9063_dev_model* %181, i32 0, i32 2
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i64 %185
  %187 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %188 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %187, i32 0, i32 3
  store %struct.TYPE_9__* %186, %struct.TYPE_9__** %188, align 8
  %189 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %190 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %189, i32 0, i32 1
  %191 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %192 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %191, i32 0, i32 3
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 4
  %195 = bitcast %struct.TYPE_11__* %190 to i8*
  %196 = bitcast %struct.TYPE_11__* %194 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %195, i8* align 8 %196, i64 12, i1 false)
  %197 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %198 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %199 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 2
  store i32 %197, i32* %200, align 8
  %201 = load i32, i32* @THIS_MODULE, align 4
  %202 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %203 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  store i32 %201, i32* %204, align 4
  %205 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %206 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %205, i32 0, i32 3
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %239

212:                                              ; preds = %171
  %213 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %214 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %213, i32 0, i32 0
  %215 = load %struct.da9063*, %struct.da9063** %4, align 8
  %216 = getelementptr inbounds %struct.da9063, %struct.da9063* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %219 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %218, i32 0, i32 3
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = call i8* @devm_regmap_field_alloc(%struct.TYPE_10__* %214, i32 %217, i64 %223)
  %225 = bitcast i8* %224 to %struct.da9063_regulators_pdata*
  %226 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %227 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %226, i32 0, i32 6
  store %struct.da9063_regulators_pdata* %225, %struct.da9063_regulators_pdata** %227, align 8
  %228 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %229 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %228, i32 0, i32 6
  %230 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %229, align 8
  %231 = call i64 @IS_ERR(%struct.da9063_regulators_pdata* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %212
  %234 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %235 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %234, i32 0, i32 6
  %236 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %235, align 8
  %237 = call i32 @PTR_ERR(%struct.da9063_regulators_pdata* %236)
  store i32 %237, i32* %2, align 4
  br label %424

238:                                              ; preds = %212
  br label %239

239:                                              ; preds = %238, %171
  %240 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %241 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %240, i32 0, i32 3
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %274

247:                                              ; preds = %239
  %248 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %249 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %248, i32 0, i32 0
  %250 = load %struct.da9063*, %struct.da9063** %4, align 8
  %251 = getelementptr inbounds %struct.da9063, %struct.da9063* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %254 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %253, i32 0, i32 3
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = call i8* @devm_regmap_field_alloc(%struct.TYPE_10__* %249, i32 %252, i64 %258)
  %260 = bitcast i8* %259 to %struct.da9063_regulators_pdata*
  %261 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %262 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %261, i32 0, i32 5
  store %struct.da9063_regulators_pdata* %260, %struct.da9063_regulators_pdata** %262, align 8
  %263 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %264 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %263, i32 0, i32 5
  %265 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %264, align 8
  %266 = call i64 @IS_ERR(%struct.da9063_regulators_pdata* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %247
  %269 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %270 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %269, i32 0, i32 5
  %271 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %270, align 8
  %272 = call i32 @PTR_ERR(%struct.da9063_regulators_pdata* %271)
  store i32 %272, i32* %2, align 4
  br label %424

273:                                              ; preds = %247
  br label %274

274:                                              ; preds = %273, %239
  %275 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %276 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %275, i32 0, i32 3
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %309

282:                                              ; preds = %274
  %283 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %284 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %283, i32 0, i32 0
  %285 = load %struct.da9063*, %struct.da9063** %4, align 8
  %286 = getelementptr inbounds %struct.da9063, %struct.da9063* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %289 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %288, i32 0, i32 3
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = call i8* @devm_regmap_field_alloc(%struct.TYPE_10__* %284, i32 %287, i64 %293)
  %295 = bitcast i8* %294 to %struct.da9063_regulators_pdata*
  %296 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %297 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %296, i32 0, i32 4
  store %struct.da9063_regulators_pdata* %295, %struct.da9063_regulators_pdata** %297, align 8
  %298 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %299 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %298, i32 0, i32 4
  %300 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %299, align 8
  %301 = call i64 @IS_ERR(%struct.da9063_regulators_pdata* %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %282
  %304 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %305 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %304, i32 0, i32 4
  %306 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %305, align 8
  %307 = call i32 @PTR_ERR(%struct.da9063_regulators_pdata* %306)
  store i32 %307, i32* %2, align 4
  br label %424

308:                                              ; preds = %282
  br label %309

309:                                              ; preds = %308, %274
  %310 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %311 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %310, i32 0, i32 3
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %344

317:                                              ; preds = %309
  %318 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %319 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %318, i32 0, i32 0
  %320 = load %struct.da9063*, %struct.da9063** %4, align 8
  %321 = getelementptr inbounds %struct.da9063, %struct.da9063* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %324 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %323, i32 0, i32 3
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = call i8* @devm_regmap_field_alloc(%struct.TYPE_10__* %319, i32 %322, i64 %328)
  %330 = bitcast i8* %329 to %struct.da9063_regulators_pdata*
  %331 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %332 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %331, i32 0, i32 2
  store %struct.da9063_regulators_pdata* %330, %struct.da9063_regulators_pdata** %332, align 8
  %333 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %334 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %333, i32 0, i32 2
  %335 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %334, align 8
  %336 = call i64 @IS_ERR(%struct.da9063_regulators_pdata* %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %317
  %339 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %340 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %339, i32 0, i32 2
  %341 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %340, align 8
  %342 = call i32 @PTR_ERR(%struct.da9063_regulators_pdata* %341)
  store i32 %342, i32* %2, align 4
  br label %424

343:                                              ; preds = %317
  br label %344

344:                                              ; preds = %343, %309
  %345 = call i32 @memset(%struct.regulator_config* %10, i32 0, i32 32)
  %346 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %347 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 4
  store %struct.TYPE_10__* %347, %struct.TYPE_10__** %348, align 8
  %349 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %6, align 8
  %350 = load i32, i32* %13, align 4
  %351 = call i32 @da9063_get_regulator_initdata(%struct.da9063_regulators_pdata* %349, i32 %350)
  %352 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 3
  store i32 %351, i32* %352, align 8
  %353 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %354 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 2
  store %struct.da9063_regulator* %353, %struct.da9063_regulator** %354, align 8
  %355 = load %struct.of_regulator_match*, %struct.of_regulator_match** %5, align 8
  %356 = icmp ne %struct.of_regulator_match* %355, null
  br i1 %356, label %357, label %365

357:                                              ; preds = %344
  %358 = load %struct.of_regulator_match*, %struct.of_regulator_match** %5, align 8
  %359 = load i32, i32* %13, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %358, i64 %360
  %362 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 1
  store i32 %363, i32* %364, align 4
  br label %365

365:                                              ; preds = %357, %344
  %366 = load %struct.da9063*, %struct.da9063** %4, align 8
  %367 = getelementptr inbounds %struct.da9063, %struct.da9063* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 0
  store i32 %368, i32* %369, align 8
  %370 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %371 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %370, i32 0, i32 0
  %372 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %373 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %372, i32 0, i32 1
  %374 = call %struct.da9063_regulators_pdata* @devm_regulator_register(%struct.TYPE_10__* %371, %struct.TYPE_11__* %373, %struct.regulator_config* %10)
  %375 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %376 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %375, i32 0, i32 0
  store %struct.da9063_regulators_pdata* %374, %struct.da9063_regulators_pdata** %376, align 8
  %377 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %378 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %377, i32 0, i32 0
  %379 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %378, align 8
  %380 = call i64 @IS_ERR(%struct.da9063_regulators_pdata* %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %394

382:                                              ; preds = %365
  %383 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %384 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %383, i32 0, i32 0
  %385 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %386 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %384, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %388)
  %390 = load %struct.da9063_regulator*, %struct.da9063_regulator** %9, align 8
  %391 = getelementptr inbounds %struct.da9063_regulator, %struct.da9063_regulator* %390, i32 0, i32 0
  %392 = load %struct.da9063_regulators_pdata*, %struct.da9063_regulators_pdata** %391, align 8
  %393 = call i32 @PTR_ERR(%struct.da9063_regulators_pdata* %392)
  store i32 %393, i32* %2, align 4
  br label %424

394:                                              ; preds = %365
  %395 = load i32, i32* %13, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %13, align 4
  %397 = load i32, i32* %15, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %15, align 4
  br label %135

399:                                              ; preds = %135
  %400 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %401 = call i32 @platform_get_irq_byname(%struct.platform_device* %400, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %401, i32* %14, align 4
  %402 = load i32, i32* %14, align 4
  %403 = icmp slt i32 %402, 0
  br i1 %403, label %404, label %406

404:                                              ; preds = %399
  %405 = load i32, i32* %14, align 4
  store i32 %405, i32* %2, align 4
  br label %424

406:                                              ; preds = %399
  %407 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %408 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %407, i32 0, i32 0
  %409 = load i32, i32* %14, align 4
  %410 = load i32, i32* @da9063_ldo_lim_event, align 4
  %411 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %412 = load i32, i32* @IRQF_ONESHOT, align 4
  %413 = or i32 %411, %412
  %414 = load %struct.da9063_regulators*, %struct.da9063_regulators** %8, align 8
  %415 = call i32 @devm_request_threaded_irq(%struct.TYPE_10__* %408, i32 %409, i32* null, i32 %410, i32 %413, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.da9063_regulators* %414)
  store i32 %415, i32* %17, align 4
  %416 = load i32, i32* %17, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %423

418:                                              ; preds = %406
  %419 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %420 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %419, i32 0, i32 0
  %421 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %420, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %422 = load i32, i32* %17, align 4
  store i32 %422, i32* %2, align 4
  br label %424

423:                                              ; preds = %406
  store i32 0, i32* %2, align 4
  br label %424

424:                                              ; preds = %423, %418, %404, %382, %338, %303, %268, %233, %125, %82, %65, %34
  %425 = load i32, i32* %2, align 4
  ret i32 %425
}

declare dso_local %struct.da9063* @dev_get_drvdata(i32) #1

declare dso_local %struct.da9063_regulators_pdata* @da9063_parse_regulators_dt(%struct.platform_device*, %struct.of_regulator_match**) #1

declare dso_local i64 @IS_ERR(%struct.da9063_regulators_pdata*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local %struct.da9063_regulators* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.da9063_regulators*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da9063_regulators*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @devm_regmap_field_alloc(%struct.TYPE_10__*, i32, i64) #1

declare dso_local i32 @PTR_ERR(%struct.da9063_regulators_pdata*) #1

declare dso_local i32 @memset(%struct.regulator_config*, i32, i32) #1

declare dso_local i32 @da9063_get_regulator_initdata(%struct.da9063_regulators_pdata*, i32) #1

declare dso_local %struct.da9063_regulators_pdata* @devm_regulator_register(%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.regulator_config*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_10__*, i32, i32*, i32, i32, i8*, %struct.da9063_regulators*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
