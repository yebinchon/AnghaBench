; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tegra.c_tegra_pwm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tegra.c_tegra_pwm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tegra_pwm_chip = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.pwm_device* }
%struct.pwm_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_pwm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pwm_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_pwm_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pwm_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.tegra_pwm_chip* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.tegra_pwm_chip* %9, %struct.tegra_pwm_chip** %4, align 8
  %10 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %11 = icmp ne %struct.tegra_pwm_chip* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %78

19:                                               ; preds = %1
  %20 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %21 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @clk_prepare_enable(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %78

28:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %63, %28
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %30, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %29
  %37 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %38 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load %struct.pwm_device*, %struct.pwm_device** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %40, i64 %42
  store %struct.pwm_device* %43, %struct.pwm_device** %7, align 8
  %44 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %45 = call i32 @pwm_is_enabled(%struct.pwm_device* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %36
  %48 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %49 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @clk_prepare_enable(i32 %50)
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %63

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @pwm_writel(%struct.tegra_pwm_chip* %56, i32 %57, i32 0)
  %59 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %60 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @clk_disable_unprepare(i32 %61)
  br label %63

63:                                               ; preds = %55, %53
  %64 = load i32, i32* %5, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %29

66:                                               ; preds = %29
  %67 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %68 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @reset_control_assert(i32 %69)
  %71 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %72 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @clk_disable_unprepare(i32 %73)
  %75 = load %struct.tegra_pwm_chip*, %struct.tegra_pwm_chip** %4, align 8
  %76 = getelementptr inbounds %struct.tegra_pwm_chip, %struct.tegra_pwm_chip* %75, i32 0, i32 0
  %77 = call i32 @pwmchip_remove(%struct.TYPE_2__* %76)
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %66, %26, %16
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.tegra_pwm_chip* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pwm_is_enabled(%struct.pwm_device*) #1

declare dso_local i32 @pwm_writel(%struct.tegra_pwm_chip*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @pwmchip_remove(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
