; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8998.c_max8998_set_voltage_buck_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8998.c_max8998_set_voltage_buck_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.max8998_data = type { i32*, i32, i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i2c_client*, %struct.max8998_platform_data* }
%struct.i2c_client = type { i32 }
%struct.max8998_platform_data = type { i32, i32, i32, i32 }

@max8998_set_voltage_buck_sel.buck1_last_val = internal global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"BUCK1, selector:%d, buck1_vol1:%d, buck1_vol2:%d\0Abuck1_vol3:%d, buck1_vol4:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"max8998->buck1_idx:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s: SET1:%d, SET2:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"BUCK2, selector:%d buck2_vol1:%d, buck2_vol2:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%s: SET3:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @max8998_set_voltage_buck_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8998_set_voltage_buck_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max8998_data*, align 8
  %7 = alloca %struct.max8998_platform_data*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %16 = call %struct.max8998_data* @rdev_get_drvdata(%struct.regulator_dev* %15)
  store %struct.max8998_data* %16, %struct.max8998_data** %6, align 8
  %17 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %18 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %17, i32 0, i32 5
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %20, align 8
  store %struct.max8998_platform_data* %21, %struct.max8998_platform_data** %7, align 8
  %22 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %23 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %22, i32 0, i32 5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.i2c_client*, %struct.i2c_client** %25, align 8
  store %struct.i2c_client* %26, %struct.i2c_client** %8, align 8
  %27 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %28 = call i32 @rdev_get_id(%struct.regulator_dev* %27)
  store i32 %28, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %29 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %30 = call i32 @max8998_get_voltage_register(%struct.regulator_dev* %29, i32* %10, i32* %11, i32* %12)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %3, align 4
  br label %291

35:                                               ; preds = %2
  %36 = load i32, i32* %9, align 4
  switch i32 %36, label %289 [
    i32 131, label %37
    i32 130, label %178
    i32 129, label %279
    i32 128, label %279
  ]

