; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_da9052_bl.c_da9052_backlight_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_da9052_bl.c_da9052_backlight_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.backlight_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i8* }
%struct.backlight_properties = type { i8*, i32 }
%struct.da9052_bl = type { %struct.TYPE_10__*, i32, i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DA9052_WLEDS_OFF = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@DA9052_MAX_BRIGHTNESS = common dso_local global i8* null, align 8
@da9052_backlight_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to register backlight\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9052_backlight_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_backlight_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.backlight_device*, align 8
  %5 = alloca %struct.backlight_properties, align 8
  %6 = alloca %struct.da9052_bl*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.da9052_bl* @devm_kzalloc(%struct.TYPE_9__* %8, i32 24, i32 %9)
  store %struct.da9052_bl* %10, %struct.da9052_bl** %6, align 8
  %11 = load %struct.da9052_bl*, %struct.da9052_bl** %6, align 8
  %12 = icmp ne %struct.da9052_bl* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %73

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_10__* @dev_get_drvdata(i32 %20)
  %22 = load %struct.da9052_bl*, %struct.da9052_bl** %6, align 8
  %23 = getelementptr inbounds %struct.da9052_bl, %struct.da9052_bl* %22, i32 0, i32 0
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %23, align 8
  %24 = load %struct.da9052_bl*, %struct.da9052_bl** %6, align 8
  %25 = getelementptr inbounds %struct.da9052_bl, %struct.da9052_bl* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = call %struct.TYPE_8__* @platform_get_device_id(%struct.platform_device* %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.da9052_bl*, %struct.da9052_bl** %6, align 8
  %31 = getelementptr inbounds %struct.da9052_bl, %struct.da9052_bl* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @DA9052_WLEDS_OFF, align 4
  %33 = load %struct.da9052_bl*, %struct.da9052_bl** %6, align 8
  %34 = getelementptr inbounds %struct.da9052_bl, %struct.da9052_bl* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @BACKLIGHT_RAW, align 4
  %36 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load i8*, i8** @DA9052_MAX_BRIGHTNESS, align 8
  %38 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.da9052_bl*, %struct.da9052_bl** %6, align 8
  %45 = getelementptr inbounds %struct.da9052_bl, %struct.da9052_bl* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.da9052_bl*, %struct.da9052_bl** %6, align 8
  %50 = call %struct.backlight_device* @devm_backlight_device_register(%struct.TYPE_9__* %40, i32 %43, i32 %48, %struct.da9052_bl* %49, i32* @da9052_backlight_ops, %struct.backlight_properties* %5)
  store %struct.backlight_device* %50, %struct.backlight_device** %4, align 8
  %51 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %52 = call i64 @IS_ERR(%struct.backlight_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %16
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @dev_err(%struct.TYPE_9__* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %59 = call i32 @PTR_ERR(%struct.backlight_device* %58)
  store i32 %59, i32* %2, align 4
  br label %73

60:                                               ; preds = %16
  %61 = load i8*, i8** @DA9052_MAX_BRIGHTNESS, align 8
  %62 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %63 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %66 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %70 = call i32 @platform_set_drvdata(%struct.platform_device* %68, %struct.backlight_device* %69)
  %71 = load %struct.da9052_bl*, %struct.da9052_bl** %6, align 8
  %72 = call i32 @da9052_adjust_wled_brightness(%struct.da9052_bl* %71)
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %60, %54, %13
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.da9052_bl* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @dev_get_drvdata(i32) #1

declare dso_local %struct.TYPE_8__* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(%struct.TYPE_9__*, i32, i32, %struct.da9052_bl*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.backlight_device*) #1

declare dso_local i32 @da9052_adjust_wled_brightness(%struct.da9052_bl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
