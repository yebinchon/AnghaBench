; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_gpio_get_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_gpio_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ingenic_gpio_chip = type { %struct.ingenic_pinctrl* }
%struct.ingenic_pinctrl = type { i64 }

@ID_JZ4760 = common dso_local global i64 0, align 8
@JZ4760_GPIO_PAT1 = common dso_local global i32 0, align 4
@JZ4740_GPIO_SELECT = common dso_local global i32 0, align 4
@JZ4740_GPIO_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @ingenic_gpio_get_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_gpio_get_direction(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ingenic_gpio_chip*, align 8
  %7 = alloca %struct.ingenic_pinctrl*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.ingenic_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.ingenic_gpio_chip* %10, %struct.ingenic_gpio_chip** %6, align 8
  %11 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %6, align 8
  %12 = getelementptr inbounds %struct.ingenic_gpio_chip, %struct.ingenic_gpio_chip* %11, i32 0, i32 0
  %13 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %12, align 8
  store %struct.ingenic_pinctrl* %13, %struct.ingenic_pinctrl** %7, align 8
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %15 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %7, align 8
  %20 = getelementptr inbounds %struct.ingenic_pinctrl, %struct.ingenic_pinctrl* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ID_JZ4760, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @JZ4760_GPIO_PAT1, align 4
  %28 = call i32 @ingenic_get_pin_config(%struct.ingenic_pinctrl* %25, i32 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %44

29:                                               ; preds = %2
  %30 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @JZ4740_GPIO_SELECT, align 4
  %33 = call i32 @ingenic_get_pin_config(%struct.ingenic_pinctrl* %30, i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %44

36:                                               ; preds = %29
  %37 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @JZ4740_GPIO_DIR, align 4
  %40 = call i32 @ingenic_get_pin_config(%struct.ingenic_pinctrl* %37, i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %36, %35, %24
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.ingenic_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @ingenic_get_pin_config(%struct.ingenic_pinctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
