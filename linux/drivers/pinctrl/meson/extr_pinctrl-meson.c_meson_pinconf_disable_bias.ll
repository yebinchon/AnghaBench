; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinconf_disable_bias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinconf_disable_bias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_pinctrl = type { i32 }
%struct.meson_bank = type { i32 }

@REG_PULLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_pinctrl*, i32)* @meson_pinconf_disable_bias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_pinconf_disable_bias(%struct.meson_pinctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.meson_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.meson_bank*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.meson_pinctrl* %0, %struct.meson_pinctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @meson_get_bank(%struct.meson_pinctrl* %10, i32 %11, %struct.meson_bank** %6)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %3, align 4
  br label %34

17:                                               ; preds = %2
  %18 = load %struct.meson_bank*, %struct.meson_bank** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @REG_PULLEN, align 4
  %21 = call i32 @meson_calc_reg_and_bit(%struct.meson_bank* %18, i32 %19, i32 %20, i32* %7, i32* %8)
  %22 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %4, align 8
  %23 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %27, i32 0)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %31, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @meson_get_bank(%struct.meson_pinctrl*, i32, %struct.meson_bank**) #1

declare dso_local i32 @meson_calc_reg_and_bit(%struct.meson_bank*, i32, i32, i32*, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
