; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc18xx-sct.c_lpc18xx_pwm_config_duty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc18xx-sct.c_lpc18xx_pwm_config_duty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.lpc18xx_pwm_chip = type { i32 }
%struct.lpc18xx_pwm_data = type { i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*, i32)* @lpc18xx_pwm_config_duty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc18xx_pwm_config_duty(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpc18xx_pwm_chip*, align 8
  %8 = alloca %struct.lpc18xx_pwm_data*, align 8
  %9 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %11 = call %struct.lpc18xx_pwm_chip* @to_lpc18xx_pwm_chip(%struct.pwm_chip* %10)
  store %struct.lpc18xx_pwm_chip* %11, %struct.lpc18xx_pwm_chip** %7, align 8
  %12 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %13 = call %struct.lpc18xx_pwm_data* @pwm_get_chip_data(%struct.pwm_device* %12)
  store %struct.lpc18xx_pwm_data* %13, %struct.lpc18xx_pwm_data** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %7, align 8
  %16 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @NSEC_PER_SEC, align 4
  %21 = call i32 @do_div(i32 %19, i32 %20)
  %22 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %7, align 8
  %23 = load %struct.lpc18xx_pwm_data*, %struct.lpc18xx_pwm_data** %8, align 8
  %24 = getelementptr inbounds %struct.lpc18xx_pwm_data, %struct.lpc18xx_pwm_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @LPC18XX_PWM_MATCH(i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip* %22, i32 %26, i32 %27)
  %29 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %7, align 8
  %30 = load %struct.lpc18xx_pwm_data*, %struct.lpc18xx_pwm_data** %8, align 8
  %31 = getelementptr inbounds %struct.lpc18xx_pwm_data, %struct.lpc18xx_pwm_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @LPC18XX_PWM_MATCHREL(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip* %29, i32 %33, i32 %34)
  ret void
}

declare dso_local %struct.lpc18xx_pwm_chip* @to_lpc18xx_pwm_chip(%struct.pwm_chip*) #1

declare dso_local %struct.lpc18xx_pwm_data* @pwm_get_chip_data(%struct.pwm_device*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip*, i32, i32) #1

declare dso_local i32 @LPC18XX_PWM_MATCH(i32) #1

declare dso_local i32 @LPC18XX_PWM_MATCHREL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
