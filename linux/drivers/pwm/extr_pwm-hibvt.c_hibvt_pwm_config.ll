; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-hibvt.c_hibvt_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-hibvt.c_hibvt_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.hibvt_pwm_chip = type { i32, i32 }

@PWM_PERIOD_MASK = common dso_local global i32 0, align 4
@PWM_DUTY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @hibvt_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hibvt_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hibvt_pwm_chip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %14 = call %struct.hibvt_pwm_chip* @to_hibvt_pwm_chip(%struct.pwm_chip* %13)
  store %struct.hibvt_pwm_chip* %14, %struct.hibvt_pwm_chip** %9, align 8
  %15 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %9, align 8
  %16 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_get_rate(i32 %17)
  %19 = call i32 @div_u64(i32 %18, i32 1000000)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 %20, %21
  %23 = call i32 @div_u64(i32 %22, i32 1000)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @div_u64(i32 %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %9, align 8
  %30 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %33 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PWM_CFG0_ADDR(i32 %34)
  %36 = load i32, i32* @PWM_PERIOD_MASK, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @hibvt_pwm_set_bits(i32 %31, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.hibvt_pwm_chip*, %struct.hibvt_pwm_chip** %9, align 8
  %40 = getelementptr inbounds %struct.hibvt_pwm_chip, %struct.hibvt_pwm_chip* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %43 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PWM_CFG1_ADDR(i32 %44)
  %46 = load i32, i32* @PWM_DUTY_MASK, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @hibvt_pwm_set_bits(i32 %41, i32 %45, i32 %46, i32 %47)
  ret void
}

declare dso_local %struct.hibvt_pwm_chip* @to_hibvt_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @hibvt_pwm_set_bits(i32, i32, i32, i32) #1

declare dso_local i32 @PWM_CFG0_ADDR(i32) #1

declare dso_local i32 @PWM_CFG1_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
