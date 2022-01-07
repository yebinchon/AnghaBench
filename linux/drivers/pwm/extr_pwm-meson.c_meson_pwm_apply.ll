; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-meson.c_meson_pwm_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-meson.c_meson_pwm_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i64, i32 }
%struct.meson_pwm_channel = type { i64, i32, i64 }
%struct.meson_pwm = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PWM_POLARITY_INVERSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @meson_pwm_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_pwm_apply(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca %struct.pwm_state*, align 8
  %8 = alloca %struct.meson_pwm_channel*, align 8
  %9 = alloca %struct.meson_pwm*, align 8
  %10 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %7, align 8
  %11 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %12 = call %struct.meson_pwm_channel* @pwm_get_chip_data(%struct.pwm_device* %11)
  store %struct.meson_pwm_channel* %12, %struct.meson_pwm_channel** %8, align 8
  %13 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %14 = call %struct.meson_pwm* @to_meson_pwm(%struct.pwm_chip* %13)
  store %struct.meson_pwm* %14, %struct.meson_pwm** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %16 = icmp ne %struct.pwm_state* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %60

20:                                               ; preds = %3
  %21 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %22 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %20
  %26 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %27 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PWM_POLARITY_INVERSED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %8, align 8
  %33 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %8, align 8
  %35 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %34, i32 0, i32 1
  store i32 -1, i32* %35, align 8
  %36 = load %struct.meson_pwm_channel*, %struct.meson_pwm_channel** %8, align 8
  %37 = getelementptr inbounds %struct.meson_pwm_channel, %struct.meson_pwm_channel* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.meson_pwm*, %struct.meson_pwm** %9, align 8
  %39 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %40 = call i32 @meson_pwm_enable(%struct.meson_pwm* %38, %struct.pwm_device* %39)
  br label %45

41:                                               ; preds = %25
  %42 = load %struct.meson_pwm*, %struct.meson_pwm** %9, align 8
  %43 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %44 = call i32 @meson_pwm_disable(%struct.meson_pwm* %42, %struct.pwm_device* %43)
  br label %45

45:                                               ; preds = %41, %31
  br label %59

46:                                               ; preds = %20
  %47 = load %struct.meson_pwm*, %struct.meson_pwm** %9, align 8
  %48 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %49 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %50 = call i32 @meson_pwm_calc(%struct.meson_pwm* %47, %struct.pwm_device* %48, %struct.pwm_state* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %60

55:                                               ; preds = %46
  %56 = load %struct.meson_pwm*, %struct.meson_pwm** %9, align 8
  %57 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %58 = call i32 @meson_pwm_enable(%struct.meson_pwm* %56, %struct.pwm_device* %57)
  br label %59

59:                                               ; preds = %55, %45
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %53, %17
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.meson_pwm_channel* @pwm_get_chip_data(%struct.pwm_device*) #1

declare dso_local %struct.meson_pwm* @to_meson_pwm(%struct.pwm_chip*) #1

declare dso_local i32 @meson_pwm_enable(%struct.meson_pwm*, %struct.pwm_device*) #1

declare dso_local i32 @meson_pwm_disable(%struct.meson_pwm*, %struct.pwm_device*) #1

declare dso_local i32 @meson_pwm_calc(%struct.meson_pwm*, %struct.pwm_device*, %struct.pwm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
