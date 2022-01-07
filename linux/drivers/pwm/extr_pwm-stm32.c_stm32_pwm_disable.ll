; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_pwm = type { i32, i32, i64 }

@TIM_CCER_CC1E = common dso_local global i32 0, align 4
@TIM_CCER_CC1NE = common dso_local global i32 0, align 4
@TIM_CCER = common dso_local global i32 0, align 4
@TIM_CR1 = common dso_local global i32 0, align 4
@TIM_CR1_CEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_pwm*, i32)* @stm32_pwm_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_pwm_disable(%struct.stm32_pwm* %0, i32 %1) #0 {
  %3 = alloca %struct.stm32_pwm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stm32_pwm* %0, %struct.stm32_pwm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @TIM_CCER_CC1E, align 4
  %7 = load i32, i32* %4, align 4
  %8 = mul nsw i32 %7, 4
  %9 = shl i32 %6, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.stm32_pwm*, %struct.stm32_pwm** %3, align 8
  %11 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @TIM_CCER_CC1NE, align 4
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 %16, 4
  %18 = shl i32 %15, %17
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %14, %2
  %22 = load %struct.stm32_pwm*, %struct.stm32_pwm** %3, align 8
  %23 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TIM_CCER, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 0)
  %28 = load %struct.stm32_pwm*, %struct.stm32_pwm** %3, align 8
  %29 = call i32 @active_channels(%struct.stm32_pwm* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %21
  %32 = load %struct.stm32_pwm*, %struct.stm32_pwm** %3, align 8
  %33 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TIM_CR1, align 4
  %36 = load i32, i32* @TIM_CR1_CEN, align 4
  %37 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %31, %21
  %39 = load %struct.stm32_pwm*, %struct.stm32_pwm** %3, align 8
  %40 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @clk_disable(i32 %41)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @active_channels(%struct.stm32_pwm*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
