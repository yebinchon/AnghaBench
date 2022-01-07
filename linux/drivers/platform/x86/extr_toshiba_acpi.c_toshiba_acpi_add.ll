; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_acpi_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_acpi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshiba_acpi_dev = type { i8*, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.acpi_device*, i64, %struct.TYPE_13__*, i64, %struct.TYPE_12__, i64, %struct.TYPE_12__, i64, %struct.TYPE_12__, i64, i64, i32, %struct.TYPE_10__ }
%struct.acpi_device = type { %struct.TYPE_11__, %struct.toshiba_acpi_dev*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i32, i32, i32, %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i8*, i32*, i32 }

@toshiba_acpi = common dso_local global %struct.toshiba_acpi_dev* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Toshiba Laptop ACPI Extras version %s\0A\00", align 1
@TOSHIBA_ACPI_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"HCI interface not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MISC_DYNAMIC_MINOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"toshiba_acpi\00", align 1
@toshiba_acpi_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to register miscdevice\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Unable to activate hotkeys\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"toshiba::illumination\00", align 1
@toshiba_illumination_set = common dso_local global i32 0, align 4
@toshiba_illumination_get = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"toshiba::eco_mode\00", align 1
@toshiba_eco_mode_set_status = common dso_local global i32 0, align 4
@toshiba_eco_mode_get_status = common dso_local global i32 0, align 4
@SCI_KBD_MODE_FNZ = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"toshiba::kbd_backlight\00", align 1
@LED_BRIGHT_HW_CHANGED = common dso_local global i32 0, align 4
@toshiba_kbd_backlight_set = common dso_local global i32 0, align 4
@toshiba_kbd_backlight_get = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"Unable to allocate iio device\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Registering Toshiba accelerometer iio device\0A\00", align 1
@toshiba_iio_accel_info = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"Toshiba accelerometer\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@toshiba_iio_accel_channels = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"Unable to register iio device\0A\00", align 1
@toshiba_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @toshiba_acpi_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toshiba_acpi_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.toshiba_acpi_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** @toshiba_acpi, align 8
  %9 = icmp ne %struct.toshiba_acpi_dev* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %377

