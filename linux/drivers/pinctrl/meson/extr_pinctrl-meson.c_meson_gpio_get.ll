; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.meson_pinctrl = type { i32 }
%struct.meson_bank = type { i32 }

@REG_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @meson_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.meson_pinctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.meson_bank*, align 8
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = call %struct.meson_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.meson_pinctrl* %13, %struct.meson_pinctrl** %6, align 8
  %14 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @meson_get_bank(%struct.meson_pinctrl* %14, i32 %15, %struct.meson_bank** %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %3, align 4
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.meson_bank*, %struct.meson_bank** %10, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @REG_IN, align 4
  %25 = call i32 @meson_calc_reg_and_bit(%struct.meson_bank* %22, i32 %23, i32 %24, i32* %7, i32* %8)
  %26 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %6, align 8
  %27 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @regmap_read(i32 %28, i32 %29, i32* %9)
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %21, %19
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.meson_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @meson_get_bank(%struct.meson_pinctrl*, i32, %struct.meson_bank**) #1

declare dso_local i32 @meson_calc_reg_and_bit(%struct.meson_bank*, i32, i32, i32*, i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
