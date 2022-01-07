; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_pinconf_bias_set_rev1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_pinconf_bias_set_rev1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { i32 }
%struct.mtk_pin_desc = type { i32 }

@MTK_PULLUP = common dso_local global i32 0, align 4
@MTK_PULLDOWN = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_PULLEN = common dso_local global i32 0, align 4
@MTK_ENABLE = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_PULLSEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_pinconf_bias_set_rev1(%struct.mtk_pinctrl* %0, %struct.mtk_pin_desc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_pinctrl*, align 8
  %6 = alloca %struct.mtk_pin_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %5, align 8
  store %struct.mtk_pin_desc* %1, %struct.mtk_pin_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @MTK_PULLUP, align 4
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @MTK_PULLDOWN, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %9, align 4
  %18 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %19 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %6, align 8
  %20 = load i32, i32* @PINCTRL_PIN_REG_PULLEN, align 4
  %21 = load i32, i32* @MTK_ENABLE, align 4
  %22 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %18, %struct.mtk_pin_desc* %19, i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %38

27:                                               ; preds = %16
  %28 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %29 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %6, align 8
  %30 = load i32, i32* @PINCTRL_PIN_REG_PULLSEL, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %28, %struct.mtk_pin_desc* %29, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %38

37:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %35, %25
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @mtk_hw_set_value(%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
