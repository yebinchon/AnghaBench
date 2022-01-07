; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_anatop-regulator.c_anatop_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_anatop-regulator.c_anatop_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.regulator_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.regulator_dev = type { i32 }
%struct.anatop_regulator = type { i32, i32, i32, i32, i32, %struct.regulator_desc }
%struct.regulator_init_data = type { i8* }
%struct.regulator_config = type { %struct.regulator_dev*, %struct.device_node*, %struct.anatop_regulator*, %struct.regulator_init_data*, %struct.device* }
%struct.regmap = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"regulator-name\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to get a regulator-name\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"vin\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"anatop-reg-offset\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"no anatop-reg-offset property set\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"anatop-vol-bit-width\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"no anatop-vol-bit-width property set\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"anatop-vol-bit-shift\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"no anatop-vol-bit-shift property set\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"anatop-min-bit-val\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"no anatop-min-bit-val property set\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"anatop-min-voltage\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"no anatop-min-voltage property set\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"anatop-max-voltage\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"no anatop-max-voltage property set\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"anatop-delay-reg-offset\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"anatop-delay-bit-width\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"anatop-delay-bit-shift\00", align 1
@anatop_core_rops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.18 = private unnamed_addr constant [30 x i8] c"failed to read initial state\0A\00", align 1
@LDO_FET_FULL_ON = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"vddpu\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"vddpcie\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"Failed to read a valid default voltage selector.\0A\00", align 1
@anatop_rops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.22 = private unnamed_addr constant [18 x i8] c"anatop-enable-bit\00", align 1
@regulator_enable_regmap = common dso_local global i32 0, align 4
@regulator_disable_regmap = common dso_local global i32 0, align 4
@regulator_is_enabled_regmap = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [23 x i8] c"failed to register %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @anatop_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anatop_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.regulator_desc*, align 8
  %8 = alloca %struct.regulator_dev*, align 8
  %9 = alloca %struct.anatop_regulator*, align 8
  %10 = alloca %struct.regulator_init_data*, align 8
  %11 = alloca %struct.regulator_config, align 8
  %12 = alloca %struct.regmap*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %4, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load %struct.device_node*, %struct.device_node** %25, align 8
  store %struct.device_node* %26, %struct.device_node** %5, align 8
  %27 = bitcast %struct.regulator_config* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 40, i1 false)
  store i32 0, i32* %19, align 4
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.anatop_regulator* @devm_kzalloc(%struct.device* %28, i32 80, i32 %29)
  store %struct.anatop_regulator* %30, %struct.anatop_regulator** %9, align 8
  %31 = load %struct.anatop_regulator*, %struct.anatop_regulator** %9, align 8
  %32 = icmp ne %struct.anatop_regulator* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %327

36:                                               ; preds = %1
  %37 = load %struct.anatop_regulator*, %struct.anatop_regulator** %9, align 8
  %38 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %37, i32 0, i32 5
  store %struct.regulator_desc* %38, %struct.regulator_desc** %7, align 8
  %39 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %40 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %41 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %40, i32 0, i32 12
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @THIS_MODULE, align 4
  %43 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %44 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %43, i32 0, i32 11
  store i32 %42, i32* %44, align 8
  %45 = load %struct.device_node*, %struct.device_node** %5, align 8
  %46 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %47 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %46, i32 0, i32 8
  %48 = call i32 @of_property_read_string(%struct.device_node* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %47)
  %49 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %50 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %36
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %327

58:                                               ; preds = %36
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load %struct.device_node*, %struct.device_node** %5, align 8
  %61 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %62 = call %struct.regulator_init_data* @of_get_regulator_init_data(%struct.device* %59, %struct.device_node* %60, %struct.regulator_desc* %61)
  store %struct.regulator_init_data* %62, %struct.regulator_init_data** %10, align 8
  %63 = load %struct.regulator_init_data*, %struct.regulator_init_data** %10, align 8
  %64 = icmp ne %struct.regulator_init_data* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %327

68:                                               ; preds = %58
  %69 = load %struct.regulator_init_data*, %struct.regulator_init_data** %10, align 8
  %70 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %69, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %70, align 8
  %71 = load %struct.device_node*, %struct.device_node** %5, align 8
  %72 = call %struct.device_node* @of_get_parent(%struct.device_node* %71)
  store %struct.device_node* %72, %struct.device_node** %6, align 8
  %73 = load %struct.device_node*, %struct.device_node** %6, align 8
  %74 = icmp ne %struct.device_node* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %327

