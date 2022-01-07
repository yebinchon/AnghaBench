; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_gpio_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_gpio_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.pm8xxx_gpio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pm8xxx_pin_data* }
%struct.pm8xxx_pin_data = type { i32 }

@PM8XXX_GPIO_MODE_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @pm8xxx_gpio_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_gpio_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pm8xxx_gpio*, align 8
  %6 = alloca %struct.pm8xxx_pin_data*, align 8
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.pm8xxx_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.pm8xxx_gpio* %9, %struct.pm8xxx_gpio** %5, align 8
  %10 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %5, align 8
  %11 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %17, align 8
  store %struct.pm8xxx_pin_data* %18, %struct.pm8xxx_pin_data** %6, align 8
  %19 = load i32, i32* @PM8XXX_GPIO_MODE_INPUT, align 4
  %20 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %6, align 8
  %21 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %6, align 8
  %23 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 2
  store i32 %25, i32* %7, align 4
  %26 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %5, align 8
  %27 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @pm8xxx_write_bank(%struct.pm8xxx_gpio* %26, %struct.pm8xxx_pin_data* %27, i32 1, i32 %28)
  ret i32 0
}

declare dso_local %struct.pm8xxx_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @pm8xxx_write_bank(%struct.pm8xxx_gpio*, %struct.pm8xxx_pin_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
