; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max1586.c_max1586_pmic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max1586.c_max1586_pmic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.i2c_client = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.max1586_platform_data = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.regulator_config = type { %struct.max1586_data*, i64, %struct.TYPE_12__* }
%struct.max1586_data = type { i32, i32, i32, i64, %struct.i2c_client* }
%struct.of_device_id = type { i32 }
%struct.regulator_dev = type { i32 }

@max1586_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error: No device match found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX1586_V3_MIN_UV = common dso_local global i32 0, align 4
@MAX1586_V3_MAX_UV = common dso_local global i32 0, align 4
@MAX1586_V6 = common dso_local global i32 0, align 4
@MAX1586_V3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid regulator id %d\0A\00", align 1
@max1586_reg = common dso_local global %struct.TYPE_13__* null, align 8
@MAX1586_V3_MAX_VSEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to register %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Maxim 1586 regulator driver loaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max1586_pmic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1586_pmic_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max1586_platform_data*, align 8
  %7 = alloca %struct.max1586_platform_data, align 8
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca %struct.max1586_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.of_device_id*, align 8
  %14 = alloca %struct.regulator_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %15 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call %struct.max1586_platform_data* @dev_get_platdata(%struct.TYPE_12__* %17)
  store %struct.max1586_platform_data* %18, %struct.max1586_platform_data** %6, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %2
  %25 = load %struct.max1586_platform_data*, %struct.max1586_platform_data** %6, align 8
  %26 = icmp ne %struct.max1586_platform_data* %25, null
  br i1 %26, label %50, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @max1586_of_match, align 4
  %29 = call i32 @of_match_ptr(i32 %28)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = call %struct.of_device_id* @of_match_device(i32 %29, %struct.TYPE_12__* %31)
  store %struct.of_device_id* %32, %struct.of_device_id** %13, align 8
  %33 = load %struct.of_device_id*, %struct.of_device_id** %13, align 8
  %34 = icmp ne %struct.of_device_id* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %215

41:                                               ; preds = %27
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = call i32 @of_get_max1586_platform_data(%struct.TYPE_12__* %43, %struct.max1586_platform_data* %7)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %3, align 4
  br label %215

49:                                               ; preds = %41
  store %struct.max1586_platform_data* %7, %struct.max1586_platform_data** %6, align 8
  br label %50

50:                                               ; preds = %49, %24, %2
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.max1586_data* @devm_kzalloc(%struct.TYPE_12__* %52, i32 32, i32 %53)
  store %struct.max1586_data* %54, %struct.max1586_data** %9, align 8
  %55 = load %struct.max1586_data*, %struct.max1586_data** %9, align 8
  %56 = icmp ne %struct.max1586_data* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %215

60:                                               ; preds = %50
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = load %struct.max1586_data*, %struct.max1586_data** %9, align 8
  %63 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %62, i32 0, i32 4
  store %struct.i2c_client* %61, %struct.i2c_client** %63, align 8
  %64 = load %struct.max1586_platform_data*, %struct.max1586_platform_data** %6, align 8
  %65 = getelementptr inbounds %struct.max1586_platform_data, %struct.max1586_platform_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %215

71:                                               ; preds = %60
  %72 = load i32, i32* @MAX1586_V3_MIN_UV, align 4
  %73 = sdiv i32 %72, 1000
  %74 = load %struct.max1586_platform_data*, %struct.max1586_platform_data** %6, align 8
  %75 = getelementptr inbounds %struct.max1586_platform_data, %struct.max1586_platform_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %73, %76
  %78 = sdiv i32 %77, 1000
  %79 = load %struct.max1586_data*, %struct.max1586_data** %9, align 8
  %80 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @MAX1586_V3_MAX_UV, align 4
  %82 = sdiv i32 %81, 1000
  %83 = load %struct.max1586_platform_data*, %struct.max1586_platform_data** %6, align 8
  %84 = getelementptr inbounds %struct.max1586_platform_data, %struct.max1586_platform_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %82, %85
  %87 = sdiv i32 %86, 1000
  %88 = load %struct.max1586_data*, %struct.max1586_data** %9, align 8
  %89 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.max1586_data*, %struct.max1586_data** %9, align 8
  %91 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %90, i32 0, i32 2
  store i32 24, i32* %91, align 8
  %92 = load %struct.max1586_data*, %struct.max1586_data** %9, align 8
  %93 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %205, %71
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.max1586_platform_data*, %struct.max1586_platform_data** %6, align 8
  %97 = getelementptr inbounds %struct.max1586_platform_data, %struct.max1586_platform_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @MAX1586_V6, align 4
  %103 = icmp sle i32 %101, %102
  br label %104

