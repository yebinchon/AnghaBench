; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinconf_enable_bias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinconf_enable_bias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_pinctrl = type { i32, i32 }
%struct.meson_bank = type { i32 }

@REG_PULL = common dso_local global i32 0, align 4
@REG_PULLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_pinctrl*, i32, i32)* @meson_pinconf_enable_bias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_pinconf_enable_bias(%struct.meson_pinctrl* %0, i32 %1, i32 %2) #0 {
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
  store i32 0, i32* %11, align 4
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
  br label %62

20:                                               ; preds = %3
  %21 = load %struct.meson_bank*, %struct.meson_bank** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @REG_PULL, align 4
  %24 = call i32 @meson_calc_reg_and_bit(%struct.meson_bank* %21, i32 %22, i32 %23, i32* %9, i32* %10)
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @BIT(i32 %28)
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %32 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %4, align 4
  br label %62

43:                                               ; preds = %30
  %44 = load %struct.meson_bank*, %struct.meson_bank** %8, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @REG_PULLEN, align 4
  %47 = call i32 @meson_calc_reg_and_bit(%struct.meson_bank* %44, i32 %45, i32 %46, i32* %9, i32* %10)
  %48 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %49 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %53, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %43
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %59, %41, %18
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @meson_get_bank(%struct.meson_pinctrl*, i32, %struct.meson_bank**) #1

declare dso_local i32 @meson_calc_reg_and_bit(%struct.meson_bank*, i32, i32, i32*, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