13:                                               ; preds = %1
  %14 = load i32, i32* @TOSHIBA_ACPI_VERSION, align 4
  %15 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @find_hci_method(i32 %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %13
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %377

26:                                               ; preds = %13
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.toshiba_acpi_dev* @kzalloc(i32 240, i32 %27)
  store %struct.toshiba_acpi_dev* %28, %struct.toshiba_acpi_dev** %4, align 8
  %29 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %30 = icmp ne %struct.toshiba_acpi_dev* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %377

34:                                               ; preds = %26
  %35 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %36 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %37 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %36, i32 0, i32 16
  store %struct.acpi_device* %35, %struct.acpi_device** %37, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %40 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @MISC_DYNAMIC_MINOR, align 4
  %42 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %43 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %42, i32 0, i32 28
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %46 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %45, i32 0, i32 28
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %47, align 8
  %48 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %49 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %48, i32 0, i32 28
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  store i32* @toshiba_acpi_fops, i32** %50, align 8
  %51 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %52 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %51, i32 0, i32 28
  %53 = call i32 @misc_register(%struct.TYPE_10__* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %34
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %59 = call i32 @kfree(%struct.toshiba_acpi_dev* %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %377

61:                                               ; preds = %34
  %62 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %63 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %64 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %63, i32 0, i32 1
  store %struct.toshiba_acpi_dev* %62, %struct.toshiba_acpi_dev** %64, align 8
  %65 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %66 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %65, i32 0, i32 0
  %67 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %68 = call i32 @dev_set_drvdata(%struct.TYPE_11__* %66, %struct.toshiba_acpi_dev* %67)
  %69 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %70 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %71 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %70, i32 0, i32 27
  %72 = call i32 @toshiba_function_keys_get(%struct.toshiba_acpi_dev* %69, i32* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %78 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %80 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %79, i32 0, i32 26
  store i64 0, i64* %80, align 8
  %81 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %82 = call i64 @toshiba_acpi_setup_keyboard(%struct.toshiba_acpi_dev* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %61
  %85 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %61
  %87 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %88 = call i32 @get_tr_backlight_status(%struct.toshiba_acpi_dev* %87, i32* %6)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %94 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %96 = call i32 @toshiba_acpi_setup_backlight(%struct.toshiba_acpi_dev* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  br label %373

100:                                              ; preds = %86
  %101 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %102 = call i32 @toshiba_illumination_available(%struct.toshiba_acpi_dev* %101)
  %103 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %104 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %103, i32 0, i32 25
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %132

107:                                              ; preds = %100
  %108 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %109 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %108, i32 0, i32 24
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** %110, align 8
  %111 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %112 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %111, i32 0, i32 24
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  store i32 1, i32* %113, align 8
  %114 = load i32, i32* @toshiba_illumination_set, align 4
  %115 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %116 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %115, i32 0, i32 24
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 3
  store i32 %114, i32* %117, align 8
  %118 = load i32, i32* @toshiba_illumination_get, align 4
  %119 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %120 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %119, i32 0, i32 24
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 4
  %122 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %123 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %122, i32 0, i32 0
  %124 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %125 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %124, i32 0, i32 24
  %126 = call i32 @led_classdev_register(%struct.TYPE_11__* %123, %struct.TYPE_12__* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %107
  %129 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %130 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %129, i32 0, i32 3
  store i32 1, i32* %130, align 8
  br label %131

131:                                              ; preds = %128, %107
  br label %132

132:                                              ; preds = %131, %100
  %133 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %134 = call i32 @toshiba_eco_mode_available(%struct.toshiba_acpi_dev* %133)
  %135 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %136 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %135, i32 0, i32 23
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %166

139:                                              ; preds = %132
  %140 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %141 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %140, i32 0, i32 22
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8** %142, align 8
  %143 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %144 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %143, i32 0, i32 22
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  store i32 1, i32* %145, align 8
  %146 = load i32, i32* @toshiba_eco_mode_set_status, align 4
  %147 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %148 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %147, i32 0, i32 22
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 3
  store i32 %146, i32* %149, align 8
  %150 = load i32, i32* @toshiba_eco_mode_get_status, align 4
  %151 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %152 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %151, i32 0, i32 22
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 2
  store i32 %150, i32* %153, align 4
  %154 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %155 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %154, i32 0, i32 16
  %156 = load %struct.acpi_device*, %struct.acpi_device** %155, align 8
  %157 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %156, i32 0, i32 0
  %158 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %159 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %158, i32 0, i32 22
  %160 = call i32 @led_classdev_register(%struct.TYPE_11__* %157, %struct.TYPE_12__* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %139
  %163 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %164 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %163, i32 0, i32 4
  store i32 1, i32* %164, align 4
  br label %165

165:                                              ; preds = %162, %139
  br label %166

166:                                              ; preds = %165, %132
  %167 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %168 = call i32 @toshiba_kbd_illum_available(%struct.toshiba_acpi_dev* %167)
  %169 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %170 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %169, i32 0, i32 21
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %215

173:                                              ; preds = %166
  %174 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %175 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %174, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @SCI_KBD_MODE_FNZ, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %184, label %179

179:                                              ; preds = %173
  %180 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %181 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %182, 2
  br i1 %183, label %184, label %215

184:                                              ; preds = %179, %173
  %185 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %186 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %185, i32 0, i32 20
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8** %187, align 8
  %188 = load i32, i32* @LED_BRIGHT_HW_CHANGED, align 4
  %189 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %190 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %189, i32 0, i32 20
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 4
  store i32 %188, i32* %191, align 4
  %192 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %193 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %192, i32 0, i32 20
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  store i32 1, i32* %194, align 8
  %195 = load i32, i32* @toshiba_kbd_backlight_set, align 4
  %196 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %197 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %196, i32 0, i32 20
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 3
  store i32 %195, i32* %198, align 8
  %199 = load i32, i32* @toshiba_kbd_backlight_get, align 4
  %200 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %201 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %200, i32 0, i32 20
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 2
  store i32 %199, i32* %202, align 4
  %203 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %204 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %203, i32 0, i32 16
  %205 = load %struct.acpi_device*, %struct.acpi_device** %204, align 8
  %206 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %205, i32 0, i32 0
  %207 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %208 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %207, i32 0, i32 20
  %209 = call i32 @led_classdev_register(%struct.TYPE_11__* %206, %struct.TYPE_12__* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %184
  %212 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %213 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %212, i32 0, i32 7
  store i32 1, i32* %213, align 4
  br label %214

214:                                              ; preds = %211, %184
  br label %215

215:                                              ; preds = %214, %179, %166
  %216 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %217 = call i32 @toshiba_touchpad_get(%struct.toshiba_acpi_dev* %216, i32* %6)
  store i32 %217, i32* %7, align 4
  %218 = load i32, i32* %7, align 4
  %219 = icmp ne i32 %218, 0
  %220 = xor i1 %219, true
  %221 = zext i1 %220 to i32
  %222 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %223 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %222, i32 0, i32 8
  store i32 %221, i32* %223, align 8
  %224 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %225 = call i32 @toshiba_accelerometer_available(%struct.toshiba_acpi_dev* %224)
  %226 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %227 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %226, i32 0, i32 19
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %286

230:                                              ; preds = %215
  %231 = call %struct.TYPE_13__* @iio_device_alloc(i32 240)
  %232 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %233 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %232, i32 0, i32 18
  store %struct.TYPE_13__* %231, %struct.TYPE_13__** %233, align 8
  %234 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %235 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %234, i32 0, i32 18
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %235, align 8
  %237 = icmp ne %struct.TYPE_13__* %236, null
  br i1 %237, label %240, label %238

238:                                              ; preds = %230
  %239 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %287

240:                                              ; preds = %230
  %241 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  %242 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %243 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %242, i32 0, i32 18
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 5
  store i32* @toshiba_iio_accel_info, i32** %245, align 8
  %246 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %247 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %246, i32 0, i32 18
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8** %249, align 8
  %250 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %251 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %250, i32 0, i32 0
  %252 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %253 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %252, i32 0, i32 18
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 0
  store %struct.TYPE_11__* %251, %struct.TYPE_11__** %256, align 8
  %257 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %258 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %259 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %258, i32 0, i32 18
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 3
  store i32 %257, i32* %261, align 8
  %262 = load i32, i32* @toshiba_iio_accel_channels, align 4
  %263 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %264 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %263, i32 0, i32 18
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 2
  store i32 %262, i32* %266, align 4
  %267 = load i32, i32* @toshiba_iio_accel_channels, align 4
  %268 = call i32 @ARRAY_SIZE(i32 %267)
  %269 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %270 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %269, i32 0, i32 18
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 1
  store i32 %268, i32* %272, align 8
  %273 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %274 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %273, i32 0, i32 18
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %274, align 8
  %276 = call i32 @iio_device_register(%struct.TYPE_13__* %275)
  store i32 %276, i32* %7, align 4
  %277 = load i32, i32* %7, align 4
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %240
  %280 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %281 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %282 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %281, i32 0, i32 18
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %282, align 8
  %284 = call i32 @iio_device_free(%struct.TYPE_13__* %283)
  br label %285

285:                                              ; preds = %279, %240
  br label %286

286:                                              ; preds = %285, %215
  br label %287

287:                                              ; preds = %286, %238
  %288 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %289 = call i32 @toshiba_usb_sleep_charge_available(%struct.toshiba_acpi_dev* %288)
  %290 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %291 = call i32 @toshiba_usb_rapid_charge_get(%struct.toshiba_acpi_dev* %290, i32* %6)
  store i32 %291, i32* %7, align 4
  %292 = load i32, i32* %7, align 4
  %293 = icmp ne i32 %292, 0
  %294 = xor i1 %293, true
  %295 = zext i1 %294 to i32
  %296 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %297 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %296, i32 0, i32 9
  store i32 %295, i32* %297, align 4
  %298 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %299 = call i32 @toshiba_usb_sleep_music_get(%struct.toshiba_acpi_dev* %298, i32* %6)
  store i32 %299, i32* %7, align 4
  %300 = load i32, i32* %7, align 4
  %301 = icmp ne i32 %300, 0
  %302 = xor i1 %301, true
  %303 = zext i1 %302 to i32
  %304 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %305 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %304, i32 0, i32 10
  store i32 %303, i32* %305, align 8
  %306 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %307 = call i32 @toshiba_panel_power_on_get(%struct.toshiba_acpi_dev* %306, i32* %6)
  store i32 %307, i32* %7, align 4
  %308 = load i32, i32* %7, align 4
  %309 = icmp ne i32 %308, 0
  %310 = xor i1 %309, true
  %311 = zext i1 %310 to i32
  %312 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %313 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %312, i32 0, i32 11
  store i32 %311, i32* %313, align 4
  %314 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %315 = call i32 @toshiba_usb_three_get(%struct.toshiba_acpi_dev* %314, i32* %6)
  store i32 %315, i32* %7, align 4
  %316 = load i32, i32* %7, align 4
  %317 = icmp ne i32 %316, 0
  %318 = xor i1 %317, true
  %319 = zext i1 %318 to i32
  %320 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %321 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %320, i32 0, i32 12
  store i32 %319, i32* %321, align 8
  %322 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %323 = call i32 @get_video_status(%struct.toshiba_acpi_dev* %322, i32* %6)
  store i32 %323, i32* %7, align 4
  %324 = load i32, i32* %7, align 4
  %325 = icmp ne i32 %324, 0
  %326 = xor i1 %325, true
  %327 = zext i1 %326 to i32
  %328 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %329 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %328, i32 0, i32 13
  store i32 %327, i32* %329, align 4
  %330 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %331 = call i32 @get_fan_status(%struct.toshiba_acpi_dev* %330, i32* %6)
  store i32 %331, i32* %7, align 4
  %332 = load i32, i32* %7, align 4
  %333 = icmp ne i32 %332, 0
  %334 = xor i1 %333, true
  %335 = zext i1 %334 to i32
  %336 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %337 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %336, i32 0, i32 14
  store i32 %335, i32* %337, align 8
  %338 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %339 = call i32 @toshiba_wwan_available(%struct.toshiba_acpi_dev* %338)
  %340 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %341 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %340, i32 0, i32 17
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %287
  %345 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %346 = call i32 @toshiba_acpi_setup_wwan_rfkill(%struct.toshiba_acpi_dev* %345)
  br label %347

347:                                              ; preds = %344, %287
  %348 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %349 = call i32 @toshiba_cooling_method_available(%struct.toshiba_acpi_dev* %348)
  %350 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %351 = call i32 @print_supported_features(%struct.toshiba_acpi_dev* %350)
  %352 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %353 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %352, i32 0, i32 16
  %354 = load %struct.acpi_device*, %struct.acpi_device** %353, align 8
  %355 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i32 0, i32 0
  %357 = call i32 @sysfs_create_group(i32* %356, i32* @toshiba_attr_group)
  store i32 %357, i32* %7, align 4
  %358 = load i32, i32* %7, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %347
  %361 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %362 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %361, i32 0, i32 15
  store i32 0, i32* %362, align 4
  br label %373

363:                                              ; preds = %347
  %364 = load i32, i32* %7, align 4
  %365 = icmp ne i32 %364, 0
  %366 = xor i1 %365, true
  %367 = zext i1 %366 to i32
  %368 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %369 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %368, i32 0, i32 15
  store i32 %367, i32* %369, align 4
  %370 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %371 = call i32 @create_toshiba_proc_entries(%struct.toshiba_acpi_dev* %370)
  %372 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  store %struct.toshiba_acpi_dev* %372, %struct.toshiba_acpi_dev** @toshiba_acpi, align 8
  store i32 0, i32* %2, align 4
  br label %377

373:                                              ; preds = %360, %99
  %374 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %375 = call i32 @toshiba_acpi_remove(%struct.acpi_device* %374)
  %376 = load i32, i32* %7, align 4
  store i32 %376, i32* %2, align 4
  br label %377

377:                                              ; preds = %373, %363, %56, %31, %22, %10
  %378 = load i32, i32* %2, align 4
  ret i32 %378
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i8* @find_hci_method(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.toshiba_acpi_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @misc_register(%struct.TYPE_10__*) #1

declare dso_local i32 @kfree(%struct.toshiba_acpi_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_11__*, %struct.toshiba_acpi_dev*) #1

declare dso_local i32 @toshiba_function_keys_get(%struct.toshiba_acpi_dev*, i32*) #1

declare dso_local i64 @toshiba_acpi_setup_keyboard(%struct.toshiba_acpi_dev*) #1

declare dso_local i32 @get_tr_backlight_status(%struct.toshiba_acpi_dev*, i32*) #1

declare dso_local i32 @toshiba_acpi_setup_backlight(%struct.toshiba_acpi_dev*) #1

declare dso_local i32 @toshiba_illumination_available(%struct.toshiba_acpi_dev*) #1

declare dso_local i32 @led_classdev_register(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @toshiba_eco_mode_available(%struct.toshiba_acpi_dev*) #1

declare dso_local i32 @toshiba_kbd_illum_available(%struct.toshiba_acpi_dev*) #1

declare dso_local i32 @toshiba_touchpad_get(%struct.toshiba_acpi_dev*, i32*) #1

declare dso_local i32 @toshiba_accelerometer_available(%struct.toshiba_acpi_dev*) #1

declare dso_local %struct.TYPE_13__* @iio_device_alloc(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_device_register(%struct.TYPE_13__*) #1

declare dso_local i32 @iio_device_free(%struct.TYPE_13__*) #1

declare dso_local i32 @toshiba_usb_sleep_charge_available(%struct.toshiba_acpi_dev*) #1

declare dso_local i32 @toshiba_usb_rapid_charge_get(%struct.toshiba_acpi_dev*, i32*) #1

declare dso_local i32 @toshiba_usb_sleep_music_get(%struct.toshiba_acpi_dev*, i32*) #1

declare dso_local i32 @toshiba_panel_power_on_get(%struct.toshiba_acpi_dev*, i32*) #1

declare dso_local i32 @toshiba_usb_three_get(%struct.toshiba_acpi_dev*, i32*) #1

declare dso_local i32 @get_video_status(%struct.toshiba_acpi_dev*, i32*) #1

declare dso_local i32 @get_fan_status(%struct.toshiba_acpi_dev*, i32*) #1

declare dso_local i32 @toshiba_wwan_available(%struct.toshiba_acpi_dev*) #1

declare dso_local i32 @toshiba_acpi_setup_wwan_rfkill(%struct.toshiba_acpi_dev*) #1

declare dso_local i32 @toshiba_cooling_method_available(%struct.toshiba_acpi_dev*) #1

declare dso_local i32 @print_supported_features(%struct.toshiba_acpi_dev*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @create_toshiba_proc_entries(%struct.toshiba_acpi_dev*) #1

declare dso_local i32 @toshiba_acpi_remove(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
