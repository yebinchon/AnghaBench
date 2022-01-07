; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_detect_complementary.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_detect_complementary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_pwm = type { i32, i32 }

@TIM_CCER = common dso_local global i32 0, align 4
@TIM_CCER_CC1NE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_pwm*)* @stm32_pwm_detect_complementary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_pwm_detect_complementary(%struct.stm32_pwm* %0) #0 {
  %2 = alloca %struct.stm32_pwm*, align 8
  %3 = alloca i64, align 8
  store %struct.stm32_pwm* %0, %struct.stm32_pwm** %2, align 8
  %4 = load %struct.stm32_pwm*, %struct.stm32_pwm** %2, align 8
  %5 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @TIM_CCER, align 4
  %8 = load i32, i32* @TIM_CCER_CC1NE, align 4
  %9 = load i32, i32* @TIM_CCER_CC1NE, align 4
  %10 = call i32 @regmap_update_bits(i32 %6, i32 %7, i32 %8, i32 %9)
  %11 = load %struct.stm32_pwm*, %struct.stm32_pwm** %2, align 8
  %12 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TIM_CCER, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i64* %3)
  %16 = load %struct.stm32_pwm*, %struct.stm32_pwm** %2, align 8
  %17 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TIM_CCER, align 4
  %20 = load i32, i32* @TIM_CCER_CC1NE, align 4
  %21 = call i32 @regmap_update_bits(i32 %18, i32 %19, i32 %20, i32 0)
  %22 = load i64, i64* %3, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load %struct.stm32_pwm*, %struct.stm32_pwm** %2, align 8
  %26 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
