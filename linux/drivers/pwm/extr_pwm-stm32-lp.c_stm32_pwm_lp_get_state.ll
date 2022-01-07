; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32-lp.c_stm32_pwm_lp_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32-lp.c_stm32_pwm_lp_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32, i8*, i8*, i8* }
%struct.stm32_pwm_lp = type { i32, i32 }

@STM32_LPTIM_CR = common dso_local global i32 0, align 4
@STM32_LPTIM_ENABLE = common dso_local global i32 0, align 4
@STM32_LPTIM_CFGR = common dso_local global i32 0, align 4
@STM32_LPTIM_PRESC = common dso_local global i32 0, align 4
@STM32_LPTIM_WAVPOL = common dso_local global i32 0, align 4
@STM32_LPTIM_ARR = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@STM32_LPTIM_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @stm32_pwm_lp_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_pwm_lp_get_state(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.pwm_state*, align 8
  %7 = alloca %struct.stm32_pwm_lp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %6, align 8
  %13 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %14 = call %struct.stm32_pwm_lp* @to_stm32_pwm_lp(%struct.pwm_chip* %13)
  store %struct.stm32_pwm_lp* %14, %struct.stm32_pwm_lp** %7, align 8
  %15 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %7, align 8
  %16 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @clk_get_rate(i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %7, align 8
  %20 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @STM32_LPTIM_CR, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %9)
  %24 = load i32, i32* @STM32_LPTIM_ENABLE, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i8* @FIELD_GET(i32 %24, i32 %25)
  %27 = icmp ne i8* %26, null
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %32 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %34 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %3
  %38 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %7, align 8
  %39 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clk_enable(i32 %40)
  br label %42

42:                                               ; preds = %37, %3
  %43 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %7, align 8
  %44 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @STM32_LPTIM_CFGR, align 4
  %47 = call i32 @regmap_read(i32 %45, i32 %46, i32* %9)
  %48 = load i32, i32* @STM32_LPTIM_PRESC, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i8* @FIELD_GET(i32 %48, i32 %49)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @STM32_LPTIM_WAVPOL, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i8* @FIELD_GET(i32 %52, i32 %53)
  %55 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %56 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %7, align 8
  %58 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @STM32_LPTIM_ARR, align 4
  %61 = call i32 @regmap_read(i32 %59, i32 %60, i32* %11)
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* @NSEC_PER_SEC, align 4
  %68 = mul nsw i32 %66, %67
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i64, i64* %8, align 8
  %71 = call i8* @DIV_ROUND_CLOSEST_ULL(i32 %69, i64 %70)
  %72 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %73 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %7, align 8
  %75 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @STM32_LPTIM_CMP, align 4
  %78 = call i32 @regmap_read(i32 %76, i32 %77, i32* %9)
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %10, align 4
  %84 = shl i32 %82, %83
  %85 = load i32, i32* @NSEC_PER_SEC, align 4
  %86 = mul nsw i32 %84, %85
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i64, i64* %8, align 8
  %89 = call i8* @DIV_ROUND_CLOSEST_ULL(i32 %87, i64 %88)
  %90 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %91 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  ret void
}

declare dso_local %struct.stm32_pwm_lp* @to_stm32_pwm_lp(%struct.pwm_chip*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i8* @FIELD_GET(i32, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i8* @DIV_ROUND_CLOSEST_ULL(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
