; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c_sirfsoc_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c_sirfsoc_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.sirfsoc_gpio_chip = type { i32 }
%struct.sirfsoc_gpio_bank = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @sirfsoc_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sirfsoc_gpio_chip*, align 8
  %8 = alloca %struct.sirfsoc_gpio_bank*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = call %struct.sirfsoc_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.sirfsoc_gpio_chip* %13, %struct.sirfsoc_gpio_chip** %7, align 8
  %14 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.sirfsoc_gpio_bank* @sirfsoc_gpio_to_bank(%struct.sirfsoc_gpio_chip* %14, i32 %15)
  store %struct.sirfsoc_gpio_bank* %16, %struct.sirfsoc_gpio_bank** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @sirfsoc_gpio_to_bankoff(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.sirfsoc_gpio_bank*, %struct.sirfsoc_gpio_bank** %8, align 8
  %20 = getelementptr inbounds %struct.sirfsoc_gpio_bank, %struct.sirfsoc_gpio_bank* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @SIRFSOC_GPIO_CTRL(i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %7, align 8
  %25 = getelementptr inbounds %struct.sirfsoc_gpio_chip, %struct.sirfsoc_gpio_chip* %24, i32 0, i32 0
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %7, align 8
  %29 = load %struct.sirfsoc_gpio_bank*, %struct.sirfsoc_gpio_bank** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @sirfsoc_gpio_set_output(%struct.sirfsoc_gpio_chip* %28, %struct.sirfsoc_gpio_bank* %29, i32 %30, i32 %31)
  %33 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %7, align 8
  %34 = getelementptr inbounds %struct.sirfsoc_gpio_chip, %struct.sirfsoc_gpio_chip* %33, i32 0, i32 0
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  ret i32 0
}

declare dso_local %struct.sirfsoc_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local %struct.sirfsoc_gpio_bank* @sirfsoc_gpio_to_bank(%struct.sirfsoc_gpio_chip*, i32) #1

declare dso_local i32 @sirfsoc_gpio_to_bankoff(i32) #1

declare dso_local i32 @SIRFSOC_GPIO_CTRL(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sirfsoc_gpio_set_output(%struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_bank*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
