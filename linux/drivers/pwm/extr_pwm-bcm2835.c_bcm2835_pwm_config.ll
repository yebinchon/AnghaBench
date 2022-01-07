; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-bcm2835.c_bcm2835_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-bcm2835.c_bcm2835_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.bcm2835_pwm = type { i64, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to get clock rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@PERIOD_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @bcm2835_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcm2835_pwm*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %15 = call %struct.bcm2835_pwm* @to_bcm2835_pwm(%struct.pwm_chip* %14)
  store %struct.bcm2835_pwm* %15, %struct.bcm2835_pwm** %10, align 8
  %16 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %10, align 8
  %17 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @clk_get_rate(i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %4
  %23 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %10, align 8
  %24 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %65

29:                                               ; preds = %4
  %30 = load i32, i32* @NSEC_PER_SEC, align 4
  %31 = load i64, i64* %11, align 8
  %32 = call i64 @DIV_ROUND_CLOSEST(i32 %30, i64 %31)
  store i64 %32, i64* %12, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i64, i64* %12, align 8
  %35 = call i64 @DIV_ROUND_CLOSEST(i32 %33, i64 %34)
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* @PERIOD_MIN, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %65

42:                                               ; preds = %29
  %43 = load i32, i32* %8, align 4
  %44 = load i64, i64* %12, align 8
  %45 = call i64 @DIV_ROUND_CLOSEST(i32 %43, i64 %44)
  %46 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %10, align 8
  %47 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %50 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @DUTY(i32 %51)
  %53 = add nsw i64 %48, %52
  %54 = call i32 @writel(i64 %45, i64 %53)
  %55 = load i64, i64* %13, align 8
  %56 = load %struct.bcm2835_pwm*, %struct.bcm2835_pwm** %10, align 8
  %57 = getelementptr inbounds %struct.bcm2835_pwm, %struct.bcm2835_pwm* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %60 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @PERIOD(i32 %61)
  %63 = add nsw i64 %58, %62
  %64 = call i32 @writel(i64 %55, i64 %63)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %42, %39, %22
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.bcm2835_pwm* @to_bcm2835_pwm(%struct.pwm_chip*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i32, i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @DUTY(i32) #1

declare dso_local i64 @PERIOD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
