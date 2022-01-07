; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_nmk_gpio_get_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_nmk_gpio_get_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.nmk_gpio_chip = type { i32, i64 }

@NMK_GPIO_DAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @nmk_gpio_get_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmk_gpio_get_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nmk_gpio_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.nmk_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.nmk_gpio_chip* %8, %struct.nmk_gpio_chip** %5, align 8
  %9 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %10 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clk_enable(i32 %11)
  %13 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %14 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NMK_GPIO_DAT, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %27 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @clk_disable(i32 %28)
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local %struct.nmk_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
