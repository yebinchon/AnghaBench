; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-zx.c_zx_pwm_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-zx.c_zx_pwm_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32, i8*, i8*, i32 }
%struct.zx_pwm_chip = type { i32 }

@ZX_PWM_MODE = common dso_local global i32 0, align 4
@ZX_PWM_POLAR = common dso_local global i32 0, align 4
@PWM_POLARITY_NORMAL = common dso_local global i32 0, align 4
@PWM_POLARITY_INVERSED = common dso_local global i32 0, align 4
@ZX_PWM_EN = common dso_local global i32 0, align 4
@ZX_PWM_CLKDIV_MASK = common dso_local global i32 0, align 4
@ZX_PWM_CLKDIV_SHIFT = common dso_local global i32 0, align 4
@ZX_PWM_PERIOD = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@ZX_PWM_DUTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @zx_pwm_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_pwm_get_state(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.pwm_state*, align 8
  %7 = alloca %struct.zx_pwm_chip*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %6, align 8
  %12 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %13 = call %struct.zx_pwm_chip* @to_zx_pwm_chip(%struct.pwm_chip* %12)
  store %struct.zx_pwm_chip* %13, %struct.zx_pwm_chip** %7, align 8
  %14 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %7, align 8
  %15 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %16 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ZX_PWM_MODE, align 4
  %19 = call i8* @zx_pwm_readl(%struct.zx_pwm_chip* %14, i32 %17, i32 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @ZX_PWM_POLAR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @PWM_POLARITY_NORMAL, align 4
  %27 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %28 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  br label %33

29:                                               ; preds = %3
  %30 = load i32, i32* @PWM_POLARITY_INVERSED, align 4
  %31 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %32 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @ZX_PWM_EN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %40 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %44

41:                                               ; preds = %33
  %42 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %43 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @ZX_PWM_CLKDIV_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @ZX_PWM_CLKDIV_SHIFT, align 4
  %49 = ashr i32 %47, %48
  store i32 %49, i32* %9, align 4
  %50 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %7, align 8
  %51 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @clk_get_rate(i32 %52)
  store i64 %53, i64* %8, align 8
  %54 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %7, align 8
  %55 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %56 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ZX_PWM_PERIOD, align 4
  %59 = call i8* @zx_pwm_readl(%struct.zx_pwm_chip* %54, i32 %57, i32 %58)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @NSEC_PER_SEC, align 4
  %63 = mul i32 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = mul i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i64, i64* %8, align 8
  %68 = call i8* @DIV_ROUND_CLOSEST_ULL(i32 %66, i64 %67)
  %69 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %70 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %7, align 8
  %72 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %73 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ZX_PWM_DUTY, align 4
  %76 = call i8* @zx_pwm_readl(%struct.zx_pwm_chip* %71, i32 %74, i32 %75)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @NSEC_PER_SEC, align 4
  %80 = mul i32 %78, %79
  %81 = load i32, i32* %11, align 4
  %82 = mul i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i64, i64* %8, align 8
  %85 = call i8* @DIV_ROUND_CLOSEST_ULL(i32 %83, i64 %84)
  %86 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %87 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  ret void
}

declare dso_local %struct.zx_pwm_chip* @to_zx_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i8* @zx_pwm_readl(%struct.zx_pwm_chip*, i32, i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i8* @DIV_ROUND_CLOSEST_ULL(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
