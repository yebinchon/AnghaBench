; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8649.c_max8649_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8649.c_max8649_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max8649_platform_data = type { i32, i32, i32, i32, i64, i64 }
%struct.max8649_regulator_info = type { i32, i32, i32, i32*, %struct.regulator_dev*, i64, i64 }
%struct.regulator_dev = type { i32 }
%struct.regulator_config = type { %struct.regulator_dev*, %struct.max8649_regulator_info*, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max8649_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@MAX8649_MODE0 = common dso_local global i32 0, align 4
@dcdc_desc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@MAX8649_MODE1 = common dso_local global i32 0, align 4
@MAX8649_MODE2 = common dso_local global i32 0, align 4
@MAX8649_MODE3 = common dso_local global i32 0, align 4
@MAX8649_CHIP_ID1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to detect ID of MAX8649:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Detected MAX8649 (ID:%x)\0A\00", align 1
@MAX8649_CONTROL = common dso_local global i32 0, align 4
@MAX8649_VID_MASK = common dso_local global i32 0, align 4
@MAX8649_SYNC_EXTCLK = common dso_local global i32 0, align 4
@MAX8649_SYNC = common dso_local global i32 0, align 4
@MAX8649_EXT_MASK = common dso_local global i32 0, align 4
@MAX8649_RAMP = common dso_local global i32 0, align 4
@MAX8649_RAMP_MASK = common dso_local global i32 0, align 4
@MAX8649_RAMP_DOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max8649_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8649_regulator_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max8649_platform_data*, align 8
  %7 = alloca %struct.max8649_regulator_info*, align 8
  %8 = alloca %struct.regulator_dev*, align 8
  %9 = alloca %struct.regulator_config, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = call %struct.max8649_platform_data* @dev_get_platdata(i32* %14)
  store %struct.max8649_platform_data* %15, %struct.max8649_platform_data** %6, align 8
  store %struct.max8649_regulator_info* null, %struct.max8649_regulator_info** %7, align 8
  %16 = bitcast %struct.regulator_config* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.max8649_regulator_info* @devm_kzalloc(i32* %18, i32 48, i32 %19)
  store %struct.max8649_regulator_info* %20, %struct.max8649_regulator_info** %7, align 8
  %21 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %22 = icmp ne %struct.max8649_regulator_info* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %209

26:                                               ; preds = %2
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = call %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client* %27, i32* @max8649_regmap_config)
  %29 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %30 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %29, i32 0, i32 4
  store %struct.regulator_dev* %28, %struct.regulator_dev** %30, align 8
  %31 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %32 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %31, i32 0, i32 4
  %33 = load %struct.regulator_dev*, %struct.regulator_dev** %32, align 8
  %34 = call i64 @IS_ERR(%struct.regulator_dev* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %26
  %37 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %38 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %37, i32 0, i32 4
  %39 = load %struct.regulator_dev*, %struct.regulator_dev** %38, align 8
  %40 = call i32 @PTR_ERR(%struct.regulator_dev* %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %3, align 4
  br label %209

46:                                               ; preds = %26
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %50 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %49, i32 0, i32 3
  store i32* %48, i32** %50, align 8
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %53 = call i32 @i2c_set_clientdata(%struct.i2c_client* %51, %struct.max8649_regulator_info* %52)
  %54 = load %struct.max8649_platform_data*, %struct.max8649_platform_data** %6, align 8
  %55 = getelementptr inbounds %struct.max8649_platform_data, %struct.max8649_platform_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %58 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %60 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %70 [
    i32 0, label %62
    i32 1, label %64
    i32 2, label %66
    i32 3, label %68
  ]

62:                                               ; preds = %46
  %63 = load i32, i32* @MAX8649_MODE0, align 4
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dcdc_desc, i32 0, i32 1), align 4
  br label %71

64:                                               ; preds = %46
  %65 = load i32, i32* @MAX8649_MODE1, align 4
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dcdc_desc, i32 0, i32 1), align 4
  br label %71

66:                                               ; preds = %46
  %67 = load i32, i32* @MAX8649_MODE2, align 4
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dcdc_desc, i32 0, i32 1), align 4
  br label %71

68:                                               ; preds = %46
  %69 = load i32, i32* @MAX8649_MODE3, align 4
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dcdc_desc, i32 0, i32 1), align 4
  br label %71

70:                                               ; preds = %46
  br label %71

71:                                               ; preds = %70, %68, %66, %64, %62
  %72 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %73 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %72, i32 0, i32 4
  %74 = load %struct.regulator_dev*, %struct.regulator_dev** %73, align 8
  %75 = load i32, i32* @MAX8649_CHIP_ID1, align 4
  %76 = call i32 @regmap_read(%struct.regulator_dev* %74, i32 %75, i32* %10)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %81 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %3, align 4
  br label %209

