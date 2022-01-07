; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.pm8xxx_gpio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pm8xxx_pin_data* }
%struct.pm8xxx_pin_data = type { i64, i32, i64 }

@PM8XXX_GPIO_MODE_OUTPUT = common dso_local global i64 0, align 8
@IRQCHIP_STATE_LINE_LEVEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @pm8xxx_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pm8xxx_gpio*, align 8
  %6 = alloca %struct.pm8xxx_pin_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.pm8xxx_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.pm8xxx_gpio* %10, %struct.pm8xxx_gpio** %5, align 8
  %11 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %5, align 8
  %12 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %18, align 8
  store %struct.pm8xxx_pin_data* %19, %struct.pm8xxx_pin_data** %6, align 8
  %20 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %6, align 8
  %21 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PM8XXX_GPIO_MODE_OUTPUT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %6, align 8
  %27 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  br label %53

29:                                               ; preds = %2
  %30 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %6, align 8
  %31 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %6, align 8
  %36 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @IRQCHIP_STATE_LINE_LEVEL, align 4
  %39 = call i32 @irq_get_irqchip_state(i64 %37, i32 %38, i32* %7)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %42, %34
  br label %52

49:                                               ; preds = %29
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %48
  br label %53

53:                                               ; preds = %52, %25
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local %struct.pm8xxx_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @irq_get_irqchip_state(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
