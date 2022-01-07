; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_da903x_bl.c_da903x_backlight_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_da903x_bl.c_da903x_backlight_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.da9034_backlight_pdata = type { i32 }
%struct.da903x_backlight_data = type { i32, i32, i64 }
%struct.backlight_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.backlight_properties = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DA9030_MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@DA9034_MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid backlight device ID(%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DA9034_WLED_CONTROL2 = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@da903x_backlight_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to register backlight\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da903x_backlight_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da903x_backlight_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da9034_backlight_pdata*, align 8
  %5 = alloca %struct.da903x_backlight_data*, align 8
  %6 = alloca %struct.backlight_device*, align 8
  %7 = alloca %struct.backlight_properties, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = call %struct.da9034_backlight_pdata* @dev_get_platdata(%struct.TYPE_7__* %10)
  store %struct.da9034_backlight_pdata* %11, %struct.da9034_backlight_pdata** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.da903x_backlight_data* @devm_kzalloc(%struct.TYPE_7__* %13, i32 16, i32 %14)
  store %struct.da903x_backlight_data* %15, %struct.da903x_backlight_data** %5, align 8
  %16 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %5, align 8
  %17 = icmp eq %struct.da903x_backlight_data* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %99

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %29 [
    i32 129, label %25
    i32 128, label %27
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* @DA9030_MAX_BRIGHTNESS, align 4
  store i32 %26, i32* %8, align 4
  br label %38

27:                                               ; preds = %21
  %28 = load i32, i32* @DA9034_MAX_BRIGHTNESS, align 4
  store i32 %28, i32* %8, align 4
  br label %38

29:                                               ; preds = %21
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 1
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %99

38:                                               ; preds = %27, %25
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %5, align 8
  %43 = getelementptr inbounds %struct.da903x_backlight_data, %struct.da903x_backlight_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %5, align 8
  %49 = getelementptr inbounds %struct.da903x_backlight_data, %struct.da903x_backlight_data* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %5, align 8
  %51 = getelementptr inbounds %struct.da903x_backlight_data, %struct.da903x_backlight_data* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.da9034_backlight_pdata*, %struct.da9034_backlight_pdata** %4, align 8
  %53 = icmp ne %struct.da9034_backlight_pdata* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %38
  %55 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %5, align 8
  %56 = getelementptr inbounds %struct.da903x_backlight_data, %struct.da903x_backlight_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DA9034_WLED_CONTROL2, align 4
  %59 = load %struct.da9034_backlight_pdata*, %struct.da9034_backlight_pdata** %4, align 8
  %60 = getelementptr inbounds %struct.da9034_backlight_pdata, %struct.da9034_backlight_pdata* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @DA9034_WLED_ISET(i32 %61)
  %63 = call i32 @da903x_write(i32 %57, i32 %58, i32 %62)
  br label %64

64:                                               ; preds = %54, %38
  %65 = call i32 @memset(%struct.backlight_properties* %7, i32 0, i32 8)
  %66 = load i32, i32* @BACKLIGHT_RAW, align 4
  %67 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %7, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %7, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 1
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %5, align 8
  %76 = getelementptr inbounds %struct.da903x_backlight_data, %struct.da903x_backlight_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %5, align 8
  %79 = call %struct.backlight_device* @devm_backlight_device_register(%struct.TYPE_7__* %71, i32 %74, i32 %77, %struct.da903x_backlight_data* %78, i32* @da903x_backlight_ops, %struct.backlight_properties* %7)
  store %struct.backlight_device* %79, %struct.backlight_device** %6, align 8
  %80 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %81 = call i64 @IS_ERR(%struct.backlight_device* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %64
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 1
  %86 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %88 = call i32 @PTR_ERR(%struct.backlight_device* %87)
  store i32 %88, i32* %2, align 4
  br label %99

89:                                               ; preds = %64
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %92 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %96 = call i32 @platform_set_drvdata(%struct.platform_device* %94, %struct.backlight_device* %95)
  %97 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %98 = call i32 @backlight_update_status(%struct.backlight_device* %97)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %89, %83, %29, %18
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.da9034_backlight_pdata* @dev_get_platdata(%struct.TYPE_7__*) #1

declare dso_local %struct.da903x_backlight_data* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @da903x_write(i32, i32, i32) #1

declare dso_local i32 @DA9034_WLED_ISET(i32) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(%struct.TYPE_7__*, i32, i32, %struct.da903x_backlight_data*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
