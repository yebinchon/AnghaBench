; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tegra.c_tegra_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tegra.c_tegra_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.tegra_pwm_chip = type { i32 }

@PWM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @tegra_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pwm_enable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.tegra_pwm_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %9 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %10 = call %struct.tegra_pwm_chip* @to_tegra_pwm_chip(%struct.pwm_chip* %9)
  store %struct.tegra_pwm_chip* %10, %struct.tegra_pwm_chip** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %6, align 8
  %12 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_prepare_enable(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %34

19:                                               ; preds = %2
  %20 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %6, align 8
  %21 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %22 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pwm_readl(%struct.tegra_pwm_chip* %20, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @PWM_ENABLE, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %6, align 8
  %29 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %30 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @pwm_writel(%struct.tegra_pwm_chip* %28, i32 %31, i32 %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %19, %17
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.tegra_pwm_chip* @to_tegra_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pwm_readl(%struct.tegra_pwm_chip*, i32) #1

declare dso_local i32 @pwm_writel(%struct.tegra_pwm_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
