; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_nmk_gpio_latent_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_nmk_gpio_latent_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.nmk_gpio_chip = type { i32, i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @nmk_gpio_latent_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmk_gpio_latent_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.nmk_gpio_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %6 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %7 = call %struct.gpio_chip* @irq_desc_get_handler_data(%struct.irq_desc* %6)
  store %struct.gpio_chip* %7, %struct.gpio_chip** %3, align 8
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.nmk_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.nmk_gpio_chip* %9, %struct.nmk_gpio_chip** %4, align 8
  %10 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %11 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %10, i32 0, i32 1
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %14 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 %12(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @__nmk_gpio_irq_handler(%struct.irq_desc* %17, i32 %18)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.nmk_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @__nmk_gpio_irq_handler(%struct.irq_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
