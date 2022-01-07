; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp855x_bl.c_lp855x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp855x_bl.c_lp855x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.i2c_device_id = type { i32, i32 }
%struct.lp855x = type { i32, %struct.TYPE_7__*, i32*, i32*, i32, %struct.TYPE_8__*, i32, i32, %struct.i2c_client* }
%struct.TYPE_8__ = type { i64 }

@I2C_FUNC_SMBUS_I2C_BLOCK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PWM_BASED = common dso_local global i32 0, align 4
@REGISTER_BASED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"power\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"error getting enable regulator: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to enable supply: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to enable vddio: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"device config err: %d\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"failed to register backlight. err: %d\0A\00", align 1
@lp855x_attr_group = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"failed to register sysfs. err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lp855x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp855x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lp855x*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @I2C_FUNC_SMBUS_I2C_BLOCK, align 4
  %12 = call i32 @i2c_check_functionality(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %228

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.lp855x* @devm_kzalloc(%struct.TYPE_7__* %19, i32 64, i32 %20)
  store %struct.lp855x* %21, %struct.lp855x** %6, align 8
  %22 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %23 = icmp ne %struct.lp855x* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %228

27:                                               ; preds = %17
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %30 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %29, i32 0, i32 8
  store %struct.i2c_client* %28, %struct.i2c_client** %30, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %34 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %33, i32 0, i32 1
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %34, align 8
  %35 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %36 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %39 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %41 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %44 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = call %struct.TYPE_8__* @dev_get_platdata(%struct.TYPE_7__* %46)
  %48 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %49 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %48, i32 0, i32 5
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %49, align 8
  %50 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %51 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %50, i32 0, i32 5
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = icmp ne %struct.TYPE_8__* %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %27
  %55 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %56 = call i32 @lp855x_parse_dt(%struct.lp855x* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %228

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %27
  %63 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %64 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %63, i32 0, i32 5
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @PWM_BASED, align 4
  %71 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %72 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  br label %77

73:                                               ; preds = %62
  %74 = load i32, i32* @REGISTER_BASED, align 4
  %75 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %76 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  %78 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %79 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = call i32* @devm_regulator_get(%struct.TYPE_7__* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %83 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %82, i32 0, i32 3
  store i32* %81, i32** %83, align 8
  %84 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %85 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = call i64 @IS_ERR(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %77
  %90 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %91 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @PTR_ERR(i32* %92)
  %94 = load i32, i32* @EPROBE_DEFER, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i32, i32* @EPROBE_DEFER, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %228

100:                                              ; preds = %89
  %101 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %102 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %101, i32 0, i32 3
  store i32* null, i32** %102, align 8
  br label %103

103:                                              ; preds = %100, %77
  %104 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %105 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %104, i32 0, i32 1
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = call i32* @devm_regulator_get_optional(%struct.TYPE_7__* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %108 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %109 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %108, i32 0, i32 2
  store i32* %107, i32** %109, align 8
  %110 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %111 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @IS_ERR(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %141

115:                                              ; preds = %103
  %116 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %117 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @PTR_ERR(i32* %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @ENODEV, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %126 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %125, i32 0, i32 2
  store i32* null, i32** %126, align 8
  br label %140

127:                                              ; preds = %115
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @EPROBE_DEFER, align 4
  %130 = sub nsw i32 0, %129
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %134 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %133, i32 0, i32 1
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @dev_err(%struct.TYPE_7__* %135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %132, %127
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %3, align 4
  br label %228

140:                                              ; preds = %124
  br label %141

141:                                              ; preds = %140, %103
  %142 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %143 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %160

146:                                              ; preds = %141
  %147 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %148 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @regulator_enable(i32* %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %146
  %154 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %155 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %154, i32 0, i32 0
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @dev_err(%struct.TYPE_7__* %155, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %3, align 4
  br label %228

159:                                              ; preds = %146
  br label %160

160:                                              ; preds = %159, %141
  %161 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %162 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %181

165:                                              ; preds = %160
  %166 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %167 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @regulator_enable(i32* %168)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %165
  %173 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %174 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %173, i32 0, i32 1
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @dev_err(%struct.TYPE_7__* %175, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %7, align 4
  store i32 %178, i32* %3, align 4
  br label %228

179:                                              ; preds = %165
  %180 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %181

181:                                              ; preds = %179, %160
  %182 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %183 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %184 = call i32 @i2c_set_clientdata(%struct.i2c_client* %182, %struct.lp855x* %183)
  %185 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %186 = call i32 @lp855x_configure(%struct.lp855x* %185)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %181
  %190 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %191 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %190, i32 0, i32 1
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = call i32 @dev_err(%struct.TYPE_7__* %192, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* %7, align 4
  store i32 %195, i32* %3, align 4
  br label %228

196:                                              ; preds = %181
  %197 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %198 = call i32 @lp855x_backlight_register(%struct.lp855x* %197)
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %196
  %202 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %203 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %202, i32 0, i32 1
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %203, align 8
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @dev_err(%struct.TYPE_7__* %204, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* %7, align 4
  store i32 %207, i32* %3, align 4
  br label %228

208:                                              ; preds = %196
  %209 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %210 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %209, i32 0, i32 1
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = call i32 @sysfs_create_group(i32* %212, i32* @lp855x_attr_group)
  store i32 %213, i32* %7, align 4
  %214 = load i32, i32* %7, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %208
  %217 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %218 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %217, i32 0, i32 1
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %218, align 8
  %220 = load i32, i32* %7, align 4
  %221 = call i32 @dev_err(%struct.TYPE_7__* %219, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %220)
  %222 = load i32, i32* %7, align 4
  store i32 %222, i32* %3, align 4
  br label %228

223:                                              ; preds = %208
  %224 = load %struct.lp855x*, %struct.lp855x** %6, align 8
  %225 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @backlight_update_status(i32 %226)
  store i32 0, i32* %3, align 4
  br label %228

228:                                              ; preds = %223, %216, %201, %189, %172, %153, %138, %97, %59, %24, %14
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.lp855x* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @dev_get_platdata(%struct.TYPE_7__*) #1

declare dso_local i32 @lp855x_parse_dt(%struct.lp855x*) #1

declare dso_local i32* @devm_regulator_get(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @devm_regulator_get_optional(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @regulator_enable(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lp855x*) #1

declare dso_local i32 @lp855x_configure(%struct.lp855x*) #1

declare dso_local i32 @lp855x_backlight_register(%struct.lp855x*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @backlight_update_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
