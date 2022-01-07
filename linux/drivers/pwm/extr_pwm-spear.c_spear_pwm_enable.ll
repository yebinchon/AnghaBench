; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-spear.c_spear_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-spear.c_spear_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.spear_pwm_chip = type { i32 }

@PWMCR = common dso_local global i32 0, align 4
@PWMCR_PWM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @spear_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_pwm_enable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.spear_pwm_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %9 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %10 = call %struct.spear_pwm_chip* @to_spear_pwm_chip(%struct.pwm_chip* %9)
  store %struct.spear_pwm_chip* %10, %struct.spear_pwm_chip** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %6, align 8
  %12 = getelementptr inbounds %struct.spear_pwm_chip, %struct.spear_pwm_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_enable(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %36

19:                                               ; preds = %2
  %20 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %6, align 8
  %21 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %22 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PWMCR, align 4
  %25 = call i32 @spear_pwm_readl(%struct.spear_pwm_chip* %20, i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @PWMCR_PWM_ENABLE, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load %struct.spear_pwm_chip*, %struct.spear_pwm_chip** %6, align 8
  %30 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %31 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PWMCR, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @spear_pwm_writel(%struct.spear_pwm_chip* %29, i32 %32, i32 %33, i32 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %19, %17
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.spear_pwm_chip* @to_spear_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @spear_pwm_readl(%struct.spear_pwm_chip*, i32, i32) #1

declare dso_local i32 @spear_pwm_writel(%struct.spear_pwm_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
