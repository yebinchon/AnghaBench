; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-cros-ec.c_cros_ec_pwm_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-cros-ec.c_cros_ec_pwm_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32, i32, i32 }
%struct.cros_ec_pwm_device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"error getting initial duty: %d\0A\00", align 1
@EC_PWM_MAX_DUTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @cros_ec_pwm_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cros_ec_pwm_get_state(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.pwm_state*, align 8
  %7 = alloca %struct.cros_ec_pwm_device*, align 8
  %8 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %6, align 8
  %9 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %10 = call %struct.cros_ec_pwm_device* @pwm_to_cros_ec_pwm(%struct.pwm_chip* %9)
  store %struct.cros_ec_pwm_device* %10, %struct.cros_ec_pwm_device** %7, align 8
  %11 = load %struct.cros_ec_pwm_device*, %struct.cros_ec_pwm_device** %7, align 8
  %12 = getelementptr inbounds %struct.cros_ec_pwm_device, %struct.cros_ec_pwm_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %15 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cros_ec_pwm_get_duty(i32 %13, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %22 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %38

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %31 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @EC_PWM_MAX_DUTY, align 4
  %33 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %34 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %37 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %26, %20
  ret void
}

declare dso_local %struct.cros_ec_pwm_device* @pwm_to_cros_ec_pwm(%struct.pwm_chip*) #1

declare dso_local i32 @cros_ec_pwm_get_duty(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