37:                                               ; preds = %35
  %38 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %39 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %43 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %48 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %53 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %58 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %40, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %46, i32 %51, i32 %56, i32 %61)
  %63 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %7, align 8
  %64 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @gpio_is_valid(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %172

68:                                               ; preds = %37
  %69 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %7, align 8
  %70 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @gpio_is_valid(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %172

74:                                               ; preds = %68
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %105, %74
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %78 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @ARRAY_SIZE(i32* %79)
  %81 = icmp slt i32 %76, %80
  br i1 %81, label %82, label %108

82:                                               ; preds = %75
  %83 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %84 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %82
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %95 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %7, align 8
  %97 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %7, align 8
  %100 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @buck1_gpio_set(i32 %98, i32 %101, i32 %102)
  br label %156

104:                                              ; preds = %82
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %75

108:                                              ; preds = %75
  %109 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %7, align 8
  %110 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %291

116:                                              ; preds = %108
  %117 = load i32, i32* @max8998_set_voltage_buck_sel.buck1_last_val, align 4
  %118 = srem i32 %117, 2
  %119 = add nsw i32 %118, 2
  %120 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %121 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  %122 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %123 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %126 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %131 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %134 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  store i32 %129, i32* %137, align 4
  %138 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %139 = call i32 @max8998_get_voltage_register(%struct.regulator_dev* %138, i32* %10, i32* %11, i32* %12)
  store i32 %139, i32* %13, align 4
  %140 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @max8998_write_reg(%struct.i2c_client* %140, i32 %141, i32 %142)
  store i32 %143, i32* %13, align 4
  %144 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %7, align 8
  %145 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %7, align 8
  %148 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %151 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @buck1_gpio_set(i32 %146, i32 %149, i32 %152)
  %154 = load i32, i32* @max8998_set_voltage_buck_sel.buck1_last_val, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* @max8998_set_voltage_buck_sel.buck1_last_val, align 4
  br label %156

156:                                              ; preds = %116, %92
  %157 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %158 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %161 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %7, align 8
  %164 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @gpio_get_value(i32 %165)
  %167 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %7, align 8
  %168 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @gpio_get_value(i32 %169)
  %171 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %162, i32 %166, i32 %170)
  br label %289

172:                                              ; preds = %68, %37
  %173 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @max8998_write_reg(%struct.i2c_client* %173, i32 %174, i32 %175)
  store i32 %176, i32* %13, align 4
  br label %177

177:                                              ; preds = %172
  br label %289

178:                                              ; preds = %35
  %179 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %180 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %184 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %189 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %181, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %182, i32 %187, i32 %192)
  %194 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %7, align 8
  %195 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @gpio_is_valid(i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %273

199:                                              ; preds = %178
  store i32 0, i32* %14, align 4
  br label %200

200:                                              ; preds = %227, %199
  %201 = load i32, i32* %14, align 4
  %202 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %203 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = call i32 @ARRAY_SIZE(i32* %204)
  %206 = icmp slt i32 %201, %205
  br i1 %206, label %207, label %230

207:                                              ; preds = %200
  %208 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %209 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %14, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %5, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %226

217:                                              ; preds = %207
  %218 = load i32, i32* %14, align 4
  %219 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %220 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %219, i32 0, i32 3
  store i32 %218, i32* %220, align 8
  %221 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %7, align 8
  %222 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %14, align 4
  %225 = call i32 @buck2_gpio_set(i32 %223, i32 %224)
  br label %261

226:                                              ; preds = %207
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %14, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %14, align 4
  br label %200

230:                                              ; preds = %200
  %231 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %7, align 8
  %232 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load i32, i32* @EINVAL, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %3, align 4
  br label %291

238:                                              ; preds = %230
  %239 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %240 = call i32 @max8998_get_voltage_register(%struct.regulator_dev* %239, i32* %10, i32* %11, i32* %12)
  %241 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %242 = load i32, i32* %10, align 4
  %243 = load i32, i32* %5, align 4
  %244 = call i32 @max8998_write_reg(%struct.i2c_client* %241, i32 %242, i32 %243)
  store i32 %244, i32* %13, align 4
  %245 = load i32, i32* %5, align 4
  %246 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %247 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %250 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %248, i64 %252
  store i32 %245, i32* %253, align 4
  %254 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %7, align 8
  %255 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %258 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @buck2_gpio_set(i32 %256, i32 %259)
  br label %261

261:                                              ; preds = %238, %217
  %262 = load %struct.max8998_data*, %struct.max8998_data** %6, align 8
  %263 = getelementptr inbounds %struct.max8998_data, %struct.max8998_data* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %266 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %7, align 8
  %269 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @gpio_get_value(i32 %270)
  %272 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %264, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %267, i32 %271)
  br label %278

273:                                              ; preds = %178
  %274 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %275 = load i32, i32* %10, align 4
  %276 = load i32, i32* %5, align 4
  %277 = call i32 @max8998_write_reg(%struct.i2c_client* %274, i32 %275, i32 %276)
  store i32 %277, i32* %13, align 4
  br label %278

278:                                              ; preds = %273, %261
  br label %289

279:                                              ; preds = %35, %35
  %280 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %281 = load i32, i32* %10, align 4
  %282 = load i32, i32* %5, align 4
  %283 = load i32, i32* %11, align 4
  %284 = shl i32 %282, %283
  %285 = load i32, i32* %12, align 4
  %286 = load i32, i32* %11, align 4
  %287 = shl i32 %285, %286
  %288 = call i32 @max8998_update_reg(%struct.i2c_client* %280, i32 %281, i32 %284, i32 %287)
  store i32 %288, i32* %13, align 4
  br label %289

289:                                              ; preds = %35, %279, %278, %177, %156
  %290 = load i32, i32* %13, align 4
  store i32 %290, i32* %3, align 4
  br label %291

291:                                              ; preds = %289, %235, %113, %33
  %292 = load i32, i32* %3, align 4
  ret i32 %292
}

declare dso_local %struct.max8998_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @max8998_get_voltage_register(%struct.regulator_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @buck1_gpio_set(i32, i32, i32) #1

declare dso_local i32 @max8998_write_reg(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @buck2_gpio_set(i32, i32) #1

declare dso_local i32 @max8998_update_reg(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
