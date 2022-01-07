; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pm8941-wled.c_pm8941_wled_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pm8941-wled.c_pm8941_wled_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.backlight_properties = type { i32, i32, i32 }
%struct.backlight_device = type { i32 }
%struct.pm8941_wled = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Unable to get regmap\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PM8941_WLED_DEFAULT_BRIGHTNESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"default-brightness\00", align 1
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@PM8941_WLED_REG_VAL_MAX = common dso_local global i32 0, align 4
@pm8941_wled_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm8941_wled_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8941_wled_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.backlight_properties, align 4
  %5 = alloca %struct.backlight_device*, align 8
  %6 = alloca %struct.pm8941_wled*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.regmap* @dev_get_regmap(i32 %13, i32* null)
  store %struct.regmap* %14, %struct.regmap** %7, align 8
  %15 = load %struct.regmap*, %struct.regmap** %7, align 8
  %16 = icmp ne %struct.regmap* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @dev_err(%struct.TYPE_6__* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %77

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.pm8941_wled* @devm_kzalloc(%struct.TYPE_6__* %25, i32 16, i32 %26)
  store %struct.pm8941_wled* %27, %struct.pm8941_wled** %6, align 8
  %28 = load %struct.pm8941_wled*, %struct.pm8941_wled** %6, align 8
  %29 = icmp ne %struct.pm8941_wled* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %77

33:                                               ; preds = %23
  %34 = load %struct.regmap*, %struct.regmap** %7, align 8
  %35 = load %struct.pm8941_wled*, %struct.pm8941_wled** %6, align 8
  %36 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %35, i32 0, i32 1
  store %struct.regmap* %34, %struct.regmap** %36, align 8
  %37 = load %struct.pm8941_wled*, %struct.pm8941_wled** %6, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @pm8941_wled_configure(%struct.pm8941_wled* %37, %struct.TYPE_6__* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %2, align 4
  br label %77

45:                                               ; preds = %33
  %46 = load %struct.pm8941_wled*, %struct.pm8941_wled** %6, align 8
  %47 = call i32 @pm8941_wled_setup(%struct.pm8941_wled* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %2, align 4
  br label %77

52:                                               ; preds = %45
  %53 = load i32, i32* @PM8941_WLED_DEFAULT_BRIGHTNESS, align 4
  store i32 %53, i32* %8, align 4
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @of_property_read_u32(i32 %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %59 = call i32 @memset(%struct.backlight_properties* %4, i32 0, i32 12)
  %60 = load i32, i32* @BACKLIGHT_RAW, align 4
  %61 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 2
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @PM8941_WLED_REG_VAL_MAX, align 4
  %65 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.pm8941_wled*, %struct.pm8941_wled** %6, align 8
  %69 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.pm8941_wled*, %struct.pm8941_wled** %6, align 8
  %74 = call %struct.backlight_device* @devm_backlight_device_register(%struct.TYPE_6__* %67, i32 %70, %struct.TYPE_6__* %72, %struct.pm8941_wled* %73, i32* @pm8941_wled_ops, %struct.backlight_properties* %4)
  store %struct.backlight_device* %74, %struct.backlight_device** %5, align 8
  %75 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %76 = call i32 @PTR_ERR_OR_ZERO(%struct.backlight_device* %75)
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %52, %50, %43, %30, %17
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.regmap* @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local %struct.pm8941_wled* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @pm8941_wled_configure(%struct.pm8941_wled*, %struct.TYPE_6__*) #1

declare dso_local i32 @pm8941_wled_setup(%struct.pm8941_wled*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(%struct.TYPE_6__*, i32, %struct.TYPE_6__*, %struct.pm8941_wled*, i32*, %struct.backlight_properties*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
