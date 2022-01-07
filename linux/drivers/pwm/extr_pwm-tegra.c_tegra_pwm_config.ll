; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tegra.c_tegra_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tegra.c_tegra_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.tegra_pwm_chip = type { i32, i32 }

@PWM_DUTY_WIDTH = common dso_local global i32 0, align 4
@PWM_DUTY_SHIFT = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@PWM_SCALE_WIDTH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PWM_SCALE_SHIFT = common dso_local global i64 0, align 8
@PWM_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @tegra_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tegra_pwm_chip*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %17 = call %struct.tegra_pwm_chip* @to_tegra_pwm_chip(%struct.pwm_chip* %16)
  store %struct.tegra_pwm_chip* %17, %struct.tegra_pwm_chip** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %11, align 8
  store i64 0, i64* %14, align 8
  %20 = load i32, i32* @PWM_DUTY_WIDTH, align 4
  %21 = shl i32 1, %20
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %11, align 8
  %24 = mul i64 %23, %22
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = call i8* @DIV_ROUND_CLOSEST_ULL(i64 %25, i64 %27)
  %29 = ptrtoint i8* %28 to i64
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @PWM_DUTY_SHIFT, align 8
  %32 = shl i64 %30, %31
  store i64 %32, i64* %14, align 8
  %33 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %10, align 8
  %34 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PWM_DUTY_WIDTH, align 4
  %37 = ashr i32 %35, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* @NSEC_PER_SEC, align 8
  %40 = mul i64 100, %39
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = call i8* @DIV_ROUND_CLOSEST_ULL(i64 %40, i64 %42)
  %44 = ptrtoint i8* %43 to i64
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = mul i64 100, %45
  %47 = load i64, i64* %12, align 8
  %48 = call i8* @DIV_ROUND_CLOSEST_ULL(i64 %46, i64 %47)
  %49 = ptrtoint i8* %48 to i64
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp ugt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %4
  %53 = load i64, i64* %13, align 8
  %54 = add i64 %53, -1
  store i64 %54, i64* %13, align 8
  br label %55

55:                                               ; preds = %52, %4
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* @PWM_SCALE_WIDTH, align 8
  %58 = lshr i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %102

63:                                               ; preds = %55
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @PWM_SCALE_SHIFT, align 8
  %66 = shl i64 %64, %65
  %67 = load i64, i64* %14, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %14, align 8
  %69 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %70 = call i32 @pwm_is_enabled(%struct.pwm_device* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %63
  %73 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %10, align 8
  %74 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @clk_prepare_enable(i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %15, align 4
  store i32 %80, i32* %5, align 4
  br label %102

81:                                               ; preds = %72
  br label %86

82:                                               ; preds = %63
  %83 = load i64, i64* @PWM_ENABLE, align 8
  %84 = load i64, i64* %14, align 8
  %85 = or i64 %84, %83
  store i64 %85, i64* %14, align 8
  br label %86

86:                                               ; preds = %82, %81
  %87 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %10, align 8
  %88 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %89 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %14, align 8
  %92 = call i32 @pwm_writel(%struct.tegra_pwm_chip* %87, i32 %90, i64 %91)
  %93 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %94 = call i32 @pwm_is_enabled(%struct.pwm_device* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %86
  %97 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %10, align 8
  %98 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @clk_disable_unprepare(i32 %99)
  br label %101

101:                                              ; preds = %96, %86
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %79, %60
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.tegra_pwm_chip* @to_tegra_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i8* @DIV_ROUND_CLOSEST_ULL(i64, i64) #1

declare dso_local i32 @pwm_is_enabled(%struct.pwm_device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pwm_writel(%struct.tegra_pwm_chip*, i32, i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
