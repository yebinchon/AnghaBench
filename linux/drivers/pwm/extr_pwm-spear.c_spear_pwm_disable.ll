; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-spear.c_spear_pwm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-spear.c_spear_pwm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.spear_pwm_chip = type { i32 }

@PWMCR = common dso_local global i32 0, align 4
@PWMCR_PWM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*)* @spear_pwm_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spear_pwm_disable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.spear_pwm_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %7 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %8 = call %struct.spear_pwm_chip* @to_spear_pwm_chip(%struct.pwm_chip* %7)
  store %struct.spear_pwm_chip* %8, %struct.spear_pwm_chip** %5, align 8
  %9 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %10 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %11 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PWMCR, align 4
  %14 = call i32 @spear_pwm_readl(%struct.spear_pwm_chip* %9, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @PWMCR_PWM_ENABLE, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %20 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %21 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PWMCR, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @spear_pwm_writel(%struct.spear_pwm_chip* %19, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %5, align 8
  %27 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_disable(i32 %28)
  ret void
}

declare dso_local %struct.spear_pwm_chip* @to_spear_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @spear_pwm_readl(%struct.spear_pwm_chip*, i32, i32) #1

declare dso_local i32 @spear_pwm_writel(%struct.spear_pwm_chip*, i32, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
