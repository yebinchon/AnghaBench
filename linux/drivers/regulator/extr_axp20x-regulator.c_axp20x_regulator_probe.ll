; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_axp20x-regulator.c_axp20x_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_axp20x-regulator.c_axp20x_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_desc = type { i8*, i8* }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.regulator_dev = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.axp20x_dev = type { i32, i32 }
%struct.regulator_config = type { %struct.axp20x_dev*, i32, %struct.TYPE_10__* }

@axp22x_regulators = common dso_local global %struct.regulator_desc* null, align 8
@AXP22X_DCDC1 = common dso_local global i64 0, align 8
@AXP22X_DCDC5 = common dso_local global i64 0, align 8
@axp20x_regulators = common dso_local global %struct.regulator_desc* null, align 8
@AXP20X_REG_ID_MAX = common dso_local global i32 0, align 4
@AXP22X_REG_ID_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"x-powers,drive-vbus-en\00", align 1
@axp803_regulators = common dso_local global %struct.regulator_desc* null, align 8
@AXP803_REG_ID_MAX = common dso_local global i32 0, align 4
@axp806_regulators = common dso_local global %struct.regulator_desc* null, align 8
@AXP806_REG_ID_MAX = common dso_local global i32 0, align 4
@axp809_regulators = common dso_local global %struct.regulator_desc* null, align 8
@AXP809_REG_ID_MAX = common dso_local global i32 0, align 4
@axp813_regulators = common dso_local global %struct.regulator_desc* null, align 8
@AXP813_REG_ID_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unsupported AXP variant: %ld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AXP813_FLDO3 = common dso_local global i32 0, align 4
@AXP22X_DC1SW = common dso_local global i32 0, align 4
@AXP803_DC1SW = common dso_local global i32 0, align 4
@AXP809_DC1SW = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AXP22X_DC5LDO = common dso_local global i32 0, align 4
@AXP809_DC5LDO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed to register %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"x-powers,dcdc-workmode\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to set workmode on %s\0A\00", align 1
@AXP809_DCDC1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"regulator-name\00", align 1
@AXP809_DCDC5 = common dso_local global i32 0, align 4
@AXP20X_OVER_TMP = common dso_local global i32 0, align 4
@AXP22X_MISC_N_VBUSEN_FUNC = common dso_local global i32 0, align 4
@axp22x_drivevbus_regulator = common dso_local global %struct.regulator_desc zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to register drivevbus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axp20x_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca %struct.axp20x_dev*, align 8
  %6 = alloca %struct.regulator_desc*, align 8
  %7 = alloca %struct.regulator_config, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.regulator_desc*, align 8
  %16 = alloca %struct.regulator_desc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = call %struct.axp20x_dev* @dev_get_drvdata(%struct.TYPE_10__* %20)
  store %struct.axp20x_dev* %21, %struct.axp20x_dev** %5, align 8
  %22 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 0
  %23 = load %struct.axp20x_dev*, %struct.axp20x_dev** %5, align 8
  store %struct.axp20x_dev* %23, %struct.axp20x_dev** %22, align 8
  %24 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 1
  %25 = load %struct.axp20x_dev*, %struct.axp20x_dev** %5, align 8
  %26 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 8
  %28 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 2
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %28, align 8
  %33 = load %struct.regulator_desc*, %struct.regulator_desc** @axp22x_regulators, align 8
  %34 = load i64, i64* @AXP22X_DCDC1, align 8
  %35 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %33, i64 %34
  %36 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %12, align 8
  %38 = load %struct.regulator_desc*, %struct.regulator_desc** @axp22x_regulators, align 8
  %39 = load i64, i64* @AXP22X_DCDC5, align 8
  %40 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %38, i64 %39
  %41 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %43 = load %struct.axp20x_dev*, %struct.axp20x_dev** %5, align 8
  %44 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %85 [
    i32 135, label %46
    i32 134, label %46
    i32 133, label %49
    i32 132, label %49
    i32 131, label %59
    i32 130, label %69
    i32 129, label %72
    i32 128, label %75
  ]

