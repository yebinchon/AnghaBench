; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c_sirfsoc_gpio_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c_sirfsoc_gpio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.sirfsoc_gpio_chip = type { i32 }
%struct.sirfsoc_gpio_bank = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32)* @sirfsoc_gpio_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirfsoc_gpio_free(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sirfsoc_gpio_chip*, align 8
  %6 = alloca %struct.sirfsoc_gpio_bank*, align 8
  %7 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.sirfsoc_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.sirfsoc_gpio_chip* %9, %struct.sirfsoc_gpio_chip** %5, align 8
  %10 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.sirfsoc_gpio_bank* @sirfsoc_gpio_to_bank(%struct.sirfsoc_gpio_chip* %10, i32 %11)
  store %struct.sirfsoc_gpio_bank* %12, %struct.sirfsoc_gpio_bank** %6, align 8
  %13 = load %struct.sirfsoc_gpio_bank*, %struct.sirfsoc_gpio_bank** %6, align 8
  %14 = getelementptr inbounds %struct.sirfsoc_gpio_bank, %struct.sirfsoc_gpio_bank* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %5, align 8
  %18 = load %struct.sirfsoc_gpio_bank*, %struct.sirfsoc_gpio_bank** %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @__sirfsoc_gpio_irq_mask(%struct.sirfsoc_gpio_chip* %17, %struct.sirfsoc_gpio_bank* %18, i32 %19)
  %21 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %5, align 8
  %22 = load %struct.sirfsoc_gpio_bank*, %struct.sirfsoc_gpio_bank** %6, align 8
  %23 = getelementptr inbounds %struct.sirfsoc_gpio_bank, %struct.sirfsoc_gpio_bank* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @SIRFSOC_GPIO_CTRL(i32 %24, i32 %25)
  %27 = call i32 @sirfsoc_gpio_set_input(%struct.sirfsoc_gpio_chip* %21, i32 %26)
  %28 = load %struct.sirfsoc_gpio_bank*, %struct.sirfsoc_gpio_bank** %6, align 8
  %29 = getelementptr inbounds %struct.sirfsoc_gpio_bank, %struct.sirfsoc_gpio_bank* %28, i32 0, i32 0
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %33 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %34, %35
  %37 = call i32 @pinctrl_gpio_free(i32 %36)
  ret void
}

declare dso_local %struct.sirfsoc_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local %struct.sirfsoc_gpio_bank* @sirfsoc_gpio_to_bank(%struct.sirfsoc_gpio_chip*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__sirfsoc_gpio_irq_mask(%struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_bank*, i32) #1

declare dso_local i32 @sirfsoc_gpio_set_input(%struct.sirfsoc_gpio_chip*, i32) #1

declare dso_local i32 @SIRFSOC_GPIO_CTRL(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pinctrl_gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
