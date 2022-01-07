; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx27.c_pwm_imx27_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx27.c_pwm_imx27_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32, i8*, i8*, i32 }
%struct.pwm_imx27_chip = type { i64, i32 }

@MX3_PWMCR = common dso_local global i64 0, align 8
@MX3_PWMCR_EN = common dso_local global i32 0, align 4
@MX3_PWMCR_POUTC = common dso_local global i32 0, align 4
@PWM_POLARITY_NORMAL = common dso_local global i32 0, align 4
@PWM_POLARITY_INVERSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"can't set polarity, output disconnected\00", align 1
@MX3_PWMPR = common dso_local global i64 0, align 8
@MX3_PWMPR_MAX = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@MX3_PWMSAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @pwm_imx27_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwm_imx27_get_state(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.pwm_state*, align 8
  %7 = alloca %struct.pwm_imx27_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %6, align 8
  %14 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %15 = call %struct.pwm_imx27_chip* @to_pwm_imx27_chip(%struct.pwm_chip* %14)
  store %struct.pwm_imx27_chip* %15, %struct.pwm_imx27_chip** %7, align 8
  %16 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %17 = call i32 @pwm_imx27_clk_prepare_enable(%struct.pwm_chip* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %120

21:                                               ; preds = %3
  %22 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %7, align 8
  %23 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MX3_PWMCR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @MX3_PWMCR_EN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %34 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %38

35:                                               ; preds = %21
  %36 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %37 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* @MX3_PWMCR_POUTC, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @FIELD_GET(i32 %39, i32 %40)
  switch i32 %41, label %50 [
    i32 128, label %42
    i32 129, label %46
  ]

42:                                               ; preds = %38
  %43 = load i32, i32* @PWM_POLARITY_NORMAL, align 4
  %44 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %45 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  br label %55

46:                                               ; preds = %38
  %47 = load i32, i32* @PWM_POLARITY_INVERSED, align 4
  %48 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %49 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  br label %55

50:                                               ; preds = %38
  %51 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %52 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_warn(i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %46, %42
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @MX3_PWMCR_PRESCALER_GET(i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %7, align 8
  %59 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @clk_get_rate(i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i8* @DIV_ROUND_CLOSEST_ULL(i32 %62, i32 %63)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %10, align 4
  %66 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %7, align 8
  %67 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MX3_PWMPR, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @readl(i64 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @MX3_PWMPR_MAX, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %55
  %76 = load i32, i32* @MX3_PWMPR_MAX, align 4
  br label %79

77:                                               ; preds = %55
  %78 = load i32, i32* %11, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* @NSEC_PER_SEC, align 4
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 2
  %84 = mul nsw i32 %81, %83
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i8* @DIV_ROUND_CLOSEST_ULL(i32 %85, i32 %86)
  %88 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %89 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %91 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %79
  %95 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %7, align 8
  %96 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @MX3_PWMSAR, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @readl(i64 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* @NSEC_PER_SEC, align 4
  %102 = load i32, i32* %11, align 4
  %103 = mul nsw i32 %101, %102
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i8* @DIV_ROUND_CLOSEST_ULL(i32 %104, i32 %105)
  %107 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %108 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  br label %112

109:                                              ; preds = %79
  %110 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %111 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %110, i32 0, i32 1
  store i8* null, i8** %111, align 8
  br label %112

112:                                              ; preds = %109, %94
  %113 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %114 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %119 = call i32 @pwm_imx27_clk_disable_unprepare(%struct.pwm_chip* %118)
  br label %120

120:                                              ; preds = %20, %117, %112
  ret void
}

declare dso_local %struct.pwm_imx27_chip* @to_pwm_imx27_chip(%struct.pwm_chip*) #1

declare dso_local i32 @pwm_imx27_clk_prepare_enable(%struct.pwm_chip*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @MX3_PWMCR_PRESCALER_GET(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i8* @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

declare dso_local i32 @pwm_imx27_clk_disable_unprepare(%struct.pwm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