78:                                               ; preds = %68
  %79 = load %struct.device_node*, %struct.device_node** %6, align 8
  %80 = call %struct.regulator_dev* @syscon_node_to_regmap(%struct.device_node* %79)
  %81 = bitcast %struct.regulator_dev* %80 to %struct.regmap*
  store %struct.regmap* %81, %struct.regmap** %12, align 8
  %82 = load %struct.device_node*, %struct.device_node** %6, align 8
  %83 = call i32 @of_node_put(%struct.device_node* %82)
  %84 = load %struct.regmap*, %struct.regmap** %12, align 8
  %85 = bitcast %struct.regmap* %84 to %struct.regulator_dev*
  %86 = call i64 @IS_ERR(%struct.regulator_dev* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load %struct.regmap*, %struct.regmap** %12, align 8
  %90 = bitcast %struct.regmap* %89 to %struct.regulator_dev*
  %91 = call i32 @PTR_ERR(%struct.regulator_dev* %90)
  store i32 %91, i32* %2, align 4
  br label %327

92:                                               ; preds = %78
  %93 = load %struct.device_node*, %struct.device_node** %5, align 8
  %94 = call i32 @of_property_read_u32(%struct.device_node* %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %13)
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %19, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i32, i32* %19, align 4
  store i32 %100, i32* %2, align 4
  br label %327

101:                                              ; preds = %92
  %102 = load %struct.device_node*, %struct.device_node** %5, align 8
  %103 = call i32 @of_property_read_u32(%struct.device_node* %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32* %15)
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %19, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %109 = load i32, i32* %19, align 4
  store i32 %109, i32* %2, align 4
  br label %327

110:                                              ; preds = %101
  %111 = load %struct.device_node*, %struct.device_node** %5, align 8
  %112 = call i32 @of_property_read_u32(%struct.device_node* %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32* %14)
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %116, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %118 = load i32, i32* %19, align 4
  store i32 %118, i32* %2, align 4
  br label %327

119:                                              ; preds = %110
  %120 = load %struct.device_node*, %struct.device_node** %5, align 8
  %121 = call i32 @of_property_read_u32(%struct.device_node* %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32* %16)
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* %19, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %125, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %127 = load i32, i32* %19, align 4
  store i32 %127, i32* %2, align 4
  br label %327

128:                                              ; preds = %119
  %129 = load %struct.device_node*, %struct.device_node** %5, align 8
  %130 = call i32 @of_property_read_u32(%struct.device_node* %129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32* %17)
  store i32 %130, i32* %19, align 4
  %131 = load i32, i32* %19, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load %struct.device*, %struct.device** %4, align 8
  %135 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %134, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  %136 = load i32, i32* %19, align 4
  store i32 %136, i32* %2, align 4
  br label %327

137:                                              ; preds = %128
  %138 = load %struct.device_node*, %struct.device_node** %5, align 8
  %139 = call i32 @of_property_read_u32(%struct.device_node* %138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32* %18)
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %19, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load %struct.device*, %struct.device** %4, align 8
  %144 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %143, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  %145 = load i32, i32* %19, align 4
  store i32 %145, i32* %2, align 4
  br label %327

146:                                              ; preds = %137
  %147 = load %struct.device_node*, %struct.device_node** %5, align 8
  %148 = load %struct.anatop_regulator*, %struct.anatop_regulator** %9, align 8
  %149 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %148, i32 0, i32 0
  %150 = call i32 @of_property_read_u32(%struct.device_node* %147, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32* %149)
  %151 = load %struct.device_node*, %struct.device_node** %5, align 8
  %152 = load %struct.anatop_regulator*, %struct.anatop_regulator** %9, align 8
  %153 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %152, i32 0, i32 1
  %154 = call i32 @of_property_read_u32(%struct.device_node* %151, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32* %153)
  %155 = load %struct.device_node*, %struct.device_node** %5, align 8
  %156 = load %struct.anatop_regulator*, %struct.anatop_regulator** %9, align 8
  %157 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %156, i32 0, i32 2
  %158 = call i32 @of_property_read_u32(%struct.device_node* %155, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i32* %157)
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* %17, align 4
  %161 = sub nsw i32 %159, %160
  %162 = sdiv i32 %161, 25000
  %163 = add nsw i32 %162, 1
  %164 = load i32, i32* %16, align 4
  %165 = add nsw i32 %163, %164
  %166 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %167 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* %17, align 4
  %169 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %170 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %172 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %171, i32 0, i32 2
  store i32 25000, i32* %172, align 8
  %173 = load i32, i32* %16, align 4
  %174 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %175 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %13, align 4
  %177 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %178 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %15, align 4
  %180 = shl i32 1, %179
  %181 = sub nsw i32 %180, 1
  %182 = load i32, i32* %14, align 4
  %183 = shl i32 %181, %182
  %184 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %185 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 4
  %186 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %187 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %186, i32 0, i32 6
  store i32 125000, i32* %187, align 8
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %11, i32 0, i32 4
  store %struct.device* %189, %struct.device** %190, align 8
  %191 = load %struct.regulator_init_data*, %struct.regulator_init_data** %10, align 8
  %192 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %11, i32 0, i32 3
  store %struct.regulator_init_data* %191, %struct.regulator_init_data** %192, align 8
  %193 = load %struct.anatop_regulator*, %struct.anatop_regulator** %9, align 8
  %194 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %11, i32 0, i32 2
  store %struct.anatop_regulator* %193, %struct.anatop_regulator** %194, align 8
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.device, %struct.device* %196, i32 0, i32 0
  %198 = load %struct.device_node*, %struct.device_node** %197, align 8
  %199 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %11, i32 0, i32 1
  store %struct.device_node* %198, %struct.device_node** %199, align 8
  %200 = load %struct.regmap*, %struct.regmap** %12, align 8
  %201 = bitcast %struct.regmap* %200 to %struct.regulator_dev*
  %202 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %11, i32 0, i32 0
  store %struct.regulator_dev* %201, %struct.regulator_dev** %202, align 8
  %203 = load i32, i32* %13, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %290

205:                                              ; preds = %146
  %206 = load %struct.anatop_regulator*, %struct.anatop_regulator** %9, align 8
  %207 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %290

210:                                              ; preds = %205
  %211 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %212 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %211, i32 0, i32 10
  store %struct.TYPE_3__* @anatop_core_rops, %struct.TYPE_3__** %212, align 8
  %213 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %11, i32 0, i32 0
  %214 = load %struct.regulator_dev*, %struct.regulator_dev** %213, align 8
  %215 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %216 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @regmap_read(%struct.regulator_dev* %214, i32 %217, i32* %20)
  store i32 %218, i32* %19, align 4
  %219 = load i32, i32* %19, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %210
  %222 = load %struct.device*, %struct.device** %4, align 8
  %223 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %222, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  %224 = load i32, i32* %19, align 4
  store i32 %224, i32* %2, align 4
  br label %327

225:                                              ; preds = %210
  %226 = load i32, i32* %20, align 4
  %227 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %228 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %226, %229
  %231 = load i32, i32* %14, align 4
  %232 = ashr i32 %230, %231
  %233 = load %struct.anatop_regulator*, %struct.anatop_regulator** %9, align 8
  %234 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %233, i32 0, i32 3
  store i32 %232, i32* %234, align 4
  %235 = load %struct.anatop_regulator*, %struct.anatop_regulator** %9, align 8
  %236 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @LDO_FET_FULL_ON, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %245

240:                                              ; preds = %225
  %241 = load %struct.anatop_regulator*, %struct.anatop_regulator** %9, align 8
  %242 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %241, i32 0, i32 3
  store i32 0, i32* %242, align 4
  %243 = load %struct.anatop_regulator*, %struct.anatop_regulator** %9, align 8
  %244 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %243, i32 0, i32 4
  store i32 1, i32* %244, align 8
  br label %245

245:                                              ; preds = %240, %225
  %246 = load %struct.anatop_regulator*, %struct.anatop_regulator** %9, align 8
  %247 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %259, label %250

250:                                              ; preds = %245
  %251 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %252 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %251, i32 0, i32 8
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @strcmp(i32 %253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %250
  %257 = load %struct.anatop_regulator*, %struct.anatop_regulator** %9, align 8
  %258 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %257, i32 0, i32 3
  store i32 22, i32* %258, align 4
  br label %259

259:                                              ; preds = %256, %250, %245
  %260 = load %struct.anatop_regulator*, %struct.anatop_regulator** %9, align 8
  %261 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %273, label %264

264:                                              ; preds = %259
  %265 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %266 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %265, i32 0, i32 8
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @strcmp(i32 %267, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %264
  %271 = load %struct.anatop_regulator*, %struct.anatop_regulator** %9, align 8
  %272 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %271, i32 0, i32 3
  store i32 16, i32* %272, align 4
  br label %273

273:                                              ; preds = %270, %264, %259
  %274 = load %struct.anatop_regulator*, %struct.anatop_regulator** %9, align 8
  %275 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %289, label %278

278:                                              ; preds = %273
  %279 = load %struct.anatop_regulator*, %struct.anatop_regulator** %9, align 8
  %280 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %289, label %283

283:                                              ; preds = %278
  %284 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %285 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %284, i32 0, i32 0
  %286 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %285, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0))
  %287 = load i32, i32* @EINVAL, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %2, align 4
  br label %327

289:                                              ; preds = %278, %273
  br label %308

290:                                              ; preds = %205, %146
  %291 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %292 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %291, i32 0, i32 10
  store %struct.TYPE_3__* @anatop_rops, %struct.TYPE_3__** %292, align 8
  %293 = load %struct.device_node*, %struct.device_node** %5, align 8
  %294 = call i32 @of_property_read_u32(%struct.device_node* %293, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i32* %21)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %307, label %296

296:                                              ; preds = %290
  %297 = load i32, i32* @regulator_enable_regmap, align 4
  store i32 %297, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @anatop_rops, i32 0, i32 2), align 4
  %298 = load i32, i32* @regulator_disable_regmap, align 4
  store i32 %298, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @anatop_rops, i32 0, i32 1), align 4
  %299 = load i32, i32* @regulator_is_enabled_regmap, align 4
  store i32 %299, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @anatop_rops, i32 0, i32 0), align 4
  %300 = load i32, i32* %13, align 4
  %301 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %302 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %301, i32 0, i32 7
  store i32 %300, i32* %302, align 4
  %303 = load i32, i32* %21, align 4
  %304 = call i32 @BIT(i32 %303)
  %305 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %306 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %305, i32 0, i32 9
  store i32 %304, i32* %306, align 4
  br label %307

