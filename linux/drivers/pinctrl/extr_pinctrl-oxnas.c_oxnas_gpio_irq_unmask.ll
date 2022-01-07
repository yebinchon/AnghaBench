; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_gpio_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_gpio_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.oxnas_gpio_bank = type { i64 }

@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@RE_IRQ_ENABLE = common dso_local global i64 0, align 8
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@FE_IRQ_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @oxnas_gpio_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oxnas_gpio_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.oxnas_gpio_bank*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.gpio_chip* %8, %struct.gpio_chip** %3, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.oxnas_gpio_bank* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.oxnas_gpio_bank* %10, %struct.oxnas_gpio_bank** %4, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = call i32 @irqd_get_trigger_type(%struct.irq_data* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BIT(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %4, align 8
  %23 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RE_IRQ_ENABLE, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %4, align 8
  %31 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RE_IRQ_ENABLE, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  br label %36

36:                                               ; preds = %21, %1
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %4, align 8
  %43 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FE_IRQ_ENABLE, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readl(i64 %46)
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %4, align 8
  %51 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @FE_IRQ_ENABLE, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  br label %56

56:                                               ; preds = %41, %36
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.oxnas_gpio_bank* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @irqd_get_trigger_type(%struct.irq_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
