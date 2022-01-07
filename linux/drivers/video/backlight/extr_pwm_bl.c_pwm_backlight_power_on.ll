; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pwm_bl.c_pwm_backlight_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pwm_bl.c_pwm_backlight_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_bl_data = type { i32, i64, i64, i32, i32, i32 }
%struct.pwm_state = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to enable power supply\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_bl_data*)* @pwm_backlight_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwm_backlight_power_on(%struct.pwm_bl_data* %0) #0 {
  %2 = alloca %struct.pwm_bl_data*, align 8
  %3 = alloca %struct.pwm_state, align 4
  %4 = alloca i32, align 4
  store %struct.pwm_bl_data* %0, %struct.pwm_bl_data** %2, align 8
  %5 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %2, align 8
  %6 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @pwm_get_state(i32 %7, %struct.pwm_state* %3)
  %9 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %2, align 8
  %10 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %54

14:                                               ; preds = %1
  %15 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %2, align 8
  %16 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @regulator_enable(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %2, align 8
  %23 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %14
  %27 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %3, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %2, align 8
  %29 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pwm_apply_state(i32 %30, %struct.pwm_state* %3)
  %32 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %2, align 8
  %33 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %2, align 8
  %38 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @msleep(i64 %39)
  br label %41

41:                                               ; preds = %36, %26
  %42 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %2, align 8
  %43 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %2, align 8
  %48 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @gpiod_set_value_cansleep(i64 %49, i32 1)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %2, align 8
  %53 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %13
  ret void
}

declare dso_local i32 @pwm_get_state(i32, %struct.pwm_state*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pwm_apply_state(i32, %struct.pwm_state*) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
