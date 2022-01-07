; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8870_bl.c_adp8870_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8870_bl.c_adp8870_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.backlight_properties = type { i32, i32, i32 }
%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.adp8870_bl = type { %struct.backlight_device*, %struct.adp8870_backlight_platform_data*, i32, i32, i64, i32, %struct.i2c_client* }
%struct.adp8870_backlight_platform_data = type { i64, i64 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SMBUS Byte Data not Supported\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"no platform data?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ADP8870_MFDVID = common dso_local global i32 0, align 4
@ADP8870_MANUFID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"failed to probe\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@ADP8870_MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@adp8870_bl_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to register backlight\0A\00", align 1
@adp8870_bl_attr_group = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to register sysfs\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Rev.%d Backlight\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adp8870_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp8870_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.backlight_properties, align 4
  %7 = alloca %struct.backlight_device*, align 8
  %8 = alloca %struct.adp8870_bl*, align 8
  %9 = alloca %struct.adp8870_backlight_platform_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = call %struct.adp8870_backlight_platform_data* @dev_get_platdata(i32* %13)
  store %struct.adp8870_backlight_platform_data* %14, %struct.adp8870_backlight_platform_data** %9, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %19 = call i32 @i2c_check_functionality(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %176

27:                                               ; preds = %2
  %28 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %9, align 8
  %29 = icmp ne %struct.adp8870_backlight_platform_data* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %176

36:                                               ; preds = %27
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32, i32* @ADP8870_MFDVID, align 4
  %39 = call i32 @adp8870_read(%struct.i2c_client* %37, i32 %38, i32* %10)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %176

45:                                               ; preds = %36
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @ADP8870_MANID(i32 %46)
  %48 = load i64, i64* @ADP8870_MANUFID, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %176

56:                                               ; preds = %45
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.adp8870_bl* @devm_kzalloc(i32* %58, i32 48, i32 %59)
  store %struct.adp8870_bl* %60, %struct.adp8870_bl** %8, align 8
  %61 = load %struct.adp8870_bl*, %struct.adp8870_bl** %8, align 8
  %62 = icmp eq %struct.adp8870_bl* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %176

66:                                               ; preds = %56
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @ADP8870_DEVID(i32 %67)
  %69 = load %struct.adp8870_bl*, %struct.adp8870_bl** %8, align 8
  %70 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = load %struct.adp8870_bl*, %struct.adp8870_bl** %8, align 8
  %73 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %72, i32 0, i32 6
  store %struct.i2c_client* %71, %struct.i2c_client** %73, align 8
  %74 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %9, align 8
  %75 = load %struct.adp8870_bl*, %struct.adp8870_bl** %8, align 8
  %76 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %75, i32 0, i32 1
  store %struct.adp8870_backlight_platform_data* %74, %struct.adp8870_backlight_platform_data** %76, align 8
  %77 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %78 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.adp8870_bl*, %struct.adp8870_bl** %8, align 8
  %81 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load %struct.adp8870_bl*, %struct.adp8870_bl** %8, align 8
  %83 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = load %struct.adp8870_bl*, %struct.adp8870_bl** %8, align 8
  %86 = call i32 @i2c_set_clientdata(%struct.i2c_client* %84, %struct.adp8870_bl* %85)
  %87 = load %struct.adp8870_bl*, %struct.adp8870_bl** %8, align 8
  %88 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %87, i32 0, i32 3
  %89 = call i32 @mutex_init(i32* %88)
  %90 = call i32 @memset(%struct.backlight_properties* %6, i32 0, i32 12)
  %91 = load i32, i32* @BACKLIGHT_RAW, align 4
  %92 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %6, i32 0, i32 2
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* @ADP8870_MAX_BRIGHTNESS, align 4
  %94 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %6, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  %95 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %6, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 0
  %100 = call i32 @dev_driver_string(i32* %99)
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = load %struct.adp8870_bl*, %struct.adp8870_bl** %8, align 8
  %104 = call %struct.backlight_device* @devm_backlight_device_register(i32* %97, i32 %100, i32* %102, %struct.adp8870_bl* %103, i32* @adp8870_bl_ops, %struct.backlight_properties* %6)
  store %struct.backlight_device* %104, %struct.backlight_device** %7, align 8
  %105 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %106 = call i64 @IS_ERR(%struct.backlight_device* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %66
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 0
  %111 = call i32 @dev_err(i32* %110, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %112 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %113 = call i32 @PTR_ERR(%struct.backlight_device* %112)
  store i32 %113, i32* %3, align 4
  br label %176

114:                                              ; preds = %66
  %115 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %116 = load %struct.adp8870_bl*, %struct.adp8870_bl** %8, align 8
  %117 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %116, i32 0, i32 0
  store %struct.backlight_device* %115, %struct.backlight_device** %117, align 8
  %118 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %9, align 8
  %119 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %114
  %123 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %124 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = call i32 @sysfs_create_group(i32* %125, i32* @adp8870_bl_attr_group)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %131 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %130, i32 0, i32 0
  %132 = call i32 @dev_err(i32* %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %3, align 4
  br label %176

134:                                              ; preds = %122
  br label %135

135:                                              ; preds = %134, %114
  %136 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %137 = call i32 @adp8870_bl_setup(%struct.backlight_device* %136)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %11, align 4
  br label %160

143:                                              ; preds = %135
  %144 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %145 = call i32 @backlight_update_status(%struct.backlight_device* %144)
  %146 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %147 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %146, i32 0, i32 0
  %148 = load %struct.adp8870_bl*, %struct.adp8870_bl** %8, align 8
  %149 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @dev_info(i32* %147, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %150)
  %152 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %9, align 8
  %153 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %143
  %157 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %158 = call i32 @adp8870_led_probe(%struct.i2c_client* %157)
  br label %159

159:                                              ; preds = %156, %143
  store i32 0, i32* %3, align 4
  br label %176

160:                                              ; preds = %140
  %161 = load %struct.adp8870_bl*, %struct.adp8870_bl** %8, align 8
  %162 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %161, i32 0, i32 1
  %163 = load %struct.adp8870_backlight_platform_data*, %struct.adp8870_backlight_platform_data** %162, align 8
  %164 = getelementptr inbounds %struct.adp8870_backlight_platform_data, %struct.adp8870_backlight_platform_data* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %160
  %168 = load %struct.adp8870_bl*, %struct.adp8870_bl** %8, align 8
  %169 = getelementptr inbounds %struct.adp8870_bl, %struct.adp8870_bl* %168, i32 0, i32 0
  %170 = load %struct.backlight_device*, %struct.backlight_device** %169, align 8
  %171 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = call i32 @sysfs_remove_group(i32* %172, i32* @adp8870_bl_attr_group)
  br label %174

174:                                              ; preds = %167, %160
  %175 = load i32, i32* %11, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %174, %159, %129, %108, %63, %50, %42, %30, %21
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.adp8870_backlight_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @adp8870_read(%struct.i2c_client*, i32, i32*) #1

declare dso_local i64 @ADP8870_MANID(i32) #1

declare dso_local %struct.adp8870_bl* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ADP8870_DEVID(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adp8870_bl*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(i32*, i32, i32*, %struct.adp8870_bl*, i32*, %struct.backlight_properties*) #1

declare dso_local i32 @dev_driver_string(i32*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @adp8870_bl_setup(%struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @adp8870_led_probe(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
