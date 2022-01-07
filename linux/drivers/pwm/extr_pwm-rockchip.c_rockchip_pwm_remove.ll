; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rockchip.c_rockchip_pwm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rockchip.c_rockchip_pwm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rockchip_pwm_chip = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rockchip_pwm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pwm_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.rockchip_pwm_chip*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.rockchip_pwm_chip* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.rockchip_pwm_chip* %5, %struct.rockchip_pwm_chip** %3, align 8
  %6 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %3, align 8
  %7 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @pwm_is_enabled(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %3, align 8
  %14 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_disable(i32 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %3, align 8
  %19 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_unprepare(i32 %20)
  %22 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %3, align 8
  %23 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_unprepare(i32 %24)
  %26 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %3, align 8
  %27 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %26, i32 0, i32 0
  %28 = call i32 @pwmchip_remove(%struct.TYPE_2__* %27)
  ret i32 %28
}

declare dso_local %struct.rockchip_pwm_chip* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @pwm_is_enabled(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @pwmchip_remove(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
