; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpss.c_pwm_lpss_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpss.c_pwm_lpss_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i64, i64, i32, i32 }
%struct.pwm_lpss_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@PWM_ON_TIME_DIV_MASK = common dso_local global i32 0, align 4
@PWM_BASE_UNIT_SHIFT = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@PWM_POLARITY_NORMAL = common dso_local global i32 0, align 4
@PWM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @pwm_lpss_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwm_lpss_get_state(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.pwm_state*, align 8
  %7 = alloca %struct.pwm_lpss_chip*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %6, align 8
  %13 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %14 = call %struct.pwm_lpss_chip* @to_lpwm(%struct.pwm_chip* %13)
  store %struct.pwm_lpss_chip* %14, %struct.pwm_lpss_chip** %7, align 8
  %15 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %7, align 8
  %16 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @BIT(i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %22 = call i32 @pwm_lpss_read(%struct.pwm_device* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @PWM_ON_TIME_DIV_MASK, align 4
  %25 = and i32 %23, %24
  %26 = sub nsw i32 255, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @PWM_BASE_UNIT_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %8, align 8
  %33 = sub i64 %32, 1
  %34 = and i64 %31, %33
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %7, align 8
  %37 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = mul i64 %35, %40
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %8, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @do_div(i64 %42, i32 %44)
  %46 = load i64, i64* %10, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %3
  %49 = load i64, i64* @NSEC_PER_SEC, align 8
  %50 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %51 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %58

52:                                               ; preds = %3
  %53 = load i64, i64* @NSEC_PER_SEC, align 8
  %54 = load i64, i64* %10, align 8
  %55 = udiv i64 %53, %54
  %56 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %57 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %52, %48
  %59 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %60 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = mul i64 %62, %61
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @do_div(i64 %64, i32 255)
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %68 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* @PWM_POLARITY_NORMAL, align 4
  %70 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %71 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @PWM_ENABLE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %80 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %82 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %58
  %86 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %87 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pm_runtime_get(i32 %88)
  br label %90

90:                                               ; preds = %85, %58
  ret void
}

declare dso_local %struct.pwm_lpss_chip* @to_lpwm(%struct.pwm_chip*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @pwm_lpss_read(%struct.pwm_device*) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @pm_runtime_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
