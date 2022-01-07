; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_fan53555.c_fan53555_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_fan53555.c_fan53555_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.fan53555_device_info = type { i64, i32, i32, %struct.TYPE_10__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.fan53555_platform_data = type { i64, %struct.TYPE_10__* }
%struct.regulator_config = type { %struct.device_node*, %struct.fan53555_device_info*, %struct.regmap*, %struct.TYPE_10__*, %struct.TYPE_11__* }
%struct.regmap = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Platform data not found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@slew_rates = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid slew_rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@fan53555_regmap_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to allocate regmap!\0A\00", align 1
@FAN53555_ID1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to get chip ID!\0A\00", align 1
@DIE_ID = common dso_local global i32 0, align 4
@FAN53555_ID2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to get chip Rev!\0A\00", align 1
@DIE_REV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"FAN53555 Option[%d] Rev[%d] Detected!\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Failed to setup device!\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Failed to register regulator!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @fan53555_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan53555_regulator_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.fan53555_device_info*, align 8
  %8 = alloca %struct.fan53555_platform_data*, align 8
  %9 = alloca %struct.regulator_config, align 8
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  %17 = bitcast %struct.regulator_config* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 40, i1 false)
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.fan53555_device_info* @devm_kzalloc(%struct.TYPE_11__* %19, i32 40, i32 %20)
  store %struct.fan53555_device_info* %21, %struct.fan53555_device_info** %7, align 8
  %22 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %7, align 8
  %23 = icmp ne %struct.fan53555_device_info* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %206

27:                                               ; preds = %2
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = call %struct.fan53555_platform_data* @dev_get_platdata(%struct.TYPE_11__* %29)
  store %struct.fan53555_platform_data* %30, %struct.fan53555_platform_data** %8, align 8
  %31 = load %struct.fan53555_platform_data*, %struct.fan53555_platform_data** %8, align 8
  %32 = icmp ne %struct.fan53555_platform_data* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load %struct.device_node*, %struct.device_node** %6, align 8
  %37 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %7, align 8
  %38 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %37, i32 0, i32 5
  %39 = call %struct.fan53555_platform_data* @fan53555_parse_dt(%struct.TYPE_11__* %35, %struct.device_node* %36, i32* %38)
  store %struct.fan53555_platform_data* %39, %struct.fan53555_platform_data** %8, align 8
  br label %40

