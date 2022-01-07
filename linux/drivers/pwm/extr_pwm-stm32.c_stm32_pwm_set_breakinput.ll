; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_set_breakinput.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_set_breakinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_pwm = type { i32 }

@TIM_BDTR_BKE = common dso_local global i32 0, align 4
@TIM_BDTR_BK2E = common dso_local global i32 0, align 4
@TIM_BDTR_BKF_SHIFT = common dso_local global i32 0, align 4
@TIM_BDTR_BK2F_SHIFT = common dso_local global i32 0, align 4
@TIM_BDTR_BKP = common dso_local global i32 0, align 4
@TIM_BDTR_BKF = common dso_local global i32 0, align 4
@TIM_BDTR_BK2P = common dso_local global i32 0, align 4
@TIM_BDTR_BK2F = common dso_local global i32 0, align 4
@TIM_BDTR_BKF_MASK = common dso_local global i32 0, align 4
@TIM_BDTR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_pwm*, i32, i32, i32)* @stm32_pwm_set_breakinput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pwm_set_breakinput(%struct.stm32_pwm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.stm32_pwm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.stm32_pwm* %0, %struct.stm32_pwm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @TIM_BDTR_BKE, align 4
  br label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @TIM_BDTR_BK2E, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @TIM_BDTR_BKF_SHIFT, align 4
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @TIM_BDTR_BK2F_SHIFT, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* @TIM_BDTR_BKE, align 4
  %33 = load i32, i32* @TIM_BDTR_BKP, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @TIM_BDTR_BKF, align 4
  %36 = or i32 %34, %35
  br label %43

37:                                               ; preds = %27
  %38 = load i32, i32* @TIM_BDTR_BK2E, align 4
  %39 = load i32, i32* @TIM_BDTR_BK2P, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @TIM_BDTR_BK2F, align 4
  %42 = or i32 %40, %41
  br label %43

43:                                               ; preds = %37, %31
  %44 = phi i32 [ %36, %31 ], [ %42, %37 ]
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* @TIM_BDTR_BKP, align 4
  %50 = load i32, i32* @TIM_BDTR_BK2P, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %12, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %48, %43
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @TIM_BDTR_BKF_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* %10, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %12, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %12, align 4
  %62 = load %struct.stm32_pwm*, %struct.stm32_pwm** %5, align 8
  %63 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @TIM_BDTR, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @regmap_update_bits(i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.stm32_pwm*, %struct.stm32_pwm** %5, align 8
  %70 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @TIM_BDTR, align 4
  %73 = call i32 @regmap_read(i32 %71, i32 %72, i32* %12)
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %54
  br label %82

79:                                               ; preds = %54
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  br label %82

82:                                               ; preds = %79, %78
  %83 = phi i32 [ 0, %78 ], [ %81, %79 ]
  ret i32 %83
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
