; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_pmic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_pmic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.voltage_map_desc = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.max8997_dev = type { %struct.i2c_client*, %struct.TYPE_12__*, %struct.max8997_platform_data* }
%struct.i2c_client = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.max8997_platform_data = type { i32, i32, %struct.TYPE_11__*, i64, i64, i64, i32*, i64*, i64*, i64*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.regulator_config = type { i32, %struct.max8997_data*, i32, %struct.TYPE_15__* }
%struct.max8997_data = type { i32, i32, i32*, i32*, i32*, i32, %struct.TYPE_15__*, i32, i32, i64, i64, i64, %struct.max8997_dev* }
%struct.regulator_dev = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"No platform init data supplied.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@buck1245_voltage_map_desc = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@MAX8997_REG_BUCK1DVS1 = common dso_local global i64 0, align 8
@MAX8997_REG_BUCK2DVS1 = common dso_local global i64 0, align 8
@MAX8997_REG_BUCK5DVS1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"GPIO NOT VALID\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"MAX8997 SET1\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"MAX8997 SET2\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"MAX8997 SET3\00", align 1
@MAX8997_REG_BUCK1CTRL = common dso_local global i64 0, align 8
@MAX8997_REG_BUCK2CTRL = common dso_local global i64 0, align 8
@MAX8997_REG_BUCK5CTRL = common dso_local global i64 0, align 8
@MAX8997_REG_BUCKRAMP = common dso_local global i32 0, align 4
@reg_voltage_map = common dso_local global %struct.voltage_map_desc** null, align 8
@regulators = common dso_local global %struct.TYPE_13__* null, align 8
@MAX8997_ESAFEOUT1 = common dso_local global i32 0, align 4
@MAX8997_ESAFEOUT2 = common dso_local global i32 0, align 4
@safeoutvolt = common dso_local global i32 0, align 4
@MAX8997_CHARGER_CV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"regulator init failed for %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max8997_pmic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_pmic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max8997_dev*, align 8
  %5 = alloca %struct.max8997_platform_data*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca %struct.max8997_data*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.voltage_map_desc*, align 8
  %17 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.max8997_dev* @dev_get_drvdata(i32 %21)
  store %struct.max8997_dev* %22, %struct.max8997_dev** %4, align 8
  %23 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %24 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %23, i32 0, i32 2
  %25 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %24, align 8
  store %struct.max8997_platform_data* %25, %struct.max8997_platform_data** %5, align 8
  %26 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 32, i1 false)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %27 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %28 = icmp ne %struct.max8997_platform_data* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %628

35:                                               ; preds = %1
  %36 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %37 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %45 = call i32 @max8997_pmic_dt_parse_pdata(%struct.platform_device* %43, %struct.max8997_platform_data* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %2, align 4
  br label %628

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %35
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.max8997_data* @devm_kzalloc(%struct.TYPE_15__* %53, i32 88, i32 %54)
  store %struct.max8997_data* %55, %struct.max8997_data** %8, align 8
  %56 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %57 = icmp ne %struct.max8997_data* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %628

61:                                               ; preds = %51
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %65 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %64, i32 0, i32 6
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %65, align 8
  %66 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %67 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %68 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %67, i32 0, i32 12
  store %struct.max8997_dev* %66, %struct.max8997_dev** %68, align 8
  %69 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %70 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %73 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %76 = call i32 @platform_set_drvdata(%struct.platform_device* %74, %struct.max8997_data* %75)
  %77 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %78 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %77, i32 0, i32 12
  %79 = load %struct.max8997_dev*, %struct.max8997_dev** %78, align 8
  %80 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %79, i32 0, i32 0
  %81 = load %struct.i2c_client*, %struct.i2c_client** %80, align 8
  store %struct.i2c_client* %81, %struct.i2c_client** %9, align 8
  %82 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %83 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %86 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %88 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %91 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %90, i32 0, i32 11
  store i64 %89, i64* %91, align 8
  %92 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %93 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %96 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %95, i32 0, i32 10
  store i64 %94, i64* %96, align 8
  %97 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %98 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %101 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %100, i32 0, i32 9
  store i64 %99, i64* %101, align 8
  %102 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %103 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %106 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %105, i32 0, i32 6
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @memcpy(i32 %104, i32* %107, i32 12)
  %109 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %110 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %113 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %112, i32 0, i32 7
  store i32 %111, i32* %113, align 8
  %114 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %115 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %61
  %119 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %120 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %125 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br label %128

128:                                              ; preds = %123, %118, %61
  %129 = phi i1 [ true, %118 ], [ true, %61 ], [ %127, %123 ]
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 8, i32 1
  store i32 %131, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %132

132:                                              ; preds = %275, %128
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %278

136:                                              ; preds = %132
  %137 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %138 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %137, i32 0, i32 9
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %145 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %144, i32 0, i32 9
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @buck1245_voltage_map_desc, i32 0, i32 0), align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @max8997_get_voltage_proper_val(%struct.TYPE_14__* @buck1245_voltage_map_desc, i64 %143, i64 %152)
  store i32 %153, i32* %11, align 4
  %154 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %155 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %153, i32* %159, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %136
  %163 = load i32, i32* %11, align 4
  store i32 %163, i32* %2, align 4
  br label %628

