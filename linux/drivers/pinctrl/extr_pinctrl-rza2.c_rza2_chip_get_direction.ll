; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza2.c_rza2_chip_get_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza2.c_rza2_chip_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.rza2_pinctrl_priv = type { i64 }

@RZA2_PDR_MASK = common dso_local global i32 0, align 4
@RZA2_PDR_OUTPUT = common dso_local global i32 0, align 4
@RZA2_PDR_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @rza2_chip_get_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza2_chip_get_direction(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rza2_pinctrl_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.rza2_pinctrl_priv* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.rza2_pinctrl_priv* %11, %struct.rza2_pinctrl_priv** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @RZA2_PIN_ID_TO_PORT(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @RZA2_PIN_ID_TO_PIN(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %6, align 8
  %17 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @RZA2_PDR(i32 %19)
  %21 = add nsw i64 %18, %20
  %22 = call i32 @readw(i64 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %24, 2
  %26 = ashr i32 %23, %25
  %27 = load i32, i32* @RZA2_PDR_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @RZA2_PDR_OUTPUT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

33:                                               ; preds = %2
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @RZA2_PDR_INPUT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %44

38:                                               ; preds = %33
  %39 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %6, align 8
  %40 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @rza2_pin_to_gpio(i64 %41, i32 %42, i32 1)
  store i32 1, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %37, %32
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.rza2_pinctrl_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @RZA2_PIN_ID_TO_PORT(i32) #1

declare dso_local i32 @RZA2_PIN_ID_TO_PIN(i32) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i64 @RZA2_PDR(i32) #1

declare dso_local i32 @rza2_pin_to_gpio(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
