; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_aat2870_bl.c_aat2870_bl_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_aat2870_bl.c_aat2870_bl_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.aat2870_bl_driver_data = type { %struct.backlight_device* }
%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aat2870_bl_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aat2870_bl_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.aat2870_bl_driver_data*, align 8
  %4 = alloca %struct.backlight_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.aat2870_bl_driver_data* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.aat2870_bl_driver_data* %6, %struct.aat2870_bl_driver_data** %3, align 8
  %7 = load %struct.aat2870_bl_driver_data*, %struct.aat2870_bl_driver_data** %3, align 8
  %8 = getelementptr inbounds %struct.aat2870_bl_driver_data, %struct.aat2870_bl_driver_data* %7, i32 0, i32 0
  %9 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  store %struct.backlight_device* %9, %struct.backlight_device** %4, align 8
  %10 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %11 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %12 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 8
  %14 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %15 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %18 = call i32 @backlight_update_status(%struct.backlight_device* %17)
  ret i32 0
}

declare dso_local %struct.aat2870_bl_driver_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