164:                                              ; preds = %136
  %165 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %166 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %165, i32 0, i32 8
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %173 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %172, i32 0, i32 8
  %174 = load i64*, i64** %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @buck1245_voltage_map_desc, i32 0, i32 0), align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @max8997_get_voltage_proper_val(%struct.TYPE_14__* @buck1245_voltage_map_desc, i64 %171, i64 %180)
  store i32 %181, i32* %11, align 4
  %182 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %183 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %10, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %181, i32* %187, align 4
  %188 = load i32, i32* %11, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %164
  %191 = load i32, i32* %11, align 4
  store i32 %191, i32* %2, align 4
  br label %628

192:                                              ; preds = %164
  %193 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %194 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %193, i32 0, i32 7
  %195 = load i64*, i64** %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %201 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %200, i32 0, i32 7
  %202 = load i64*, i64** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @buck1245_voltage_map_desc, i32 0, i32 0), align 8
  %208 = add nsw i64 %206, %207
  %209 = call i32 @max8997_get_voltage_proper_val(%struct.TYPE_14__* @buck1245_voltage_map_desc, i64 %199, i64 %208)
  store i32 %209, i32* %11, align 4
  %210 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %211 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %210, i32 0, i32 4
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %10, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 %209, i32* %215, align 4
  %216 = load i32, i32* %11, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %192
  %219 = load i32, i32* %11, align 4
  store i32 %219, i32* %2, align 4
  br label %628

220:                                              ; preds = %192
  %221 = load i32, i32* %13, align 4
  %222 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %223 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = icmp slt i32 %221, %228
  br i1 %229, label %230, label %238

230:                                              ; preds = %220
  %231 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %232 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %10, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %13, align 4
  br label %238

238:                                              ; preds = %230, %220
  %239 = load i32, i32* %14, align 4
  %240 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %241 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %240, i32 0, i32 3
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %10, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = icmp slt i32 %239, %246
  br i1 %247, label %248, label %256

248:                                              ; preds = %238
  %249 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %250 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %249, i32 0, i32 3
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %10, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %14, align 4
  br label %256

256:                                              ; preds = %248, %238
  %257 = load i32, i32* %15, align 4
  %258 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %259 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %258, i32 0, i32 4
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %10, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = icmp slt i32 %257, %264
  br i1 %265, label %266, label %274

266:                                              ; preds = %256
  %267 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %268 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %267, i32 0, i32 4
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %10, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  store i32 %273, i32* %15, align 4
  br label %274

274:                                              ; preds = %266, %256
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %10, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %10, align 4
  br label %132

278:                                              ; preds = %132
  store i32 0, i32* %10, align 4
  br label %279

