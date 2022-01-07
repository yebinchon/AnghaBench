; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_gpio_backup_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_gpio_backup_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_gpio_bank = type { i32* }

@STM32_GPIO_BKP_MODE_MASK = common dso_local global i32 0, align 4
@STM32_GPIO_BKP_ALT_MASK = common dso_local global i32 0, align 4
@STM32_GPIO_BKP_MODE_SHIFT = common dso_local global i64 0, align 8
@STM32_GPIO_BKP_ALT_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_gpio_bank*, i64, i64, i64)* @stm32_gpio_backup_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_gpio_backup_mode(%struct.stm32_gpio_bank* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.stm32_gpio_bank*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.stm32_gpio_bank* %0, %struct.stm32_gpio_bank** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* @STM32_GPIO_BKP_MODE_MASK, align 4
  %10 = load i32, i32* @STM32_GPIO_BKP_ALT_MASK, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %5, align 8
  %14 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %12
  store i32 %19, i32* %17, align 4
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @STM32_GPIO_BKP_MODE_SHIFT, align 8
  %22 = shl i64 %20, %21
  %23 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %5, align 8
  %24 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = or i64 %29, %22
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @STM32_GPIO_BKP_ALT_SHIFT, align 8
  %34 = shl i64 %32, %33
  %35 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %5, align 8
  %36 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = or i64 %41, %34
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
