; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mc13892-regulator.c_mc13892_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mc13892-regulator.c_mc13892_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.regulator_desc }
%struct.regulator_desc = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.mc13xxx_regulator_priv = type { i32, i32*, %struct.mc13xxx*, %struct.TYPE_14__* }
%struct.mc13xxx = type { i32 }
%struct.mc13xxx_regulator_platform_data = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.regulator_init_data* }
%struct.regulator_init_data = type { i32 }
%struct.mc13xxx_regulator_init_data = type { i32, %struct.device_node*, %struct.regulator_init_data* }
%struct.device_node = type { i32 }
%struct.regulator_config = type { %struct.device_node*, %struct.mc13xxx_regulator_priv*, %struct.regulator_init_data*, %struct.TYPE_15__* }

@EINVAL = common dso_local global i32 0, align 4
@regulators = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mc13892_regulators = common dso_local global %struct.TYPE_14__* null, align 8
@MC13892_REVISION = common dso_local global i32 0, align 4
@MC13892_SWITCHERS4 = common dso_local global i32 0, align 4
@MC13892_SWITCHERS4_SW1MODE_M = common dso_local global i32 0, align 4
@MC13892_SWITCHERS4_SW2MODE_M = common dso_local global i32 0, align 4
@MC13892_SWITCHERS4_SW1MODE_AUTO = common dso_local global i32 0, align 4
@MC13892_SWITCHERS4_SW2MODE_AUTO = common dso_local global i32 0, align 4
@MC13892_SWITCHERS5 = common dso_local global i32 0, align 4
@MC13892_SWITCHERS5_SW3MODE_M = common dso_local global i32 0, align 4
@MC13892_SWITCHERS5_SW4MODE_M = common dso_local global i32 0, align 4
@MC13892_SWITCHERS5_SW3MODE_AUTO = common dso_local global i32 0, align 4
@MC13892_SWITCHERS5_SW4MODE_AUTO = common dso_local global i32 0, align 4
@mc13892_vcam_ops = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@MC13892_VCAM = common dso_local global i64 0, align 8
@mc13892_vcam_set_mode = common dso_local global i32 0, align 4
@mc13892_vcam_get_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mc13892_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13892_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mc13xxx_regulator_priv*, align 8
  %5 = alloca %struct.mc13xxx*, align 8
  %6 = alloca %struct.mc13xxx_regulator_platform_data*, align 8
  %7 = alloca %struct.mc13xxx_regulator_init_data*, align 8
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.regulator_init_data*, align 8
  %14 = alloca %struct.regulator_desc*, align 8
  %15 = alloca %struct.device_node*, align 8
  %16 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.mc13xxx* @dev_get_drvdata(i32 %20)
  store %struct.mc13xxx* %21, %struct.mc13xxx** %5, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call %struct.mc13xxx_regulator_platform_data* @dev_get_platdata(%struct.TYPE_15__* %23)
  store %struct.mc13xxx_regulator_platform_data* %24, %struct.mc13xxx_regulator_platform_data** %6, align 8
  %25 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 32, i1 false)
  store i32 0, i32* %11, align 4
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = call i32 @mc13xxx_get_num_regulators_dt(%struct.platform_device* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load %struct.mc13xxx_regulator_platform_data*, %struct.mc13xxx_regulator_platform_data** %6, align 8
  %32 = icmp ne %struct.mc13xxx_regulator_platform_data* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.mc13xxx_regulator_platform_data*, %struct.mc13xxx_regulator_platform_data** %6, align 8
  %35 = getelementptr inbounds %struct.mc13xxx_regulator_platform_data, %struct.mc13xxx_regulator_platform_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %33, %30, %1
  %38 = load i32, i32* %11, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %238

43:                                               ; preds = %37
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %47 = load i32, i32* @regulators, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @struct_size(%struct.mc13xxx_regulator_priv* %46, i32 %47, i32 %48)
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.mc13xxx_regulator_priv* @devm_kzalloc(%struct.TYPE_15__* %45, i32 %49, i32 %50)
  store %struct.mc13xxx_regulator_priv* %51, %struct.mc13xxx_regulator_priv** %4, align 8
  %52 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %53 = icmp ne %struct.mc13xxx_regulator_priv* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %238

57:                                               ; preds = %43
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %60 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mc13892_regulators, align 8
  %62 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %63 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %62, i32 0, i32 3
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %63, align 8
  %64 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %65 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %66 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %65, i32 0, i32 2
  store %struct.mc13xxx* %64, %struct.mc13xxx** %66, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %69 = call i32 @platform_set_drvdata(%struct.platform_device* %67, %struct.mc13xxx_regulator_priv* %68)
  %70 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %71 = call i32 @mc13xxx_lock(%struct.mc13xxx* %70)
  %72 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %73 = load i32, i32* @MC13892_REVISION, align 4
  %74 = call i32 @mc13xxx_reg_read(%struct.mc13xxx* %72, i32 %73, i32* %12)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %57
  br label %234

78:                                               ; preds = %57
  %79 = load i32, i32* %12, align 4
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 17872
  br i1 %81, label %82, label %109

82:                                               ; preds = %78
  %83 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %84 = load i32, i32* @MC13892_SWITCHERS4, align 4
  %85 = load i32, i32* @MC13892_SWITCHERS4_SW1MODE_M, align 4
  %86 = load i32, i32* @MC13892_SWITCHERS4_SW2MODE_M, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @MC13892_SWITCHERS4_SW1MODE_AUTO, align 4
  %89 = load i32, i32* @MC13892_SWITCHERS4_SW2MODE_AUTO, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @mc13xxx_reg_rmw(%struct.mc13xxx* %83, i32 %84, i32 %87, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %234

95:                                               ; preds = %82
  %96 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %97 = load i32, i32* @MC13892_SWITCHERS5, align 4
  %98 = load i32, i32* @MC13892_SWITCHERS5_SW3MODE_M, align 4
  %99 = load i32, i32* @MC13892_SWITCHERS5_SW4MODE_M, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @MC13892_SWITCHERS5_SW3MODE_AUTO, align 4
  %102 = load i32, i32* @MC13892_SWITCHERS5_SW4MODE_AUTO, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @mc13xxx_reg_rmw(%struct.mc13xxx* %96, i32 %97, i32 %100, i32 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  br label %234

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %78
  %110 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %111 = call i32 @mc13xxx_unlock(%struct.mc13xxx* %110)
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mc13892_regulators, align 8
  %113 = load i64, i64* @MC13892_VCAM, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %115, i32 0, i32 1
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = call i32 @memcpy(%struct.TYPE_13__* @mc13892_vcam_ops, %struct.TYPE_13__* %117, i32 4)
  %119 = load i32, i32* @mc13892_vcam_set_mode, align 4
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @mc13892_vcam_ops, i32 0, i32 1), align 4
  %120 = load i32, i32* @mc13892_vcam_get_mode, align 4
  store i32 %120, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @mc13892_vcam_ops, i32 0, i32 0), align 4
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mc13892_regulators, align 8
  %122 = load i64, i64* @MC13892_VCAM, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %124, i32 0, i32 1
  store %struct.TYPE_13__* @mc13892_vcam_ops, %struct.TYPE_13__** %125, align 8
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mc13892_regulators, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mc13892_regulators, align 8
  %129 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %128)
  %130 = call %struct.mc13xxx_regulator_init_data* @mc13xxx_parse_regulators_dt(%struct.platform_device* %126, %struct.TYPE_14__* %127, i32 %129)
  store %struct.mc13xxx_regulator_init_data* %130, %struct.mc13xxx_regulator_init_data** %7, align 8
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %230, %109
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %134 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %233

