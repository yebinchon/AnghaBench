; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel.c_atmel_pwm_ch_writel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel.c_atmel_pwm_ch_writel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_pwm_chip = type { i64 }

@PWM_CH_REG_OFFSET = common dso_local global i32 0, align 4
@PWM_CH_REG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_pwm_chip*, i32, i64, i64)* @atmel_pwm_ch_writel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_pwm_ch_writel(%struct.atmel_pwm_chip* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.atmel_pwm_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.atmel_pwm_chip* %0, %struct.atmel_pwm_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* @PWM_CH_REG_OFFSET, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @PWM_CH_REG_SIZE, align 4
  %13 = mul i32 %11, %12
  %14 = add i32 %10, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.atmel_pwm_chip*, %struct.atmel_pwm_chip** %5, align 8
  %18 = getelementptr inbounds %struct.atmel_pwm_chip, %struct.atmel_pwm_chip* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %9, align 8
  %21 = add i64 %19, %20
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %21, %22
  %24 = call i32 @writel_relaxed(i64 %16, i64 %23)
  ret void
}

declare dso_local i32 @writel_relaxed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
