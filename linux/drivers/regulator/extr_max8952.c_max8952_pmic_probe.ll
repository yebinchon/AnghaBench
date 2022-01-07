; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8952.c_max8952_pmic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8952.c_max8952_pmic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_13__, %struct.i2c_adapter* }
%struct.TYPE_13__ = type { i64 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max8952_platform_data = type { i32, i32*, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.regulator_config = type { %struct.regulator_dev*, i64, %struct.max8952_data*, %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.regulator_dev = type { i32 }
%struct.max8952_data = type { i32, i32, %struct.regulator_dev*, %struct.regulator_dev*, %struct.max8952_platform_data*, %struct.i2c_client* }
%struct.gpio_desc = type opaque

@.str = private unnamed_addr constant [27 x i8] c"Require the platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@GPIOD_FLAGS_BIT_NONEXCLUSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"max8952,en\00", align 1
@regulator = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"regulator init failed (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"max8952,vid\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"VID0/1 gpio invalid: DVS not available.\0A\00", align 1
@MAX8952_REG_CONTROL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [71 x i8] c"DVS modes disabled because VID0 and VID1 do not have proper controls.\0A\00", align 1
@MAX8952_REG_MODE0 = common dso_local global i32 0, align 4
@MAX8952_REG_MODE1 = common dso_local global i32 0, align 4
@MAX8952_REG_MODE2 = common dso_local global i32 0, align 4
@MAX8952_REG_MODE3 = common dso_local global i32 0, align 4
@MAX8952_REG_SYNC = common dso_local global i32 0, align 4
@MAX8952_REG_RAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max8952_pmic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8952_pmic_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.max8952_platform_data*, align 8
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca %struct.max8952_data*, align 8
  %10 = alloca %struct.regulator_dev*, align 8
  %11 = alloca %struct.gpio_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %6, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = call %struct.max8952_platform_data* @dev_get_platdata(%struct.TYPE_13__* %18)
  store %struct.max8952_platform_data* %19, %struct.max8952_platform_data** %7, align 8
  %20 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 40, i1 false)
  store i32 0, i32* %13, align 4
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = call %struct.max8952_platform_data* @max8952_parse_dt(%struct.TYPE_13__* %28)
  store %struct.max8952_platform_data* %29, %struct.max8952_platform_data** %7, align 8
  br label %30

30:                                               ; preds = %26, %2
  %31 = load %struct.max8952_platform_data*, %struct.max8952_platform_data** %7, align 8
  %32 = icmp ne %struct.max8952_platform_data* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %331

39:                                               ; preds = %30
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %41 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %42 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %331

47:                                               ; preds = %39
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.max8952_data* @devm_kzalloc(%struct.TYPE_13__* %49, i32 40, i32 %50)
  store %struct.max8952_data* %51, %struct.max8952_data** %9, align 8
  %52 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %53 = icmp ne %struct.max8952_data* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %331

57:                                               ; preds = %47
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %60 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %59, i32 0, i32 5
  store %struct.i2c_client* %58, %struct.i2c_client** %60, align 8
  %61 = load %struct.max8952_platform_data*, %struct.max8952_platform_data** %7, align 8
  %62 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %63 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %62, i32 0, i32 4
  store %struct.max8952_platform_data* %61, %struct.max8952_platform_data** %63, align 8
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 4
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %66, align 8
  %67 = load %struct.max8952_platform_data*, %struct.max8952_platform_data** %7, align 8
  %68 = getelementptr inbounds %struct.max8952_platform_data, %struct.max8952_platform_data* %67, i32 0, i32 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 3
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %70, align 8
  %71 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %72 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 2
  store %struct.max8952_data* %71, %struct.max8952_data** %72, align 8
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store i64 %76, i64* %77, align 8
  %78 = load %struct.max8952_platform_data*, %struct.max8952_platform_data** %7, align 8
  %79 = getelementptr inbounds %struct.max8952_platform_data, %struct.max8952_platform_data* %78, i32 0, i32 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %57
  %86 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  store i32 %86, i32* %12, align 4
  br label %89

87:                                               ; preds = %57
  %88 = load i32, i32* @GPIOD_OUT_LOW, align 4
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = load i32, i32* @GPIOD_FLAGS_BIT_NONEXCLUSIVE, align 4
  %91 = load i32, i32* %12, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %12, align 4
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = load i32, i32* %12, align 4
  %96 = call %struct.regulator_dev* @gpiod_get_optional(%struct.TYPE_13__* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = bitcast %struct.regulator_dev* %96 to %struct.gpio_desc*
  store %struct.gpio_desc* %97, %struct.gpio_desc** %11, align 8
  %98 = load %struct.gpio_desc*, %struct.gpio_desc** %11, align 8
  %99 = bitcast %struct.gpio_desc* %98 to %struct.regulator_dev*
  %100 = call i64 @IS_ERR(%struct.regulator_dev* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %89
  %103 = load %struct.gpio_desc*, %struct.gpio_desc** %11, align 8
  %104 = bitcast %struct.gpio_desc* %103 to %struct.regulator_dev*
  %105 = call i32 @PTR_ERR(%struct.regulator_dev* %104)
  store i32 %105, i32* %3, align 4
  br label %331

106:                                              ; preds = %89
  %107 = load %struct.gpio_desc*, %struct.gpio_desc** %11, align 8
  %108 = icmp ne %struct.gpio_desc* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load %struct.gpio_desc*, %struct.gpio_desc** %11, align 8
  %111 = bitcast %struct.gpio_desc* %110 to %struct.regulator_dev*
  %112 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store %struct.regulator_dev* %111, %struct.regulator_dev** %112, align 8
  br label %113

113:                                              ; preds = %109, %106
  %114 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %115 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %114, i32 0, i32 0
  %116 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_13__* %115, i32* @regulator, %struct.regulator_config* %8)
  store %struct.regulator_dev* %116, %struct.regulator_dev** %10, align 8
  %117 = load %struct.regulator_dev*, %struct.regulator_dev** %10, align 8
  %118 = call i64 @IS_ERR(%struct.regulator_dev* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = load %struct.regulator_dev*, %struct.regulator_dev** %10, align 8
  %122 = call i32 @PTR_ERR(%struct.regulator_dev* %121)
  store i32 %122, i32* %13, align 4
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %123, i32 0, i32 0
  %125 = load i32, i32* %13, align 4
  %126 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %3, align 4
  br label %331

128:                                              ; preds = %113
  %129 = load %struct.max8952_platform_data*, %struct.max8952_platform_data** %7, align 8
  %130 = getelementptr inbounds %struct.max8952_platform_data, %struct.max8952_platform_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, 1
  %133 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %134 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.max8952_platform_data*, %struct.max8952_platform_data** %7, align 8
  %136 = getelementptr inbounds %struct.max8952_platform_data, %struct.max8952_platform_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = ashr i32 %137, 1
  %139 = and i32 %138, 1
  %140 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %141 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %143 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %128
  %147 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  br label %150

148:                                              ; preds = %128
  %149 = load i32, i32* @GPIOD_OUT_LOW, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  store i32 %151, i32* %12, align 4
  %152 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %153 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %152, i32 0, i32 0
  %154 = load i32, i32* %12, align 4
  %155 = call i8* @devm_gpiod_get_index_optional(%struct.TYPE_13__* %153, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %154)
  %156 = bitcast i8* %155 to %struct.regulator_dev*
  %157 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %158 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %157, i32 0, i32 3
  store %struct.regulator_dev* %156, %struct.regulator_dev** %158, align 8
  %159 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %160 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %159, i32 0, i32 3
  %161 = load %struct.regulator_dev*, %struct.regulator_dev** %160, align 8
  %162 = call i64 @IS_ERR(%struct.regulator_dev* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %150
  %165 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %166 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %165, i32 0, i32 3
  %167 = load %struct.regulator_dev*, %struct.regulator_dev** %166, align 8
  %168 = call i32 @PTR_ERR(%struct.regulator_dev* %167)
  store i32 %168, i32* %3, align 4
  br label %331

169:                                              ; preds = %150
  %170 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %171 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  br label %178

176:                                              ; preds = %169
  %177 = load i32, i32* @GPIOD_OUT_LOW, align 4
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i32 [ %175, %174 ], [ %177, %176 ]
  store i32 %179, i32* %12, align 4
  %180 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %181 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %180, i32 0, i32 0
  %182 = load i32, i32* %12, align 4
  %183 = call i8* @devm_gpiod_get_index_optional(%struct.TYPE_13__* %181, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 %182)
  %184 = bitcast i8* %183 to %struct.regulator_dev*
  %185 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %186 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %185, i32 0, i32 2
  store %struct.regulator_dev* %184, %struct.regulator_dev** %186, align 8
  %187 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %188 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %187, i32 0, i32 2
  %189 = load %struct.regulator_dev*, %struct.regulator_dev** %188, align 8
  %190 = call i64 @IS_ERR(%struct.regulator_dev* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %178
  %193 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %194 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %193, i32 0, i32 2
  %195 = load %struct.regulator_dev*, %struct.regulator_dev** %194, align 8
  %196 = call i32 @PTR_ERR(%struct.regulator_dev* %195)
  store i32 %196, i32* %3, align 4
  br label %331

197:                                              ; preds = %178
  %198 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %199 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %198, i32 0, i32 3
  %200 = load %struct.regulator_dev*, %struct.regulator_dev** %199, align 8
  %201 = icmp ne %struct.regulator_dev* %200, null
  br i1 %201, label %202, label %207

202:                                              ; preds = %197
  %203 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %204 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %203, i32 0, i32 2
  %205 = load %struct.regulator_dev*, %struct.regulator_dev** %204, align 8
  %206 = icmp ne %struct.regulator_dev* %205, null
  br i1 %206, label %241, label %207

207:                                              ; preds = %202, %197
  %208 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %209 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %208, i32 0, i32 0
  %210 = call i32 @dev_warn(%struct.TYPE_13__* %209, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %211 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %212 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %211, i32 0, i32 0
  store i32 0, i32* %212, align 8
  %213 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %214 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %213, i32 0, i32 1
  store i32 0, i32* %214, align 4
  %215 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %216 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %215, i32 0, i32 3
  %217 = load %struct.regulator_dev*, %struct.regulator_dev** %216, align 8
  %218 = icmp ne %struct.regulator_dev* %217, null
  br i1 %218, label %219, label %224

219:                                              ; preds = %207
  %220 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %221 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %220, i32 0, i32 3
  %222 = load %struct.regulator_dev*, %struct.regulator_dev** %221, align 8
  %223 = call i32 @gpiod_set_value(%struct.regulator_dev* %222, i32 0)
  br label %224

224:                                              ; preds = %219, %207
  %225 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %226 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %225, i32 0, i32 2
  %227 = load %struct.regulator_dev*, %struct.regulator_dev** %226, align 8
  %228 = icmp ne %struct.regulator_dev* %227, null
  br i1 %228, label %229, label %234

229:                                              ; preds = %224
  %230 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %231 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %230, i32 0, i32 2
  %232 = load %struct.regulator_dev*, %struct.regulator_dev** %231, align 8
  %233 = call i32 @gpiod_set_value(%struct.regulator_dev* %232, i32 0)
  br label %234

234:                                              ; preds = %229, %224
  %235 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %236 = load i32, i32* @MAX8952_REG_CONTROL, align 4
  %237 = call i32 @max8952_write_reg(%struct.max8952_data* %235, i32 %236, i32 96)
  %238 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %239 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %238, i32 0, i32 0
  %240 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %239, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  br label %245

241:                                              ; preds = %202
  %242 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %243 = load i32, i32* @MAX8952_REG_CONTROL, align 4
  %244 = call i32 @max8952_write_reg(%struct.max8952_data* %242, i32 %243, i32 0)
  br label %245

245:                                              ; preds = %241, %234
  %246 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %247 = load i32, i32* @MAX8952_REG_MODE0, align 4
  %248 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %249 = load i32, i32* @MAX8952_REG_MODE0, align 4
  %250 = call i32 @max8952_read_reg(%struct.max8952_data* %248, i32 %249)
  %251 = and i32 %250, 192
  %252 = load %struct.max8952_platform_data*, %struct.max8952_platform_data** %7, align 8
  %253 = getelementptr inbounds %struct.max8952_platform_data, %struct.max8952_platform_data* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %256, 63
  %258 = or i32 %251, %257
  %259 = call i32 @max8952_write_reg(%struct.max8952_data* %246, i32 %247, i32 %258)
  %260 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %261 = load i32, i32* @MAX8952_REG_MODE1, align 4
  %262 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %263 = load i32, i32* @MAX8952_REG_MODE1, align 4
  %264 = call i32 @max8952_read_reg(%struct.max8952_data* %262, i32 %263)
  %265 = and i32 %264, 192
  %266 = load %struct.max8952_platform_data*, %struct.max8952_platform_data** %7, align 8
  %267 = getelementptr inbounds %struct.max8952_platform_data, %struct.max8952_platform_data* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 1
  %270 = load i32, i32* %269, align 4
  %271 = and i32 %270, 63
  %272 = or i32 %265, %271
  %273 = call i32 @max8952_write_reg(%struct.max8952_data* %260, i32 %261, i32 %272)
  %274 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %275 = load i32, i32* @MAX8952_REG_MODE2, align 4
  %276 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %277 = load i32, i32* @MAX8952_REG_MODE2, align 4
  %278 = call i32 @max8952_read_reg(%struct.max8952_data* %276, i32 %277)
  %279 = and i32 %278, 192
  %280 = load %struct.max8952_platform_data*, %struct.max8952_platform_data** %7, align 8
  %281 = getelementptr inbounds %struct.max8952_platform_data, %struct.max8952_platform_data* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 2
  %284 = load i32, i32* %283, align 4
  %285 = and i32 %284, 63
  %286 = or i32 %279, %285
  %287 = call i32 @max8952_write_reg(%struct.max8952_data* %274, i32 %275, i32 %286)
  %288 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %289 = load i32, i32* @MAX8952_REG_MODE3, align 4
  %290 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %291 = load i32, i32* @MAX8952_REG_MODE3, align 4
  %292 = call i32 @max8952_read_reg(%struct.max8952_data* %290, i32 %291)
  %293 = and i32 %292, 192
  %294 = load %struct.max8952_platform_data*, %struct.max8952_platform_data** %7, align 8
  %295 = getelementptr inbounds %struct.max8952_platform_data, %struct.max8952_platform_data* %294, i32 0, i32 1
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 3
  %298 = load i32, i32* %297, align 4
  %299 = and i32 %298, 63
  %300 = or i32 %293, %299
  %301 = call i32 @max8952_write_reg(%struct.max8952_data* %288, i32 %289, i32 %300)
  %302 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %303 = load i32, i32* @MAX8952_REG_SYNC, align 4
  %304 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %305 = load i32, i32* @MAX8952_REG_SYNC, align 4
  %306 = call i32 @max8952_read_reg(%struct.max8952_data* %304, i32 %305)
  %307 = and i32 %306, 63
  %308 = load %struct.max8952_platform_data*, %struct.max8952_platform_data** %7, align 8
  %309 = getelementptr inbounds %struct.max8952_platform_data, %struct.max8952_platform_data* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = and i32 %310, 3
  %312 = shl i32 %311, 6
  %313 = or i32 %307, %312
  %314 = call i32 @max8952_write_reg(%struct.max8952_data* %302, i32 %303, i32 %313)
  %315 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %316 = load i32, i32* @MAX8952_REG_RAMP, align 4
  %317 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %318 = load i32, i32* @MAX8952_REG_RAMP, align 4
  %319 = call i32 @max8952_read_reg(%struct.max8952_data* %317, i32 %318)
  %320 = and i32 %319, 31
  %321 = load %struct.max8952_platform_data*, %struct.max8952_platform_data** %7, align 8
  %322 = getelementptr inbounds %struct.max8952_platform_data, %struct.max8952_platform_data* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = and i32 %323, 7
  %325 = shl i32 %324, 5
  %326 = or i32 %320, %325
  %327 = call i32 @max8952_write_reg(%struct.max8952_data* %315, i32 %316, i32 %326)
  %328 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %329 = load %struct.max8952_data*, %struct.max8952_data** %9, align 8
  %330 = call i32 @i2c_set_clientdata(%struct.i2c_client* %328, %struct.max8952_data* %329)
  store i32 0, i32* %3, align 4
  br label %331

331:                                              ; preds = %245, %192, %164, %120, %102, %54, %44, %33
  %332 = load i32, i32* %3, align 4
  ret i32 %332
}

declare dso_local %struct.max8952_platform_data* @dev_get_platdata(%struct.TYPE_13__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.max8952_platform_data* @max8952_parse_dt(%struct.TYPE_13__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.max8952_data* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.regulator_dev* @gpiod_get_optional(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_13__*, i32*, %struct.regulator_config*) #1

declare dso_local i8* @devm_gpiod_get_index_optional(%struct.TYPE_13__*, i8*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @gpiod_set_value(%struct.regulator_dev*, i32) #1

declare dso_local i32 @max8952_write_reg(%struct.max8952_data*, i32, i32) #1

declare dso_local i32 @max8952_read_reg(%struct.max8952_data*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max8952_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
