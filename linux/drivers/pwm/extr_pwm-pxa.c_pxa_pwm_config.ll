; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-pxa.c_pxa_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-pxa.c_pxa_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i64 }
%struct.pxa_pwm_chip = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PWMDCR_FD = common dso_local global i64 0, align 8
@PWMCR = common dso_local global i64 0, align 8
@PWMDCR = common dso_local global i64 0, align 8
@PWMPCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @pxa_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pxa_pwm_chip*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %19 = call %struct.pxa_pwm_chip* @to_pxa_pwm_chip(%struct.pwm_chip* %18)
  store %struct.pxa_pwm_chip* %19, %struct.pxa_pwm_chip** %10, align 8
  %20 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %21 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 16, i32 0
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %16, align 8
  %27 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %10, align 8
  %28 = getelementptr inbounds %struct.pxa_pwm_chip, %struct.pxa_pwm_chip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @clk_get_rate(i32 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %31, %33
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @do_div(i64 %35, i32 1000000000)
  %37 = load i64, i64* %11, align 8
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ult i64 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  store i64 1, i64* %12, align 8
  br label %41

41:                                               ; preds = %40, %4
  %42 = load i64, i64* %12, align 8
  %43 = sub i64 %42, 1
  %44 = udiv i64 %43, 1024
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %13, align 8
  %47 = add i64 %46, 1
  %48 = udiv i64 %45, %47
  %49 = sub i64 %48, 1
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp ugt i64 %50, 63
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %111

55:                                               ; preds = %41
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i64, i64* @PWMDCR_FD, align 8
  store i64 %60, i64* %15, align 8
  br label %70

61:                                               ; preds = %55
  %62 = load i64, i64* %14, align 8
  %63 = add i64 %62, 1
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %63, %65
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = udiv i64 %66, %68
  store i64 %69, i64* %15, align 8
  br label %70

70:                                               ; preds = %61, %59
  %71 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %10, align 8
  %72 = getelementptr inbounds %struct.pxa_pwm_chip, %struct.pxa_pwm_chip* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @clk_prepare_enable(i32 %73)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %17, align 4
  store i32 %78, i32* %5, align 4
  br label %111

79:                                               ; preds = %70
  %80 = load i64, i64* %13, align 8
  %81 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %10, align 8
  %82 = getelementptr inbounds %struct.pxa_pwm_chip, %struct.pxa_pwm_chip* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %16, align 8
  %85 = add i64 %83, %84
  %86 = load i64, i64* @PWMCR, align 8
  %87 = add i64 %85, %86
  %88 = call i32 @writel(i64 %80, i64 %87)
  %89 = load i64, i64* %15, align 8
  %90 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %10, align 8
  %91 = getelementptr inbounds %struct.pxa_pwm_chip, %struct.pxa_pwm_chip* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %16, align 8
  %94 = add i64 %92, %93
  %95 = load i64, i64* @PWMDCR, align 8
  %96 = add i64 %94, %95
  %97 = call i32 @writel(i64 %89, i64 %96)
  %98 = load i64, i64* %14, align 8
  %99 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %10, align 8
  %100 = getelementptr inbounds %struct.pxa_pwm_chip, %struct.pxa_pwm_chip* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %16, align 8
  %103 = add i64 %101, %102
  %104 = load i64, i64* @PWMPCR, align 8
  %105 = add i64 %103, %104
  %106 = call i32 @writel(i64 %98, i64 %105)
  %107 = load %struct.pxa_pwm_chip*, %struct.pxa_pwm_chip** %10, align 8
  %108 = getelementptr inbounds %struct.pxa_pwm_chip, %struct.pxa_pwm_chip* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @clk_disable_unprepare(i32 %109)
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %79, %77, %52
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local %struct.pxa_pwm_chip* @to_pxa_pwm_chip(%struct.pwm_chip*) #1

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
