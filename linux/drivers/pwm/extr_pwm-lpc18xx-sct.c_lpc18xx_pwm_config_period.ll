; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc18xx-sct.c_lpc18xx_pwm_config_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc18xx-sct.c_lpc18xx_pwm_config_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.lpc18xx_pwm_chip = type { i32, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, i32)* @lpc18xx_pwm_config_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc18xx_pwm_config_period(%struct.pwm_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpc18xx_pwm_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %8 = call %struct.lpc18xx_pwm_chip* @to_lpc18xx_pwm_chip(%struct.pwm_chip* %7)
  store %struct.lpc18xx_pwm_chip* %8, %struct.lpc18xx_pwm_chip** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %5, align 8
  %11 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NSEC_PER_SEC, align 4
  %16 = call i32 @do_div(i32 %14, i32 %15)
  %17 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %5, align 8
  %18 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %5, align 8
  %19 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @LPC18XX_PWM_MATCH(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %23, 1
  %25 = call i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip* %17, i32 %21, i64 %24)
  %26 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %5, align 8
  %27 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %5, align 8
  %28 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @LPC18XX_PWM_MATCHREL(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, 1
  %34 = call i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip* %26, i32 %30, i64 %33)
  ret void
}

declare dso_local %struct.lpc18xx_pwm_chip* @to_lpc18xx_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip*, i32, i64) #1

declare dso_local i32 @LPC18XX_PWM_MATCH(i32) #1

declare dso_local i32 @LPC18XX_PWM_MATCHREL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
