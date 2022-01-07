; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc18xx-sct.c_lpc18xx_pwm_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpc18xx-sct.c_lpc18xx_pwm_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.lpc18xx_pwm_chip = type { i32, i32 }
%struct.lpc18xx_pwm_data = type { i64 }

@LPC18XX_PWM_EVENT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"maximum number of simultaneous channels reached\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @lpc18xx_pwm_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_pwm_request(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.lpc18xx_pwm_chip*, align 8
  %7 = alloca %struct.lpc18xx_pwm_data*, align 8
  %8 = alloca i64, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %9 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %10 = call %struct.lpc18xx_pwm_chip* @to_lpc18xx_pwm_chip(%struct.pwm_chip* %9)
  store %struct.lpc18xx_pwm_chip* %10, %struct.lpc18xx_pwm_chip** %6, align 8
  %11 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %12 = call %struct.lpc18xx_pwm_data* @pwm_get_chip_data(%struct.pwm_device* %11)
  store %struct.lpc18xx_pwm_data* %12, %struct.lpc18xx_pwm_data** %7, align 8
  %13 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %6, align 8
  %14 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %13, i32 0, i32 0
  %15 = load i64, i64* @LPC18XX_PWM_EVENT_MAX, align 8
  %16 = call i64 @find_first_zero_bit(i32* %14, i64 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @LPC18XX_PWM_EVENT_MAX, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %6, align 8
  %22 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %35

27:                                               ; preds = %2
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.lpc18xx_pwm_chip*, %struct.lpc18xx_pwm_chip** %6, align 8
  %30 = getelementptr inbounds %struct.lpc18xx_pwm_chip, %struct.lpc18xx_pwm_chip* %29, i32 0, i32 0
  %31 = call i32 @set_bit(i64 %28, i32* %30)
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.lpc18xx_pwm_data*, %struct.lpc18xx_pwm_data** %7, align 8
  %34 = getelementptr inbounds %struct.lpc18xx_pwm_data, %struct.lpc18xx_pwm_data* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %27, %20
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.lpc18xx_pwm_chip* @to_lpc18xx_pwm_chip(%struct.pwm_chip*) #1

declare dso_local %struct.lpc18xx_pwm_data* @pwm_get_chip_data(%struct.pwm_device*) #1

declare dso_local i64 @find_first_zero_bit(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @set_bit(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
