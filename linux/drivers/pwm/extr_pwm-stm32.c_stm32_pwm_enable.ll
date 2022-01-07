; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_pwm = type { i32, i64, i32 }

@TIM_CCER_CC1E = common dso_local global i32 0, align 4
@TIM_CCER_CC1NE = common dso_local global i32 0, align 4
@TIM_CCER = common dso_local global i32 0, align 4
@TIM_EGR = common dso_local global i32 0, align 4
@TIM_EGR_UG = common dso_local global i32 0, align 4
@TIM_CR1 = common dso_local global i32 0, align 4
@TIM_CR1_CEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_pwm*, i32)* @stm32_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pwm_enable(%struct.stm32_pwm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_pwm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stm32_pwm* %0, %struct.stm32_pwm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.stm32_pwm*, %struct.stm32_pwm** %4, align 8
  %9 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @clk_enable(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %54

16:                                               ; preds = %2
  %17 = load i32, i32* @TIM_CCER_CC1E, align 4
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %18, 4
  %20 = shl i32 %17, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.stm32_pwm*, %struct.stm32_pwm** %4, align 8
  %22 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load i32, i32* @TIM_CCER_CC1NE, align 4
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %27, 4
  %29 = shl i32 %26, %28
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %25, %16
  %33 = load %struct.stm32_pwm*, %struct.stm32_pwm** %4, align 8
  %34 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TIM_CCER, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.stm32_pwm*, %struct.stm32_pwm** %4, align 8
  %41 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TIM_EGR, align 4
  %44 = load i32, i32* @TIM_EGR_UG, align 4
  %45 = load i32, i32* @TIM_EGR_UG, align 4
  %46 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.stm32_pwm*, %struct.stm32_pwm** %4, align 8
  %48 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @TIM_CR1, align 4
  %51 = load i32, i32* @TIM_CR1_CEN, align 4
  %52 = load i32, i32* @TIM_CR1_CEN, align 4
  %53 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 %51, i32 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %32, %14
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
