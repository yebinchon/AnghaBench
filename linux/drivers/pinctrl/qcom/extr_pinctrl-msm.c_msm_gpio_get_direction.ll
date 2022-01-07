; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_gpio_get_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_gpio_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.msm_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.msm_pingroup* }
%struct.msm_pingroup = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @msm_gpio_get_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_gpio_get_direction(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_pinctrl*, align 8
  %6 = alloca %struct.msm_pingroup*, align 8
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.msm_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.msm_pinctrl* %9, %struct.msm_pinctrl** %5, align 8
  %10 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %5, align 8
  %11 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.msm_pingroup*, %struct.msm_pingroup** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %14, i64 %16
  store %struct.msm_pingroup* %17, %struct.msm_pingroup** %6, align 8
  %18 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %5, align 8
  %19 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %20 = call i32 @msm_readl_ctl(%struct.msm_pinctrl* %18, %struct.msm_pingroup* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.msm_pingroup*, %struct.msm_pingroup** %6, align 8
  %23 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = and i32 %21, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 1
  ret i32 %29
}

declare dso_local %struct.msm_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @msm_readl_ctl(%struct.msm_pinctrl*, %struct.msm_pingroup*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
