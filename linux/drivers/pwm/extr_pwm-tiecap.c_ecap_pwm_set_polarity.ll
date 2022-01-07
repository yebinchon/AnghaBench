; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tiecap.c_ecap_pwm_set_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tiecap.c_ecap_pwm_set_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.ecap_pwm_chip = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@ECCTL2 = common dso_local global i64 0, align 8
@PWM_POLARITY_INVERSED = common dso_local global i32 0, align 4
@ECCTL2_APWM_POL_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32)* @ecap_pwm_set_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecap_pwm_set_polarity(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecap_pwm_chip*, align 8
  %8 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %10 = call %struct.ecap_pwm_chip* @to_ecap_pwm_chip(%struct.pwm_chip* %9)
  store %struct.ecap_pwm_chip* %10, %struct.ecap_pwm_chip** %7, align 8
  %11 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %7, align 8
  %12 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pm_runtime_get_sync(i32 %14)
  %16 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %7, align 8
  %17 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ECCTL2, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readw(i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PWM_POLARITY_INVERSED, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @ECCTL2_APWM_POL_LOW, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %34

29:                                               ; preds = %3
  %30 = load i32, i32* @ECCTL2_APWM_POL_LOW, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %7, align 8
  %37 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ECCTL2, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writew(i32 %35, i64 %40)
  %42 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %7, align 8
  %43 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pm_runtime_put_sync(i32 %45)
  ret i32 0
}

declare dso_local %struct.ecap_pwm_chip* @to_ecap_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
