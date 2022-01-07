; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pwm_bl.c_pwm_backlight_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pwm_bl.c_pwm_backlight_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_bl_data = type { i32, i32, i32, i64, i64 }
%struct.pwm_state = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_bl_data*)* @pwm_backlight_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwm_backlight_power_off(%struct.pwm_bl_data* %0) #0 {
  %2 = alloca %struct.pwm_bl_data*, align 8
  %3 = alloca %struct.pwm_state, align 8
  store %struct.pwm_bl_data* %0, %struct.pwm_bl_data** %2, align 8
  %4 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %2, align 8
  %5 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @pwm_get_state(i32 %6, %struct.pwm_state* %3)
  %8 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %2, align 8
  %9 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %46

13:                                               ; preds = %1
  %14 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %2, align 8
  %15 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %2, align 8
  %20 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @gpiod_set_value_cansleep(i64 %21, i32 0)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %2, align 8
  %25 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %2, align 8
  %30 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @msleep(i64 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %3, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %3, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %2, align 8
  %37 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pwm_apply_state(i32 %38, %struct.pwm_state* %3)
  %40 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %2, align 8
  %41 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @regulator_disable(i32 %42)
  %44 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %2, align 8
  %45 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  br label %46

46:                                               ; preds = %33, %12
  ret void
}

declare dso_local i32 @pwm_get_state(i32, %struct.pwm_state*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @pwm_apply_state(i32, %struct.pwm_state*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
