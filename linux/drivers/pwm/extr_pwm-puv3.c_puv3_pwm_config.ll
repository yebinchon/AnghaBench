; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-puv3.c_puv3_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-puv3.c_puv3_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.puv3_pwm_chip = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@OST_PWMDCCR_FDCYCLE = common dso_local global i64 0, align 8
@OST_PWM_PWCR = common dso_local global i64 0, align 8
@OST_PWM_DCCR = common dso_local global i64 0, align 8
@OST_PWM_PCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @puv3_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puv3_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.puv3_pwm_chip*, align 8
  %15 = alloca i64, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %17 = call %struct.puv3_pwm_chip* @to_puv3(%struct.pwm_chip* %16)
  store %struct.puv3_pwm_chip* %17, %struct.puv3_pwm_chip** %14, align 8
  %18 = load %struct.puv3_pwm_chip*, %struct.puv3_pwm_chip** %14, align 8
  %19 = getelementptr inbounds %struct.puv3_pwm_chip, %struct.puv3_pwm_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @clk_get_rate(i32 %20)
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %22, %24
  store i64 %25, i64* %15, align 8
  %26 = load i64, i64* %15, align 8
  %27 = call i32 @do_div(i64 %26, i32 1000000000)
  %28 = load i64, i64* %15, align 8
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ult i64 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i64 1, i64* %10, align 8
  br label %32

32:                                               ; preds = %31, %4
  %33 = load i64, i64* %10, align 8
  %34 = sub i64 %33, 1
  %35 = udiv i64 %34, 1024
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = add i64 %37, 1
  %39 = udiv i64 %36, %38
  %40 = sub i64 %39, 1
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp ugt i64 %41, 63
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %93

46:                                               ; preds = %32
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* @OST_PWMDCCR_FDCYCLE, align 8
  store i64 %51, i64* %13, align 8
  br label %61

52:                                               ; preds = %46
  %53 = load i64, i64* %12, align 8
  %54 = add i64 %53, 1
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %54, %56
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = udiv i64 %57, %59
  store i64 %60, i64* %13, align 8
  br label %61

61:                                               ; preds = %52, %50
  %62 = load %struct.puv3_pwm_chip*, %struct.puv3_pwm_chip** %14, align 8
  %63 = getelementptr inbounds %struct.puv3_pwm_chip, %struct.puv3_pwm_chip* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @clk_prepare_enable(i32 %64)
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.puv3_pwm_chip*, %struct.puv3_pwm_chip** %14, align 8
  %68 = getelementptr inbounds %struct.puv3_pwm_chip, %struct.puv3_pwm_chip* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @OST_PWM_PWCR, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i64 %66, i64 %71)
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %13, align 8
  %75 = sub i64 %73, %74
  %76 = load %struct.puv3_pwm_chip*, %struct.puv3_pwm_chip** %14, align 8
  %77 = getelementptr inbounds %struct.puv3_pwm_chip, %struct.puv3_pwm_chip* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @OST_PWM_DCCR, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i64 %75, i64 %80)
  %82 = load i64, i64* %12, align 8
  %83 = load %struct.puv3_pwm_chip*, %struct.puv3_pwm_chip** %14, align 8
  %84 = getelementptr inbounds %struct.puv3_pwm_chip, %struct.puv3_pwm_chip* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @OST_PWM_PCR, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i64 %82, i64 %87)
  %89 = load %struct.puv3_pwm_chip*, %struct.puv3_pwm_chip** %14, align 8
  %90 = getelementptr inbounds %struct.puv3_pwm_chip, %struct.puv3_pwm_chip* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @clk_disable_unprepare(i32 %91)
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %61, %43
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.puv3_pwm_chip* @to_puv3(%struct.pwm_chip*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
