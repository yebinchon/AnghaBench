; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_fsl_pwm_calculate_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_fsl_pwm_calculate_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_pwm_chip = type { i32* }
%struct.fsl_pwm_periodcfg = type { i32 }

@FSL_PWM_CLK_SYS = common dso_local global i32 0, align 4
@FSL_PWM_CLK_FIX = common dso_local global i64 0, align 8
@FSL_PWM_CLK_EXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_pwm_chip*, i32, %struct.fsl_pwm_periodcfg*)* @fsl_pwm_calculate_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_pwm_calculate_period(%struct.fsl_pwm_chip* %0, i32 %1, %struct.fsl_pwm_periodcfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_pwm_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsl_pwm_periodcfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.fsl_pwm_chip* %0, %struct.fsl_pwm_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.fsl_pwm_periodcfg* %2, %struct.fsl_pwm_periodcfg** %7, align 8
  %13 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @FSL_PWM_CLK_SYS, align 4
  %16 = load %struct.fsl_pwm_periodcfg*, %struct.fsl_pwm_periodcfg** %7, align 8
  %17 = call i32 @fsl_pwm_calculate_period_clk(%struct.fsl_pwm_chip* %13, i32 %14, i32 %15, %struct.fsl_pwm_periodcfg* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %64

21:                                               ; preds = %3
  %22 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %23 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @FSL_PWM_CLK_FIX, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @clk_get_rate(i32 %27)
  store i64 %28, i64* %10, align 8
  %29 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %30 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @FSL_PWM_CLK_EXT, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @clk_get_rate(i32 %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %21
  %40 = load i64, i64* @FSL_PWM_CLK_FIX, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %8, align 4
  %42 = load i64, i64* @FSL_PWM_CLK_EXT, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  br label %49

44:                                               ; preds = %21
  %45 = load i64, i64* @FSL_PWM_CLK_EXT, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load i64, i64* @FSL_PWM_CLK_FIX, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.fsl_pwm_periodcfg*, %struct.fsl_pwm_periodcfg** %7, align 8
  %54 = call i32 @fsl_pwm_calculate_period_clk(%struct.fsl_pwm_chip* %50, i32 %51, i32 %52, %struct.fsl_pwm_periodcfg* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %64

58:                                               ; preds = %49
  %59 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.fsl_pwm_periodcfg*, %struct.fsl_pwm_periodcfg** %7, align 8
  %63 = call i32 @fsl_pwm_calculate_period_clk(%struct.fsl_pwm_chip* %59, i32 %60, i32 %61, %struct.fsl_pwm_periodcfg* %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %58, %57, %20
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @fsl_pwm_calculate_period_clk(%struct.fsl_pwm_chip*, i32, i32, %struct.fsl_pwm_periodcfg*) #1

declare dso_local i64 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
