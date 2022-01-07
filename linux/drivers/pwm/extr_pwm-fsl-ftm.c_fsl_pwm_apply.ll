; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_fsl_pwm_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_fsl_pwm_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32, %struct.pwm_state }
%struct.pwm_state = type { i64 }
%struct.fsl_pwm_chip = type { i32, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }

@FTM_OUTMASK = common dso_local global i32 0, align 4
@FSL_PWM_CLK_CNTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @fsl_pwm_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_pwm_apply(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.pwm_state*, align 8
  %7 = alloca %struct.fsl_pwm_chip*, align 8
  %8 = alloca %struct.pwm_state*, align 8
  %9 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %6, align 8
  %10 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %11 = call %struct.fsl_pwm_chip* @to_fsl_chip(%struct.pwm_chip* %10)
  store %struct.fsl_pwm_chip* %11, %struct.fsl_pwm_chip** %7, align 8
  %12 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %13 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %12, i32 0, i32 1
  store %struct.pwm_state* %13, %struct.pwm_state** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %7, align 8
  %15 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %18 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %58, label %21

21:                                               ; preds = %3
  %22 = load %struct.pwm_state*, %struct.pwm_state** %8, align 8
  %23 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %21
  %27 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %7, align 8
  %28 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @FTM_OUTMASK, align 4
  %31 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %32 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @BIT(i32 %33)
  %35 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %36 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @BIT(i32 %37)
  %39 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %34, i32 %38)
  %40 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %7, align 8
  %41 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @FSL_PWM_CLK_CNTEN, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @clk_disable_unprepare(i32 %45)
  %47 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %7, align 8
  %48 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %7, align 8
  %51 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @clk_disable_unprepare(i32 %55)
  br label %57

57:                                               ; preds = %26, %21
  br label %117

58:                                               ; preds = %3
  %59 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %7, align 8
  %60 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %61 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %62 = call i32 @fsl_pwm_apply_config(%struct.fsl_pwm_chip* %59, %struct.pwm_device* %60, %struct.pwm_state* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %117

66:                                               ; preds = %58
  %67 = load %struct.pwm_state*, %struct.pwm_state** %8, align 8
  %68 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %116, label %71

71:                                               ; preds = %66
  %72 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %7, align 8
  %73 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %7, align 8
  %76 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @clk_prepare_enable(i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %117

85:                                               ; preds = %71
  %86 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %7, align 8
  %87 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @FSL_PWM_CLK_CNTEN, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @clk_prepare_enable(i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %85
  %96 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %7, align 8
  %97 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %7, align 8
  %100 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @clk_disable_unprepare(i32 %104)
  br label %117

106:                                              ; preds = %85
  %107 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %7, align 8
  %108 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @FTM_OUTMASK, align 4
  %111 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %112 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @BIT(i32 %113)
  %115 = call i32 @regmap_update_bits(i32 %109, i32 %110, i32 %114, i32 0)
  br label %116

116:                                              ; preds = %106, %66
  br label %117

117:                                              ; preds = %116, %95, %84, %65, %57
  %118 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %7, align 8
  %119 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local %struct.fsl_pwm_chip* @to_fsl_chip(%struct.pwm_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @fsl_pwm_apply_config(%struct.fsl_pwm_chip*, %struct.pwm_device*, %struct.pwm_state*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
