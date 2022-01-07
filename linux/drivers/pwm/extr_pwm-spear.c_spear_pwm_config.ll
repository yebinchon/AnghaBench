; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-spear.c_spear_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-spear.c_spear_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.spear_pwm_chip = type { i32 }

@PWMCR_MIN_PRESCALE = common dso_local global i64 0, align 8
@PWMPCR_MIN_PERIOD = common dso_local global i64 0, align 8
@PWMDCR_MIN_DUTY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PWMPCR_MAX_PERIOD = common dso_local global i64 0, align 8
@PWMDCR_MAX_DUTY = common dso_local global i64 0, align 8
@PWMCR_MAX_PRESCALE = common dso_local global i64 0, align 8
@PWMCR = common dso_local global i32 0, align 4
@PWMCR_PRESCALE_SHIFT = common dso_local global i64 0, align 8
@PWMDCR = common dso_local global i32 0, align 4
@PWMPCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @spear_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spear_pwm_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %19 = call %struct.spear_pwm_chip* @to_spear_pwm_chip(%struct.pwm_chip* %18)
  store %struct.spear_pwm_chip* %19, %struct.spear_pwm_chip** %10, align 8
  %20 = load i64, i64* @PWMCR_MIN_PRESCALE, align 8
  store i64 %20, i64* %14, align 8
  %21 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %10, align 8
  %22 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_get_rate(i32 %23)
  store i32 %24, i32* %13, align 4
  br label %25

25:                                               ; preds = %4, %70
  store i32 1000000000, i32* %12, align 4
  %26 = load i64, i64* %14, align 8
  %27 = add i64 1, %26
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @div64_u64(i32 %35, i32 %36)
  store i64 %37, i64* %15, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @div64_u64(i32 %41, i32 %42)
  store i64 %43, i64* %16, align 8
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* @PWMPCR_MIN_PERIOD, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %25
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* @PWMDCR_MIN_DUTY, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47, %25
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %109

54:                                               ; preds = %47
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* @PWMPCR_MAX_PERIOD, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %16, align 8
  %60 = load i64, i64* @PWMDCR_MAX_DUTY, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58, %54
  %63 = load i64, i64* %14, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %14, align 8
  %65 = load i64, i64* @PWMCR_MAX_PRESCALE, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %109

70:                                               ; preds = %62
  br label %25

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %10, align 8
  %74 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @clk_enable(i32 %75)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %17, align 4
  store i32 %80, i32* %5, align 4
  br label %109

81:                                               ; preds = %72
  %82 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %10, align 8
  %83 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %84 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @PWMCR, align 4
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* @PWMCR_PRESCALE_SHIFT, align 8
  %89 = shl i64 %87, %88
  %90 = call i32 @spear_pwm_writel(%struct.spear_pwm_chip* %82, i32 %85, i32 %86, i64 %89)
  %91 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %10, align 8
  %92 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %93 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @PWMDCR, align 4
  %96 = load i64, i64* %16, align 8
  %97 = call i32 @spear_pwm_writel(%struct.spear_pwm_chip* %91, i32 %94, i32 %95, i64 %96)
  %98 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %10, align 8
  %99 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %100 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @PWMPCR, align 4
  %103 = load i64, i64* %15, align 8
  %104 = call i32 @spear_pwm_writel(%struct.spear_pwm_chip* %98, i32 %101, i32 %102, i64 %103)
  %105 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %10, align 8
  %106 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @clk_disable(i32 %107)
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %81, %79, %67, %51
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local %struct.spear_pwm_chip* @to_spear_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i64 @div64_u64(i32, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @spear_pwm_writel(%struct.spear_pwm_chip*, i32, i32, i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
