; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-amd.c_amd_gpio_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-amd.c_amd_gpio_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.amd_gpio = type { i32, i64 }

@INTERRUPT_ENABLE_OFF = common dso_local global i32 0, align 4
@INTERRUPT_MASK_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @amd_gpio_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_gpio_irq_enable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca %struct.amd_gpio*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.gpio_chip* %8, %struct.gpio_chip** %5, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %10 = call %struct.amd_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.amd_gpio* %10, %struct.amd_gpio** %6, align 8
  %11 = load %struct.amd_gpio*, %struct.amd_gpio** %6, align 8
  %12 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %11, i32 0, i32 0
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @raw_spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.amd_gpio*, %struct.amd_gpio** %6, align 8
  %16 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %17, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @INTERRUPT_ENABLE_OFF, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @INTERRUPT_MASK_OFF, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.amd_gpio*, %struct.amd_gpio** %6, align 8
  %35 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %38 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %36, %41
  %43 = call i32 @writel(i32 %33, i64 %42)
  %44 = load %struct.amd_gpio*, %struct.amd_gpio** %6, align 8
  %45 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %44, i32 0, i32 0
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @raw_spin_unlock_irqrestore(i32* %45, i64 %46)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.amd_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
