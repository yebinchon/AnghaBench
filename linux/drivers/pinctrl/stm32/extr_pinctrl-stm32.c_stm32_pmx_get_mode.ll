; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pmx_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pmx_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_gpio_bank = type { i32, i32, i64 }

@STM32_GPIO_AFRL = common dso_local global i32 0, align 4
@STM32_GPIO_MODER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stm32_pmx_get_mode(%struct.stm32_gpio_bank* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.stm32_gpio_bank*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.stm32_gpio_bank* %0, %struct.stm32_gpio_bank** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = srem i32 %13, 8
  %15 = mul nsw i32 %14, 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @STM32_GPIO_AFRL, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sdiv i32 %17, 8
  %19 = mul nsw i32 %18, 4
  %20 = add nsw i32 %16, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %5, align 8
  %22 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @clk_enable(i32 %23)
  %25 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %5, align 8
  %26 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %25, i32 0, i32 1
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %5, align 8
  %30 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = call i32 @readl_relaxed(i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 3
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @GENMASK(i32 %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = ashr i32 %42, %43
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %5, align 8
  %47 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @STM32_GPIO_MODER, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl_relaxed(i64 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = mul nsw i32 %52, 2
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 %55, 2
  %57 = call i32 @GENMASK(i32 %54, i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 %61, 2
  %63 = ashr i32 %60, %62
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %5, align 8
  %66 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %65, i32 0, i32 1
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %5, align 8
  %70 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @clk_disable(i32 %71)
  ret void
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
