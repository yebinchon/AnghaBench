; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_irq_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_irq_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.armada_37xx_pinctrl = type { i32, i64 }

@IRQ_WKUP = common dso_local global i64 0, align 8
@GPIO_PER_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @armada_37xx_irq_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_37xx_irq_set_wake(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca %struct.armada_37xx_pinctrl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %11 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %10)
  store %struct.gpio_chip* %11, %struct.gpio_chip** %5, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %13 = call %struct.armada_37xx_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.armada_37xx_pinctrl* %13, %struct.armada_37xx_pinctrl** %6, align 8
  %14 = load i64, i64* @IRQ_WKUP, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %16 = call i32 @armada_37xx_irq_update_reg(i64* %8, %struct.irq_data* %15)
  %17 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %6, align 8
  %18 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %17, i32 0, i32 0
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %6, align 8
  %22 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i64 @readl(i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %31 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GPIO_PER_REG, align 4
  %34 = srem i32 %32, %33
  %35 = call i64 @BIT(i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %7, align 8
  br label %48

38:                                               ; preds = %2
  %39 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %40 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @GPIO_PER_REG, align 4
  %43 = srem i32 %41, %42
  %44 = call i64 @BIT(i32 %43)
  %45 = xor i64 %44, -1
  %46 = load i64, i64* %7, align 8
  %47 = and i64 %46, %45
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %38, %29
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %6, align 8
  %51 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i64 %49, i64 %54)
  %56 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %6, align 8
  %57 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %56, i32 0, i32 0
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  ret i32 0
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.armada_37xx_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @armada_37xx_irq_update_reg(i64*, %struct.irq_data*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