104:                                              ; preds = %100, %94
  %105 = phi i1 [ false, %94 ], [ %103, %100 ]
  br i1 %105, label %106, label %208

106:                                              ; preds = %104
  %107 = load %struct.max1586_platform_data*, %struct.max1586_platform_data** %6, align 8
  %108 = getelementptr inbounds %struct.max1586_platform_data, %struct.max1586_platform_data* %107, i32 0, i32 2
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %11, align 4
  %115 = load %struct.max1586_platform_data*, %struct.max1586_platform_data** %6, align 8
  %116 = getelementptr inbounds %struct.max1586_platform_data, %struct.max1586_platform_data* %115, i32 0, i32 2
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %106
  br label %205

125:                                              ; preds = %106
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @MAX1586_V3, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @MAX1586_V6, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %129, %125
  %134 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %135 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %134, i32 0, i32 0
  %136 = load i32, i32* %11, align 4
  %137 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %215

140:                                              ; preds = %129
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @MAX1586_V3, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %167

144:                                              ; preds = %140
  %145 = load %struct.max1586_data*, %struct.max1586_data** %9, align 8
  %146 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** @max1586_reg, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  store i32 %147, i32* %152, align 4
  %153 = load %struct.max1586_data*, %struct.max1586_data** %9, align 8
  %154 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.max1586_data*, %struct.max1586_data** %9, align 8
  %157 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sub nsw i32 %155, %158
  %160 = load i32, i32* @MAX1586_V3_MAX_VSEL, align 4
  %161 = sdiv i32 %159, %160
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** @max1586_reg, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  store i32 %161, i32* %166, align 4
  br label %167

167:                                              ; preds = %144, %140
  %168 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %169 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 2
  store %struct.TYPE_12__* %169, %struct.TYPE_12__** %170, align 8
  %171 = load %struct.max1586_platform_data*, %struct.max1586_platform_data** %6, align 8
  %172 = getelementptr inbounds %struct.max1586_platform_data, %struct.max1586_platform_data* %171, i32 0, i32 2
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store i64 %178, i64* %179, align 8
  %180 = load %struct.max1586_data*, %struct.max1586_data** %9, align 8
  %181 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store %struct.max1586_data* %180, %struct.max1586_data** %181, align 8
  %182 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %183 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %182, i32 0, i32 0
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** @max1586_reg, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i64 %186
  %188 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_12__* %183, %struct.TYPE_13__* %187, %struct.regulator_config* %8)
  store %struct.regulator_dev* %188, %struct.regulator_dev** %14, align 8
  %189 = load %struct.regulator_dev*, %struct.regulator_dev** %14, align 8
  %190 = call i64 @IS_ERR(%struct.regulator_dev* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %167
  %193 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %194 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %193, i32 0, i32 0
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** @max1586_reg, align 8
  %196 = load i32, i32* %11, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %194, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %200)
  %202 = load %struct.regulator_dev*, %struct.regulator_dev** %14, align 8
  %203 = call i32 @PTR_ERR(%struct.regulator_dev* %202)
  store i32 %203, i32* %3, align 4
  br label %215

204:                                              ; preds = %167
  br label %205

205:                                              ; preds = %204, %124
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %10, align 4
  br label %94

208:                                              ; preds = %104
  %209 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %210 = load %struct.max1586_data*, %struct.max1586_data** %9, align 8
  %211 = call i32 @i2c_set_clientdata(%struct.i2c_client* %209, %struct.max1586_data* %210)
  %212 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %213 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %212, i32 0, i32 0
  %214 = call i32 @dev_info(%struct.TYPE_12__* %213, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %215

215:                                              ; preds = %208, %192, %133, %68, %57, %47, %35
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.max1586_platform_data* @dev_get_platdata(%struct.TYPE_12__*) #2

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_12__*) #2

declare dso_local i32 @of_match_ptr(i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #2

declare dso_local i32 @of_get_max1586_platform_data(%struct.TYPE_12__*, %struct.max1586_platform_data*) #2

declare dso_local %struct.max1586_data* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max1586_data*) #2

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
