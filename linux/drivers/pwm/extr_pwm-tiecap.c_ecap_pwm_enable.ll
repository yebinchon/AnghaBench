; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tiecap.c_ecap_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tiecap.c_ecap_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.ecap_pwm_chip = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ECCTL2 = common dso_local global i64 0, align 8
@ECCTL2_TSCTR_FREERUN = common dso_local global i32 0, align 4
@ECCTL2_APWM_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @ecap_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecap_pwm_enable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.ecap_pwm_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %7 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %8 = call %struct.ecap_pwm_chip* @to_ecap_pwm_chip(%struct.pwm_chip* %7)
  store %struct.ecap_pwm_chip* %8, %struct.ecap_pwm_chip** %5, align 8
  %9 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %5, align 8
  %10 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @pm_runtime_get_sync(i32 %12)
  %14 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %5, align 8
  %15 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ECCTL2, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readw(i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @ECCTL2_TSCTR_FREERUN, align 4
  %21 = load i32, i32* @ECCTL2_APWM_MODE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %5, align 8
  %27 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ECCTL2, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writew(i32 %25, i64 %30)
  ret i32 0
}

declare dso_local %struct.ecap_pwm_chip* @to_ecap_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
