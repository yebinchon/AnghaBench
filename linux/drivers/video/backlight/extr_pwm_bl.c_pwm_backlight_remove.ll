; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pwm_bl.c_pwm_backlight_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pwm_bl.c_pwm_backlight_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.backlight_device = type { i32 }
%struct.pwm_bl_data = type { i32, i64, i32 (i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pwm_backlight_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_backlight_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.pwm_bl_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.backlight_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.backlight_device* %6, %struct.backlight_device** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %8 = call %struct.pwm_bl_data* @bl_get_data(%struct.backlight_device* %7)
  store %struct.pwm_bl_data* %8, %struct.pwm_bl_data** %4, align 8
  %9 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %10 = call i32 @backlight_device_unregister(%struct.backlight_device* %9)
  %11 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %4, align 8
  %12 = call i32 @pwm_backlight_power_off(%struct.pwm_bl_data* %11)
  %13 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %4, align 8
  %14 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %13, i32 0, i32 2
  %15 = load i32 (i32*)*, i32 (i32*)** %14, align 8
  %16 = icmp ne i32 (i32*)* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %4, align 8
  %19 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %18, i32 0, i32 2
  %20 = load i32 (i32*)*, i32 (i32*)** %19, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 %20(i32* %22)
  br label %24

24:                                               ; preds = %17, %1
  %25 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %4, align 8
  %26 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %4, align 8
  %31 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pwm_free(i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  ret i32 0
}

declare dso_local %struct.backlight_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.pwm_bl_data* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @backlight_device_unregister(%struct.backlight_device*) #1

declare dso_local i32 @pwm_backlight_power_off(%struct.pwm_bl_data*) #1

declare dso_local i32 @pwm_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
