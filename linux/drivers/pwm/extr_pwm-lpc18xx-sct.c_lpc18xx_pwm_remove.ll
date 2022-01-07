; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc18xx-sct.c_lpc18xx_pwm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc18xx-sct.c_lpc18xx_pwm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lpc18xx_pwm_chip = type { i32, i32 }

@LPC18XX_PWM_CTRL = common dso_local global i32 0, align 4
@LPC18XX_PWM_CTRL_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc18xx_pwm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_pwm_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.lpc18xx_pwm_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.lpc18xx_pwm_chip* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.lpc18xx_pwm_chip* %6, %struct.lpc18xx_pwm_chip** %3, align 8
  %7 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %3, align 8
  %8 = load i32, i32* @LPC18XX_PWM_CTRL, align 4
  %9 = call i32 @lpc18xx_pwm_readl(%struct.lpc18xx_pwm_chip* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %3, align 8
  %11 = load i32, i32* @LPC18XX_PWM_CTRL, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @LPC18XX_PWM_CTRL_HALT, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip* %10, i32 %11, i32 %14)
  %16 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %3, align 8
  %17 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_disable_unprepare(i32 %18)
  %20 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %3, align 8
  %21 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %20, i32 0, i32 0
  %22 = call i32 @pwmchip_remove(i32* %21)
  ret i32 %22
}

declare dso_local %struct.lpc18xx_pwm_chip* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @lpc18xx_pwm_readl(%struct.lpc18xx_pwm_chip*, i32) #1

declare dso_local i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pwmchip_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
