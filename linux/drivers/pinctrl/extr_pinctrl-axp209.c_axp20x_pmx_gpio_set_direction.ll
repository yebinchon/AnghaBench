; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-axp209.c_axp20x_pmx_gpio_set_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-axp209.c_axp20x_pmx_gpio_set_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.axp20x_pctl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AXP20X_FUNC_GPIO_IN = common dso_local global i64 0, align 8
@AXP20X_FUNC_GPIO_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32, i32)* @axp20x_pmx_gpio_set_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_pmx_gpio_set_direction(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca %struct.pinctrl_gpio_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.axp20x_pctl*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %12 = call %struct.axp20x_pctl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.axp20x_pctl* %12, %struct.axp20x_pctl** %10, align 8
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %10, align 8
  %19 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* @AXP20X_FUNC_GPIO_IN, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @axp20x_pmx_set(%struct.pinctrl_dev* %16, i32 %17, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %37

26:                                               ; preds = %4
  %27 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %10, align 8
  %30 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* @AXP20X_FUNC_GPIO_OUT, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @axp20x_pmx_set(%struct.pinctrl_dev* %27, i32 %28, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %26, %15
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.axp20x_pctl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @axp20x_pmx_set(%struct.pinctrl_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