40:                                               ; preds = %33, %27
  %41 = load %struct.fan53555_platform_data*, %struct.fan53555_platform_data** %8, align 8
  %42 = icmp ne %struct.fan53555_platform_data* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.fan53555_platform_data*, %struct.fan53555_platform_data** %8, align 8
  %45 = getelementptr inbounds %struct.fan53555_platform_data, %struct.fan53555_platform_data* %44, i32 0, i32 1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = icmp ne %struct.TYPE_10__* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %43, %40
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = call i32 @dev_err(%struct.TYPE_11__* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %206

54:                                               ; preds = %43
  %55 = load %struct.fan53555_platform_data*, %struct.fan53555_platform_data** %8, align 8
  %56 = getelementptr inbounds %struct.fan53555_platform_data, %struct.fan53555_platform_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %7, align 8
  %59 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %58, i32 0, i32 3
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %59, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.device_node*, %struct.device_node** %62, align 8
  %64 = icmp ne %struct.device_node* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %54
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = call i64 @of_device_get_match_data(%struct.TYPE_11__* %67)
  %69 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %7, align 8
  %70 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %110

71:                                               ; preds = %54
  %72 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %7, align 8
  %73 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %72, i32 0, i32 3
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %104, label %79

79:                                               ; preds = %71
  %80 = load %struct.fan53555_platform_data*, %struct.fan53555_platform_data** %8, align 8
  %81 = getelementptr inbounds %struct.fan53555_platform_data, %struct.fan53555_platform_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** @slew_rates, align 8
  %84 = call i64 @ARRAY_SIZE(i64* %83)
  %85 = icmp uge i64 %82, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = call i32 @dev_err(%struct.TYPE_11__* %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %206

92:                                               ; preds = %79
  %93 = load i64*, i64** @slew_rates, align 8
  %94 = load %struct.fan53555_platform_data*, %struct.fan53555_platform_data** %8, align 8
  %95 = getelementptr inbounds %struct.fan53555_platform_data, %struct.fan53555_platform_data* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i64, i64* %93, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %7, align 8
  %100 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %99, i32 0, i32 3
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  store i64 %98, i64* %103, align 8
  br label %104

104:                                              ; preds = %92, %71
  %105 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %106 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %7, align 8
  %109 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %104, %65
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %111, i32* @fan53555_regmap_config)
  store %struct.regmap* %112, %struct.regmap** %10, align 8
  %113 = load %struct.regmap*, %struct.regmap** %10, align 8
  %114 = call i64 @IS_ERR(%struct.regmap* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 0
  %119 = call i32 @dev_err(%struct.TYPE_11__* %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %120 = load %struct.regmap*, %struct.regmap** %10, align 8
  %121 = call i32 @PTR_ERR(%struct.regmap* %120)
  store i32 %121, i32* %3, align 4
  br label %206

122:                                              ; preds = %110
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %123, i32 0, i32 0
  %125 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %7, align 8
  %126 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %125, i32 0, i32 4
  store %struct.TYPE_11__* %124, %struct.TYPE_11__** %126, align 8
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %7, align 8
  %129 = call i32 @i2c_set_clientdata(%struct.i2c_client* %127, %struct.fan53555_device_info* %128)
  %130 = load %struct.regmap*, %struct.regmap** %10, align 8
  %131 = load i32, i32* @FAN53555_ID1, align 4
  %132 = call i32 @regmap_read(%struct.regmap* %130, i32 %131, i32* %11)
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %122
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 0
  %138 = call i32 @dev_err(%struct.TYPE_11__* %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %3, align 4
  br label %206

140:                                              ; preds = %122
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @DIE_ID, align 4
  %143 = and i32 %141, %142
  %144 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %7, align 8
  %145 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  %146 = load %struct.regmap*, %struct.regmap** %10, align 8
  %147 = load i32, i32* @FAN53555_ID2, align 4
  %148 = call i32 @regmap_read(%struct.regmap* %146, i32 %147, i32* %11)
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %140
  %152 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %153 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %152, i32 0, i32 0
  %154 = call i32 @dev_err(%struct.TYPE_11__* %153, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %155 = load i32, i32* %12, align 4
  store i32 %155, i32* %3, align 4
  br label %206

156:                                              ; preds = %140
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @DIE_REV, align 4
  %159 = and i32 %157, %158
  %160 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %7, align 8
  %161 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 4
  %162 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %163 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %162, i32 0, i32 0
  %164 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %7, align 8
  %165 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %7, align 8
  %168 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @dev_info(%struct.TYPE_11__* %163, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %166, i32 %169)
  %171 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %7, align 8
  %172 = load %struct.fan53555_platform_data*, %struct.fan53555_platform_data** %8, align 8
  %173 = call i32 @fan53555_device_setup(%struct.fan53555_device_info* %171, %struct.fan53555_platform_data* %172)
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %156
  %177 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %178 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %177, i32 0, i32 0
  %179 = call i32 @dev_err(%struct.TYPE_11__* %178, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %180 = load i32, i32* %12, align 4
  store i32 %180, i32* %3, align 4
  br label %206

181:                                              ; preds = %156
  %182 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %7, align 8
  %183 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %182, i32 0, i32 4
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 4
  store %struct.TYPE_11__* %184, %struct.TYPE_11__** %185, align 8
  %186 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %7, align 8
  %187 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %186, i32 0, i32 3
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 3
  store %struct.TYPE_10__* %188, %struct.TYPE_10__** %189, align 8
  %190 = load %struct.regmap*, %struct.regmap** %10, align 8
  %191 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 2
  store %struct.regmap* %190, %struct.regmap** %191, align 8
  %192 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %7, align 8
  %193 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 1
  store %struct.fan53555_device_info* %192, %struct.fan53555_device_info** %193, align 8
  %194 = load %struct.device_node*, %struct.device_node** %6, align 8
  %195 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 0
  store %struct.device_node* %194, %struct.device_node** %195, align 8
  %196 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %7, align 8
  %197 = call i32 @fan53555_regulator_register(%struct.fan53555_device_info* %196, %struct.regulator_config* %9)
  store i32 %197, i32* %12, align 4
  %198 = load i32, i32* %12, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %181
  %201 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %202 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %201, i32 0, i32 0
  %203 = call i32 @dev_err(%struct.TYPE_11__* %202, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %204

204:                                              ; preds = %200, %181
  %205 = load i32, i32* %12, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %204, %176, %151, %135, %116, %86, %48, %24
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.fan53555_device_info* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #2

declare dso_local %struct.fan53555_platform_data* @dev_get_platdata(%struct.TYPE_11__*) #2

declare dso_local %struct.fan53555_platform_data* @fan53555_parse_dt(%struct.TYPE_11__*, %struct.device_node*, i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #2

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_11__*) #2

declare dso_local i64 @ARRAY_SIZE(i64*) #2

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #2

declare dso_local i64 @IS_ERR(%struct.regmap*) #2

declare dso_local i32 @PTR_ERR(%struct.regmap*) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.fan53555_device_info*) #2

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #2

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*, i32, i32) #2

declare dso_local i32 @fan53555_device_setup(%struct.fan53555_device_info*, %struct.fan53555_platform_data*) #2

declare dso_local i32 @fan53555_regulator_register(%struct.fan53555_device_info*, %struct.regulator_config*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
