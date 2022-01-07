; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c_sirfsoc_gpio_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c_sirfsoc_gpio_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.sirfsoc_gpio_chip = type { i32 }
%struct.sirfsoc_gpio_bank = type { i32 }

@SIRFSOC_GPIO_BANK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @sirfsoc_gpio_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirfsoc_gpio_irq_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.sirfsoc_gpio_chip*, align 8
  %5 = alloca %struct.sirfsoc_gpio_bank*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.gpio_chip* %7, %struct.gpio_chip** %3, align 8
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.sirfsoc_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.sirfsoc_gpio_chip* %9, %struct.sirfsoc_gpio_chip** %4, align 8
  %10 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %4, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sirfsoc_gpio_bank* @sirfsoc_gpio_to_bank(%struct.sirfsoc_gpio_chip* %10, i32 %13)
  store %struct.sirfsoc_gpio_bank* %14, %struct.sirfsoc_gpio_bank** %5, align 8
  %15 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %4, align 8
  %16 = load %struct.sirfsoc_gpio_bank*, %struct.sirfsoc_gpio_bank** %5, align 8
  %17 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %18 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SIRFSOC_GPIO_BANK_SIZE, align 4
  %21 = srem i32 %19, %20
  %22 = call i32 @__sirfsoc_gpio_irq_mask(%struct.sirfsoc_gpio_chip* %15, %struct.sirfsoc_gpio_bank* %16, i32 %21)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.sirfsoc_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local %struct.sirfsoc_gpio_bank* @sirfsoc_gpio_to_bank(%struct.sirfsoc_gpio_chip*, i32) #1

declare dso_local i32 @__sirfsoc_gpio_irq_mask(%struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_bank*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
