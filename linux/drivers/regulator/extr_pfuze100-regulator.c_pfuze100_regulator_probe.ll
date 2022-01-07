; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pfuze100-regulator.c_pfuze100_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pfuze100-regulator.c_pfuze100_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.pfuze_chip = type { i32, i32, i32*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.regulator_desc }
%struct.regulator_desc = type { i32, i32, i32, i32, i32, i32, i32*, i8*, i32 }
%struct.pfuze_regulator_platform_data = type { %struct.regulator_init_data** }
%struct.regulator_init_data = type { i32 }
%struct.regulator_config = type { i32, %struct.pfuze_chip*, %struct.regulator_init_data*, %struct.TYPE_11__* }
%struct.of_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pfuze_dt_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error: No device match found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"No dts match or id table match found\0A\00", align 1
@pfuze_regmap_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"regmap allocation failed with err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"unrecognized pfuze chip ID!\0A\00", align 1
@pfuze3001_regulators = common dso_local global i8* null, align 8
@PFUZE3001_SW2 = common dso_local global i32 0, align 4
@pfuze3000_regulators = common dso_local global i8* null, align 8
@PFUZE3000_SW2 = common dso_local global i32 0, align 4
@pfuze200_regulators = common dso_local global i8* null, align 8
@PFUZE200_SW2 = common dso_local global i32 0, align 4
@PFUZE200_SW3B = common dso_local global i32 0, align 4
@pfuze100_regulators = common dso_local global i8* null, align 8
@PFUZE100_SW2 = common dso_local global i32 0, align 4
@PFUZE100_SW4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"pfuze%s found.\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"200\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"3000\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"3001\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Fails to read from the register.\0A\00", align 1
@pfuze3000_sw2hi = common dso_local global i8* null, align 8
@PFUZE_FLAG_DISABLE_SW = common dso_local global i32 0, align 4
@pfuze100_sw_disable_regulator_ops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"register regulator%s failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"fsl,pmic-stby-poweroff\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pfuze100_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfuze100_regulator_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.pfuze_chip*, align 8
  %7 = alloca %struct.pfuze_regulator_platform_data*, align 8
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.of_device_id*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.regulator_init_data*, align 8
  %17 = alloca %struct.regulator_desc*, align 8
  %18 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call %struct.pfuze_regulator_platform_data* @dev_get_platdata(%struct.TYPE_11__* %20)
  store %struct.pfuze_regulator_platform_data* %21, %struct.pfuze_regulator_platform_data** %7, align 8
  %22 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 32, i1 false)
  store i32 64, i32* %15, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.pfuze_chip* @devm_kzalloc(%struct.TYPE_11__* %24, i32 48, i32 %25)
  store %struct.pfuze_chip* %26, %struct.pfuze_chip** %6, align 8
  %27 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %28 = icmp ne %struct.pfuze_chip* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %371

