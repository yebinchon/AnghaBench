; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c_sirfsoc_gpio_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c_sirfsoc_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.sirfsoc_gpio_chip = type { i32 }
%struct.sirfsoc_gpio_bank = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @sirfsoc_gpio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_gpio_request(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sirfsoc_gpio_chip*, align 8
  %7 = alloca %struct.sirfsoc_gpio_bank*, align 8
  %8 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.sirfsoc_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.sirfsoc_gpio_chip* %10, %struct.sirfsoc_gpio_chip** %6, align 8
  %11 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.sirfsoc_gpio_bank* @sirfsoc_gpio_to_bank(%struct.sirfsoc_gpio_chip* %11, i32 %12)
  store %struct.sirfsoc_gpio_bank* %13, %struct.sirfsoc_gpio_bank** %7, align 8
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %15 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add i32 %16, %17
  %19 = call i64 @pinctrl_gpio_request(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %44

24:                                               ; preds = %2
  %25 = load %struct.sirfsoc_gpio_bank*, %struct.sirfsoc_gpio_bank** %7, align 8
  %26 = getelementptr inbounds %struct.sirfsoc_gpio_bank, %struct.sirfsoc_gpio_bank* %25, i32 0, i32 0
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %6, align 8
  %30 = load %struct.sirfsoc_gpio_bank*, %struct.sirfsoc_gpio_bank** %7, align 8
  %31 = getelementptr inbounds %struct.sirfsoc_gpio_bank, %struct.sirfsoc_gpio_bank* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @SIRFSOC_GPIO_CTRL(i32 %32, i32 %33)
  %35 = call i32 @sirfsoc_gpio_set_input(%struct.sirfsoc_gpio_chip* %29, i32 %34)
  %36 = load %struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_chip** %6, align 8
  %37 = load %struct.sirfsoc_gpio_bank*, %struct.sirfsoc_gpio_bank** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @__sirfsoc_gpio_irq_mask(%struct.sirfsoc_gpio_chip* %36, %struct.sirfsoc_gpio_bank* %37, i32 %38)
  %40 = load %struct.sirfsoc_gpio_bank*, %struct.sirfsoc_gpio_bank** %7, align 8
  %41 = getelementptr inbounds %struct.sirfsoc_gpio_bank, %struct.sirfsoc_gpio_bank* %40, i32 0, i32 0
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %24, %21
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.sirfsoc_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local %struct.sirfsoc_gpio_bank* @sirfsoc_gpio_to_bank(%struct.sirfsoc_gpio_chip*, i32) #1

declare dso_local i64 @pinctrl_gpio_request(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sirfsoc_gpio_set_input(%struct.sirfsoc_gpio_chip*, i32) #1

declare dso_local i32 @SIRFSOC_GPIO_CTRL(i32, i32) #1

declare dso_local i32 @__sirfsoc_gpio_irq_mask(%struct.sirfsoc_gpio_chip*, %struct.sirfsoc_gpio_bank*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
