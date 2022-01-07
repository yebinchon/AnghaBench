; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_as3722-regulator.c_as3722_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_as3722-regulator.c_as3722_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.regulator_ops = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.as3722 = type { i32 }
%struct.as3722_regulators = type { %struct.regulator_desc*, %struct.as3722_regulator_config_data*, %struct.as3722*, %struct.TYPE_6__* }
%struct.regulator_desc = type { i32, i32, i32, i32, %struct.regulator_ops*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.as3722_regulator_config_data = type { i64, i32, i32 }
%struct.regulator_dev = type { i32 }
%struct.regulator_config = type { i32, i32, i32, %struct.as3722_regulators*, %struct.TYPE_6__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AS3722_REGULATOR_ID_MAX = common dso_local global i32 0, align 4
@as3722_reg_lookup = common dso_local global %struct.TYPE_8__* null, align 8
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@as3722_ldo0_extcntrl_ops = common dso_local global %struct.regulator_ops zeroinitializer, align 4
@as3722_ldo0_ops = common dso_local global %struct.regulator_ops zeroinitializer, align 4
@as3722_ldo_current = common dso_local global i8* null, align 8
@AS3722_LDO_ILIMIT_MASK = common dso_local global i8* null, align 8
@as3722_ldo3_extcntrl_ops = common dso_local global %struct.regulator_ops zeroinitializer, align 4
@as3722_ldo3_ops = common dso_local global %struct.regulator_ops zeroinitializer, align 4
@AS3722_LDO3_MODE_PMOS_TRACKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"LDO3 tracking failed: %d\0A\00", align 1
@as3722_ldo6_extcntrl_ops = common dso_local global %struct.regulator_ops zeroinitializer, align 4
@as3722_ldo6_ops = common dso_local global %struct.regulator_ops zeroinitializer, align 4
@AS3722_LDO6_VOLTAGE_REG = common dso_local global i32 0, align 4
@AS3722_LDO_VSEL_MASK = common dso_local global i32 0, align 4
@AS3722_LDO6_VSEL_BYPASS = common dso_local global i8* null, align 8
@as3722_ldo_ranges = common dso_local global i8* null, align 8
@as3722_sd016_extcntrl_ops = common dso_local global %struct.regulator_ops zeroinitializer, align 4
@as3722_sd016_ops = common dso_local global %struct.regulator_ops zeroinitializer, align 4
@AS3722_SD0_VSEL_LOW_VOL_MAX = common dso_local global i32 0, align 4
@AS3722_SD0_VSEL_MAX = common dso_local global i32 0, align 4
@as3722_sd016_current = common dso_local global i8* null, align 8
@AS3722_OVCURRENT_REG = common dso_local global i8* null, align 8
@AS3722_OVCURRENT_SD0_TRIP_MASK = common dso_local global i8* null, align 8
@AS3722_OVCURRENT_SD1_TRIP_MASK = common dso_local global i8* null, align 8
@AS3722_OVCURRENT_DEB_REG = common dso_local global i8* null, align 8
@AS3722_OVCURRENT_SD6_TRIP_MASK = common dso_local global i8* null, align 8
@as3722_sd2345_extcntrl_ops = common dso_local global %struct.regulator_ops zeroinitializer, align 4
@as3722_sd2345_ops = common dso_local global %struct.regulator_ops zeroinitializer, align 4
@as3722_sd2345_ranges = common dso_local global i8* null, align 8
@as3722_ldo_extcntrl_ops = common dso_local global %struct.regulator_ops zeroinitializer, align 4
@as3722_ldo_ops = common dso_local global %struct.regulator_ops zeroinitializer, align 4
@as3722_regulator_matches = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"regulator %d register failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Regulator %d enable failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"AS3722 ext control failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @as3722_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.as3722*, align 8
  %5 = alloca %struct.as3722_regulators*, align 8
  %6 = alloca %struct.as3722_regulator_config_data*, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca %struct.regulator_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.regulator_desc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.as3722* @dev_get_drvdata(i32 %16)
  store %struct.as3722* %17, %struct.as3722** %4, align 8
  %18 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 32, i1 false)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.as3722_regulators* @devm_kzalloc(%struct.TYPE_6__* %20, i32 32, i32 %21)
  store %struct.as3722_regulators* %22, %struct.as3722_regulators** %5, align 8
  %23 = load %struct.as3722_regulators*, %struct.as3722_regulators** %5, align 8
  %24 = icmp ne %struct.as3722_regulators* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %473

28:                                               ; preds = %1
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.as3722_regulators*, %struct.as3722_regulators** %5, align 8
  %32 = getelementptr inbounds %struct.as3722_regulators, %struct.as3722_regulators* %31, i32 0, i32 3
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %32, align 8
  %33 = load %struct.as3722*, %struct.as3722** %4, align 8
  %34 = load %struct.as3722_regulators*, %struct.as3722_regulators** %5, align 8
  %35 = getelementptr inbounds %struct.as3722_regulators, %struct.as3722_regulators* %34, i32 0, i32 2
  store %struct.as3722* %33, %struct.as3722** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load %struct.as3722_regulators*, %struct.as3722_regulators** %5, align 8
  %38 = call i32 @platform_set_drvdata(%struct.platform_device* %36, %struct.as3722_regulators* %37)
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.as3722_regulators*, %struct.as3722_regulators** %5, align 8
  %41 = call i32 @as3722_get_regulator_dt_data(%struct.platform_device* %39, %struct.as3722_regulators* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %2, align 4
  br label %473

46:                                               ; preds = %28
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 4
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %49, align 8
  %50 = load %struct.as3722_regulators*, %struct.as3722_regulators** %5, align 8
  %51 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 3
  store %struct.as3722_regulators* %50, %struct.as3722_regulators** %51, align 8
  %52 = load %struct.as3722*, %struct.as3722** %4, align 8
  %53 = getelementptr inbounds %struct.as3722, %struct.as3722* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 2
  store i32 %54, i32* %55, align 8
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %469, %46
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @AS3722_REGULATOR_ID_MAX, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %472

60:                                               ; preds = %56
  %61 = load %struct.as3722_regulators*, %struct.as3722_regulators** %5, align 8
  %62 = getelementptr inbounds %struct.as3722_regulators, %struct.as3722_regulators* %61, i32 0, i32 0
  %63 = load %struct.regulator_desc*, %struct.regulator_desc** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %63, i64 %65
  store %struct.regulator_desc* %66, %struct.regulator_desc** %12, align 8
  %67 = load %struct.as3722_regulators*, %struct.as3722_regulators** %5, align 8
  %68 = getelementptr inbounds %struct.as3722_regulators, %struct.as3722_regulators* %67, i32 0, i32 1
  %69 = load %struct.as3722_regulator_config_data*, %struct.as3722_regulator_config_data** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.as3722_regulator_config_data, %struct.as3722_regulator_config_data* %69, i64 %71
  store %struct.as3722_regulator_config_data* %72, %struct.as3722_regulator_config_data** %6, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @as3722_reg_lookup, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %80 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %79, i32 0, i32 24
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @as3722_reg_lookup, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %88 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %87, i32 0, i32 23
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** @as3722_reg_lookup, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %96 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %95, i32 0, i32 22
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** @as3722_reg_lookup, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %104 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %103, i32 0, i32 11
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %106 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %107 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %106, i32 0, i32 21
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @THIS_MODULE, align 4
  %109 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %110 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %109, i32 0, i32 20
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** @as3722_reg_lookup, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %118 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %117, i32 0, i32 19
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** @as3722_reg_lookup, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %126 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %125, i32 0, i32 18
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** @as3722_reg_lookup, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %134 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %133, i32 0, i32 17
  store i8* %132, i8** %134, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** @as3722_reg_lookup, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %142 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %141, i32 0, i32 16
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %10, align 4
  switch i32 %143, label %369 [
    i32 137, label %144
    i32 136, label %178
    i32 135, label %213
    i32 134, label %260
    i32 133, label %260
    i32 128, label %260
    i32 132, label %354
    i32 131, label %354
    i32 130, label %354
    i32 129, label %354
  ]

144:                                              ; preds = %60
  %145 = load %struct.as3722_regulator_config_data*, %struct.as3722_regulator_config_data** %6, align 8
  %146 = getelementptr inbounds %struct.as3722_regulator_config_data, %struct.as3722_regulator_config_data* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  store %struct.regulator_ops* @as3722_ldo0_extcntrl_ops, %struct.regulator_ops** %9, align 8
  br label %151

150:                                              ; preds = %144
  store %struct.regulator_ops* @as3722_ldo0_ops, %struct.regulator_ops** %9, align 8
  br label %151

151:                                              ; preds = %150, %149
  %152 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %153 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %152, i32 0, i32 0
  store i32 825000, i32* %153, align 8
  %154 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %155 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %154, i32 0, i32 1
  store i32 25000, i32* %155, align 4
  %156 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %157 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %156, i32 0, i32 2
  store i32 1, i32* %157, align 8
  %158 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %159 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %158, i32 0, i32 3
  store i32 500, i32* %159, align 4
  %160 = load i8*, i8** @as3722_ldo_current, align 8
  %161 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %162 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %161, i32 0, i32 8
  store i8* %160, i8** %162, align 8
  %163 = load i8*, i8** @as3722_ldo_current, align 8
  %164 = call i8* @ARRAY_SIZE(i8* %163)
  %165 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %166 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %165, i32 0, i32 7
  store i8* %164, i8** %166, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** @as3722_reg_lookup, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %174 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %173, i32 0, i32 6
  store i8* %172, i8** %174, align 8
  %175 = load i8*, i8** @AS3722_LDO_ILIMIT_MASK, align 8
  %176 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %177 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %176, i32 0, i32 5
  store i8* %175, i8** %177, align 8
  br label %404

178:                                              ; preds = %60
  %179 = load %struct.as3722_regulator_config_data*, %struct.as3722_regulator_config_data** %6, align 8
  %180 = getelementptr inbounds %struct.as3722_regulator_config_data, %struct.as3722_regulator_config_data* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  store %struct.regulator_ops* @as3722_ldo3_extcntrl_ops, %struct.regulator_ops** %9, align 8
  br label %185

184:                                              ; preds = %178
  store %struct.regulator_ops* @as3722_ldo3_ops, %struct.regulator_ops** %9, align 8
  br label %185

185:                                              ; preds = %184, %183
  %186 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %187 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %186, i32 0, i32 0
  store i32 620000, i32* %187, align 8
  %188 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %189 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %188, i32 0, i32 1
  store i32 20000, i32* %189, align 4
  %190 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %191 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %190, i32 0, i32 2
  store i32 1, i32* %191, align 8
  %192 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %193 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %192, i32 0, i32 3
  store i32 500, i32* %193, align 4
  %194 = load %struct.as3722_regulator_config_data*, %struct.as3722_regulator_config_data** %6, align 8
  %195 = getelementptr inbounds %struct.as3722_regulator_config_data, %struct.as3722_regulator_config_data* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %212

198:                                              ; preds = %185
  %199 = load %struct.as3722_regulators*, %struct.as3722_regulators** %5, align 8
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* @AS3722_LDO3_MODE_PMOS_TRACKING, align 4
  %202 = call i32 @as3722_ldo3_set_tracking_mode(%struct.as3722_regulators* %199, i32 %200, i32 %201)
  store i32 %202, i32* %11, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %198
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = load i32, i32* %11, align 4
  %209 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_err(%struct.TYPE_6__* %207, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* %11, align 4
  store i32 %210, i32* %2, align 4
  br label %473

211:                                              ; preds = %198
  br label %212

212:                                              ; preds = %211, %185
  br label %404

213:                                              ; preds = %60
  %214 = load %struct.as3722_regulator_config_data*, %struct.as3722_regulator_config_data** %6, align 8
  %215 = getelementptr inbounds %struct.as3722_regulator_config_data, %struct.as3722_regulator_config_data* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  store %struct.regulator_ops* @as3722_ldo6_extcntrl_ops, %struct.regulator_ops** %9, align 8
  br label %220

219:                                              ; preds = %213
  store %struct.regulator_ops* @as3722_ldo6_ops, %struct.regulator_ops** %9, align 8
  br label %220

220:                                              ; preds = %219, %218
  %221 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %222 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %221, i32 0, i32 3
  store i32 500, i32* %222, align 4
  %223 = load i32, i32* @AS3722_LDO6_VOLTAGE_REG, align 4
  %224 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %225 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %224, i32 0, i32 15
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* @AS3722_LDO_VSEL_MASK, align 4
  %227 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %228 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %227, i32 0, i32 14
  store i32 %226, i32* %228, align 8
  %229 = load i8*, i8** @AS3722_LDO6_VSEL_BYPASS, align 8
  %230 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %231 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %230, i32 0, i32 13
  store i8* %229, i8** %231, align 8
  %232 = load i8*, i8** @AS3722_LDO6_VSEL_BYPASS, align 8
  %233 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %234 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %233, i32 0, i32 12
  store i8* %232, i8** %234, align 8
  %235 = load i8*, i8** @as3722_ldo_ranges, align 8
  %236 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %237 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %236, i32 0, i32 10
  store i8* %235, i8** %237, align 8
  %238 = load i8*, i8** @as3722_ldo_ranges, align 8
  %239 = call i8* @ARRAY_SIZE(i8* %238)
  %240 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %241 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %240, i32 0, i32 9
  store i8* %239, i8** %241, align 8
  %242 = load i8*, i8** @as3722_ldo_current, align 8
  %243 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %244 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %243, i32 0, i32 8
  store i8* %242, i8** %244, align 8
  %245 = load i8*, i8** @as3722_ldo_current, align 8
  %246 = call i8* @ARRAY_SIZE(i8* %245)
  %247 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %248 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %247, i32 0, i32 7
  store i8* %246, i8** %248, align 8
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** @as3722_reg_lookup, align 8
  %250 = load i32, i32* %10, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  %255 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %256 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %255, i32 0, i32 6
  store i8* %254, i8** %256, align 8
  %257 = load i8*, i8** @AS3722_LDO_ILIMIT_MASK, align 8
  %258 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %259 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %258, i32 0, i32 5
  store i8* %257, i8** %259, align 8
  br label %404

260:                                              ; preds = %60, %60, %60
  %261 = load %struct.as3722_regulator_config_data*, %struct.as3722_regulator_config_data** %6, align 8
  %262 = getelementptr inbounds %struct.as3722_regulator_config_data, %struct.as3722_regulator_config_data* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %260
  store %struct.regulator_ops* @as3722_sd016_extcntrl_ops, %struct.regulator_ops** %9, align 8
  br label %267

266:                                              ; preds = %260
  store %struct.regulator_ops* @as3722_sd016_ops, %struct.regulator_ops** %9, align 8
  br label %267

267:                                              ; preds = %266, %265
  %268 = load i32, i32* %10, align 4
  %269 = icmp eq i32 %268, 134
  br i1 %269, label %270, label %291

270:                                              ; preds = %267
  %271 = load %struct.as3722_regulators*, %struct.as3722_regulators** %5, align 8
  %272 = call i32 @as3722_sd0_is_low_voltage(%struct.as3722_regulators* %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %291

274:                                              ; preds = %270
  %275 = load i32, i32* @AS3722_SD0_VSEL_LOW_VOL_MAX, align 4
  %276 = add nsw i32 %275, 1
  %277 = load %struct.as3722_regulators*, %struct.as3722_regulators** %5, align 8
  %278 = getelementptr inbounds %struct.as3722_regulators, %struct.as3722_regulators* %277, i32 0, i32 0
  %279 = load %struct.regulator_desc*, %struct.regulator_desc** %278, align 8
  %280 = load i32, i32* %10, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %279, i64 %281
  %283 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %282, i32 0, i32 11
  store i32 %276, i32* %283, align 8
  %284 = load %struct.as3722_regulators*, %struct.as3722_regulators** %5, align 8
  %285 = getelementptr inbounds %struct.as3722_regulators, %struct.as3722_regulators* %284, i32 0, i32 0
  %286 = load %struct.regulator_desc*, %struct.regulator_desc** %285, align 8
  %287 = load i32, i32* %10, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %286, i64 %288
  %290 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %289, i32 0, i32 0
  store i32 410000, i32* %290, align 8
  br label %308

291:                                              ; preds = %270, %267
  %292 = load i32, i32* @AS3722_SD0_VSEL_MAX, align 4
  %293 = add nsw i32 %292, 1
  %294 = load %struct.as3722_regulators*, %struct.as3722_regulators** %5, align 8
  %295 = getelementptr inbounds %struct.as3722_regulators, %struct.as3722_regulators* %294, i32 0, i32 0
  %296 = load %struct.regulator_desc*, %struct.regulator_desc** %295, align 8
  %297 = load i32, i32* %10, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %296, i64 %298
  %300 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %299, i32 0, i32 11
  store i32 %293, i32* %300, align 8
  %301 = load %struct.as3722_regulators*, %struct.as3722_regulators** %5, align 8
  %302 = getelementptr inbounds %struct.as3722_regulators, %struct.as3722_regulators* %301, i32 0, i32 0
  %303 = load %struct.regulator_desc*, %struct.regulator_desc** %302, align 8
  %304 = load i32, i32* %10, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %303, i64 %305
  %307 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %306, i32 0, i32 0
  store i32 610000, i32* %307, align 8
  br label %308

308:                                              ; preds = %291, %274
  %309 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %310 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %309, i32 0, i32 1
  store i32 10000, i32* %310, align 4
  %311 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %312 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %311, i32 0, i32 2
  store i32 1, i32* %312, align 8
  %313 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %314 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %313, i32 0, i32 3
  store i32 600, i32* %314, align 4
  %315 = load i8*, i8** @as3722_sd016_current, align 8
  %316 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %317 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %316, i32 0, i32 8
  store i8* %315, i8** %317, align 8
  %318 = load i8*, i8** @as3722_sd016_current, align 8
  %319 = call i8* @ARRAY_SIZE(i8* %318)
  %320 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %321 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %320, i32 0, i32 7
  store i8* %319, i8** %321, align 8
  %322 = load i32, i32* %10, align 4
  %323 = icmp eq i32 %322, 134
  br i1 %323, label %324, label %331

324:                                              ; preds = %308
  %325 = load i8*, i8** @AS3722_OVCURRENT_REG, align 8
  %326 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %327 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %326, i32 0, i32 6
  store i8* %325, i8** %327, align 8
  %328 = load i8*, i8** @AS3722_OVCURRENT_SD0_TRIP_MASK, align 8
  %329 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %330 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %329, i32 0, i32 5
  store i8* %328, i8** %330, align 8
  br label %353

331:                                              ; preds = %308
  %332 = load i32, i32* %10, align 4
  %333 = icmp eq i32 %332, 133
  br i1 %333, label %334, label %341

334:                                              ; preds = %331
  %335 = load i8*, i8** @AS3722_OVCURRENT_REG, align 8
  %336 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %337 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %336, i32 0, i32 6
  store i8* %335, i8** %337, align 8
  %338 = load i8*, i8** @AS3722_OVCURRENT_SD1_TRIP_MASK, align 8
  %339 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %340 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %339, i32 0, i32 5
  store i8* %338, i8** %340, align 8
  br label %352

341:                                              ; preds = %331
  %342 = load i32, i32* %10, align 4
  %343 = icmp eq i32 %342, 128
  br i1 %343, label %344, label %351

344:                                              ; preds = %341
  %345 = load i8*, i8** @AS3722_OVCURRENT_DEB_REG, align 8
  %346 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %347 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %346, i32 0, i32 6
  store i8* %345, i8** %347, align 8
  %348 = load i8*, i8** @AS3722_OVCURRENT_SD6_TRIP_MASK, align 8
  %349 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %350 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %349, i32 0, i32 5
  store i8* %348, i8** %350, align 8
  br label %351

351:                                              ; preds = %344, %341
  br label %352

352:                                              ; preds = %351, %334
  br label %353

353:                                              ; preds = %352, %324
  br label %404

354:                                              ; preds = %60, %60, %60, %60
  %355 = load %struct.as3722_regulator_config_data*, %struct.as3722_regulator_config_data** %6, align 8
  %356 = getelementptr inbounds %struct.as3722_regulator_config_data, %struct.as3722_regulator_config_data* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %354
  store %struct.regulator_ops* @as3722_sd2345_extcntrl_ops, %struct.regulator_ops** %9, align 8
  br label %361

360:                                              ; preds = %354
  store %struct.regulator_ops* @as3722_sd2345_ops, %struct.regulator_ops** %9, align 8
  br label %361

361:                                              ; preds = %360, %359
  %362 = load i8*, i8** @as3722_sd2345_ranges, align 8
  %363 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %364 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %363, i32 0, i32 10
  store i8* %362, i8** %364, align 8
  %365 = load i8*, i8** @as3722_sd2345_ranges, align 8
  %366 = call i8* @ARRAY_SIZE(i8* %365)
  %367 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %368 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %367, i32 0, i32 9
  store i8* %366, i8** %368, align 8
  br label %404

369:                                              ; preds = %60
  %370 = load %struct.as3722_regulator_config_data*, %struct.as3722_regulator_config_data** %6, align 8
  %371 = getelementptr inbounds %struct.as3722_regulator_config_data, %struct.as3722_regulator_config_data* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %369
  store %struct.regulator_ops* @as3722_ldo_extcntrl_ops, %struct.regulator_ops** %9, align 8
  br label %376

375:                                              ; preds = %369
  store %struct.regulator_ops* @as3722_ldo_ops, %struct.regulator_ops** %9, align 8
  br label %376

376:                                              ; preds = %375, %374
  %377 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %378 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %377, i32 0, i32 3
  store i32 500, i32* %378, align 4
  %379 = load i8*, i8** @as3722_ldo_ranges, align 8
  %380 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %381 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %380, i32 0, i32 10
  store i8* %379, i8** %381, align 8
  %382 = load i8*, i8** @as3722_ldo_ranges, align 8
  %383 = call i8* @ARRAY_SIZE(i8* %382)
  %384 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %385 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %384, i32 0, i32 9
  store i8* %383, i8** %385, align 8
  %386 = load i8*, i8** @as3722_ldo_current, align 8
  %387 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %388 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %387, i32 0, i32 8
  store i8* %386, i8** %388, align 8
  %389 = load i8*, i8** @as3722_ldo_current, align 8
  %390 = call i8* @ARRAY_SIZE(i8* %389)
  %391 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %392 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %391, i32 0, i32 7
  store i8* %390, i8** %392, align 8
  %393 = load %struct.TYPE_8__*, %struct.TYPE_8__** @as3722_reg_lookup, align 8
  %394 = load i32, i32* %10, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 0
  %398 = load i8*, i8** %397, align 8
  %399 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %400 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %399, i32 0, i32 6
  store i8* %398, i8** %400, align 8
  %401 = load i8*, i8** @AS3722_LDO_ILIMIT_MASK, align 8
  %402 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %403 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %402, i32 0, i32 5
  store i8* %401, i8** %403, align 8
  br label %404

404:                                              ; preds = %376, %361, %353, %220, %212, %151
  %405 = load %struct.regulator_ops*, %struct.regulator_ops** %9, align 8
  %406 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %407 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %406, i32 0, i32 4
  store %struct.regulator_ops* %405, %struct.regulator_ops** %407, align 8
  %408 = load %struct.as3722_regulator_config_data*, %struct.as3722_regulator_config_data** %6, align 8
  %409 = getelementptr inbounds %struct.as3722_regulator_config_data, %struct.as3722_regulator_config_data* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 8
  %411 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store i32 %410, i32* %411, align 4
  %412 = load %struct.TYPE_7__*, %struct.TYPE_7__** @as3722_regulator_matches, align 8
  %413 = load i32, i32* %10, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %412, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store i32 %417, i32* %418, align 8
  %419 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %420 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %419, i32 0, i32 0
  %421 = load %struct.regulator_desc*, %struct.regulator_desc** %12, align 8
  %422 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__* %420, %struct.regulator_desc* %421, %struct.regulator_config* %8)
  store %struct.regulator_dev* %422, %struct.regulator_dev** %7, align 8
  %423 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %424 = call i64 @IS_ERR(%struct.regulator_dev* %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %435

426:                                              ; preds = %404
  %427 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %428 = call i32 @PTR_ERR(%struct.regulator_dev* %427)
  store i32 %428, i32* %11, align 4
  %429 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %430 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %429, i32 0, i32 0
  %431 = load i32, i32* %10, align 4
  %432 = load i32, i32* %11, align 4
  %433 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_err(%struct.TYPE_6__* %430, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %431, i32 %432)
  %434 = load i32, i32* %11, align 4
  store i32 %434, i32* %2, align 4
  br label %473

435:                                              ; preds = %404
  %436 = load %struct.as3722_regulator_config_data*, %struct.as3722_regulator_config_data** %6, align 8
  %437 = getelementptr inbounds %struct.as3722_regulator_config_data, %struct.as3722_regulator_config_data* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %468

440:                                              ; preds = %435
  %441 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %442 = call i32 @regulator_enable_regmap(%struct.regulator_dev* %441)
  store i32 %442, i32* %11, align 4
  %443 = load i32, i32* %11, align 4
  %444 = icmp slt i32 %443, 0
  br i1 %444, label %445, label %452

445:                                              ; preds = %440
  %446 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %447 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %446, i32 0, i32 0
  %448 = load i32, i32* %10, align 4
  %449 = load i32, i32* %11, align 4
  %450 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_err(%struct.TYPE_6__* %447, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %448, i32 %449)
  %451 = load i32, i32* %11, align 4
  store i32 %451, i32* %2, align 4
  br label %473

452:                                              ; preds = %440
  %453 = load %struct.as3722_regulators*, %struct.as3722_regulators** %5, align 8
  %454 = load i32, i32* %10, align 4
  %455 = load %struct.as3722_regulator_config_data*, %struct.as3722_regulator_config_data** %6, align 8
  %456 = getelementptr inbounds %struct.as3722_regulator_config_data, %struct.as3722_regulator_config_data* %455, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = call i32 @as3722_extreg_init(%struct.as3722_regulators* %453, i32 %454, i64 %457)
  store i32 %458, i32* %11, align 4
  %459 = load i32, i32* %11, align 4
  %460 = icmp slt i32 %459, 0
  br i1 %460, label %461, label %467

461:                                              ; preds = %452
  %462 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %463 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %462, i32 0, i32 0
  %464 = load i32, i32* %11, align 4
  %465 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_err(%struct.TYPE_6__* %463, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %464)
  %466 = load i32, i32* %11, align 4
  store i32 %466, i32* %2, align 4
  br label %473

467:                                              ; preds = %452
  br label %468

468:                                              ; preds = %467, %435
  br label %469

469:                                              ; preds = %468
  %470 = load i32, i32* %10, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %10, align 4
  br label %56

472:                                              ; preds = %56
  store i32 0, i32* %2, align 4
  br label %473

473:                                              ; preds = %472, %461, %445, %426, %205, %44, %25
  %474 = load i32, i32* %2, align 4
  ret i32 %474
}

declare dso_local %struct.as3722* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.as3722_regulators* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.as3722_regulators*) #1

declare dso_local i32 @as3722_get_regulator_dt_data(%struct.platform_device*, %struct.as3722_regulators*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @as3722_ldo3_set_tracking_mode(%struct.as3722_regulators*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32, ...) #1

declare dso_local i32 @as3722_sd0_is_low_voltage(%struct.as3722_regulators*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__*, %struct.regulator_desc*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_enable_regmap(%struct.regulator_dev*) #1

declare dso_local i32 @as3722_extreg_init(%struct.as3722_regulators*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
