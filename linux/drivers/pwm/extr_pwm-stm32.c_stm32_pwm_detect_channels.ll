; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_detect_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_detect_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_pwm = type { i32 }

@TIM_CCER = common dso_local global i32 0, align 4
@TIM_CCER_CCXE = common dso_local global i32 0, align 4
@TIM_CCER_CC1E = common dso_local global i32 0, align 4
@TIM_CCER_CC2E = common dso_local global i32 0, align 4
@TIM_CCER_CC3E = common dso_local global i32 0, align 4
@TIM_CCER_CC4E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_pwm*)* @stm32_pwm_detect_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pwm_detect_channels(%struct.stm32_pwm* %0) #0 {
  %2 = alloca %struct.stm32_pwm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stm32_pwm* %0, %struct.stm32_pwm** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.stm32_pwm*, %struct.stm32_pwm** %2, align 8
  %6 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TIM_CCER, align 4
  %9 = load i32, i32* @TIM_CCER_CCXE, align 4
  %10 = load i32, i32* @TIM_CCER_CCXE, align 4
  %11 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.stm32_pwm*, %struct.stm32_pwm** %2, align 8
  %13 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TIM_CCER, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %3)
  %17 = load %struct.stm32_pwm*, %struct.stm32_pwm** %2, align 8
  %18 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TIM_CCER, align 4
  %21 = load i32, i32* @TIM_CCER_CCXE, align 4
  %22 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 0)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @TIM_CCER_CC1E, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %1
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @TIM_CCER_CC2E, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @TIM_CCER_CC3E, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @TIM_CCER_CC4E, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
