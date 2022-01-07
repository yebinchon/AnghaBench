; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip = type { i32 }
%struct.exynos_irq_chip = type { i64 }
%struct.samsung_pin_bank = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @exynos_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_irq_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  %4 = alloca %struct.exynos_irq_chip*, align 8
  %5 = alloca %struct.samsung_pin_bank*, align 8
  %6 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* %7)
  store %struct.irq_chip* %8, %struct.irq_chip** %3, align 8
  %9 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %10 = call %struct.exynos_irq_chip* @to_exynos_irq_chip(%struct.irq_chip* %9)
  store %struct.exynos_irq_chip* %10, %struct.exynos_irq_chip** %4, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = call %struct.samsung_pin_bank* @irq_data_get_irq_chip_data(%struct.irq_data* %11)
  store %struct.samsung_pin_bank* %12, %struct.samsung_pin_bank** %5, align 8
  %13 = load %struct.exynos_irq_chip*, %struct.exynos_irq_chip** %4, align 8
  %14 = getelementptr inbounds %struct.exynos_irq_chip, %struct.exynos_irq_chip* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %5, align 8
  %17 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %15, %18
  store i64 %19, i64* %6, align 8
  %20 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %21 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 1, %22
  %24 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %5, align 8
  %25 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  ret void
}

declare dso_local %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data*) #1

declare dso_local %struct.exynos_irq_chip* @to_exynos_irq_chip(%struct.irq_chip*) #1

declare dso_local %struct.samsung_pin_bank* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
