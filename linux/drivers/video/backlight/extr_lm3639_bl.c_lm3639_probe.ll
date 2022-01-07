; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3639_bl.c_lm3639_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3639_bl.c_lm3639_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm3639_chip_data = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_7__, i32*, %struct.TYPE_8__*, %struct.lm3639_platform_data* }
%struct.TYPE_7__ = type { i8*, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.lm3639_platform_data = type { i32, i32 }
%struct.backlight_properties = type { i32, i32, i32 }
%struct.device = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"i2c functionality check fail.\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Needs Platform Data.\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lm3639_regmap = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"fail : allocate register map: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"fail : chip init\0A\00", align 1
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"lm3639_bled\00", align 1
@lm3639_bled_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"fail : backlight register\0A\00", align 1
@dev_attr_bled_mode = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"failed : add sysfs entries\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"lm3639_flash\00", align 1
@lm3639_flash_brightness_set = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"fail : flash register\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"lm3639_torch\00", align 1
@lm3639_torch_brightness_set = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"fail : torch register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm3639_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3639_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lm3639_chip_data*, align 8
  %8 = alloca %struct.lm3639_platform_data*, align 8
  %9 = alloca %struct.backlight_properties, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.lm3639_platform_data* @dev_get_platdata(i32* %11)
  store %struct.lm3639_platform_data* %12, %struct.lm3639_platform_data** %8, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @I2C_FUNC_I2C, align 4
  %17 = call i32 @i2c_check_functionality(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_err(i32* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %188

25:                                               ; preds = %2
  %26 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %8, align 8
  %27 = icmp eq %struct.lm3639_platform_data* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENODATA, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %188

34:                                               ; preds = %25
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.lm3639_chip_data* @devm_kzalloc(i32* %36, i32 64, i32 %37)
  store %struct.lm3639_chip_data* %38, %struct.lm3639_chip_data** %7, align 8
  %39 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %40 = icmp ne %struct.lm3639_chip_data* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %188

44:                                               ; preds = %34
  %45 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %8, align 8
  %46 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %47 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %46, i32 0, i32 5
  store %struct.lm3639_platform_data* %45, %struct.lm3639_platform_data** %47, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %51 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %50, i32 0, i32 3
  store i32* %49, i32** %51, align 8
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = call %struct.TYPE_8__* @devm_regmap_init_i2c(%struct.i2c_client* %52, i32* @lm3639_regmap)
  %54 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %55 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %54, i32 0, i32 4
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %55, align 8
  %56 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %57 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %56, i32 0, i32 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = call i64 @IS_ERR(%struct.TYPE_8__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %44
  %62 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %63 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %62, i32 0, i32 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = call i32 @PTR_ERR(%struct.TYPE_8__* %64)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (i32*, i8*, ...) @dev_err(i32* %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %188

71:                                               ; preds = %44
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %74 = call i32 @i2c_set_clientdata(%struct.i2c_client* %72, %struct.lm3639_chip_data* %73)
  %75 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %76 = call i32 @lm3639_chip_init(%struct.lm3639_chip_data* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = call i32 (i32*, i8*, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %186

83:                                               ; preds = %71
  %84 = load i32, i32* @BACKLIGHT_RAW, align 4
  %85 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %9, i32 0, i32 2
  store i32 %84, i32* %85, align 4
  %86 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %8, align 8
  %87 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %9, i32 0, i32 1
  store i32 %88, i32* %89, align 4
  %90 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %8, align 8
  %91 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %9, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %95 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %98 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %101 = call %struct.TYPE_8__* @devm_backlight_device_register(i32* %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %99, %struct.lm3639_chip_data* %100, i32* @lm3639_bled_ops, %struct.backlight_properties* %9)
  %102 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %103 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %102, i32 0, i32 0
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** %103, align 8
  %104 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %105 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = call i64 @IS_ERR(%struct.TYPE_8__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %83
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 0
  %112 = call i32 (i32*, i8*, ...) @dev_err(i32* %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %113 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %114 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = call i32 @PTR_ERR(%struct.TYPE_8__* %115)
  store i32 %116, i32* %6, align 4
  br label %186

117:                                              ; preds = %83
  %118 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %119 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = call i32 @device_create_file(i32* %121, i32* @dev_attr_bled_mode)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %127 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %126, i32 0, i32 0
  %128 = call i32 (i32*, i8*, ...) @dev_err(i32* %127, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %186

129:                                              ; preds = %117
  %130 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %131 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %132, align 8
  %133 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %134 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i32 16, i32* %135, align 8
  %136 = load i32, i32* @lm3639_flash_brightness_set, align 4
  %137 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %138 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  store i32 %136, i32* %139, align 4
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 0
  %142 = bitcast i32* %141 to %struct.device*
  %143 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %144 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %143, i32 0, i32 1
  %145 = call i32 @led_classdev_register(%struct.device* %142, %struct.TYPE_7__* %144)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %129
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 0
  %151 = call i32 (i32*, i8*, ...) @dev_err(i32* %150, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %180

152:                                              ; preds = %129
  %153 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %154 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %155, align 8
  %156 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %157 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  store i32 8, i32* %158, align 8
  %159 = load i32, i32* @lm3639_torch_brightness_set, align 4
  %160 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %161 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  store i32 %159, i32* %162, align 4
  %163 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %164 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %163, i32 0, i32 0
  %165 = bitcast i32* %164 to %struct.device*
  %166 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %167 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %166, i32 0, i32 2
  %168 = call i32 @led_classdev_register(%struct.device* %165, %struct.TYPE_7__* %167)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %152
  %172 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %173 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %172, i32 0, i32 0
  %174 = call i32 (i32*, i8*, ...) @dev_err(i32* %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %176

175:                                              ; preds = %152
  store i32 0, i32* %3, align 4
  br label %188

176:                                              ; preds = %171
  %177 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %178 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %177, i32 0, i32 1
  %179 = call i32 @led_classdev_unregister(%struct.TYPE_7__* %178)
  br label %180

180:                                              ; preds = %176, %148
  %181 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %7, align 8
  %182 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %181, i32 0, i32 0
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = call i32 @device_remove_file(i32* %184, i32* @dev_attr_bled_mode)
  br label %186

186:                                              ; preds = %180, %125, %109, %79
  %187 = load i32, i32* %6, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %186, %175, %61, %41, %28, %19
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local %struct.lm3639_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.lm3639_chip_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm3639_chip_data*) #1

declare dso_local i32 @lm3639_chip_init(%struct.lm3639_chip_data*) #1

declare dso_local %struct.TYPE_8__* @devm_backlight_device_register(i32*, i8*, i32*, %struct.lm3639_chip_data*, i32*, %struct.backlight_properties*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @led_classdev_register(%struct.device*, %struct.TYPE_7__*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_7__*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
