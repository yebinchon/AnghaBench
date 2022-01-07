; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pcf50633-backlight.c_pcf50633_bl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pcf50633-backlight.c_pcf50633_bl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.pcf50633_bl = type { i32, %struct.TYPE_11__*, i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.pcf50633_platform_data = type { %struct.pcf50633_bl_platform_data* }
%struct.pcf50633_bl_platform_data = type { i32, i32, i32 }
%struct.backlight_properties = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@pcf50633_bl_ops = common dso_local global i32 0, align 4
@PCF50633_REG_LEDDIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pcf50633_bl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_bl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pcf50633_bl*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.pcf50633_platform_data*, align 8
  %7 = alloca %struct.pcf50633_bl_platform_data*, align 8
  %8 = alloca %struct.backlight_properties, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.pcf50633_platform_data* @dev_get_platdata(%struct.device* %13)
  store %struct.pcf50633_platform_data* %14, %struct.pcf50633_platform_data** %6, align 8
  %15 = load %struct.pcf50633_platform_data*, %struct.pcf50633_platform_data** %6, align 8
  %16 = getelementptr inbounds %struct.pcf50633_platform_data, %struct.pcf50633_platform_data* %15, i32 0, i32 0
  %17 = load %struct.pcf50633_bl_platform_data*, %struct.pcf50633_bl_platform_data** %16, align 8
  store %struct.pcf50633_bl_platform_data* %17, %struct.pcf50633_bl_platform_data** %7, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.pcf50633_bl* @devm_kzalloc(%struct.TYPE_10__* %19, i32 32, i32 %20)
  store %struct.pcf50633_bl* %21, %struct.pcf50633_bl** %4, align 8
  %22 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %23 = icmp ne %struct.pcf50633_bl* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %104

27:                                               ; preds = %1
  %28 = call i32 @memset(%struct.backlight_properties* %8, i32 0, i32 16)
  %29 = load i32, i32* @BACKLIGHT_RAW, align 4
  %30 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 0
  store i32 63, i32* %31, align 4
  %32 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %33 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.pcf50633_bl_platform_data*, %struct.pcf50633_bl_platform_data** %7, align 8
  %35 = icmp ne %struct.pcf50633_bl_platform_data* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %27
  %37 = load %struct.pcf50633_bl_platform_data*, %struct.pcf50633_bl_platform_data** %7, align 8
  %38 = getelementptr inbounds %struct.pcf50633_bl_platform_data, %struct.pcf50633_bl_platform_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.pcf50633_bl_platform_data*, %struct.pcf50633_bl_platform_data** %7, align 8
  %42 = getelementptr inbounds %struct.pcf50633_bl_platform_data, %struct.pcf50633_bl_platform_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %45 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %50

46:                                               ; preds = %27
  %47 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 1
  store i32 63, i32* %47, align 4
  %48 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %49 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %48, i32 0, i32 0
  store i32 63, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %36
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load %struct.device*, %struct.device** %53, align 8
  %55 = call i32 @dev_to_pcf50633(%struct.device* %54)
  %56 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %57 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %66 = call %struct.TYPE_11__* @devm_backlight_device_register(%struct.TYPE_10__* %59, i32 %62, %struct.TYPE_10__* %64, %struct.pcf50633_bl* %65, i32* @pcf50633_bl_ops, %struct.backlight_properties* %8)
  %67 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %68 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %67, i32 0, i32 1
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %68, align 8
  %69 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %70 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %69, i32 0, i32 1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = call i64 @IS_ERR(%struct.TYPE_11__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %50
  %75 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %76 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %75, i32 0, i32 1
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = call i32 @PTR_ERR(%struct.TYPE_11__* %77)
  store i32 %78, i32* %2, align 4
  br label %104

79:                                               ; preds = %50
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %82 = call i32 @platform_set_drvdata(%struct.platform_device* %80, %struct.pcf50633_bl* %81)
  %83 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %84 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @PCF50633_REG_LEDDIM, align 4
  %87 = load %struct.pcf50633_bl_platform_data*, %struct.pcf50633_bl_platform_data** %7, align 8
  %88 = getelementptr inbounds %struct.pcf50633_bl_platform_data, %struct.pcf50633_bl_platform_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @pcf50633_reg_write(i32 %85, i32 %86, i32 %89)
  %91 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %92 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %91, i32 0, i32 1
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  %98 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %99 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  %100 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %101 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %100, i32 0, i32 1
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = call i32 @backlight_update_status(%struct.TYPE_11__* %102)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %79, %74, %24
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.pcf50633_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.pcf50633_bl* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local i32 @dev_to_pcf50633(%struct.device*) #1

declare dso_local %struct.TYPE_11__* @devm_backlight_device_register(%struct.TYPE_10__*, i32, %struct.TYPE_10__*, %struct.pcf50633_bl*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_11__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_11__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pcf50633_bl*) #1

declare dso_local i32 @pcf50633_reg_write(i32, i32, i32) #1

declare dso_local i32 @backlight_update_status(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
