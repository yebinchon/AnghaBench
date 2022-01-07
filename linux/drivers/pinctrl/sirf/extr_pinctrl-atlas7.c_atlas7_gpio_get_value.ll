; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_gpio_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_gpio_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.atlas7_gpio_chip = type { i32 }
%struct.atlas7_gpio_bank = type { i32 }

@ATLAS7_GPIO_CTL_DATAIN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @atlas7_gpio_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atlas7_gpio_get_value(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atlas7_gpio_chip*, align 8
  %6 = alloca %struct.atlas7_gpio_bank*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %11 = call %struct.atlas7_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.atlas7_gpio_chip* %11, %struct.atlas7_gpio_chip** %5, align 8
  %12 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.atlas7_gpio_bank* @atlas7_gpio_to_bank(%struct.atlas7_gpio_chip* %12, i32 %13)
  store %struct.atlas7_gpio_bank* %14, %struct.atlas7_gpio_bank** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.atlas7_gpio_bank*, %struct.atlas7_gpio_bank** %6, align 8
  %17 = getelementptr inbounds %struct.atlas7_gpio_bank, %struct.atlas7_gpio_bank* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 %15, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %21 = getelementptr inbounds %struct.atlas7_gpio_chip, %struct.atlas7_gpio_chip* %20, i32 0, i32 0
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @raw_spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.atlas7_gpio_bank*, %struct.atlas7_gpio_bank** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @ATLAS7_GPIO_CTRL(%struct.atlas7_gpio_bank* %24, i32 %25)
  %27 = call i32 @readl(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %5, align 8
  %29 = getelementptr inbounds %struct.atlas7_gpio_chip, %struct.atlas7_gpio_chip* %28, i32 0, i32 0
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @raw_spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ATLAS7_GPIO_CTL_DATAIN_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  ret i32 %38
}

declare dso_local %struct.atlas7_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local %struct.atlas7_gpio_bank* @atlas7_gpio_to_bank(%struct.atlas7_gpio_chip*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @ATLAS7_GPIO_CTRL(%struct.atlas7_gpio_bank*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
