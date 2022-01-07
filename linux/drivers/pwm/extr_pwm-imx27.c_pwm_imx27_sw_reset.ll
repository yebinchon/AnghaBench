; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx27.c_pwm_imx27_sw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx27.c_pwm_imx27_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { %struct.device* }
%struct.device = type { i32 }
%struct.pwm_imx27_chip = type { i64 }

@MX3_PWMCR_SWR = common dso_local global i32 0, align 4
@MX3_PWMCR = common dso_local global i64 0, align 8
@MX3_PWM_SWR_LOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"software reset timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*)* @pwm_imx27_sw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwm_imx27_sw_reset(%struct.pwm_chip* %0) #0 {
  %2 = alloca %struct.pwm_chip*, align 8
  %3 = alloca %struct.pwm_imx27_chip*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %2, align 8
  %7 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %8 = call %struct.pwm_imx27_chip* @to_pwm_imx27_chip(%struct.pwm_chip* %7)
  store %struct.pwm_imx27_chip* %8, %struct.pwm_imx27_chip** %3, align 8
  %9 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %10 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* @MX3_PWMCR_SWR, align 4
  %13 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %3, align 8
  %14 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MX3_PWMCR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  br label %19

19:                                               ; preds = %37, %1
  %20 = call i32 @usleep_range(i32 200, i32 1000)
  %21 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %3, align 8
  %22 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MX3_PWMCR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MX3_PWMCR_SWR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @MX3_PWM_SWR_LOOP, align 4
  %36 = icmp slt i32 %33, %35
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ false, %27 ], [ %36, %32 ]
  br i1 %38, label %19, label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MX3_PWMCR_SWR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @dev_warn(%struct.device* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %39
  ret void
}

declare dso_local %struct.pwm_imx27_chip* @to_pwm_imx27_chip(%struct.pwm_chip*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
