; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinconf_get_drive_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinconf_get_drive_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_pinctrl = type { i32 }
%struct.meson_bank = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@REG_DS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_pinctrl*, i32, i32*)* @meson_pinconf_get_drive_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_pinconf_get_drive_strength(%struct.meson_pinctrl* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.meson_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.meson_bank*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.meson_pinctrl* %0, %struct.meson_pinctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %14 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %59

20:                                               ; preds = %3
  %21 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @meson_get_bank(%struct.meson_pinctrl* %21, i32 %22, %struct.meson_bank** %8)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %4, align 4
  br label %59

28:                                               ; preds = %20
  %29 = load %struct.meson_bank*, %struct.meson_bank** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @REG_DS, align 4
  %32 = call i32 @meson_calc_reg_and_bit(%struct.meson_bank* %29, i32 %30, i32 %31, i32* %9, i32* %10)
  %33 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %34 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @regmap_read(i32 %35, i32 %36, i32* %11)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %4, align 4
  br label %59

42:                                               ; preds = %28
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = lshr i32 %43, %44
  %46 = and i32 %45, 3
  switch i32 %46, label %55 [
    i32 128, label %47
    i32 131, label %49
    i32 130, label %51
    i32 129, label %53
  ]

47:                                               ; preds = %42
  %48 = load i32*, i32** %7, align 8
  store i32 500, i32* %48, align 4
  br label %58

49:                                               ; preds = %42
  %50 = load i32*, i32** %7, align 8
  store i32 2500, i32* %50, align 4
  br label %58

51:                                               ; preds = %42
  %52 = load i32*, i32** %7, align 8
  store i32 3000, i32* %52, align 4
  br label %58

53:                                               ; preds = %42
  %54 = load i32*, i32** %7, align 8
  store i32 4000, i32* %54, align 4
  br label %58

55:                                               ; preds = %42
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %59

58:                                               ; preds = %53, %51, %49, %47
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %55, %40, %26, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @meson_get_bank(%struct.meson_pinctrl*, i32, %struct.meson_bank**) #1

declare dso_local i32 @meson_calc_reg_and_bit(%struct.meson_bank*, i32, i32, i32*, i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