86:                                               ; preds = %71
  %87 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %88 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @dev_info(i32* %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %93 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %92, i32 0, i32 4
  %94 = load %struct.regulator_dev*, %struct.regulator_dev** %93, align 8
  %95 = load i32, i32* @MAX8649_CONTROL, align 4
  %96 = load i32, i32* @MAX8649_VID_MASK, align 4
  %97 = call i32 @regmap_update_bits(%struct.regulator_dev* %94, i32 %95, i32 %96, i32 0)
  %98 = load %struct.max8649_platform_data*, %struct.max8649_platform_data** %6, align 8
  %99 = getelementptr inbounds %struct.max8649_platform_data, %struct.max8649_platform_data* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %102 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %101, i32 0, i32 6
  store i64 %100, i64* %102, align 8
  %103 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %104 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %86
  %108 = load i32, i32* @MAX8649_SYNC_EXTCLK, align 4
  br label %110

109:                                              ; preds = %86
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 0, %109 ]
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %11, align 1
  %113 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %114 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %113, i32 0, i32 4
  %115 = load %struct.regulator_dev*, %struct.regulator_dev** %114, align 8
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dcdc_desc, i32 0, i32 1), align 4
  %117 = load i32, i32* @MAX8649_SYNC_EXTCLK, align 4
  %118 = load i8, i8* %11, align 1
  %119 = zext i8 %118 to i32
  %120 = call i32 @regmap_update_bits(%struct.regulator_dev* %115, i32 %116, i32 %117, i32 %119)
  %121 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %122 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %110
  %126 = load %struct.max8649_platform_data*, %struct.max8649_platform_data** %6, align 8
  %127 = getelementptr inbounds %struct.max8649_platform_data, %struct.max8649_platform_data* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %130 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %132 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %131, i32 0, i32 4
  %133 = load %struct.regulator_dev*, %struct.regulator_dev** %132, align 8
  %134 = load i32, i32* @MAX8649_SYNC, align 4
  %135 = load i32, i32* @MAX8649_EXT_MASK, align 4
  %136 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %137 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 %138, 6
  %140 = call i32 @regmap_update_bits(%struct.regulator_dev* %133, i32 %134, i32 %135, i32 %139)
  br label %141

141:                                              ; preds = %125, %110
  %142 = load %struct.max8649_platform_data*, %struct.max8649_platform_data** %6, align 8
  %143 = getelementptr inbounds %struct.max8649_platform_data, %struct.max8649_platform_data* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %141
  %147 = load %struct.max8649_platform_data*, %struct.max8649_platform_data** %6, align 8
  %148 = getelementptr inbounds %struct.max8649_platform_data, %struct.max8649_platform_data* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %151 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %153 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %152, i32 0, i32 4
  %154 = load %struct.regulator_dev*, %struct.regulator_dev** %153, align 8
  %155 = load i32, i32* @MAX8649_RAMP, align 4
  %156 = load i32, i32* @MAX8649_RAMP_MASK, align 4
  %157 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %158 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = shl i32 %159, 5
  %161 = call i32 @regmap_update_bits(%struct.regulator_dev* %154, i32 %155, i32 %156, i32 %160)
  br label %162

162:                                              ; preds = %146, %141
  %163 = load %struct.max8649_platform_data*, %struct.max8649_platform_data** %6, align 8
  %164 = getelementptr inbounds %struct.max8649_platform_data, %struct.max8649_platform_data* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %167 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %166, i32 0, i32 5
  store i64 %165, i64* %167, align 8
  %168 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %169 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %162
  %173 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %174 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %173, i32 0, i32 4
  %175 = load %struct.regulator_dev*, %struct.regulator_dev** %174, align 8
  %176 = load i32, i32* @MAX8649_RAMP, align 4
  %177 = load i32, i32* @MAX8649_RAMP_DOWN, align 4
  %178 = load i32, i32* @MAX8649_RAMP_DOWN, align 4
  %179 = call i32 @regmap_update_bits(%struct.regulator_dev* %175, i32 %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %172, %162
  %181 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %182 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 3
  store i32* %182, i32** %183, align 8
  %184 = load %struct.max8649_platform_data*, %struct.max8649_platform_data** %6, align 8
  %185 = getelementptr inbounds %struct.max8649_platform_data, %struct.max8649_platform_data* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 2
  store i32 %186, i32* %187, align 8
  %188 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %189 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 1
  store %struct.max8649_regulator_info* %188, %struct.max8649_regulator_info** %189, align 8
  %190 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %191 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %190, i32 0, i32 4
  %192 = load %struct.regulator_dev*, %struct.regulator_dev** %191, align 8
  %193 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 0
  store %struct.regulator_dev* %192, %struct.regulator_dev** %193, align 8
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %194, i32 0, i32 0
  %196 = call %struct.regulator_dev* @devm_regulator_register(i32* %195, %struct.TYPE_3__* @dcdc_desc, %struct.regulator_config* %9)
  store %struct.regulator_dev* %196, %struct.regulator_dev** %8, align 8
  %197 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %198 = call i64 @IS_ERR(%struct.regulator_dev* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %180
  %201 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %7, align 8
  %202 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %201, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dcdc_desc, i32 0, i32 0), align 4
  %205 = call i32 @dev_err(i32* %203, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %204)
  %206 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %207 = call i32 @PTR_ERR(%struct.regulator_dev* %206)
  store i32 %207, i32* %3, align 4
  br label %209

208:                                              ; preds = %180
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %208, %200, %79, %36, %23
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local %struct.max8649_platform_data* @dev_get_platdata(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.max8649_regulator_info* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max8649_regulator_info*) #1

declare dso_local i32 @regmap_read(%struct.regulator_dev*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regulator_dev*, i32, i32, i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(i32*, %struct.TYPE_3__*, %struct.regulator_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
