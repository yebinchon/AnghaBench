; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.pm8xxx_gpio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pm8xxx_pin_data* }
%struct.pm8xxx_pin_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @pm8xxx_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8xxx_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
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
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %8, align 8
  %27 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %8, align 8
  %29 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 2
  store i32 %31, i32* %9, align 4
  %32 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %8, align 8
  %33 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 1
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %8, align 8
  %39 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %7, align 8
  %44 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @pm8xxx_write_bank(%struct.pm8xxx_gpio* %43, %struct.pm8xxx_pin_data* %44, i32 1, i32 %45)
  ret void
}

declare dso_local %struct.pm8xxx_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @pm8xxx_write_bank(%struct.pm8xxx_gpio*, %struct.pm8xxx_pin_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
