; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinconf_get_gpio_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinconf_get_gpio_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_pinctrl = type { i32 }
%struct.meson_bank = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_pinctrl*, i32, i32)* @meson_pinconf_get_gpio_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_pinconf_get_gpio_bit(%struct.meson_pinctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.meson_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.meson_bank*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.meson_pinctrl* %0, %struct.meson_pinctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @meson_get_bank(%struct.meson_pinctrl* %13, i32 %14, %struct.meson_bank** %8)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %4, align 4
  br label %42

20:                                               ; preds = %3
  %21 = load %struct.meson_bank*, %struct.meson_bank** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @meson_calc_reg_and_bit(%struct.meson_bank* %21, i32 %22, i32 %23, i32* %9, i32* %10)
  %25 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %26 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @regmap_read(i32 %27, i32 %28, i32* %11)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %4, align 4
  br label %42

34:                                               ; preds = %20
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %34, %32, %18
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

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
