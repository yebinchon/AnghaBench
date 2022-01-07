; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_set_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_set_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_pwm = type { i32, i64 }

@TIM_CCER_CC1P = common dso_local global i32 0, align 4
@TIM_CCER_CC1NP = common dso_local global i32 0, align 4
@TIM_CCER = common dso_local global i32 0, align 4
@PWM_POLARITY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_pwm*, i32, i32)* @stm32_pwm_set_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pwm_set_polarity(%struct.stm32_pwm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stm32_pwm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stm32_pwm* %0, %struct.stm32_pwm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @TIM_CCER_CC1P, align 4
  %9 = load i32, i32* %5, align 4
  %10 = mul nsw i32 %9, 4
  %11 = shl i32 %8, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.stm32_pwm*, %struct.stm32_pwm** %4, align 8
  %13 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32, i32* @TIM_CCER_CC1NP, align 4
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %18, 4
  %20 = shl i32 %17, %19
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %16, %3
  %24 = load %struct.stm32_pwm*, %struct.stm32_pwm** %4, align 8
  %25 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @TIM_CCER, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PWM_POLARITY_NORMAL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ 0, %32 ], [ %34, %33 ]
  %37 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %28, i32 %36)
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