46:                                               ; preds = %1, %1
  %47 = load %struct.regulator_desc*, %struct.regulator_desc** @axp20x_regulators, align 8
  store %struct.regulator_desc* %47, %struct.regulator_desc** %6, align 8
  %48 = load i32, i32* @AXP20X_REG_ID_MAX, align 4
  store i32 %48, i32* %10, align 4
  br label %94

49:                                               ; preds = %1, %1
  %50 = load %struct.regulator_desc*, %struct.regulator_desc** @axp22x_regulators, align 8
  store %struct.regulator_desc* %50, %struct.regulator_desc** %6, align 8
  %51 = load i32, i32* @AXP22X_REG_ID_MAX, align 4
  store i32 %51, i32* %10, align 4
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @of_property_read_bool(i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %58, i32* %14, align 4
  br label %94

59:                                               ; preds = %1
  %60 = load %struct.regulator_desc*, %struct.regulator_desc** @axp803_regulators, align 8
  store %struct.regulator_desc* %60, %struct.regulator_desc** %6, align 8
  %61 = load i32, i32* @AXP803_REG_ID_MAX, align 4
  store i32 %61, i32* %10, align 4
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @of_property_read_bool(i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %68, i32* %14, align 4
  br label %94

69:                                               ; preds = %1
  %70 = load %struct.regulator_desc*, %struct.regulator_desc** @axp806_regulators, align 8
  store %struct.regulator_desc* %70, %struct.regulator_desc** %6, align 8
  %71 = load i32, i32* @AXP806_REG_ID_MAX, align 4
  store i32 %71, i32* %10, align 4
  br label %94

72:                                               ; preds = %1
  %73 = load %struct.regulator_desc*, %struct.regulator_desc** @axp809_regulators, align 8
  store %struct.regulator_desc* %73, %struct.regulator_desc** %6, align 8
  %74 = load i32, i32* @AXP809_REG_ID_MAX, align 4
  store i32 %74, i32* %10, align 4
  br label %94

75:                                               ; preds = %1
  %76 = load %struct.regulator_desc*, %struct.regulator_desc** @axp813_regulators, align 8
  store %struct.regulator_desc* %76, %struct.regulator_desc** %6, align 8
  %77 = load i32, i32* @AXP813_REG_ID_MAX, align 4
  store i32 %77, i32* %10, align 4
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @of_property_read_bool(i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %84, i32* %14, align 4
  br label %94

85:                                               ; preds = %1
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load %struct.axp20x_dev*, %struct.axp20x_dev** %5, align 8
  %89 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %323

94:                                               ; preds = %75, %72, %69, %59, %49, %46
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = call i32 @axp20x_regulator_parse_dt(%struct.platform_device* %95)
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %296, %94
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %299

101:                                              ; preds = %97
  %102 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %102, i64 %104
  store %struct.regulator_desc* %105, %struct.regulator_desc** %15, align 8
  %106 = load %struct.axp20x_dev*, %struct.axp20x_dev** %5, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i64 @axp20x_is_polyphase_slave(%struct.axp20x_dev* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %296

111:                                              ; preds = %101
  %112 = load %struct.axp20x_dev*, %struct.axp20x_dev** %5, align 8
  %113 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 128
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @AXP813_FLDO3, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %296

121:                                              ; preds = %116, %111
  %122 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %123 = load %struct.regulator_desc*, %struct.regulator_desc** @axp22x_regulators, align 8
  %124 = icmp eq %struct.regulator_desc* %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @AXP22X_DC1SW, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %145, label %129

129:                                              ; preds = %125, %121
  %130 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %131 = load %struct.regulator_desc*, %struct.regulator_desc** @axp803_regulators, align 8
  %132 = icmp eq %struct.regulator_desc* %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @AXP803_DC1SW, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %145, label %137

137:                                              ; preds = %133, %129
  %138 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %139 = load %struct.regulator_desc*, %struct.regulator_desc** @axp809_regulators, align 8
  %140 = icmp eq %struct.regulator_desc* %138, %139
  br i1 %140, label %141, label %167

141:                                              ; preds = %137
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @AXP809_DC1SW, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %167

145:                                              ; preds = %141, %133, %125
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = load i32, i32* @GFP_KERNEL, align 4
  %149 = call %struct.regulator_desc* @devm_kzalloc(%struct.TYPE_9__* %147, i32 16, i32 %148)
  store %struct.regulator_desc* %149, %struct.regulator_desc** %16, align 8
  %150 = load %struct.regulator_desc*, %struct.regulator_desc** %16, align 8
  %151 = icmp ne %struct.regulator_desc* %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %145
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %323

155:                                              ; preds = %145
  %156 = load %struct.regulator_desc*, %struct.regulator_desc** %16, align 8
  %157 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %157, i64 %159
  %161 = bitcast %struct.regulator_desc* %156 to i8*
  %162 = bitcast %struct.regulator_desc* %160 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %161, i8* align 8 %162, i64 16, i1 false)
  %163 = load i8*, i8** %12, align 8
  %164 = load %struct.regulator_desc*, %struct.regulator_desc** %16, align 8
  %165 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %164, i32 0, i32 1
  store i8* %163, i8** %165, align 8
  %166 = load %struct.regulator_desc*, %struct.regulator_desc** %16, align 8
  store %struct.regulator_desc* %166, %struct.regulator_desc** %15, align 8
  br label %167

167:                                              ; preds = %155, %141, %137
  %168 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %169 = load %struct.regulator_desc*, %struct.regulator_desc** @axp22x_regulators, align 8
  %170 = icmp eq %struct.regulator_desc* %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @AXP22X_DC5LDO, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %183, label %175

175:                                              ; preds = %171, %167
  %176 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %177 = load %struct.regulator_desc*, %struct.regulator_desc** @axp809_regulators, align 8
  %178 = icmp eq %struct.regulator_desc* %176, %177
  br i1 %178, label %179, label %205

179:                                              ; preds = %175
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @AXP809_DC5LDO, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %205

183:                                              ; preds = %179, %171
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = load i32, i32* @GFP_KERNEL, align 4
  %187 = call %struct.regulator_desc* @devm_kzalloc(%struct.TYPE_9__* %185, i32 16, i32 %186)
  store %struct.regulator_desc* %187, %struct.regulator_desc** %16, align 8
  %188 = load %struct.regulator_desc*, %struct.regulator_desc** %16, align 8
  %189 = icmp ne %struct.regulator_desc* %188, null
  br i1 %189, label %193, label %190

190:                                              ; preds = %183
  %191 = load i32, i32* @ENOMEM, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %2, align 4
  br label %323

193:                                              ; preds = %183
  %194 = load %struct.regulator_desc*, %struct.regulator_desc** %16, align 8
  %195 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %195, i64 %197
  %199 = bitcast %struct.regulator_desc* %194 to i8*
  %200 = bitcast %struct.regulator_desc* %198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %199, i8* align 8 %200, i64 16, i1 false)
  %201 = load i8*, i8** %13, align 8
  %202 = load %struct.regulator_desc*, %struct.regulator_desc** %16, align 8
  %203 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %202, i32 0, i32 1
  store i8* %201, i8** %203, align 8
  %204 = load %struct.regulator_desc*, %struct.regulator_desc** %16, align 8
  store %struct.regulator_desc* %204, %struct.regulator_desc** %15, align 8
  br label %205

205:                                              ; preds = %193, %179, %175
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = load %struct.regulator_desc*, %struct.regulator_desc** %15, align 8
  %209 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_9__* %207, %struct.regulator_desc* %208, %struct.regulator_config* %7)
  store %struct.regulator_dev* %209, %struct.regulator_dev** %4, align 8
  %210 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %211 = call i64 @IS_ERR(%struct.regulator_dev* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %225

213:                                              ; preds = %205
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %216, i64 %218
  %220 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %215, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %221)
  %223 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %224 = call i32 @PTR_ERR(%struct.regulator_dev* %223)
  store i32 %224, i32* %2, align 4
  br label %323

225:                                              ; preds = %205
  %226 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %227 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @of_property_read_u32(i32 %229, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* %11)
  store i32 %230, i32* %8, align 4
  %231 = load i32, i32* %8, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %249, label %233

233:                                              ; preds = %225
  %234 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* %11, align 4
  %237 = call i64 @axp20x_set_dcdc_workmode(%struct.regulator_dev* %234, i32 %235, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %233
  %240 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %241 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %240, i32 0, i32 0
  %242 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %243 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %242, i32 0, i32 1
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %241, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %246)
  br label %248

248:                                              ; preds = %239, %233
  br label %249

249:                                              ; preds = %248, %225
  %250 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %251 = load %struct.regulator_desc*, %struct.regulator_desc** @axp22x_regulators, align 8
  %252 = icmp eq %struct.regulator_desc* %250, %251
  br i1 %252, label %253, label %258

253:                                              ; preds = %249
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = load i64, i64* @AXP22X_DCDC1, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %266, label %258

258:                                              ; preds = %253, %249
  %259 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %260 = load %struct.regulator_desc*, %struct.regulator_desc** @axp809_regulators, align 8
  %261 = icmp eq %struct.regulator_desc* %259, %260
  br i1 %261, label %262, label %272

262:                                              ; preds = %258
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* @AXP809_DCDC1, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %272

266:                                              ; preds = %262, %253
  %267 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %268 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @of_property_read_string(i32 %270, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %12)
  br label %272

272:                                              ; preds = %266, %262, %258
  %273 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %274 = load %struct.regulator_desc*, %struct.regulator_desc** @axp22x_regulators, align 8
  %275 = icmp eq %struct.regulator_desc* %273, %274
  br i1 %275, label %276, label %281

276:                                              ; preds = %272
  %277 = load i32, i32* %9, align 4
  %278 = sext i32 %277 to i64
  %279 = load i64, i64* @AXP22X_DCDC5, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %289, label %281

281:                                              ; preds = %276, %272
  %282 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %283 = load %struct.regulator_desc*, %struct.regulator_desc** @axp809_regulators, align 8
  %284 = icmp eq %struct.regulator_desc* %282, %283
  br i1 %284, label %285, label %295

285:                                              ; preds = %281
  %286 = load i32, i32* %9, align 4
  %287 = load i32, i32* @AXP809_DCDC5, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %295

289:                                              ; preds = %285, %276
  %290 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %291 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @of_property_read_string(i32 %293, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %13)
  br label %295

295:                                              ; preds = %289, %285, %281
  br label %296

296:                                              ; preds = %295, %120, %110
  %297 = load i32, i32* %9, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %9, align 4
  br label %97

299:                                              ; preds = %97
  %300 = load i32, i32* %14, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %322

302:                                              ; preds = %299
  %303 = load %struct.axp20x_dev*, %struct.axp20x_dev** %5, align 8
  %304 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @AXP20X_OVER_TMP, align 4
  %307 = load i32, i32* @AXP22X_MISC_N_VBUSEN_FUNC, align 4
  %308 = call i32 @regmap_update_bits(i32 %305, i32 %306, i32 %307, i32 0)
  %309 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %310 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %309, i32 0, i32 0
  %311 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_9__* %310, %struct.regulator_desc* @axp22x_drivevbus_regulator, %struct.regulator_config* %7)
  store %struct.regulator_dev* %311, %struct.regulator_dev** %4, align 8
  %312 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %313 = call i64 @IS_ERR(%struct.regulator_dev* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %302
  %316 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %317 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %316, i32 0, i32 0
  %318 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %317, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %319 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %320 = call i32 @PTR_ERR(%struct.regulator_dev* %319)
  store i32 %320, i32* %2, align 4
  br label %323

321:                                              ; preds = %302
  br label %322

322:                                              ; preds = %321, %299
  store i32 0, i32* %2, align 4
  br label %323

323:                                              ; preds = %322, %315, %213, %190, %152, %85
  %324 = load i32, i32* %2, align 4
  ret i32 %324
}

declare dso_local %struct.axp20x_dev* @dev_get_drvdata(%struct.TYPE_10__*) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @axp20x_regulator_parse_dt(%struct.platform_device*) #1

declare dso_local i64 @axp20x_is_polyphase_slave(%struct.axp20x_dev*, i32) #1

declare dso_local %struct.regulator_desc* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_9__*, %struct.regulator_desc*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i64 @axp20x_set_dcdc_workmode(%struct.regulator_dev*, i32, i32) #1

declare dso_local i32 @of_property_read_string(i32, i8*, i8**) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