137:                                              ; preds = %131
  store %struct.device_node* null, %struct.device_node** %15, align 8
  %138 = load %struct.mc13xxx_regulator_init_data*, %struct.mc13xxx_regulator_init_data** %7, align 8
  %139 = icmp ne %struct.mc13xxx_regulator_init_data* %138, null
  br i1 %139, label %140, label %159

140:                                              ; preds = %137
  %141 = load %struct.mc13xxx_regulator_init_data*, %struct.mc13xxx_regulator_init_data** %7, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.mc13xxx_regulator_init_data, %struct.mc13xxx_regulator_init_data* %141, i64 %143
  %145 = getelementptr inbounds %struct.mc13xxx_regulator_init_data, %struct.mc13xxx_regulator_init_data* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %16, align 4
  %147 = load %struct.mc13xxx_regulator_init_data*, %struct.mc13xxx_regulator_init_data** %7, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.mc13xxx_regulator_init_data, %struct.mc13xxx_regulator_init_data* %147, i64 %149
  %151 = getelementptr inbounds %struct.mc13xxx_regulator_init_data, %struct.mc13xxx_regulator_init_data* %150, i32 0, i32 2
  %152 = load %struct.regulator_init_data*, %struct.regulator_init_data** %151, align 8
  store %struct.regulator_init_data* %152, %struct.regulator_init_data** %13, align 8
  %153 = load %struct.mc13xxx_regulator_init_data*, %struct.mc13xxx_regulator_init_data** %7, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.mc13xxx_regulator_init_data, %struct.mc13xxx_regulator_init_data* %153, i64 %155
  %157 = getelementptr inbounds %struct.mc13xxx_regulator_init_data, %struct.mc13xxx_regulator_init_data* %156, i32 0, i32 1
  %158 = load %struct.device_node*, %struct.device_node** %157, align 8
  store %struct.device_node* %158, %struct.device_node** %15, align 8
  br label %176

