; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_pinconf_adv_drive_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_pinconf_adv_drive_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { i32 }
%struct.mtk_pin_desc = type { i32 }

@PINCTRL_PIN_REG_DRV_EN = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_DRV_E0 = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_DRV_E1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_pinconf_adv_drive_set(%struct.mtk_pinctrl* %0, %struct.mtk_pin_desc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_pinctrl*, align 8
  %6 = alloca %struct.mtk_pin_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %5, align 8
  store %struct.mtk_pin_desc* %1, %struct.mtk_pin_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 1
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 2
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %27 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %6, align 8
  %28 = load i32, i32* @PINCTRL_PIN_REG_DRV_EN, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %26, %struct.mtk_pin_desc* %27, i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %62

35:                                               ; preds = %3
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %62

40:                                               ; preds = %35
  %41 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %42 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %6, align 8
  %43 = load i32, i32* @PINCTRL_PIN_REG_DRV_E0, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %41, %struct.mtk_pin_desc* %42, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %62

50:                                               ; preds = %40
  %51 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %52 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %6, align 8
  %53 = load i32, i32* @PINCTRL_PIN_REG_DRV_E1, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %51, %struct.mtk_pin_desc* %52, i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %58, %48, %38, %33
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @mtk_hw_set_value(%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
