; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c_sirfsoc_gpio_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c_sirfsoc_gpio_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.sirfsoc_gpio_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sirfsoc_gpio_bank = type { i32 }

@SIRFSOC_GPIO_CTL_INTR_STS_MASK = common dso_local global i32 0, align 4
@SIRFSOC_GPIO_CTL_OUT_EN_MASK = common dso_local global i32 0, align 4
@SIRFSOC_GPIO_CTL_INTR_HIGH_MASK = common dso_local global i32 0, align 4
@SIRFSOC_GPIO_CTL_INTR_TYPE_MASK = common dso_local global i32 0, align 4
@SIRFSOC_GPIO_CTL_INTR_LOW_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @sirfsoc_gpio_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_gpio_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca %struct.sirfsoc_gpio_chip*, align 8
  %7 = alloca %struct.sirfsoc_gpio_bank*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %13 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %12)
  store %struct.gpio_chip* %13, %struct.gpio_chip** %5, align 8
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %15 = call %struct.sirfsoc_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %14)
  store %struct.sirfsoc_gpio_chip* %15, %struct.sirfsoc_gpio_chip** %6, align 8
  %16 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %6, align 8
  %17 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %18 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.sirfsoc_gpio_bank* @sirfsoc_gpio_to_bank(%struct.sirfsoc_gpio_chip* %16, i32 %19)
  store %struct.sirfsoc_gpio_bank* %20, %struct.sirfsoc_gpio_bank** %7, align 8
  %21 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %22 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sirfsoc_gpio_to_bankoff(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.sirfsoc_gpio_bank*, %struct.sirfsoc_gpio_bank** %7, align 8
  %26 = getelementptr inbounds %struct.sirfsoc_gpio_bank, %struct.sirfsoc_gpio_bank* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @SIRFSOC_GPIO_CTRL(i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %6, align 8
  %31 = getelementptr inbounds %struct.sirfsoc_gpio_chip, %struct.sirfsoc_gpio_chip* %30, i32 0, i32 0
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %6, align 8
  %35 = getelementptr inbounds %struct.sirfsoc_gpio_chip, %struct.sirfsoc_gpio_chip* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %37, %38
  %40 = call i32 @readl(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @SIRFSOC_GPIO_CTL_INTR_STS_MASK, align 4
  %42 = load i32, i32* @SIRFSOC_GPIO_CTL_OUT_EN_MASK, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %4, align 4
  switch i32 %47, label %97 [
    i32 128, label %48
    i32 131, label %49
    i32 132, label %59
    i32 133, label %69
    i32 129, label %77
    i32 130, label %87
  ]

48:                                               ; preds = %2
  br label %97

49:                                               ; preds = %2
  %50 = load i32, i32* @SIRFSOC_GPIO_CTL_INTR_HIGH_MASK, align 4
  %51 = load i32, i32* @SIRFSOC_GPIO_CTL_INTR_TYPE_MASK, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @SIRFSOC_GPIO_CTL_INTR_LOW_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %97

59:                                               ; preds = %2
  %60 = load i32, i32* @SIRFSOC_GPIO_CTL_INTR_HIGH_MASK, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* @SIRFSOC_GPIO_CTL_INTR_LOW_MASK, align 4
  %65 = load i32, i32* @SIRFSOC_GPIO_CTL_INTR_TYPE_MASK, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %97

69:                                               ; preds = %2
  %70 = load i32, i32* @SIRFSOC_GPIO_CTL_INTR_HIGH_MASK, align 4
  %71 = load i32, i32* @SIRFSOC_GPIO_CTL_INTR_LOW_MASK, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @SIRFSOC_GPIO_CTL_INTR_TYPE_MASK, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %97

77:                                               ; preds = %2
  %78 = load i32, i32* @SIRFSOC_GPIO_CTL_INTR_HIGH_MASK, align 4
  %79 = load i32, i32* @SIRFSOC_GPIO_CTL_INTR_TYPE_MASK, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %9, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* @SIRFSOC_GPIO_CTL_INTR_LOW_MASK, align 4
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  br label %97

87:                                               ; preds = %2
  %88 = load i32, i32* @SIRFSOC_GPIO_CTL_INTR_HIGH_MASK, align 4
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* @SIRFSOC_GPIO_CTL_INTR_LOW_MASK, align 4
  %92 = load i32, i32* @SIRFSOC_GPIO_CTL_INTR_TYPE_MASK, align 4
  %93 = or i32 %91, %92
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %9, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %2, %87, %77, %69, %59, %49, %48
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %6, align 8
  %100 = getelementptr inbounds %struct.sirfsoc_gpio_chip, %struct.sirfsoc_gpio_chip* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %102, %103
  %105 = call i32 @writel(i32 %98, i32 %104)
  %106 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %6, align 8
  %107 = getelementptr inbounds %struct.sirfsoc_gpio_chip, %struct.sirfsoc_gpio_chip* %106, i32 0, i32 0
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  ret i32 0
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.sirfsoc_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local %struct.sirfsoc_gpio_bank* @sirfsoc_gpio_to_bank(%struct.sirfsoc_gpio_chip*, i32) #1

declare dso_local i32 @sirfsoc_gpio_to_bankoff(i32) #1

declare dso_local i32 @SIRFSOC_GPIO_CTRL(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
