; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pistachio.c_pistachio_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pistachio.c_pistachio_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.pistachio_gpio_bank = type { i32 }

@GPIO_OUTPUT_EN = common dso_local global i32 0, align 4
@GPIO_OUTPUT = common dso_local global i32 0, align 4
@GPIO_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @pistachio_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pistachio_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pistachio_gpio_bank*, align 8
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.pistachio_gpio_bank* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.pistachio_gpio_bank* %8, %struct.pistachio_gpio_bank** %5, align 8
  %9 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %5, align 8
  %10 = load i32, i32* @GPIO_OUTPUT_EN, align 4
  %11 = call i32 @gpio_readl(%struct.pistachio_gpio_bank* %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @GPIO_OUTPUT, align 4
  store i32 %17, i32* %6, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @GPIO_INPUT, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @gpio_readl(%struct.pistachio_gpio_bank* %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local %struct.pistachio_gpio_bank* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @gpio_readl(%struct.pistachio_gpio_bank*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
