; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc18xx-sct.c_lpc18xx_pwm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc18xx-sct.c_lpc18xx_pwm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.lpc18xx_pwm_chip = type { i32 }
%struct.lpc18xx_pwm_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*)* @lpc18xx_pwm_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc18xx_pwm_disable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.lpc18xx_pwm_chip*, align 8
  %6 = alloca %struct.lpc18xx_pwm_data*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %7 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %8 = call %struct.lpc18xx_pwm_chip* @to_lpc18xx_pwm_chip(%struct.pwm_chip* %7)
  store %struct.lpc18xx_pwm_chip* %8, %struct.lpc18xx_pwm_chip** %5, align 8
  %9 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %10 = call %struct.lpc18xx_pwm_data* @pwm_get_chip_data(%struct.pwm_device* %9)
  store %struct.lpc18xx_pwm_data* %10, %struct.lpc18xx_pwm_data** %6, align 8
  %11 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %5, align 8
  %12 = load %struct.lpc18xx_pwm_data*, %struct.lpc18xx_pwm_data** %6, align 8
  %13 = getelementptr inbounds %struct.lpc18xx_pwm_data, %struct.lpc18xx_pwm_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @LPC18XX_PWM_EVCTRL(i32 %14)
  %16 = call i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip* %11, i32 %15, i32 0)
  %17 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %5, align 8
  %18 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %19 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @LPC18XX_PWM_OUTPUTSET(i32 %20)
  %22 = call i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip* %17, i32 %21, i32 0)
  %23 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %5, align 8
  %24 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %25 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @LPC18XX_PWM_OUTPUTCL(i32 %26)
  %28 = call i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip* %23, i32 %27, i32 0)
  ret void
}

declare dso_local %struct.lpc18xx_pwm_chip* @to_lpc18xx_pwm_chip(%struct.pwm_chip*) #1

declare dso_local %struct.lpc18xx_pwm_data* @pwm_get_chip_data(%struct.pwm_device*) #1

declare dso_local i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip*, i32, i32) #1

declare dso_local i32 @LPC18XX_PWM_EVCTRL(i32) #1

declare dso_local i32 @LPC18XX_PWM_OUTPUTSET(i32) #1

declare dso_local i32 @LPC18XX_PWM_OUTPUTCL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
