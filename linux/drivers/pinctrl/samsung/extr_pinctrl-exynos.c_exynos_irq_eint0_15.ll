; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_irq_eint0_15.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_irq_eint0_15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.exynos_weint_data = type { i32, %struct.samsung_pin_bank* }
%struct.samsung_pin_bank = type { i32 }
%struct.irq_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @exynos_irq_eint0_15 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_irq_eint0_15(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.exynos_weint_data*, align 8
  %4 = alloca %struct.samsung_pin_bank*, align 8
  %5 = alloca %struct.irq_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %7 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %8 = call %struct.exynos_weint_data* @irq_desc_get_handler_data(%struct.irq_desc* %7)
  store %struct.exynos_weint_data* %8, %struct.exynos_weint_data** %3, align 8
  %9 = load %struct.exynos_weint_data*, %struct.exynos_weint_data** %3, align 8
  %10 = getelementptr inbounds %struct.exynos_weint_data, %struct.exynos_weint_data* %9, i32 0, i32 1
  %11 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %10, align 8
  store %struct.samsung_pin_bank* %11, %struct.samsung_pin_bank** %4, align 8
  %12 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %13 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %12)
  store %struct.irq_chip* %13, %struct.irq_chip** %5, align 8
  %14 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %15 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %16 = call i32 @chained_irq_enter(%struct.irq_chip* %14, %struct.irq_desc* %15)
  %17 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %18 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.exynos_weint_data*, %struct.exynos_weint_data** %3, align 8
  %21 = getelementptr inbounds %struct.exynos_weint_data, %struct.exynos_weint_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @irq_linear_revmap(i32 %19, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @generic_handle_irq(i32 %24)
  %26 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %27 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %28 = call i32 @chained_irq_exit(%struct.irq_chip* %26, %struct.irq_desc* %27)
  ret void
}

declare dso_local %struct.exynos_weint_data* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
