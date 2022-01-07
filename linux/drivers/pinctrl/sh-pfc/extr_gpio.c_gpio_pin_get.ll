; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_gpio.c_gpio_pin_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_gpio.c_gpio_pin_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.sh_pfc_chip = type { i32 }
%struct.sh_pfc_gpio_data_reg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @gpio_pin_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_pin_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_pfc_chip*, align 8
  %6 = alloca %struct.sh_pfc_gpio_data_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.sh_pfc_chip* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.sh_pfc_chip* %10, %struct.sh_pfc_chip** %5, align 8
  %11 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @gpio_get_data_reg(%struct.sh_pfc_chip* %11, i32 %12, %struct.sh_pfc_gpio_data_reg** %6, i32* %7)
  %14 = load %struct.sh_pfc_gpio_data_reg*, %struct.sh_pfc_gpio_data_reg** %6, align 8
  %15 = getelementptr inbounds %struct.sh_pfc_gpio_data_reg, %struct.sh_pfc_gpio_data_reg* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add i32 %19, 1
  %21 = sub i32 %18, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %5, align 8
  %23 = load %struct.sh_pfc_gpio_data_reg*, %struct.sh_pfc_gpio_data_reg** %6, align 8
  %24 = getelementptr inbounds %struct.sh_pfc_gpio_data_reg, %struct.sh_pfc_gpio_data_reg* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = call i32 @gpio_read_data_reg(%struct.sh_pfc_chip* %22, %struct.TYPE_2__* %25)
  %27 = load i32, i32* %8, align 4
  %28 = lshr i32 %26, %27
  %29 = and i32 %28, 1
  ret i32 %29
}

declare dso_local %struct.sh_pfc_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @gpio_get_data_reg(%struct.sh_pfc_chip*, i32, %struct.sh_pfc_gpio_data_reg**, i32*) #1

declare dso_local i32 @gpio_read_data_reg(%struct.sh_pfc_chip*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
