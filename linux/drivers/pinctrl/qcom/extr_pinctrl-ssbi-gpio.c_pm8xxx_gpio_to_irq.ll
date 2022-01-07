; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_gpio_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_gpio_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.pm8xxx_gpio = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pm8xxx_pin_data* }
%struct.pm8xxx_pin_data = type { i32 }
%struct.irq_fwspec = type { i32, i64*, i32 }

@PM8XXX_GPIO_PHYSICAL_OFFSET = common dso_local global i64 0, align 8
@IRQ_TYPE_EDGE_RISING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @pm8xxx_gpio_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_gpio_to_irq(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pm8xxx_gpio*, align 8
  %6 = alloca %struct.pm8xxx_pin_data*, align 8
  %7 = alloca %struct.irq_fwspec, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.pm8xxx_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.pm8xxx_gpio* %10, %struct.pm8xxx_gpio** %5, align 8
  %11 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %5, align 8
  %12 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %18, align 8
  store %struct.pm8xxx_pin_data* %19, %struct.pm8xxx_pin_data** %6, align 8
  %20 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %5, align 8
  %21 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %7, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %7, i32 0, i32 0
  store i32 2, i32* %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* @PM8XXX_GPIO_PHYSICAL_OFFSET, align 8
  %28 = add nsw i64 %26, %27
  %29 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %7, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 %28, i64* %31, align 8
  %32 = load i64, i64* @IRQ_TYPE_EDGE_RISING, align 8
  %33 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %7, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  store i64 %32, i64* %35, align 8
  %36 = call i32 @irq_create_fwspec_mapping(%struct.irq_fwspec* %7)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %6, align 8
  %39 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local %struct.pm8xxx_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @irq_create_fwspec_mapping(%struct.irq_fwspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
