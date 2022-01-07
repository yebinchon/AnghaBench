; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c_sirfsoc_gpio_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c_sirfsoc_gpio_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.sirfsoc_gpio_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sirfsoc_gpio_bank = type { i32 }

@SIRFSOC_GPIO_CTL_INTR_STS_MASK = common dso_local global i64 0, align 8
@SIRFSOC_GPIO_CTL_INTR_EN_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @sirfsoc_gpio_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirfsoc_gpio_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.sirfsoc_gpio_chip*, align 8
  %5 = alloca %struct.sirfsoc_gpio_bank*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %11 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %10)
  store %struct.gpio_chip* %11, %struct.gpio_chip** %3, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %13 = call %struct.sirfsoc_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.sirfsoc_gpio_chip* %13, %struct.sirfsoc_gpio_chip** %4, align 8
  %14 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %4, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %16 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.sirfsoc_gpio_bank* @sirfsoc_gpio_to_bank(%struct.sirfsoc_gpio_chip* %14, i32 %17)
  store %struct.sirfsoc_gpio_bank* %18, %struct.sirfsoc_gpio_bank** %5, align 8
  %19 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %20 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sirfsoc_gpio_to_bankoff(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.sirfsoc_gpio_bank*, %struct.sirfsoc_gpio_bank** %5, align 8
  %24 = getelementptr inbounds %struct.sirfsoc_gpio_bank, %struct.sirfsoc_gpio_bank* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @SIRFSOC_GPIO_CTRL(i32 %25, i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %4, align 8
  %29 = getelementptr inbounds %struct.sirfsoc_gpio_chip, %struct.sirfsoc_gpio_chip* %28, i32 0, i32 0
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %4, align 8
  %33 = getelementptr inbounds %struct.sirfsoc_gpio_chip, %struct.sirfsoc_gpio_chip* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i64 @readl(i64 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* @SIRFSOC_GPIO_CTL_INTR_STS_MASK, align 8
  %40 = xor i64 %39, -1
  %41 = load i64, i64* %7, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* @SIRFSOC_GPIO_CTL_INTR_EN_MASK, align 8
  %44 = load i64, i64* %7, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %4, align 8
  %48 = getelementptr inbounds %struct.sirfsoc_gpio_chip, %struct.sirfsoc_gpio_chip* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i64 %46, i64 %52)
  %54 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %4, align 8
  %55 = getelementptr inbounds %struct.sirfsoc_gpio_chip, %struct.sirfsoc_gpio_chip* %54, i32 0, i32 0
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.sirfsoc_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local %struct.sirfsoc_gpio_bank* @sirfsoc_gpio_to_bank(%struct.sirfsoc_gpio_chip*, i32) #1

declare dso_local i32 @sirfsoc_gpio_to_bankoff(i32) #1

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
