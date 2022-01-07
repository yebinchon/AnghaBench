; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx27.c_pwm_imx27_clk_prepare_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx27.c_pwm_imx27_clk_prepare_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_imx27_chip = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*)* @pwm_imx27_clk_prepare_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_imx27_clk_prepare_enable(%struct.pwm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_imx27_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  %6 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %7 = call %struct.pwm_imx27_chip* @to_pwm_imx27_chip(%struct.pwm_chip* %6)
  store %struct.pwm_imx27_chip* %7, %struct.pwm_imx27_chip** %4, align 8
  %8 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %9 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_prepare_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %30

16:                                               ; preds = %1
  %17 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %18 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_prepare_enable(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %4, align 8
  %25 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_disable_unprepare(i32 %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %23, %14
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.pwm_imx27_chip* @to_pwm_imx27_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
