; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp5520_bl.c_adp5520_bl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp5520_bl.c_adp5520_bl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.backlight_properties = type { i8*, i32 }
%struct.backlight_device = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8* }
%struct.adp5520_bl = type { %struct.TYPE_11__*, i32, i32, i64, i32 }
%struct.TYPE_11__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"missing platform data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@ADP5020_MAX_BRIGHTNESS = common dso_local global i8* null, align 8
@adp5520_bl_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to register backlight\0A\00", align 1
@adp5520_bl_attr_group = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to register sysfs\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"failed to setup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @adp5520_bl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5520_bl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.backlight_properties, align 8
  %5 = alloca %struct.backlight_device*, align 8
  %6 = alloca %struct.adp5520_bl*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.adp5520_bl* @devm_kzalloc(%struct.TYPE_10__* %9, i32 32, i32 %10)
  store %struct.adp5520_bl* %11, %struct.adp5520_bl** %6, align 8
  %12 = load %struct.adp5520_bl*, %struct.adp5520_bl** %6, align 8
  %13 = icmp eq %struct.adp5520_bl* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %126

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.adp5520_bl*, %struct.adp5520_bl** %6, align 8
  %23 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call %struct.TYPE_11__* @dev_get_platdata(%struct.TYPE_10__* %25)
  %27 = load %struct.adp5520_bl*, %struct.adp5520_bl** %6, align 8
  %28 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %27, i32 0, i32 0
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %28, align 8
  %29 = load %struct.adp5520_bl*, %struct.adp5520_bl** %6, align 8
  %30 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = icmp eq %struct.TYPE_11__* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %17
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @dev_err(%struct.TYPE_10__* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %126

39:                                               ; preds = %17
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.adp5520_bl*, %struct.adp5520_bl** %6, align 8
  %44 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.adp5520_bl*, %struct.adp5520_bl** %6, align 8
  %46 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.adp5520_bl*, %struct.adp5520_bl** %6, align 8
  %48 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %47, i32 0, i32 2
  %49 = call i32 @mutex_init(i32* %48)
  %50 = call i32 @memset(%struct.backlight_properties* %4, i32 0, i32 16)
  %51 = load i32, i32* @BACKLIGHT_RAW, align 4
  %52 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  %53 = load i8*, i8** @ADP5020_MAX_BRIGHTNESS, align 8
  %54 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 0
  store i8* %53, i8** %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.adp5520_bl*, %struct.adp5520_bl** %6, align 8
  %61 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.adp5520_bl*, %struct.adp5520_bl** %6, align 8
  %64 = call %struct.backlight_device* @devm_backlight_device_register(%struct.TYPE_10__* %56, i32 %59, i32 %62, %struct.adp5520_bl* %63, i32* @adp5520_bl_ops, %struct.backlight_properties* %4)
  store %struct.backlight_device* %64, %struct.backlight_device** %5, align 8
  %65 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %66 = call i64 @IS_ERR(%struct.backlight_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %39
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @dev_err(%struct.TYPE_10__* %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %73 = call i32 @PTR_ERR(%struct.backlight_device* %72)
  store i32 %73, i32* %2, align 4
  br label %126

74:                                               ; preds = %39
  %75 = load i8*, i8** @ADP5020_MAX_BRIGHTNESS, align 8
  %76 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %77 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  %79 = load %struct.adp5520_bl*, %struct.adp5520_bl** %6, align 8
  %80 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %79, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %87 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = call i32 @sysfs_create_group(i32* %88, i32* @adp5520_bl_attr_group)
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %85, %74
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 @dev_err(%struct.TYPE_10__* %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %126

98:                                               ; preds = %90
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %101 = call i32 @platform_set_drvdata(%struct.platform_device* %99, %struct.backlight_device* %100)
  %102 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %103 = call i32 @adp5520_bl_setup(%struct.backlight_device* %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %98
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call i32 @dev_err(%struct.TYPE_10__* %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %110 = load %struct.adp5520_bl*, %struct.adp5520_bl** %6, align 8
  %111 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %110, i32 0, i32 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %106
  %117 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %118 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = call i32 @sysfs_remove_group(i32* %119, i32* @adp5520_bl_attr_group)
  br label %121

121:                                              ; preds = %116, %106
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %2, align 4
  br label %126

123:                                              ; preds = %98
  %124 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %125 = call i32 @backlight_update_status(%struct.backlight_device* %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %123, %121, %93, %68, %33, %14
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.adp5520_bl* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @dev_get_platdata(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(%struct.TYPE_10__*, i32, i32, %struct.adp5520_bl*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.backlight_device*) #1

declare dso_local i32 @adp5520_bl_setup(%struct.backlight_device*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
