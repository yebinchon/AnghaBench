; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-ep93xx.c_ep93xx_pwm_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-ep93xx.c_ep93xx_pwm_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.ep93xx_pwm = type { i32, i64 }

@PWM_POLARITY_INVERSED = common dso_local global i32 0, align 4
@EP93XX_PWMx_INVERT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32)* @ep93xx_pwm_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_pwm_polarity(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ep93xx_pwm*, align 8
  %9 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %11 = call %struct.ep93xx_pwm* @to_ep93xx_pwm(%struct.pwm_chip* %10)
  store %struct.ep93xx_pwm* %11, %struct.ep93xx_pwm** %8, align 8
  %12 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %8, align 8
  %13 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clk_enable(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %43

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @PWM_POLARITY_INVERSED, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %8, align 8
  %26 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EP93XX_PWMx_INVERT, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writew(i32 1, i64 %29)
  br label %38

31:                                               ; preds = %20
  %32 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %8, align 8
  %33 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @EP93XX_PWMx_INVERT, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writew(i32 0, i64 %36)
  br label %38

38:                                               ; preds = %31, %24
  %39 = load %struct.ep93xx_pwm*, %struct.ep93xx_pwm** %8, align 8
  %40 = getelementptr inbounds %struct.ep93xx_pwm, %struct.ep93xx_pwm* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @clk_disable(i32 %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %18
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.ep93xx_pwm* @to_ep93xx_pwm(%struct.pwm_chip*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
