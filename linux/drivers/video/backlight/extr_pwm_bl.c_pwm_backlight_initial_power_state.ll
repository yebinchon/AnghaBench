; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pwm_bl.c_pwm_backlight_initial_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pwm_bl.c_pwm_backlight_initial_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_bl_data = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_bl_data*)* @pwm_backlight_initial_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_backlight_initial_power_state(%struct.pwm_bl_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pwm_bl_data*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.pwm_bl_data* %0, %struct.pwm_bl_data** %3, align 8
  %5 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %3, align 8
  %6 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = getelementptr inbounds %struct.device_node, %struct.device_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  store i32 %18, i32* %2, align 4
  br label %50

19:                                               ; preds = %12
  %20 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %3, align 8
  %21 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %3, align 8
  %26 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @gpiod_get_value_cansleep(i64 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  store i32 %31, i32* %2, align 4
  br label %50

32:                                               ; preds = %24, %19
  %33 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %3, align 8
  %34 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @regulator_is_enabled(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  store i32 %39, i32* %2, align 4
  br label %50

40:                                               ; preds = %32
  %41 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %3, align 8
  %42 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pwm_is_enabled(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  store i32 %47, i32* %2, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %46, %38, %30, %17
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @gpiod_get_value_cansleep(i64) #1

declare dso_local i32 @regulator_is_enabled(i32) #1

declare dso_local i32 @pwm_is_enabled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
