; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mxs.c_mxs_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mxs.c_mxs_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.mxs_pwm_chip = type { i32, i64 }

@cdiv = common dso_local global i64* null, align 8
@PERIOD_PERIOD_MAX = common dso_local global i64 0, align 8
@PERIOD_CDIV_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PWM_ACTIVE0 = common dso_local global i64 0, align 8
@PERIOD_ACTIVE_HIGH = common dso_local global i32 0, align 4
@PERIOD_INACTIVE_LOW = common dso_local global i32 0, align 4
@PWM_PERIOD0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @mxs_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mxs_pwm_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %18 = call %struct.mxs_pwm_chip* @to_mxs_pwm_chip(%struct.pwm_chip* %17)
  store %struct.mxs_pwm_chip* %18, %struct.mxs_pwm_chip** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %10, align 8
  %20 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @clk_get_rate(i32 %21)
  store i64 %22, i64* %15, align 8
  br label %23

23:                                               ; preds = %4, %50
  %24 = load i64, i64* %15, align 8
  %25 = load i64*, i64** @cdiv, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = udiv i64 %24, %29
  store i64 %30, i64* %16, align 8
  %31 = load i64, i64* %16, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %31, %33
  store i64 %34, i64* %16, align 8
  %35 = load i64, i64* %16, align 8
  %36 = call i32 @do_div(i64 %35, i32 1000000000)
  %37 = load i64, i64* %16, align 8
  %38 = load i64, i64* @PERIOD_PERIOD_MAX, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %23
  br label %51

41:                                               ; preds = %23
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @PERIOD_CDIV_MAX, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %121

50:                                               ; preds = %41
  br label %23

51:                                               ; preds = %40
  %52 = load i64, i64* %16, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %16, align 8
  %57 = mul i64 %56, %55
  store i64 %57, i64* %16, align 8
  %58 = load i64, i64* %16, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @do_div(i64 %58, i32 %59)
  %61 = load i64, i64* %16, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %14, align 4
  %63 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %64 = call i32 @pwm_is_enabled(%struct.pwm_device* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %51
  %67 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %10, align 8
  %68 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @clk_prepare_enable(i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %121

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %51
  %77 = load i32, i32* %14, align 4
  %78 = shl i32 %77, 16
  %79 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %10, align 8
  %80 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PWM_ACTIVE0, align 8
  %83 = add nsw i64 %81, %82
  %84 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %85 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %86, 32
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %83, %88
  %90 = call i32 @writel(i32 %78, i64 %89)
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @PERIOD_PERIOD(i32 %91)
  %93 = load i32, i32* @PERIOD_ACTIVE_HIGH, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @PERIOD_INACTIVE_LOW, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @PERIOD_CDIV(i32 %97)
  %99 = or i32 %96, %98
  %100 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %10, align 8
  %101 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PWM_PERIOD0, align 8
  %104 = add nsw i64 %102, %103
  %105 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %106 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %107, 32
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %104, %109
  %111 = call i32 @writel(i32 %99, i64 %110)
  %112 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %113 = call i32 @pwm_is_enabled(%struct.pwm_device* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %76
  %116 = load %struct.mxs_pwm_chip*, %struct.mxs_pwm_chip** %10, align 8
  %117 = getelementptr inbounds %struct.mxs_pwm_chip, %struct.mxs_pwm_chip* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @clk_disable_unprepare(i32 %118)
  br label %120

120:                                              ; preds = %115, %76
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %120, %73, %47
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local %struct.mxs_pwm_chip* @to_mxs_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @pwm_is_enabled(%struct.pwm_device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @PERIOD_PERIOD(i32) #1

declare dso_local i32 @PERIOD_CDIV(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
