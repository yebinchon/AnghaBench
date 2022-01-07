; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.armada_37xx_pinctrl = type { i32 }

@OUTPUT_EN = common dso_local global i32 0, align 4
@OUTPUT_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @armada_37xx_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_37xx_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.armada_37xx_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %14 = call %struct.armada_37xx_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %13)
  store %struct.armada_37xx_pinctrl* %14, %struct.armada_37xx_pinctrl** %8, align 8
  %15 = load i32, i32* @OUTPUT_EN, align 4
  store i32 %15, i32* %9, align 4
  %16 = call i32 @armada_37xx_update_reg(i32* %9, i32* %6)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @BIT(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %8, align 8
  %20 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %4, align 4
  br label %46

30:                                               ; preds = %3
  %31 = load i32, i32* @OUTPUT_VAL, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4
  br label %37

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  store i32 %38, i32* %11, align 4
  %39 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %8, align 8
  %40 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %37, %28
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.armada_37xx_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @armada_37xx_update_reg(i32*, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
