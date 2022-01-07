; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-cros-ec.c_cros_ec_pwm_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-cros-ec.c_cros_ec_pwm_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i64, i32, i64 }
%struct.cros_ec_pwm_device = type { i32 }

@EC_PWM_MAX_DUTY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @cros_ec_pwm_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_pwm_apply(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca %struct.pwm_state*, align 8
  %8 = alloca %struct.cros_ec_pwm_device*, align 8
  %9 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %7, align 8
  %10 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %11 = call %struct.cros_ec_pwm_device* @pwm_to_cros_ec_pwm(%struct.pwm_chip* %10)
  store %struct.cros_ec_pwm_device* %11, %struct.cros_ec_pwm_device** %8, align 8
  %12 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %13 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EC_PWM_MAX_DUTY, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %40

20:                                               ; preds = %3
  %21 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %22 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %27 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  br label %30

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32 [ %28, %25 ], [ 0, %29 ]
  store i32 %31, i32* %9, align 4
  %32 = load %struct.cros_ec_pwm_device*, %struct.cros_ec_pwm_device** %8, align 8
  %33 = getelementptr inbounds %struct.cros_ec_pwm_device, %struct.cros_ec_pwm_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %36 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @cros_ec_pwm_set_duty(i32 %34, i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %30, %17
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.cros_ec_pwm_device* @pwm_to_cros_ec_pwm(%struct.pwm_chip*) #1

declare dso_local i32 @cros_ec_pwm_set_duty(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