279:                                              ; preds = %304, %278
  %280 = load i32, i32* %10, align 4
  %281 = icmp slt i32 %280, 8
  br i1 %281, label %282, label %307

282:                                              ; preds = %279
  %283 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %284 = load i64, i64* @MAX8997_REG_BUCK1DVS1, align 8
  %285 = load i32, i32* %10, align 4
  %286 = sext i32 %285 to i64
  %287 = add nsw i64 %284, %286
  %288 = load i32, i32* %13, align 4
  %289 = call i32 @max8997_update_reg(%struct.i2c_client* %283, i64 %287, i32 %288, i32 63)
  %290 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %291 = load i64, i64* @MAX8997_REG_BUCK2DVS1, align 8
  %292 = load i32, i32* %10, align 4
  %293 = sext i32 %292 to i64
  %294 = add nsw i64 %291, %293
  %295 = load i32, i32* %14, align 4
  %296 = call i32 @max8997_update_reg(%struct.i2c_client* %290, i64 %294, i32 %295, i32 63)
  %297 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %298 = load i64, i64* @MAX8997_REG_BUCK5DVS1, align 8
  %299 = load i32, i32* %10, align 4
  %300 = sext i32 %299 to i64
  %301 = add nsw i64 %298, %300
  %302 = load i32, i32* %15, align 4
  %303 = call i32 @max8997_update_reg(%struct.i2c_client* %297, i64 %301, i32 %302, i32 63)
  br label %304

304:                                              ; preds = %282
  %305 = load i32, i32* %10, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %10, align 4
  br label %279

307:                                              ; preds = %279
  store i32 0, i32* %10, align 4
  br label %308

308:                                              ; preds = %352, %307
  %309 = load i32, i32* %10, align 4
  %310 = load i32, i32* %12, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %312, label %355

312:                                              ; preds = %308
  %313 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %314 = load i64, i64* @MAX8997_REG_BUCK1DVS1, align 8
  %315 = load i32, i32* %10, align 4
  %316 = sext i32 %315 to i64
  %317 = add nsw i64 %314, %316
  %318 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %319 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %318, i32 0, i32 2
  %320 = load i32*, i32** %319, align 8
  %321 = load i32, i32* %10, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @max8997_update_reg(%struct.i2c_client* %313, i64 %317, i32 %324, i32 63)
  %326 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %327 = load i64, i64* @MAX8997_REG_BUCK2DVS1, align 8
  %328 = load i32, i32* %10, align 4
  %329 = sext i32 %328 to i64
  %330 = add nsw i64 %327, %329
  %331 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %332 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %331, i32 0, i32 3
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %10, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @max8997_update_reg(%struct.i2c_client* %326, i64 %330, i32 %337, i32 63)
  %339 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %340 = load i64, i64* @MAX8997_REG_BUCK5DVS1, align 8
  %341 = load i32, i32* %10, align 4
  %342 = sext i32 %341 to i64
  %343 = add nsw i64 %340, %342
  %344 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %345 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %344, i32 0, i32 4
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* %10, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @max8997_update_reg(%struct.i2c_client* %339, i64 %343, i32 %350, i32 63)
  br label %352

352:                                              ; preds = %312
  %353 = load i32, i32* %10, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %10, align 4
  br label %308

355:                                              ; preds = %308
  %356 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %357 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %356, i32 0, i32 5
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %370, label %360

360:                                              ; preds = %355
  %361 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %362 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %361, i32 0, i32 4
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %370, label %365

365:                                              ; preds = %360
  %366 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %367 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %366, i32 0, i32 3
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %473

370:                                              ; preds = %365, %360, %355
  %371 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %372 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %371, i32 0, i32 6
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 0
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @gpio_is_valid(i32 %375)
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %394

378:                                              ; preds = %370
  %379 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %380 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %379, i32 0, i32 6
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 1
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @gpio_is_valid(i32 %383)
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %394

