; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_gpio_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i64 }
%struct.stm32_gpio_bank = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.stm32_pinctrl = type { i32, i32 }
%struct.pinctrl_gpio_range = type { i32 }

@STM32_GPIO_PINS_PER_BANK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"pin %d not in range.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @stm32_gpio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_gpio_request(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stm32_gpio_bank*, align 8
  %7 = alloca %struct.stm32_pinctrl*, align 8
  %8 = alloca %struct.pinctrl_gpio_range*, align 8
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.stm32_gpio_bank* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.stm32_gpio_bank* %11, %struct.stm32_gpio_bank** %6, align 8
  %12 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %13 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.stm32_pinctrl* @dev_get_drvdata(i32 %15)
  store %struct.stm32_pinctrl* %16, %struct.stm32_pinctrl** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %6, align 8
  %19 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @STM32_GPIO_PINS_PER_BANK, align 4
  %22 = mul i32 %20, %21
  %23 = add i32 %17, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %7, align 8
  %25 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin_nolock(i32 %26, i32 %27)
  store %struct.pinctrl_gpio_range* %28, %struct.pinctrl_gpio_range** %8, align 8
  %29 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %8, align 8
  %30 = icmp ne %struct.pinctrl_gpio_range* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %2
  %32 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %7, align 8
  %33 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %47

39:                                               ; preds = %2
  %40 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %41 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = call i32 @pinctrl_gpio_request(i64 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %39, %31
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.stm32_gpio_bank* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local %struct.stm32_pinctrl* @dev_get_drvdata(i32) #1

declare dso_local %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin_nolock(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pinctrl_gpio_request(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
