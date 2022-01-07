; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c___stm32_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c___stm32_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_gpio_bank = type { i32, i64 }

@STM32_GPIO_PINS_PER_BANK = common dso_local global i64 0, align 8
@STM32_GPIO_BSRR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_gpio_bank*, i32, i32)* @__stm32_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__stm32_gpio_set(%struct.stm32_gpio_bank* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stm32_gpio_bank*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stm32_gpio_bank* %0, %struct.stm32_gpio_bank** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @stm32_gpio_backup_value(%struct.stm32_gpio_bank* %7, i32 %8, i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* @STM32_GPIO_PINS_PER_BANK, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %13, %3
  %20 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %4, align 8
  %21 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @clk_enable(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %4, align 8
  %27 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @STM32_GPIO_BSRR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel_relaxed(i32 %25, i64 %30)
  %32 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %4, align 8
  %33 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clk_disable(i32 %34)
  ret void
}

declare dso_local i32 @stm32_gpio_backup_value(%struct.stm32_gpio_bank*, i32, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
