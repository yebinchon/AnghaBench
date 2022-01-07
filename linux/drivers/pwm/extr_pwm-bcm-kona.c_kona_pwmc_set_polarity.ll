; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-bcm-kona.c_kona_pwmc_set_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-bcm-kona.c_kona_pwmc_set_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.kona_pwmc = type { i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@PWM_CONTROL_OFFSET = common dso_local global i64 0, align 8
@PWM_POLARITY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32)* @kona_pwmc_set_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kona_pwmc_set_polarity(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kona_pwmc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %13 = call %struct.kona_pwmc* @to_kona_pwmc(%struct.pwm_chip* %12)
  store %struct.kona_pwmc* %13, %struct.kona_pwmc** %8, align 8
  %14 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %15 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.kona_pwmc*, %struct.kona_pwmc** %8, align 8
  %18 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @clk_prepare_enable(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %25 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %71

30:                                               ; preds = %3
  %31 = load %struct.kona_pwmc*, %struct.kona_pwmc** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @kona_pwmc_prepare_for_settings(%struct.kona_pwmc* %31, i32 %32)
  %34 = load %struct.kona_pwmc*, %struct.kona_pwmc** %8, align 8
  %35 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PWM_CONTROL_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @PWM_POLARITY_NORMAL, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %30
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @PWM_CONTROL_POLARITY_SHIFT(i32 %44)
  %46 = shl i32 1, %45
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  br label %56

49:                                               ; preds = %30
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @PWM_CONTROL_POLARITY_SHIFT(i32 %50)
  %52 = shl i32 1, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %49, %43
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.kona_pwmc*, %struct.kona_pwmc** %8, align 8
  %59 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PWM_CONTROL_OFFSET, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  %64 = load %struct.kona_pwmc*, %struct.kona_pwmc** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @kona_pwmc_apply_settings(%struct.kona_pwmc* %64, i32 %65)
  %67 = load %struct.kona_pwmc*, %struct.kona_pwmc** %8, align 8
  %68 = getelementptr inbounds %struct.kona_pwmc, %struct.kona_pwmc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @clk_disable_unprepare(i32 %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %56, %23
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.kona_pwmc* @to_kona_pwmc(%struct.pwm_chip*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @kona_pwmc_prepare_for_settings(%struct.kona_pwmc*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @PWM_CONTROL_POLARITY_SHIFT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @kona_pwmc_apply_settings(%struct.kona_pwmc*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
