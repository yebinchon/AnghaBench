; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_gpio_bank = type { i32, i32, i64 }

@STM32_GPIO_IDR = common dso_local global i64 0, align 8
@STM32_GPIO_ODR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_gpio_bank*, i32, i32)* @stm32_pconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pconf_get(%struct.stm32_gpio_bank* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stm32_gpio_bank*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.stm32_gpio_bank* %0, %struct.stm32_gpio_bank** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %4, align 8
  %10 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clk_enable(i32 %11)
  %13 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %4, align 8
  %14 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %13, i32 0, i32 1
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %4, align 8
  %21 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @STM32_GPIO_IDR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl_relaxed(i64 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %8, align 4
  br label %47

33:                                               ; preds = %3
  %34 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %4, align 8
  %35 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @STM32_GPIO_ODR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl_relaxed(i64 %38)
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %33, %19
  %48 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %4, align 8
  %49 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %48, i32 0, i32 1
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %4, align 8
  %53 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @clk_disable(i32 %54)
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
