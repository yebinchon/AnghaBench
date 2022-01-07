; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_irq_request_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_irq_request_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.samsung_pin_bank = type { i64, i32, i64, i32, %struct.TYPE_2__, %struct.samsung_pin_bank_type* }
%struct.TYPE_2__ = type { i32 }
%struct.samsung_pin_bank_type = type { i64*, i32* }

@.str = private unnamed_addr constant [31 x i8] c"unable to lock pin %s-%lu IRQ\0A\00", align 1
@PINCFG_TYPE_FUNC = common dso_local global i64 0, align 8
@EXYNOS_PIN_FUNC_EINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*)* @exynos_irq_request_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_irq_request_resources(%struct.irq_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.samsung_pin_bank*, align 8
  %5 = alloca %struct.samsung_pin_bank_type*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %13 = call %struct.samsung_pin_bank* @irq_data_get_irq_chip_data(%struct.irq_data* %12)
  store %struct.samsung_pin_bank* %13, %struct.samsung_pin_bank** %4, align 8
  %14 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %15 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %14, i32 0, i32 5
  %16 = load %struct.samsung_pin_bank_type*, %struct.samsung_pin_bank_type** %15, align 8
  store %struct.samsung_pin_bank_type* %16, %struct.samsung_pin_bank_type** %5, align 8
  %17 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %18 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %17, i32 0, i32 4
  %19 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %20 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gpiochip_lock_as_irq(%struct.TYPE_2__* %18, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %1
  %26 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %27 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %31 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %34 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %2, align 4
  br label %99

38:                                               ; preds = %1
  %39 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %40 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.samsung_pin_bank_type*, %struct.samsung_pin_bank_type** %5, align 8
  %43 = getelementptr inbounds %struct.samsung_pin_bank_type, %struct.samsung_pin_bank_type* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @PINCFG_TYPE_FUNC, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %41, %47
  store i64 %48, i64* %6, align 8
  %49 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %50 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.samsung_pin_bank_type*, %struct.samsung_pin_bank_type** %5, align 8
  %53 = getelementptr inbounds %struct.samsung_pin_bank_type, %struct.samsung_pin_bank_type* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @PINCFG_TYPE_FUNC, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = mul i32 %51, %57
  store i32 %58, i32* %8, align 4
  %59 = load %struct.samsung_pin_bank_type*, %struct.samsung_pin_bank_type** %5, align 8
  %60 = getelementptr inbounds %struct.samsung_pin_bank_type, %struct.samsung_pin_bank_type* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @PINCFG_TYPE_FUNC, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 1, %64
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %68 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %67, i32 0, i32 1
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %72 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %73, %74
  %76 = call i32 @readl(i64 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = shl i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* @EXYNOS_PIN_FUNC_EINT, align 4
  %84 = load i32, i32* %8, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* %10, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %90 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %91, %92
  %94 = call i32 @writel(i32 %88, i64 %93)
  %95 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %96 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %95, i32 0, i32 1
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %38, %25
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.samsung_pin_bank* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @gpiochip_lock_as_irq(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
