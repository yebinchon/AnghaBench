; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8860_bl.c_adp8860_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8860_bl.c_adp8860_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.backlight_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }
%struct.adp8860_bl = type { i32, i32, %struct.backlight_device*, i32, i32, i64, i32, %struct.adp8860_backlight_platform_data*, %struct.i2c_client* }
%struct.adp8860_backlight_platform_data = type { i64, i32, i32 }
%struct.backlight_properties = type { i8*, i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SMBUS Byte Data not Supported\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"no platform data?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ADP8860_MFDVID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"failed to probe\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@ADP8860_MAX_BRIGHTNESS = common dso_local global i8* null, align 8
@adp8860_bl_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to register backlight\0A\00", align 1
@adp8860_bl_attr_group = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to register sysfs\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%s Rev.%d Backlight\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adp8860_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp8860_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.backlight_device*, align 8
  %7 = alloca %struct.adp8860_bl*, align 8
  %8 = alloca %struct.adp8860_backlight_platform_data*, align 8
  %9 = alloca %struct.backlight_properties, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = call %struct.adp8860_backlight_platform_data* @dev_get_platdata(i32* %13)
  store %struct.adp8860_backlight_platform_data* %14, %struct.adp8860_backlight_platform_data** %8, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %19 = call i32 @i2c_check_functionality(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 1
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %207

27:                                               ; preds = %2
  %28 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %8, align 8
  %29 = icmp ne %struct.adp8860_backlight_platform_data* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %207

36:                                               ; preds = %27
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 1
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.adp8860_bl* @devm_kzalloc(i32* %38, i32 56, i32 %39)
  store %struct.adp8860_bl* %40, %struct.adp8860_bl** %7, align 8
  %41 = load %struct.adp8860_bl*, %struct.adp8860_bl** %7, align 8
  %42 = icmp eq %struct.adp8860_bl* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %207

46:                                               ; preds = %36
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load i32, i32* @ADP8860_MFDVID, align 4
  %49 = call i32 @adp8860_read(%struct.i2c_client* %47, i32 %48, i32* %10)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %3, align 4
  br label %207

54:                                               ; preds = %46
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @ADP8860_MANID(i32 %55)
  switch i32 %56, label %87 [
    i32 128, label %57
    i32 130, label %67
    i32 129, label %77
  ]

57:                                               ; preds = %54
  %58 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %8, align 8
  %59 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load %struct.adp8860_bl*, %struct.adp8860_bl** %7, align 8
  %66 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %54, %57
  %68 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %8, align 8
  %69 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load %struct.adp8860_bl*, %struct.adp8860_bl** %7, align 8
  %76 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %93

77:                                               ; preds = %54
  %78 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %8, align 8
  %79 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = load %struct.adp8860_bl*, %struct.adp8860_bl** %7, align 8
  %86 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %93

87:                                               ; preds = %54
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 1
  %90 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %207

93:                                               ; preds = %77, %67
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @ADP8860_DEVID(i32 %94)
  %96 = load %struct.adp8860_bl*, %struct.adp8860_bl** %7, align 8
  %97 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = load %struct.adp8860_bl*, %struct.adp8860_bl** %7, align 8
  %100 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %99, i32 0, i32 8
  store %struct.i2c_client* %98, %struct.i2c_client** %100, align 8
  %101 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %8, align 8
  %102 = load %struct.adp8860_bl*, %struct.adp8860_bl** %7, align 8
  %103 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %102, i32 0, i32 7
  store %struct.adp8860_backlight_platform_data* %101, %struct.adp8860_backlight_platform_data** %103, align 8
  %104 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %105 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.adp8860_bl*, %struct.adp8860_bl** %7, align 8
  %108 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 8
  %109 = load %struct.adp8860_bl*, %struct.adp8860_bl** %7, align 8
  %110 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %109, i32 0, i32 5
  store i64 0, i64* %110, align 8
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = load %struct.adp8860_bl*, %struct.adp8860_bl** %7, align 8
  %113 = call i32 @i2c_set_clientdata(%struct.i2c_client* %111, %struct.adp8860_bl* %112)
  %114 = call i32 @memset(%struct.backlight_properties* %9, i32 0, i32 16)
  %115 = load i32, i32* @BACKLIGHT_RAW, align 4
  %116 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %9, i32 0, i32 1
  store i32 %115, i32* %116, align 8
  %117 = load i8*, i8** @ADP8860_MAX_BRIGHTNESS, align 8
  %118 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %9, i32 0, i32 0
  store i8* %117, i8** %118, align 8
  %119 = load %struct.adp8860_bl*, %struct.adp8860_bl** %7, align 8
  %120 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %119, i32 0, i32 4
  %121 = call i32 @mutex_init(i32* %120)
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 1
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %124, i32 0, i32 1
  %126 = call i32 @dev_driver_string(i32* %125)
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 1
  %129 = load %struct.adp8860_bl*, %struct.adp8860_bl** %7, align 8
  %130 = call %struct.backlight_device* @devm_backlight_device_register(i32* %123, i32 %126, i32* %128, %struct.adp8860_bl* %129, i32* @adp8860_bl_ops, %struct.backlight_properties* %9)
  store %struct.backlight_device* %130, %struct.backlight_device** %6, align 8
  %131 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %132 = call i64 @IS_ERR(%struct.backlight_device* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %93
  %135 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %136 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %135, i32 0, i32 1
  %137 = call i32 @dev_err(i32* %136, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %138 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %139 = call i32 @PTR_ERR(%struct.backlight_device* %138)
  store i32 %139, i32* %3, align 4
  br label %207

140:                                              ; preds = %93
  %141 = load i8*, i8** @ADP8860_MAX_BRIGHTNESS, align 8
  %142 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %143 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  store i8* %141, i8** %144, align 8
  %145 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %146 = load %struct.adp8860_bl*, %struct.adp8860_bl** %7, align 8
  %147 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %146, i32 0, i32 2
  store %struct.backlight_device* %145, %struct.backlight_device** %147, align 8
  %148 = load %struct.adp8860_bl*, %struct.adp8860_bl** %7, align 8
  %149 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %140
  %153 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %154 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = call i32 @sysfs_create_group(i32* %155, i32* @adp8860_bl_attr_group)
  store i32 %156, i32* %11, align 4
  br label %157

157:                                              ; preds = %152, %140
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %162 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %161, i32 0, i32 1
  %163 = call i32 @dev_err(i32* %162, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %164 = load i32, i32* %11, align 4
  store i32 %164, i32* %3, align 4
  br label %207

165:                                              ; preds = %157
  %166 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %167 = call i32 @adp8860_bl_setup(%struct.backlight_device* %166)
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32, i32* @EIO, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %11, align 4
  br label %193

173:                                              ; preds = %165
  %174 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %175 = call i32 @backlight_update_status(%struct.backlight_device* %174)
  %176 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %177 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %176, i32 0, i32 1
  %178 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %179 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.adp8860_bl*, %struct.adp8860_bl** %7, align 8
  %182 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @dev_info(i32* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %180, i32 %183)
  %185 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %8, align 8
  %186 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %173
  %190 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %191 = call i32 @adp8860_led_probe(%struct.i2c_client* %190)
  br label %192

192:                                              ; preds = %189, %173
  store i32 0, i32* %3, align 4
  br label %207

193:                                              ; preds = %170
  %194 = load %struct.adp8860_bl*, %struct.adp8860_bl** %7, align 8
  %195 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %193
  %199 = load %struct.adp8860_bl*, %struct.adp8860_bl** %7, align 8
  %200 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %199, i32 0, i32 2
  %201 = load %struct.backlight_device*, %struct.backlight_device** %200, align 8
  %202 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = call i32 @sysfs_remove_group(i32* %203, i32* @adp8860_bl_attr_group)
  br label %205

205:                                              ; preds = %198, %193
  %206 = load i32, i32* %11, align 4
  store i32 %206, i32* %3, align 4
  br label %207

207:                                              ; preds = %205, %192, %160, %134, %87, %52, %43, %30, %21
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local %struct.adp8860_backlight_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.adp8860_bl* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @adp8860_read(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @ADP8860_MANID(i32) #1

declare dso_local i32 @ADP8860_DEVID(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adp8860_bl*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(i32*, i32, i32*, %struct.adp8860_bl*, i32*, %struct.backlight_properties*) #1

declare dso_local i32 @dev_driver_string(i32*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @adp8860_bl_setup(%struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @adp8860_led_probe(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
