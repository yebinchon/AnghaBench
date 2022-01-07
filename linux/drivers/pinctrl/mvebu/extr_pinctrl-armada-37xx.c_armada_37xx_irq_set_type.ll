; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32, i32 }
%struct.gpio_chip = type { i32 }
%struct.armada_37xx_pinctrl = type { i32, i32, i32 }

@IRQ_POL = common dso_local global i32 0, align 4
@GPIO_PER_REG = common dso_local global i32 0, align 4
@INPUT_VAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @armada_37xx_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_37xx_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.armada_37xx_pinctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %14 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %13)
  store %struct.gpio_chip* %14, %struct.gpio_chip** %6, align 8
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %16 = call %struct.armada_37xx_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %15)
  store %struct.armada_37xx_pinctrl* %16, %struct.armada_37xx_pinctrl** %7, align 8
  %17 = load i32, i32* @IRQ_POL, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %7, align 8
  %19 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %18, i32 0, i32 1
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %23 = call i32 @armada_37xx_irq_update_reg(i32* %9, %struct.irq_data* %22)
  %24 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %7, align 8
  %25 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %26, %27
  %29 = call i32 @readl(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %79 [
    i32 128, label %31
    i32 129, label %41
    i32 130, label %50
  ]

31:                                               ; preds = %2
  %32 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %33 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GPIO_PER_REG, align 4
  %36 = srem i32 %34, %35
  %37 = call i32 @BIT(i32 %36)
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %86

41:                                               ; preds = %2
  %42 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %43 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @GPIO_PER_REG, align 4
  %46 = srem i32 %44, %45
  %47 = call i32 @BIT(i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %86

50:                                               ; preds = %2
  %51 = load i32, i32* @INPUT_VAL, align 4
  store i32 %51, i32* %12, align 4
  %52 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %53 = call i32 @armada_37xx_irq_update_reg(i32* %12, %struct.irq_data* %52)
  %54 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %7, align 8
  %55 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @regmap_read(i32 %56, i32 %57, i32* %11)
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %61 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %50
  %66 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %67 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %78

71:                                               ; preds = %50
  %72 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %73 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %71, %65
  br label %86

79:                                               ; preds = %2
  %80 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %7, align 8
  %81 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %80, i32 0, i32 1
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %98

86:                                               ; preds = %78, %41, %31
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %7, align 8
  %89 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %90, %91
  %93 = call i32 @writel(i32 %87, i32 %92)
  %94 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %7, align 8
  %95 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %94, i32 0, i32 1
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %86, %79
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.armada_37xx_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @armada_37xx_irq_update_reg(i32*, %struct.irq_data*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
