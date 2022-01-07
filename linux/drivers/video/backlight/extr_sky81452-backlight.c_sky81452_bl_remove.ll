; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_sky81452-backlight.c_sky81452_bl_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_sky81452-backlight.c_sky81452_bl_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sky81452_bl_platform_data = type { i32 }
%struct.backlight_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@sky81452_bl_attr_group = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sky81452_bl_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky81452_bl_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sky81452_bl_platform_data*, align 8
  %4 = alloca %struct.backlight_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.sky81452_bl_platform_data* @dev_get_platdata(i32* %6)
  store %struct.sky81452_bl_platform_data* %7, %struct.sky81452_bl_platform_data** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = call %struct.backlight_device* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.backlight_device* %9, %struct.backlight_device** %4, align 8
  %10 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %11 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @sysfs_remove_group(i32* %12, i32* @sky81452_bl_attr_group)
  %14 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %15 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %16 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 8
  %18 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %19 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %22 = call i32 @backlight_update_status(%struct.backlight_device* %21)
  %23 = load %struct.sky81452_bl_platform_data*, %struct.sky81452_bl_platform_data** %3, align 8
  %24 = getelementptr inbounds %struct.sky81452_bl_platform_data, %struct.sky81452_bl_platform_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @gpio_is_valid(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.sky81452_bl_platform_data*, %struct.sky81452_bl_platform_data** %3, align 8
  %30 = getelementptr inbounds %struct.sky81452_bl_platform_data, %struct.sky81452_bl_platform_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gpio_set_value_cansleep(i32 %31, i32 0)
  br label %33

33:                                               ; preds = %28, %1
  ret i32 0
}

declare dso_local %struct.sky81452_bl_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.backlight_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
