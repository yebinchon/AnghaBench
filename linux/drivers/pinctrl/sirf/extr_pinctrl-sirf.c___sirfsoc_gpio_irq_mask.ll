; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c___sirfsoc_gpio_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c___sirfsoc_gpio_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirfsoc_gpio_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sirfsoc_gpio_bank = type { i32 }

@SIRFSOC_GPIO_CTL_INTR_EN_MASK = common dso_local global i64 0, align 8
@SIRFSOC_GPIO_CTL_INTR_STS_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_bank*, i32)* @__sirfsoc_gpio_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sirfsoc_gpio_irq_mask(%struct.sirfsoc_gpio_chip* %0, %struct.sirfsoc_gpio_bank* %1, i32 %2) #0 {
  %4 = alloca %struct.sirfsoc_gpio_chip*, align 8
  %5 = alloca %struct.sirfsoc_gpio_bank*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.sirfsoc_gpio_chip* %0, %struct.sirfsoc_gpio_chip** %4, align 8
  store %struct.sirfsoc_gpio_bank* %1, %struct.sirfsoc_gpio_bank** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sirfsoc_gpio_bank*, %struct.sirfsoc_gpio_bank** %5, align 8
  %11 = getelementptr inbounds %struct.sirfsoc_gpio_bank, %struct.sirfsoc_gpio_bank* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @SIRFSOC_GPIO_CTRL(i32 %12, i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %4, align 8
  %16 = getelementptr inbounds %struct.sirfsoc_gpio_chip, %struct.sirfsoc_gpio_chip* %15, i32 0, i32 0
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %4, align 8
  %20 = getelementptr inbounds %struct.sirfsoc_gpio_chip, %struct.sirfsoc_gpio_chip* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i64 @readl(i64 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* @SIRFSOC_GPIO_CTL_INTR_EN_MASK, align 8
  %27 = xor i64 %26, -1
  %28 = load i64, i64* %7, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* @SIRFSOC_GPIO_CTL_INTR_STS_MASK, align 8
  %31 = xor i64 %30, -1
  %32 = load i64, i64* %7, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %4, align 8
  %36 = getelementptr inbounds %struct.sirfsoc_gpio_chip, %struct.sirfsoc_gpio_chip* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i64 %34, i64 %40)
  %42 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %4, align 8
  %43 = getelementptr inbounds %struct.sirfsoc_gpio_chip, %struct.sirfsoc_gpio_chip* %42, i32 0, i32 0
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  ret void
}

declare dso_local i64 @SIRFSOC_GPIO_CTRL(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
