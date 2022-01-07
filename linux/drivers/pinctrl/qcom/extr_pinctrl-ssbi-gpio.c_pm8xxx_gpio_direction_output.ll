; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.pm8xxx_gpio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pm8xxx_pin_data* }
%struct.pm8xxx_pin_data = type { i32, i32, i32 }

@PM8XXX_GPIO_MODE_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @pm8xxx_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pm8xxx_gpio*, align 8
  %8 = alloca %struct.pm8xxx_pin_data*, align 8
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.pm8xxx_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.pm8xxx_gpio* %11, %struct.pm8xxx_gpio** %7, align 8
  %12 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %7, align 8
  %13 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %19, align 8
  store %struct.pm8xxx_pin_data* %20, %struct.pm8xxx_pin_data** %8, align 8
  %21 = load i32, i32* @PM8XXX_GPIO_MODE_OUTPUT, align 4
  %22 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %8, align 8
  %23 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %8, align 8
  %30 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %8, align 8
  %32 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 2
  store i32 %34, i32* %9, align 4
  %35 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %8, align 8
  %36 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 1
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %8, align 8
  %42 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %7, align 8
  %47 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @pm8xxx_write_bank(%struct.pm8xxx_gpio* %46, %struct.pm8xxx_pin_data* %47, i32 1, i32 %48)
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
