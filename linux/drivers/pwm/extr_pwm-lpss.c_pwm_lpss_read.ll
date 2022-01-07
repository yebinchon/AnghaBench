; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpss.c_pwm_lpss_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpss.c_pwm_lpss_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_device = type { i32, i32 }
%struct.pwm_lpss_chip = type { i64 }

@PWM_SIZE = common dso_local global i32 0, align 4
@PWM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_device*)* @pwm_lpss_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_lpss_read(%struct.pwm_device* %0) #0 {
  %2 = alloca %struct.pwm_device*, align 8
  %3 = alloca %struct.pwm_lpss_chip*, align 8
  store %struct.pwm_device* %0, %struct.pwm_device** %2, align 8
  %4 = load %struct.pwm_device*, %struct.pwm_device** %2, align 8
  %5 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.pwm_lpss_chip* @to_lpwm(i32 %6)
  store %struct.pwm_lpss_chip* %7, %struct.pwm_lpss_chip** %3, align 8
  %8 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %3, align 8
  %9 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.pwm_device*, %struct.pwm_device** %2, align 8
  %12 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PWM_SIZE, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %10, %16
  %18 = load i64, i64* @PWM, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  ret i32 %20
}

declare dso_local %struct.pwm_lpss_chip* @to_lpwm(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
