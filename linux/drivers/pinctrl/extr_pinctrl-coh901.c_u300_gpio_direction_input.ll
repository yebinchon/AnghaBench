; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-coh901.c_u300_gpio_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-coh901.c_u300_gpio_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.u300_gpio = type { i32 }

@pcr = common dso_local global i32 0, align 4
@U300_GPIO_PXPCR_PIN_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @u300_gpio_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u300_gpio_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.u300_gpio*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.u300_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.u300_gpio* %9, %struct.u300_gpio** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @pcr, align 4
  %14 = call i32 @U300_PIN_REG(i32 %12, i32 %13)
  %15 = call i32 @readl(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @U300_GPIO_PXPCR_PIN_MODE_MASK, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 7
  %19 = shl i32 %18, 1
  %20 = shl i32 %16, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @pcr, align 4
  %27 = call i32 @U300_PIN_REG(i32 %25, i32 %26)
  %28 = call i32 @writel(i32 %24, i32 %27)
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @local_irq_restore(i64 %29)
  ret i32 0
}

declare dso_local %struct.u300_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @U300_PIN_REG(i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
