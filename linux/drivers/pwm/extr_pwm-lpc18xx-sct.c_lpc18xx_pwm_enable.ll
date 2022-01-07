; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc18xx-sct.c_lpc18xx_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc18xx-sct.c_lpc18xx_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.lpc18xx_pwm_chip = type { i32 }
%struct.lpc18xx_pwm_data = type { i32 }

@LPC18XX_PWM_EVCTRL_COMB_MATCH = common dso_local global i32 0, align 4
@LPC18XX_PWM_EVSTATEMSK_ALL = common dso_local global i32 0, align 4
@PWM_POLARITY_NORMAL = common dso_local global i64 0, align 8
@LPC18XX_PWM_RES_SET = common dso_local global i32 0, align 4
@LPC18XX_PWM_RES_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @lpc18xx_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_pwm_enable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.lpc18xx_pwm_chip*, align 8
  %6 = alloca %struct.lpc18xx_pwm_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %10 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %11 = call %struct.lpc18xx_pwm_chip* @to_lpc18xx_pwm_chip(%struct.pwm_chip* %10)
  store %struct.lpc18xx_pwm_chip* %11, %struct.lpc18xx_pwm_chip** %5, align 8
  %12 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %13 = call %struct.lpc18xx_pwm_data* @pwm_get_chip_data(%struct.pwm_device* %12)
  store %struct.lpc18xx_pwm_data* %13, %struct.lpc18xx_pwm_data** %6, align 8
  %14 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %5, align 8
  %15 = load %struct.lpc18xx_pwm_data*, %struct.lpc18xx_pwm_data** %6, align 8
  %16 = getelementptr inbounds %struct.lpc18xx_pwm_data, %struct.lpc18xx_pwm_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @LPC18XX_PWM_EVCTRL(i32 %17)
  %19 = load %struct.lpc18xx_pwm_data*, %struct.lpc18xx_pwm_data** %6, align 8
  %20 = getelementptr inbounds %struct.lpc18xx_pwm_data, %struct.lpc18xx_pwm_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @LPC18XX_PWM_EVCTRL_MATCH(i32 %21)
  %23 = load i32, i32* @LPC18XX_PWM_EVCTRL_COMB_MATCH, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip* %14, i32 %18, i32 %24)
  %26 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %5, align 8
  %27 = load %struct.lpc18xx_pwm_data*, %struct.lpc18xx_pwm_data** %6, align 8
  %28 = getelementptr inbounds %struct.lpc18xx_pwm_data, %struct.lpc18xx_pwm_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @LPC18XX_PWM_EVSTATEMSK(i32 %29)
  %31 = load i32, i32* @LPC18XX_PWM_EVSTATEMSK_ALL, align 4
  %32 = call i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip* %26, i32 %30, i32 %31)
  %33 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %34 = call i64 @pwm_get_polarity(%struct.pwm_device* %33)
  %35 = load i64, i64* @PWM_POLARITY_NORMAL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %2
  %38 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %5, align 8
  %39 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  %41 = load %struct.lpc18xx_pwm_data*, %struct.lpc18xx_pwm_data** %6, align 8
  %42 = getelementptr inbounds %struct.lpc18xx_pwm_data, %struct.lpc18xx_pwm_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @LPC18XX_PWM_RES_SET, align 4
  store i32 %44, i32* %7, align 4
  br label %53

45:                                               ; preds = %2
  %46 = load %struct.lpc18xx_pwm_data*, %struct.lpc18xx_pwm_data** %6, align 8
  %47 = getelementptr inbounds %struct.lpc18xx_pwm_data, %struct.lpc18xx_pwm_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %8, align 4
  %49 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %5, align 8
  %50 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @LPC18XX_PWM_RES_CLEAR, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %45, %37
  %54 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %5, align 8
  %55 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %56 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @LPC18XX_PWM_OUTPUTSET(i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = call i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip* %54, i32 %58, i32 %60)
  %62 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %5, align 8
  %63 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %64 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @LPC18XX_PWM_OUTPUTCL(i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @BIT(i32 %67)
  %69 = call i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip* %62, i32 %66, i32 %68)
  %70 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %5, align 8
  %71 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @lpc18xx_pwm_set_conflict_res(%struct.lpc18xx_pwm_chip* %70, %struct.pwm_device* %71, i32 %72)
  ret i32 0
}

declare dso_local %struct.lpc18xx_pwm_chip* @to_lpc18xx_pwm_chip(%struct.pwm_chip*) #1

declare dso_local %struct.lpc18xx_pwm_data* @pwm_get_chip_data(%struct.pwm_device*) #1

declare dso_local i32 @lpc18xx_pwm_writel(%struct.lpc18xx_pwm_chip*, i32, i32) #1

declare dso_local i32 @LPC18XX_PWM_EVCTRL(i32) #1

declare dso_local i32 @LPC18XX_PWM_EVCTRL_MATCH(i32) #1

declare dso_local i32 @LPC18XX_PWM_EVSTATEMSK(i32) #1

declare dso_local i64 @pwm_get_polarity(%struct.pwm_device*) #1

declare dso_local i32 @LPC18XX_PWM_OUTPUTSET(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @LPC18XX_PWM_OUTPUTCL(i32) #1

declare dso_local i32 @lpc18xx_pwm_set_conflict_res(%struct.lpc18xx_pwm_chip*, %struct.pwm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
