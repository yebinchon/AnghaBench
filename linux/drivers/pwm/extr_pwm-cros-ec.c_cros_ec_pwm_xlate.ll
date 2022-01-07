; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-cros-ec.c_cros_ec_pwm_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-cros-ec.c_cros_ec_pwm_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pwm_chip = type { i64 }
%struct.of_phandle_args = type { i64* }

@EINVAL = common dso_local global i32 0, align 4
@EC_PWM_MAX_DUTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pwm_device* (%struct.pwm_chip*, %struct.of_phandle_args*)* @cros_ec_pwm_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pwm_device* @cros_ec_pwm_xlate(%struct.pwm_chip* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.pwm_device*, align 8
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %7 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %8 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %13 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.pwm_device* @ERR_PTR(i32 %18)
  store %struct.pwm_device* %19, %struct.pwm_device** %3, align 8
  br label %39

20:                                               ; preds = %2
  %21 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %22 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %23 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.pwm_device* @pwm_request_from_chip(%struct.pwm_chip* %21, i64 %26, i32* null)
  store %struct.pwm_device* %27, %struct.pwm_device** %6, align 8
  %28 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %29 = call i64 @IS_ERR(%struct.pwm_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  store %struct.pwm_device* %32, %struct.pwm_device** %3, align 8
  br label %39

33:                                               ; preds = %20
  %34 = load i32, i32* @EC_PWM_MAX_DUTY, align 4
  %35 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %36 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  store %struct.pwm_device* %38, %struct.pwm_device** %3, align 8
  br label %39

39:                                               ; preds = %33, %31, %16
  %40 = load %struct.pwm_device*, %struct.pwm_device** %3, align 8
  ret %struct.pwm_device* %40
}

declare dso_local %struct.pwm_device* @ERR_PTR(i32) #1

declare dso_local %struct.pwm_device* @pwm_request_from_chip(%struct.pwm_chip*, i64, i32*) #1

declare dso_local i64 @IS_ERR(%struct.pwm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
