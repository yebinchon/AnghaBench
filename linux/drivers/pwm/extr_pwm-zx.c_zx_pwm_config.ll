; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-zx.c_zx_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-zx.c_zx_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.zx_pwm_chip = type { i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@ZX_PWM_PERIOD_MAX = common dso_local global i64 0, align 8
@ZX_PWM_CLKDIV_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ZX_PWM_MODE = common dso_local global i32 0, align 4
@ZX_PWM_EN = common dso_local global i32 0, align 4
@ZX_PWM_CLKDIV_MASK = common dso_local global i32 0, align 4
@ZX_PWM_PERIOD = common dso_local global i32 0, align 4
@ZX_PWM_DUTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @zx_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.zx_pwm_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %17 = call %struct.zx_pwm_chip* @to_zx_pwm_chip(%struct.pwm_chip* %16)
  store %struct.zx_pwm_chip* %17, %struct.zx_pwm_chip** %10, align 8
  store i32 1, i32* %14, align 4
  %18 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %10, align 8
  %19 = getelementptr inbounds %struct.zx_pwm_chip, %struct.zx_pwm_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @clk_get_rate(i32 %20)
  store i64 %21, i64* %15, align 8
  br label %22

22:                                               ; preds = %4, %47
  %23 = load i64, i64* %15, align 8
  %24 = load i32, i32* %14, align 4
  %25 = zext i32 %24 to i64
  %26 = udiv i64 %23, %25
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = mul i64 %27, %29
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i32, i32* @NSEC_PER_SEC, align 4
  %33 = call i32 @do_div(i64 %31, i32 %32)
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @ZX_PWM_PERIOD_MAX, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %48

38:                                               ; preds = %22
  %39 = load i32, i32* %14, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @ZX_PWM_CLKDIV_MAX, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @ERANGE, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %108

47:                                               ; preds = %38
  br label %22

48:                                               ; preds = %37
  %49 = load i64, i64* %13, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* %13, align 8
  %54 = mul i64 %53, %52
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @do_div(i64 %55, i32 %56)
  %58 = load i64, i64* %13, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %12, align 4
  %60 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %61 = call i64 @pwm_is_enabled(%struct.pwm_device* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %48
  %64 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %10, align 8
  %65 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %66 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ZX_PWM_MODE, align 4
  %69 = load i32, i32* @ZX_PWM_EN, align 4
  %70 = call i32 @zx_pwm_set_mask(%struct.zx_pwm_chip* %64, i32 %67, i32 %68, i32 %69, i32 0)
  br label %71

71:                                               ; preds = %63, %48
  %72 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %10, align 8
  %73 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %74 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ZX_PWM_MODE, align 4
  %77 = load i32, i32* @ZX_PWM_CLKDIV_MASK, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @ZX_PWM_CLKDIV(i32 %78)
  %80 = call i32 @zx_pwm_set_mask(%struct.zx_pwm_chip* %72, i32 %75, i32 %76, i32 %77, i32 %79)
  %81 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %10, align 8
  %82 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %83 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ZX_PWM_PERIOD, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @zx_pwm_writel(%struct.zx_pwm_chip* %81, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %10, align 8
  %89 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %90 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ZX_PWM_DUTY, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @zx_pwm_writel(%struct.zx_pwm_chip* %88, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %96 = call i64 @pwm_is_enabled(%struct.pwm_device* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %71
  %99 = load %struct.zx_pwm_chip*, %struct.zx_pwm_chip** %10, align 8
  %100 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %101 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ZX_PWM_MODE, align 4
  %104 = load i32, i32* @ZX_PWM_EN, align 4
  %105 = load i32, i32* @ZX_PWM_EN, align 4
  %106 = call i32 @zx_pwm_set_mask(%struct.zx_pwm_chip* %99, i32 %102, i32 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %98, %71
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %107, %44
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.zx_pwm_chip* @to_zx_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i64 @pwm_is_enabled(%struct.pwm_device*) #1

declare dso_local i32 @zx_pwm_set_mask(%struct.zx_pwm_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @ZX_PWM_CLKDIV(i32) #1

declare dso_local i32 @zx_pwm_writel(%struct.zx_pwm_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
