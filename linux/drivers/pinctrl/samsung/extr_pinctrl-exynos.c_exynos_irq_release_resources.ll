; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_irq_release_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_irq_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.samsung_pin_bank = type { i64, i32, i32, i64, %struct.samsung_pin_bank_type* }
%struct.samsung_pin_bank_type = type { i64*, i32* }

@PINCFG_TYPE_FUNC = common dso_local global i64 0, align 8
@EXYNOS_PIN_FUNC_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @exynos_irq_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_irq_release_resources(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.samsung_pin_bank*, align 8
  %4 = alloca %struct.samsung_pin_bank_type*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %11 = call %struct.samsung_pin_bank* @irq_data_get_irq_chip_data(%struct.irq_data* %10)
  store %struct.samsung_pin_bank* %11, %struct.samsung_pin_bank** %3, align 8
  %12 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %13 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %12, i32 0, i32 4
  %14 = load %struct.samsung_pin_bank_type*, %struct.samsung_pin_bank_type** %13, align 8
  store %struct.samsung_pin_bank_type* %14, %struct.samsung_pin_bank_type** %4, align 8
  %15 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %16 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.samsung_pin_bank_type*, %struct.samsung_pin_bank_type** %4, align 8
  %19 = getelementptr inbounds %struct.samsung_pin_bank_type, %struct.samsung_pin_bank_type* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @PINCFG_TYPE_FUNC, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %17, %23
  store i64 %24, i64* %5, align 8
  %25 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %26 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.samsung_pin_bank_type*, %struct.samsung_pin_bank_type** %4, align 8
  %29 = getelementptr inbounds %struct.samsung_pin_bank_type, %struct.samsung_pin_bank_type* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @PINCFG_TYPE_FUNC, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = mul i32 %27, %33
  store i32 %34, i32* %7, align 4
  %35 = load %struct.samsung_pin_bank_type*, %struct.samsung_pin_bank_type** %4, align 8
  %36 = getelementptr inbounds %struct.samsung_pin_bank_type, %struct.samsung_pin_bank_type* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @PINCFG_TYPE_FUNC, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 1, %40
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  %43 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %44 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %43, i32 0, i32 2
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %48 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %49, %50
  %52 = call i32 @readl(i64 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @EXYNOS_PIN_FUNC_INPUT, align 4
  %60 = load i32, i32* %7, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %66 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %67, %68
  %70 = call i32 @writel(i32 %64, i64 %69)
  %71 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %72 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %71, i32 0, i32 2
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %76 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %75, i32 0, i32 1
  %77 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %78 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @gpiochip_unlock_as_irq(i32* %76, i32 %79)
  ret void
}

declare dso_local %struct.samsung_pin_bank* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gpiochip_unlock_as_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
