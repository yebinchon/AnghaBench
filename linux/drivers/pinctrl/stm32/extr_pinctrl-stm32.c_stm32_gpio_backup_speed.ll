; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_gpio_backup_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_gpio_backup_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_gpio_bank = type { i64* }

@STM32_GPIO_BKP_SPEED_MASK = common dso_local global i64 0, align 8
@STM32_GPIO_BKP_SPEED_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_gpio_bank*, i64, i64)* @stm32_gpio_backup_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_gpio_backup_speed(%struct.stm32_gpio_bank* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.stm32_gpio_bank*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.stm32_gpio_bank* %0, %struct.stm32_gpio_bank** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* @STM32_GPIO_BKP_SPEED_MASK, align 8
  %8 = xor i64 %7, -1
  %9 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %4, align 8
  %10 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = and i64 %14, %8
  store i64 %15, i64* %13, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @STM32_GPIO_BKP_SPEED_SHIFT, align 8
  %18 = shl i64 %16, %17
  %19 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %4, align 8
  %20 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = or i64 %24, %18
  store i64 %25, i64* %23, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