386:                                              ; preds = %378
  %387 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %388 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %387, i32 0, i32 6
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 2
  %391 = load i32, i32* %390, align 4
  %392 = call i32 @gpio_is_valid(i32 %391)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %400, label %394

394:                                              ; preds = %386, %378, %370
  %395 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %396 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %395, i32 0, i32 0
  %397 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %396, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %398 = load i32, i32* @EINVAL, align 4
  %399 = sub nsw i32 0, %398
  store i32 %399, i32* %2, align 4
  br label %628

400:                                              ; preds = %386
  %401 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %402 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %401, i32 0, i32 0
  %403 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %404 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %403, i32 0, i32 6
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 0
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @devm_gpio_request(%struct.TYPE_15__* %402, i32 %407, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %408, i32* %11, align 4
  %409 = load i32, i32* %11, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %413

411:                                              ; preds = %400
  %412 = load i32, i32* %11, align 4
  store i32 %412, i32* %2, align 4
  br label %628

413:                                              ; preds = %400
  %414 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %415 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %414, i32 0, i32 0
  %416 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %417 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %416, i32 0, i32 6
  %418 = load i32*, i32** %417, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 1
  %420 = load i32, i32* %419, align 4
  %421 = call i32 @devm_gpio_request(%struct.TYPE_15__* %415, i32 %420, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %421, i32* %11, align 4
  %422 = load i32, i32* %11, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %426

424:                                              ; preds = %413
  %425 = load i32, i32* %11, align 4
  store i32 %425, i32* %2, align 4
  br label %628

426:                                              ; preds = %413
  %427 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %428 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %427, i32 0, i32 0
  %429 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %430 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %429, i32 0, i32 6
  %431 = load i32*, i32** %430, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 2
  %433 = load i32, i32* %432, align 4
  %434 = call i32 @devm_gpio_request(%struct.TYPE_15__* %428, i32 %433, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 %434, i32* %11, align 4
  %435 = load i32, i32* %11, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %439

437:                                              ; preds = %426
  %438 = load i32, i32* %11, align 4
  store i32 %438, i32* %2, align 4
  br label %628

439:                                              ; preds = %426
  %440 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %441 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %440, i32 0, i32 6
  %442 = load i32*, i32** %441, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 0
  %444 = load i32, i32* %443, align 4
  %445 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %446 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = ashr i32 %447, 2
  %449 = and i32 %448, 1
  %450 = call i32 @gpio_direction_output(i32 %444, i32 %449)
  %451 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %452 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %451, i32 0, i32 6
  %453 = load i32*, i32** %452, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 1
  %455 = load i32, i32* %454, align 4
  %456 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %457 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 4
  %459 = ashr i32 %458, 1
  %460 = and i32 %459, 1
  %461 = call i32 @gpio_direction_output(i32 %455, i32 %460)
  %462 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %463 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %462, i32 0, i32 6
  %464 = load i32*, i32** %463, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 2
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %468 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 4
  %470 = ashr i32 %469, 0
  %471 = and i32 %470, 1
  %472 = call i32 @gpio_direction_output(i32 %466, i32 %471)
  br label %473

473:                                              ; preds = %439, %365
  %474 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %475 = load i64, i64* @MAX8997_REG_BUCK1CTRL, align 8
  %476 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %477 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %476, i32 0, i32 5
  %478 = load i64, i64* %477, align 8
  %479 = icmp ne i64 %478, 0
  %480 = zext i1 %479 to i64
  %481 = select i1 %479, i32 2, i32 0
  %482 = call i32 @max8997_update_reg(%struct.i2c_client* %474, i64 %475, i32 %481, i32 2)
  %483 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %484 = load i64, i64* @MAX8997_REG_BUCK2CTRL, align 8
  %485 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %486 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %485, i32 0, i32 4
  %487 = load i64, i64* %486, align 8
  %488 = icmp ne i64 %487, 0
  %489 = zext i1 %488 to i64
  %490 = select i1 %488, i32 2, i32 0
  %491 = call i32 @max8997_update_reg(%struct.i2c_client* %483, i64 %484, i32 %490, i32 2)
  %492 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %493 = load i64, i64* @MAX8997_REG_BUCK5CTRL, align 8
  %494 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %495 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %494, i32 0, i32 3
  %496 = load i64, i64* %495, align 8
  %497 = icmp ne i64 %496, 0
  %498 = zext i1 %497 to i64
  %499 = select i1 %497, i32 2, i32 0
  %500 = call i32 @max8997_update_reg(%struct.i2c_client* %492, i64 %493, i32 %499, i32 2)
  %501 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %502 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %501, i32 0, i32 5
  store i32 10, i32* %502, align 8
  %503 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %504 = load i32, i32* @MAX8997_REG_BUCKRAMP, align 4
  %505 = call i32 @max8997_write_reg(%struct.i2c_client* %503, i32 %504, i32 249)
  store i32 0, i32* %10, align 4
  br label %506

506:                                              ; preds = %624, %473
  %507 = load i32, i32* %10, align 4
  %508 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %509 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = icmp slt i32 %507, %510
  br i1 %511, label %512, label %627

512:                                              ; preds = %506
  %513 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %514 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %513, i32 0, i32 2
  %515 = load %struct.TYPE_11__*, %struct.TYPE_11__** %514, align 8
  %516 = load i32, i32* %10, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %515, i64 %517
  %519 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 4
  store i32 %520, i32* %17, align 4
  %521 = load %struct.voltage_map_desc**, %struct.voltage_map_desc*** @reg_voltage_map, align 8
  %522 = load i32, i32* %17, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds %struct.voltage_map_desc*, %struct.voltage_map_desc** %521, i64 %523
  %525 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %524, align 8
  store %struct.voltage_map_desc* %525, %struct.voltage_map_desc** %16, align 8
  %526 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %16, align 8
  %527 = icmp ne %struct.voltage_map_desc* %526, null
  br i1 %527, label %528, label %546

528:                                              ; preds = %512
  %529 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %16, align 8
  %530 = getelementptr inbounds %struct.voltage_map_desc, %struct.voltage_map_desc* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 4
  %532 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %16, align 8
  %533 = getelementptr inbounds %struct.voltage_map_desc, %struct.voltage_map_desc* %532, i32 0, i32 1
  %534 = load i32, i32* %533, align 4
  %535 = sub nsw i32 %531, %534
  %536 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %16, align 8
  %537 = getelementptr inbounds %struct.voltage_map_desc, %struct.voltage_map_desc* %536, i32 0, i32 2
  %538 = load i32, i32* %537, align 4
  %539 = sdiv i32 %535, %538
  %540 = add nsw i32 %539, 1
  %541 = load %struct.TYPE_13__*, %struct.TYPE_13__** @regulators, align 8
  %542 = load i32, i32* %17, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %541, i64 %543
  %545 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %544, i32 0, i32 0
  store i32 %540, i32* %545, align 4
  br label %580

546:                                              ; preds = %512
  %547 = load i32, i32* %17, align 4
  %548 = load i32, i32* @MAX8997_ESAFEOUT1, align 4
  %549 = icmp eq i32 %547, %548
  br i1 %549, label %554, label %550

550:                                              ; preds = %546
  %551 = load i32, i32* %17, align 4
  %552 = load i32, i32* @MAX8997_ESAFEOUT2, align 4
  %553 = icmp eq i32 %551, %552
  br i1 %553, label %554, label %568

554:                                              ; preds = %550, %546
  %555 = load i32, i32* @safeoutvolt, align 4
  %556 = load %struct.TYPE_13__*, %struct.TYPE_13__** @regulators, align 8
  %557 = load i32, i32* %17, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %556, i64 %558
  %560 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %559, i32 0, i32 1
  store i32 %555, i32* %560, align 4
  %561 = load i32, i32* @safeoutvolt, align 4
  %562 = call i32 @ARRAY_SIZE(i32 %561)
  %563 = load %struct.TYPE_13__*, %struct.TYPE_13__** @regulators, align 8
  %564 = load i32, i32* %17, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %563, i64 %565
  %567 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %566, i32 0, i32 0
  store i32 %562, i32* %567, align 4
  br label %579

568:                                              ; preds = %550
  %569 = load i32, i32* %17, align 4
  %570 = load i32, i32* @MAX8997_CHARGER_CV, align 4
  %571 = icmp eq i32 %569, %570
  br i1 %571, label %572, label %578

572:                                              ; preds = %568
  %573 = load %struct.TYPE_13__*, %struct.TYPE_13__** @regulators, align 8
  %574 = load i32, i32* %17, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %573, i64 %575
  %577 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %576, i32 0, i32 0
  store i32 16, i32* %577, align 4
  br label %578

578:                                              ; preds = %572, %568
  br label %579

579:                                              ; preds = %578, %554
  br label %580

580:                                              ; preds = %579, %528
  %581 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %582 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %581, i32 0, i32 6
  %583 = load %struct.TYPE_15__*, %struct.TYPE_15__** %582, align 8
  %584 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 3
  store %struct.TYPE_15__* %583, %struct.TYPE_15__** %584, align 8
  %585 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %586 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %585, i32 0, i32 2
  %587 = load %struct.TYPE_11__*, %struct.TYPE_11__** %586, align 8
  %588 = load i32, i32* %10, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %587, i64 %589
  %591 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %590, i32 0, i32 2
  %592 = load i32, i32* %591, align 4
  %593 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store i32 %592, i32* %593, align 8
  %594 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %595 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.max8997_data* %594, %struct.max8997_data** %595, align 8
  %596 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %597 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %596, i32 0, i32 2
  %598 = load %struct.TYPE_11__*, %struct.TYPE_11__** %597, align 8
  %599 = load i32, i32* %10, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %598, i64 %600
  %602 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %601, i32 0, i32 1
  %603 = load i32, i32* %602, align 4
  %604 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %603, i32* %604, align 8
  %605 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %606 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %605, i32 0, i32 0
  %607 = load %struct.TYPE_13__*, %struct.TYPE_13__** @regulators, align 8
  %608 = load i32, i32* %17, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %607, i64 %609
  %611 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_15__* %606, %struct.TYPE_13__* %610, %struct.regulator_config* %6)
  store %struct.regulator_dev* %611, %struct.regulator_dev** %7, align 8
  %612 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %613 = call i64 @IS_ERR(%struct.regulator_dev* %612)
  %614 = icmp ne i64 %613, 0
  br i1 %614, label %615, label %623

615:                                              ; preds = %580
  %616 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %617 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %616, i32 0, i32 6
  %618 = load %struct.TYPE_15__*, %struct.TYPE_15__** %617, align 8
  %619 = load i32, i32* %17, align 4
  %620 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %618, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %619)
  %621 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %622 = call i32 @PTR_ERR(%struct.regulator_dev* %621)
  store i32 %622, i32* %2, align 4
  br label %628

623:                                              ; preds = %580
  br label %624

624:                                              ; preds = %623
  %625 = load i32, i32* %10, align 4
  %626 = add nsw i32 %625, 1
  store i32 %626, i32* %10, align 4
  br label %506

627:                                              ; preds = %506
  store i32 0, i32* %2, align 4
  br label %628

628:                                              ; preds = %627, %615, %437, %424, %411, %394, %218, %190, %162, %58, %48, %29
  %629 = load i32, i32* %2, align 4
  ret i32 %629
}

declare dso_local %struct.max8997_dev* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local i32 @max8997_pmic_dt_parse_pdata(%struct.platform_device*, %struct.max8997_platform_data*) #1

declare dso_local %struct.max8997_data* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max8997_data*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @max8997_get_voltage_proper_val(%struct.TYPE_14__*, i64, i64) #1

declare dso_local i32 @max8997_update_reg(%struct.i2c_client*, i64, i32, i32) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @max8997_write_reg(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_15__*, %struct.TYPE_13__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
