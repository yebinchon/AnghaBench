; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp8788_bl.c_lp8788_bl_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp8788_bl.c_lp8788_bl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.lp8788_bl = type { i32, i32 }

@BL_CORE_SUSPENDED = common dso_local global i32 0, align 4
@LP8788_BL_BRIGHTNESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @lp8788_bl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_bl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.lp8788_bl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %8 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %9 = call %struct.lp8788_bl* @bl_get_data(%struct.backlight_device* %8)
  store %struct.lp8788_bl* %9, %struct.lp8788_bl** %3, align 8
  %10 = load %struct.lp8788_bl*, %struct.lp8788_bl** %3, align 8
  %11 = getelementptr inbounds %struct.lp8788_bl, %struct.lp8788_bl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %14 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BL_CORE_SUSPENDED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %22 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %20, %1
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @is_brightness_ctrl_by_pwm(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %30 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %34 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  %37 = load %struct.lp8788_bl*, %struct.lp8788_bl** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @lp8788_pwm_ctrl(%struct.lp8788_bl* %37, i32 %38, i32 %39)
  br label %57

41:                                               ; preds = %24
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @is_brightness_ctrl_by_register(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %47 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  %50 = load %struct.lp8788_bl*, %struct.lp8788_bl** %3, align 8
  %51 = getelementptr inbounds %struct.lp8788_bl, %struct.lp8788_bl* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @LP8788_BL_BRIGHTNESS, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @lp8788_write_byte(i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %45, %41
  br label %57

57:                                               ; preds = %56, %28
  ret i32 0
}

declare dso_local %struct.lp8788_bl* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i64 @is_brightness_ctrl_by_pwm(i32) #1

declare dso_local i32 @lp8788_pwm_ctrl(%struct.lp8788_bl*, i32, i32) #1

declare dso_local i64 @is_brightness_ctrl_by_register(i32) #1

declare dso_local i32 @lp8788_write_byte(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