32:                                               ; preds = %2
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %32
  %39 = load i32, i32* @pfuze_dt_ids, align 4
  %40 = call i32 @of_match_ptr(i32 %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = call %struct.of_device_id* @of_match_device(i32 %40, %struct.TYPE_11__* %42)
  store %struct.of_device_id* %43, %struct.of_device_id** %11, align 8
  %44 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %45 = icmp ne %struct.of_device_id* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %38
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %371

52:                                               ; preds = %38
  %53 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %54 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %58 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %75

59:                                               ; preds = %32
  %60 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %61 = icmp ne %struct.i2c_device_id* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %64 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %67 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %74

68:                                               ; preds = %59
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %371

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %52
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %78 = call i32 @i2c_set_clientdata(%struct.i2c_client* %76, %struct.pfuze_chip* %77)
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %82 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %81, i32 0, i32 6
  store %struct.TYPE_11__* %80, %struct.TYPE_11__** %82, align 8
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %83, i32* @pfuze_regmap_config)
  %85 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %86 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %88 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @IS_ERR(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %75
  %93 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %94 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @PTR_ERR(i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = load i32, i32* %10, align 4
  %100 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %3, align 4
  br label %371

102:                                              ; preds = %75
  %103 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %104 = call i32 @pfuze_identify(%struct.pfuze_chip* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 0
  %110 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %3, align 4
  br label %371

112:                                              ; preds = %102
  %113 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %114 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  switch i32 %115, label %147 [
    i32 128, label %116
    i32 129, label %126
    i32 130, label %136
    i32 131, label %146
  ]

116:                                              ; preds = %112
  %117 = load i8*, i8** @pfuze3001_regulators, align 8
  %118 = bitcast i8* %117 to %struct.TYPE_13__*
  %119 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %120 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %119, i32 0, i32 3
  store %struct.TYPE_13__* %118, %struct.TYPE_13__** %120, align 8
  %121 = load i8*, i8** @pfuze3001_regulators, align 8
  %122 = call i8* @ARRAY_SIZE(i8* %121)
  %123 = ptrtoint i8* %122 to i32
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* @PFUZE3001_SW2, align 4
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* @PFUZE3001_SW2, align 4
  store i32 %125, i32* %14, align 4
  store i32 8, i32* %15, align 4
  br label %157

126:                                              ; preds = %112
  %127 = load i8*, i8** @pfuze3000_regulators, align 8
  %128 = bitcast i8* %127 to %struct.TYPE_13__*
  %129 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %130 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %129, i32 0, i32 3
  store %struct.TYPE_13__* %128, %struct.TYPE_13__** %130, align 8
  %131 = load i8*, i8** @pfuze3000_regulators, align 8
  %132 = call i8* @ARRAY_SIZE(i8* %131)
  %133 = ptrtoint i8* %132 to i32
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* @PFUZE3000_SW2, align 4
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* @PFUZE3000_SW2, align 4
  store i32 %135, i32* %14, align 4
  store i32 8, i32* %15, align 4
  br label %157

136:                                              ; preds = %112
  %137 = load i8*, i8** @pfuze200_regulators, align 8
  %138 = bitcast i8* %137 to %struct.TYPE_13__*
  %139 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %140 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %139, i32 0, i32 3
  store %struct.TYPE_13__* %138, %struct.TYPE_13__** %140, align 8
  %141 = load i8*, i8** @pfuze200_regulators, align 8
  %142 = call i8* @ARRAY_SIZE(i8* %141)
  %143 = ptrtoint i8* %142 to i32
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* @PFUZE200_SW2, align 4
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* @PFUZE200_SW3B, align 4
  store i32 %145, i32* %14, align 4
  br label %157

146:                                              ; preds = %112
  br label %147

147:                                              ; preds = %112, %146
  %148 = load i8*, i8** @pfuze100_regulators, align 8
  %149 = bitcast i8* %148 to %struct.TYPE_13__*
  %150 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %151 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %150, i32 0, i32 3
  store %struct.TYPE_13__* %149, %struct.TYPE_13__** %151, align 8
  %152 = load i8*, i8** @pfuze100_regulators, align 8
  %153 = call i8* @ARRAY_SIZE(i8* %152)
  %154 = ptrtoint i8* %153 to i32
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* @PFUZE100_SW2, align 4
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* @PFUZE100_SW4, align 4
  store i32 %156, i32* %14, align 4
  br label %157

157:                                              ; preds = %147, %136, %126, %116
  %158 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %159 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %158, i32 0, i32 0
  %160 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %161 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 131
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %180

165:                                              ; preds = %157
  %166 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %167 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %168, 130
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %178

171:                                              ; preds = %165
  %172 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %173 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 129
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  br label %178

178:                                              ; preds = %171, %170
  %179 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %170 ], [ %177, %171 ]
  br label %180

180:                                              ; preds = %178, %164
  %181 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %164 ], [ %179, %178 ]
  %182 = call i32 @dev_info(%struct.TYPE_11__* %159, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %181)
  %183 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %184 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %183, i32 0, i32 4
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  %186 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %187 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %186, i32 0, i32 3
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %187, align 8
  %189 = call i32 @memcpy(%struct.TYPE_12__* %185, %struct.TYPE_13__* %188, i32 8)
  %190 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %191 = call i32 @pfuze_parse_regulators_dt(%struct.pfuze_chip* %190)
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %180
  %195 = load i32, i32* %10, align 4
  store i32 %195, i32* %3, align 4
  br label %371

196:                                              ; preds = %180
  store i32 0, i32* %9, align 4
  br label %197

197:                                              ; preds = %357, %196
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* %12, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %360

201:                                              ; preds = %197
  %202 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %203 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %202, i32 0, i32 4
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 1
  store %struct.regulator_desc* %208, %struct.regulator_desc** %17, align 8
  %209 = load %struct.pfuze_regulator_platform_data*, %struct.pfuze_regulator_platform_data** %7, align 8
  %210 = icmp ne %struct.pfuze_regulator_platform_data* %209, null
  br i1 %210, label %211, label %219

211:                                              ; preds = %201
  %212 = load %struct.pfuze_regulator_platform_data*, %struct.pfuze_regulator_platform_data** %7, align 8
  %213 = getelementptr inbounds %struct.pfuze_regulator_platform_data, %struct.pfuze_regulator_platform_data* %212, i32 0, i32 0
  %214 = load %struct.regulator_init_data**, %struct.regulator_init_data*** %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.regulator_init_data*, %struct.regulator_init_data** %214, i64 %216
  %218 = load %struct.regulator_init_data*, %struct.regulator_init_data** %217, align 8
  store %struct.regulator_init_data* %218, %struct.regulator_init_data** %16, align 8
  br label %222

219:                                              ; preds = %201
  %220 = load i32, i32* %9, align 4
  %221 = call %struct.regulator_init_data* @match_init_data(i32 %220)
  store %struct.regulator_init_data* %221, %struct.regulator_init_data** %16, align 8
  br label %222

222:                                              ; preds = %219, %211
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* %13, align 4
  %225 = icmp sge i32 %223, %224
  br i1 %225, label %226, label %278

226:                                              ; preds = %222
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* %14, align 4
  %229 = icmp sle i32 %227, %228
  br i1 %229, label %230, label %278

230:                                              ; preds = %226
  %231 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %232 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.regulator_desc*, %struct.regulator_desc** %17, align 8
  %235 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %234, i32 0, i32 8
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @regmap_read(i32 %233, i32 %236, i32* %18)
  store i32 %237, i32* %10, align 4
  %238 = load i32, i32* %10, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %230
  %241 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %242 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %241, i32 0, i32 0
  %243 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %242, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %244 = load i32, i32* %10, align 4
  store i32 %244, i32* %3, align 4
  br label %371

245:                                              ; preds = %230
  %246 = load i32, i32* %18, align 4
  %247 = load i32, i32* %15, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %277

250:                                              ; preds = %245
  %251 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %252 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp eq i32 %253, 129
  br i1 %254, label %260, label %255

255:                                              ; preds = %250
  %256 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %257 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp eq i32 %258, 128
  br i1 %259, label %260, label %269

260:                                              ; preds = %255, %250
  %261 = load i8*, i8** @pfuze3000_sw2hi, align 8
  %262 = load %struct.regulator_desc*, %struct.regulator_desc** %17, align 8
  %263 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %262, i32 0, i32 7
  store i8* %261, i8** %263, align 8
  %264 = load i8*, i8** @pfuze3000_sw2hi, align 8
  %265 = call i8* @ARRAY_SIZE(i8* %264)
  %266 = ptrtoint i8* %265 to i32
  %267 = load %struct.regulator_desc*, %struct.regulator_desc** %17, align 8
  %268 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %267, i32 0, i32 0
  store i32 %266, i32* %268, align 8
  br label %276

269:                                              ; preds = %255
  %270 = load %struct.regulator_desc*, %struct.regulator_desc** %17, align 8
  %271 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %270, i32 0, i32 1
  store i32 800000, i32* %271, align 4
  %272 = load %struct.regulator_desc*, %struct.regulator_desc** %17, align 8
  %273 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %272, i32 0, i32 2
  store i32 50000, i32* %273, align 8
  %274 = load %struct.regulator_desc*, %struct.regulator_desc** %17, align 8
  %275 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %274, i32 0, i32 0
  store i32 51, i32* %275, align 8
  br label %276

276:                                              ; preds = %269, %260
  br label %277

277:                                              ; preds = %276, %245
  br label %278

278:                                              ; preds = %277, %226, %222
  %279 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %280 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @PFUZE_FLAG_DISABLE_SW, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %305

285:                                              ; preds = %278
  %286 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %287 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %286, i32 0, i32 4
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %287, align 8
  %289 = load i32, i32* %9, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %304

295:                                              ; preds = %285
  %296 = load %struct.regulator_desc*, %struct.regulator_desc** %17, align 8
  %297 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %296, i32 0, i32 6
  store i32* @pfuze100_sw_disable_regulator_ops, i32** %297, align 8
  %298 = load %struct.regulator_desc*, %struct.regulator_desc** %17, align 8
  %299 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %298, i32 0, i32 3
  store i32 8, i32* %299, align 4
  %300 = load %struct.regulator_desc*, %struct.regulator_desc** %17, align 8
  %301 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %300, i32 0, i32 4
  store i32 0, i32* %301, align 8
  %302 = load %struct.regulator_desc*, %struct.regulator_desc** %17, align 8
  %303 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %302, i32 0, i32 5
  store i32 500, i32* %303, align 4
  br label %304

304:                                              ; preds = %295, %285
  br label %305

305:                                              ; preds = %304, %278
  %306 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %307 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 3
  store %struct.TYPE_11__* %307, %struct.TYPE_11__** %308, align 8
  %309 = load %struct.regulator_init_data*, %struct.regulator_init_data** %16, align 8
  %310 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 2
  store %struct.regulator_init_data* %309, %struct.regulator_init_data** %310, align 8
  %311 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %312 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store %struct.pfuze_chip* %311, %struct.pfuze_chip** %312, align 8
  %313 = load i32, i32* %9, align 4
  %314 = call i32 @match_of_node(i32 %313)
  %315 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store i32 %314, i32* %315, align 8
  %316 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %317 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %316, i32 0, i32 0
  %318 = load %struct.regulator_desc*, %struct.regulator_desc** %17, align 8
  %319 = call i32 @devm_regulator_register(%struct.TYPE_11__* %317, %struct.regulator_desc* %318, %struct.regulator_config* %8)
  %320 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %321 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %320, i32 0, i32 2
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %9, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  store i32 %319, i32* %325, align 4
  %326 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %327 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %326, i32 0, i32 2
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %9, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = call i64 @IS_ERR(i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %356

335:                                              ; preds = %305
  %336 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %337 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %336, i32 0, i32 0
  %338 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %339 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %338, i32 0, i32 3
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %339, align 8
  %341 = load i32, i32* %9, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %337, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %346)
  %348 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %349 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %348, i32 0, i32 2
  %350 = load i32*, i32** %349, align 8
  %351 = load i32, i32* %9, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @PTR_ERR(i32 %354)
  store i32 %355, i32* %3, align 4
  br label %371

356:                                              ; preds = %305
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %9, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %9, align 4
  br label %197

360:                                              ; preds = %197
  %361 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %362 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = call i64 @of_property_read_bool(i64 %364, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %360
  %368 = load %struct.pfuze_chip*, %struct.pfuze_chip** %6, align 8
  %369 = call i32 @pfuze_power_off_prepare_init(%struct.pfuze_chip* %368)
  store i32 %369, i32* %3, align 4
  br label %371

370:                                              ; preds = %360
  store i32 0, i32* %3, align 4
  br label %371

371:                                              ; preds = %370, %367, %335, %240, %194, %107, %92, %68, %46, %29
  %372 = load i32, i32* %3, align 4
  ret i32 %372
}

declare dso_local %struct.pfuze_regulator_platform_data* @dev_get_platdata(%struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.pfuze_chip* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pfuze_chip*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pfuze_identify(%struct.pfuze_chip*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*, i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @pfuze_parse_regulators_dt(%struct.pfuze_chip*) #1

declare dso_local %struct.regulator_init_data* @match_init_data(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @match_of_node(i32) #1

declare dso_local i32 @devm_regulator_register(%struct.TYPE_11__*, %struct.regulator_desc*, %struct.regulator_config*) #1

declare dso_local i64 @of_property_read_bool(i64, i8*) #1

declare dso_local i32 @pfuze_power_off_prepare_init(%struct.pfuze_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
