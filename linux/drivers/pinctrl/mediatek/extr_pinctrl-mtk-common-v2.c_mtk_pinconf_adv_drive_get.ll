; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_pinconf_adv_drive_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_pinconf_adv_drive_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { i32 }
%struct.mtk_pin_desc = type { i32 }

@PINCTRL_PIN_REG_DRV_EN = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_DRV_E0 = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_DRV_E1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_pinconf_adv_drive_get(%struct.mtk_pinctrl* %0, %struct.mtk_pin_desc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_pinctrl*, align 8
  %6 = alloca %struct.mtk_pin_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %5, align 8
  store %struct.mtk_pin_desc* %1, %struct.mtk_pin_desc** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %13 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %6, align 8
  %14 = load i32, i32* @PINCTRL_PIN_REG_DRV_EN, align 4
  %15 = call i32 @mtk_hw_get_value(%struct.mtk_pinctrl* %12, %struct.mtk_pin_desc* %13, i32 %14, i32* %8)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %4, align 4
  br label %48

20:                                               ; preds = %3
  %21 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %22 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %6, align 8
  %23 = load i32, i32* @PINCTRL_PIN_REG_DRV_E0, align 4
  %24 = call i32 @mtk_hw_get_value(%struct.mtk_pinctrl* %21, %struct.mtk_pin_desc* %22, i32 %23, i32* %9)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %4, align 4
  br label %48

29:                                               ; preds = %20
  %30 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %31 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %6, align 8
  %32 = load i32, i32* @PINCTRL_PIN_REG_DRV_E1, align 4
  %33 = call i32 @mtk_hw_get_value(%struct.mtk_pinctrl* %30, %struct.mtk_pin_desc* %31, i32 %32, i32* %10)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %48

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 %40, 1
  %42 = or i32 %39, %41
  %43 = load i32, i32* %10, align 4
  %44 = shl i32 %43, 2
  %45 = or i32 %42, %44
  %46 = and i32 %45, 7
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %38, %36, %27, %18
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @mtk_hw_get_value(%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
