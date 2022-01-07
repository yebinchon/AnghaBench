; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip = type { i32 }
%struct.exynos_irq_chip = type { i64 }
%struct.samsung_pin_bank = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @exynos_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_irq_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  %4 = alloca %struct.exynos_irq_chip*, align 8
  %5 = alloca %struct.samsung_pin_bank*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = call %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* %9)
  store %struct.irq_chip* %10, %struct.irq_chip** %3, align 8
  %11 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %12 = call %struct.exynos_irq_chip* @to_exynos_irq_chip(%struct.irq_chip* %11)
  store %struct.exynos_irq_chip* %12, %struct.exynos_irq_chip** %4, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %14 = call %struct.samsung_pin_bank* @irq_data_get_irq_chip_data(%struct.irq_data* %13)
  store %struct.samsung_pin_bank* %14, %struct.samsung_pin_bank** %5, align 8
  %15 = load %struct.exynos_irq_chip*, %struct.exynos_irq_chip** %4, align 8
  %16 = getelementptr inbounds %struct.exynos_irq_chip, %struct.exynos_irq_chip* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %5, align 8
  %19 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %17, %20
  store i64 %21, i64* %6, align 8
  %22 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %5, align 8
  %23 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %22, i32 0, i32 1
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %5, align 8
  %27 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %28, %29
  %31 = call i64 @readl(i64 %30)
  store i64 %31, i64* %7, align 8
  %32 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %33 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 1, %34
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %7, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %5, align 8
  %41 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %42, %43
  %45 = call i32 @writel(i64 %39, i64 %44)
  %46 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %5, align 8
  %47 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %46, i32 0, i32 1
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  ret void
}

declare dso_local %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data*) #1

declare dso_local %struct.exynos_irq_chip* @to_exynos_irq_chip(%struct.irq_chip*) #1

declare dso_local %struct.samsung_pin_bank* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

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
