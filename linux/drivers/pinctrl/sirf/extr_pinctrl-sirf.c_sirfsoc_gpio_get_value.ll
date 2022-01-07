; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c_sirfsoc_gpio_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c_sirfsoc_gpio_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.sirfsoc_gpio_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sirfsoc_gpio_bank = type { i32, i32 }

@SIRFSOC_GPIO_CTL_DATAIN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @sirfsoc_gpio_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_gpio_get_value(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sirfsoc_gpio_chip*, align 8
  %6 = alloca %struct.sirfsoc_gpio_bank*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.sirfsoc_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.sirfsoc_gpio_chip* %10, %struct.sirfsoc_gpio_chip** %5, align 8
  %11 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.sirfsoc_gpio_bank* @sirfsoc_gpio_to_bank(%struct.sirfsoc_gpio_chip* %11, i32 %12)
  store %struct.sirfsoc_gpio_bank* %13, %struct.sirfsoc_gpio_bank** %6, align 8
  %14 = load %struct.sirfsoc_gpio_bank*, %struct.sirfsoc_gpio_bank** %6, align 8
  %15 = getelementptr inbounds %struct.sirfsoc_gpio_bank, %struct.sirfsoc_gpio_bank* %14, i32 0, i32 0
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %5, align 8
  %19 = getelementptr inbounds %struct.sirfsoc_gpio_chip, %struct.sirfsoc_gpio_chip* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.sirfsoc_gpio_bank*, %struct.sirfsoc_gpio_bank** %6, align 8
  %23 = getelementptr inbounds %struct.sirfsoc_gpio_bank, %struct.sirfsoc_gpio_bank* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @SIRFSOC_GPIO_CTRL(i32 %24, i32 %25)
  %27 = add nsw i64 %21, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.sirfsoc_gpio_bank*, %struct.sirfsoc_gpio_bank** %6, align 8
  %30 = getelementptr inbounds %struct.sirfsoc_gpio_bank, %struct.sirfsoc_gpio_bank* %29, i32 0, i32 0
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @SIRFSOC_GPIO_CTL_DATAIN_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  ret i32 %39
}

declare dso_local %struct.sirfsoc_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local %struct.sirfsoc_gpio_bank* @sirfsoc_gpio_to_bank(%struct.sirfsoc_gpio_chip*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @SIRFSOC_GPIO_CTRL(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
