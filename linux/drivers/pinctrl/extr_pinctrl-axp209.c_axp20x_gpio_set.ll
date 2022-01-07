; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-axp209.c_axp20x_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-axp209.c_axp20x_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.axp20x_pctl = type { i32 }

@AXP20X_GPIO_FUNCTIONS = common dso_local global i32 0, align 4
@AXP20X_GPIO_FUNCTION_OUT_HIGH = common dso_local global i32 0, align 4
@AXP20X_GPIO_FUNCTION_OUT_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @axp20x_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axp20x_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.axp20x_pctl*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.axp20x_pctl* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.axp20x_pctl* %10, %struct.axp20x_pctl** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @axp20x_gpio_get_reg(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %31

16:                                               ; preds = %3
  %17 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %7, align 8
  %18 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @AXP20X_GPIO_FUNCTIONS, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @AXP20X_GPIO_FUNCTION_OUT_HIGH, align 4
  br label %28

26:                                               ; preds = %16
  %27 = load i32, i32* @AXP20X_GPIO_FUNCTION_OUT_LOW, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 %29)
  br label %31

31:                                               ; preds = %28, %15
  ret void
}

declare dso_local %struct.axp20x_pctl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @axp20x_gpio_get_reg(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
