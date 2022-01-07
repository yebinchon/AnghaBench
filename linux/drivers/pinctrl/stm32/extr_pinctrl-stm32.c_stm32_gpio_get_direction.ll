; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_gpio_get_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_gpio_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.stm32_gpio_bank = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @stm32_gpio_get_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_gpio_get_direction(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stm32_gpio_bank*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %11 = call %struct.stm32_gpio_bank* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.stm32_gpio_bank* %11, %struct.stm32_gpio_bank** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @stm32_gpio_pin(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @stm32_pmx_get_mode(%struct.stm32_gpio_bank* %14, i32 %15, i64* %8, i64* %9)
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 1, i32* %7, align 4
  br label %34

23:                                               ; preds = %19, %2
  %24 = load i64, i64* %9, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %33

30:                                               ; preds = %26, %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %29
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local %struct.stm32_gpio_bank* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @stm32_gpio_pin(i32) #1

declare dso_local i32 @stm32_pmx_get_mode(%struct.stm32_gpio_bank*, i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
