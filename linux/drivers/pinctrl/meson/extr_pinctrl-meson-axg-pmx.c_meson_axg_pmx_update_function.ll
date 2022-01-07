; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson-axg-pmx.c_meson_axg_pmx_update_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson-axg-pmx.c_meson_axg_pmx_update_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_pinctrl = type { i32 }
%struct.meson_pmx_bank = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_pinctrl*, i32, i32)* @meson_axg_pmx_update_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_axg_pmx_update_function(%struct.meson_pinctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.meson_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.meson_pmx_bank*, align 8
  store %struct.meson_pinctrl* %0, %struct.meson_pinctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @meson_axg_pmx_get_bank(%struct.meson_pinctrl* %12, i32 %13, %struct.meson_pmx_bank** %11)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %36

19:                                               ; preds = %3
  %20 = load %struct.meson_pmx_bank*, %struct.meson_pmx_bank** %11, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @meson_pmx_calc_reg_and_offset(%struct.meson_pmx_bank* %20, i32 %21, i32* %9, i32* %10)
  %23 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %24 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = shl i32 %26, 2
  %28 = load i32, i32* %10, align 4
  %29 = shl i32 15, %28
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 15
  %32 = load i32, i32* %10, align 4
  %33 = shl i32 %31, %32
  %34 = call i32 @regmap_update_bits(i32 %25, i32 %27, i32 %29, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %19, %17
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @meson_axg_pmx_get_bank(%struct.meson_pinctrl*, i32, %struct.meson_pmx_bank**) #1

declare dso_local i32 @meson_pmx_calc_reg_and_offset(%struct.meson_pmx_bank*, i32, i32*, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