159:                                              ; preds = %137
  %160 = load %struct.mc13xxx_regulator_platform_data*, %struct.mc13xxx_regulator_platform_data** %6, align 8
  %161 = getelementptr inbounds %struct.mc13xxx_regulator_platform_data, %struct.mc13xxx_regulator_platform_data* %160, i32 0, i32 1
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* %16, align 4
  %168 = load %struct.mc13xxx_regulator_platform_data*, %struct.mc13xxx_regulator_platform_data** %6, align 8
  %169 = getelementptr inbounds %struct.mc13xxx_regulator_platform_data, %struct.mc13xxx_regulator_platform_data* %168, i32 0, i32 1
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load %struct.regulator_init_data*, %struct.regulator_init_data** %174, align 8
  store %struct.regulator_init_data* %175, %struct.regulator_init_data** %13, align 8
  br label %176

176:                                              ; preds = %159, %140
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mc13892_regulators, align 8
  %178 = load i32, i32* %16, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  store %struct.regulator_desc* %181, %struct.regulator_desc** %14, align 8
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 3
  store %struct.TYPE_15__* %183, %struct.TYPE_15__** %184, align 8
  %185 = load %struct.regulator_init_data*, %struct.regulator_init_data** %13, align 8
  %186 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 2
  store %struct.regulator_init_data* %185, %struct.regulator_init_data** %186, align 8
  %187 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %188 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store %struct.mc13xxx_regulator_priv* %187, %struct.mc13xxx_regulator_priv** %188, align 8
  %189 = load %struct.device_node*, %struct.device_node** %15, align 8
  %190 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store %struct.device_node* %189, %struct.device_node** %190, align 8
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = load %struct.regulator_desc*, %struct.regulator_desc** %14, align 8
  %194 = call i32 @devm_regulator_register(%struct.TYPE_15__* %192, %struct.regulator_desc* %193, %struct.regulator_config* %8)
  %195 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %196 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %194, i32* %200, align 4
  %201 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %202 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i64 @IS_ERR(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %229

210:                                              ; preds = %176
  %211 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %212 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %211, i32 0, i32 0
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mc13892_regulators, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @dev_err(%struct.TYPE_15__* %212, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %219)
  %221 = load %struct.mc13xxx_regulator_priv*, %struct.mc13xxx_regulator_priv** %4, align 8
  %222 = getelementptr inbounds %struct.mc13xxx_regulator_priv, %struct.mc13xxx_regulator_priv* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @PTR_ERR(i32 %227)
  store i32 %228, i32* %2, align 4
  br label %238

229:                                              ; preds = %176
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %9, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %9, align 4
  br label %131

233:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %238

234:                                              ; preds = %107, %94, %77
  %235 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %236 = call i32 @mc13xxx_unlock(%struct.mc13xxx* %235)
  %237 = load i32, i32* %10, align 4
  store i32 %237, i32* %2, align 4
  br label %238

238:                                              ; preds = %234, %233, %210, %54, %40
  %239 = load i32, i32* %2, align 4
  ret i32 %239
}

declare dso_local %struct.mc13xxx* @dev_get_drvdata(i32) #1

declare dso_local %struct.mc13xxx_regulator_platform_data* @dev_get_platdata(%struct.TYPE_15__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mc13xxx_get_num_regulators_dt(%struct.platform_device*) #1

declare dso_local %struct.mc13xxx_regulator_priv* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.mc13xxx_regulator_priv*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mc13xxx_regulator_priv*) #1

declare dso_local i32 @mc13xxx_lock(%struct.mc13xxx*) #1

declare dso_local i32 @mc13xxx_reg_read(%struct.mc13xxx*, i32, i32*) #1

declare dso_local i32 @mc13xxx_reg_rmw(%struct.mc13xxx*, i32, i32, i32) #1

declare dso_local i32 @mc13xxx_unlock(%struct.mc13xxx*) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local %struct.mc13xxx_regulator_init_data* @mc13xxx_parse_regulators_dt(%struct.platform_device*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_14__*) #1

declare dso_local i32 @devm_regulator_register(%struct.TYPE_15__*, %struct.regulator_desc*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