307:                                              ; preds = %296, %290
  br label %308

308:                                              ; preds = %307, %289
  %309 = load %struct.device*, %struct.device** %4, align 8
  %310 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %311 = call %struct.regulator_dev* @devm_regulator_register(%struct.device* %309, %struct.regulator_desc* %310, %struct.regulator_config* %11)
  store %struct.regulator_dev* %311, %struct.regulator_dev** %8, align 8
  %312 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %313 = call i64 @IS_ERR(%struct.regulator_dev* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %323

315:                                              ; preds = %308
  %316 = load %struct.device*, %struct.device** %4, align 8
  %317 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %318 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %317, i32 0, i32 8
  %319 = load i32, i32* %318, align 8
  %320 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %316, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 %319)
  %321 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %322 = call i32 @PTR_ERR(%struct.regulator_dev* %321)
  store i32 %322, i32* %2, align 4
  br label %327

323:                                              ; preds = %308
  %324 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %325 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %326 = call i32 @platform_set_drvdata(%struct.platform_device* %324, %struct.regulator_dev* %325)
  store i32 0, i32* %2, align 4
  br label %327

327:                                              ; preds = %323, %315, %283, %221, %142, %133, %124, %115, %106, %97, %88, %75, %65, %53, %33
  %328 = load i32, i32* %2, align 4
  ret i32 %328
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.anatop_regulator* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i32*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local %struct.regulator_init_data* @of_get_regulator_init_data(%struct.device*, %struct.device_node*, %struct.regulator_desc*) #2

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #2

declare dso_local %struct.regulator_dev* @syscon_node_to_regmap(%struct.device_node*) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

declare dso_local i32 @regmap_read(%struct.regulator_dev*, i32, i32*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.device*, %struct.regulator_desc*, %struct.regulator_config*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.regulator_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
