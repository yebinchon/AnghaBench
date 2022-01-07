; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-bcm-iproc.c_iproc_pwmc_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-bcm-iproc.c_iproc_pwmc_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32, i8*, i8*, i32 }
%struct.iproc_pwmc = type { i64, i32 }

@IPROC_PWM_CTRL_OFFSET = common dso_local global i64 0, align 8
@PWM_POLARITY_NORMAL = common dso_local global i32 0, align 4
@PWM_POLARITY_INVERSED = common dso_local global i32 0, align 4
@IPROC_PWM_PRESCALE_OFFSET = common dso_local global i64 0, align 8
@IPROC_PWM_PRESCALE_MAX = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@IPROC_PWM_PERIOD_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @iproc_pwmc_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iproc_pwmc_get_state(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.pwm_state*, align 8
  %7 = alloca %struct.iproc_pwmc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %6, align 8
  %13 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %14 = call %struct.iproc_pwmc* @to_iproc_pwmc(%struct.pwm_chip* %13)
  store %struct.iproc_pwmc* %14, %struct.iproc_pwmc** %7, align 8
  %15 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %7, align 8
  %16 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @clk_get_rate(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %7, align 8
  %20 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IPROC_PWM_CTRL_OFFSET, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %27 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @IPROC_PWM_CTRL_EN_SHIFT(i32 %28)
  %30 = call i32 @BIT(i32 %29)
  %31 = and i32 %25, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %35 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %39

36:                                               ; preds = %3
  %37 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %38 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %42 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @IPROC_PWM_CTRL_POLARITY_SHIFT(i32 %43)
  %45 = call i32 @BIT(i32 %44)
  %46 = and i32 %40, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i32, i32* @PWM_POLARITY_NORMAL, align 4
  %50 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %51 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  br label %56

52:                                               ; preds = %39
  %53 = load i32, i32* @PWM_POLARITY_INVERSED, align 4
  %54 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %55 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %48
  %57 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %7, align 8
  %58 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IPROC_PWM_PRESCALE_OFFSET, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @readl(i64 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %65 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @IPROC_PWM_PRESCALE_SHIFT(i32 %66)
  %68 = ashr i32 %63, %67
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* @IPROC_PWM_PRESCALE_MAX, align 4
  %70 = load i32, i32* %12, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* @NSEC_PER_SEC, align 4
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  %75 = mul nsw i32 %72, %74
  store i32 %75, i32* %9, align 4
  %76 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %7, align 8
  %77 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %80 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @IPROC_PWM_PERIOD_OFFSET(i32 %81)
  %83 = add nsw i64 %78, %82
  %84 = call i32 @readl(i64 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @IPROC_PWM_PERIOD_MAX, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* %9, align 4
  %89 = mul nsw i32 %87, %88
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i8* @div64_u64(i32 %90, i32 %91)
  %93 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %94 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load %struct.iproc_pwmc*, %struct.iproc_pwmc** %7, align 8
  %96 = getelementptr inbounds %struct.iproc_pwmc, %struct.iproc_pwmc* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %99 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @IPROC_PWM_DUTY_CYCLE_OFFSET(i32 %100)
  %102 = add nsw i64 %97, %101
  %103 = call i32 @readl(i64 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @IPROC_PWM_PERIOD_MAX, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* %9, align 4
  %108 = mul nsw i32 %106, %107
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i8* @div64_u64(i32 %109, i32 %110)
  %112 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %113 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  ret void
}

declare dso_local %struct.iproc_pwmc* @to_iproc_pwmc(%struct.pwm_chip*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @IPROC_PWM_CTRL_EN_SHIFT(i32) #1

declare dso_local i32 @IPROC_PWM_CTRL_POLARITY_SHIFT(i32) #1

declare dso_local i32 @IPROC_PWM_PRESCALE_SHIFT(i32) #1

declare dso_local i64 @IPROC_PWM_PERIOD_OFFSET(i32) #1

declare dso_local i8* @div64_u64(i32, i32) #1

declare dso_local i64 @IPROC_PWM_DUTY_CYCLE_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
