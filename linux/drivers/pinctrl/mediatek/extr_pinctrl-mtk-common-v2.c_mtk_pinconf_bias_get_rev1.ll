; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_pinconf_bias_get_rev1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_pinconf_bias_get_rev1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { i32 }
%struct.mtk_pin_desc = type { i32 }

@PINCTRL_PIN_REG_PULLEN = common dso_local global i32 0, align 4
@MTK_DISABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_PULLSEL = common dso_local global i32 0, align 4
@MTK_PULLUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_pinconf_bias_get_rev1(%struct.mtk_pinctrl* %0, %struct.mtk_pin_desc* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_pinctrl*, align 8
  %7 = alloca %struct.mtk_pin_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %6, align 8
  store %struct.mtk_pin_desc* %1, %struct.mtk_pin_desc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %13 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %7, align 8
  %14 = load i32, i32* @PINCTRL_PIN_REG_PULLEN, align 4
  %15 = call i32 @mtk_hw_get_value(%struct.mtk_pinctrl* %12, %struct.mtk_pin_desc* %13, i32 %14, i32* %11)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %49

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @MTK_DISABLE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %49

27:                                               ; preds = %20
  %28 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %29 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %7, align 8
  %30 = load i32, i32* @PINCTRL_PIN_REG_PULLSEL, align 4
  %31 = call i32 @mtk_hw_get_value(%struct.mtk_pinctrl* %28, %struct.mtk_pin_desc* %29, i32 %30, i32* %11)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %49

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @MTK_PULLUP, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = xor i32 %37, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %49

47:                                               ; preds = %36
  %48 = load i32*, i32** %9, align 8
  store i32 1, i32* %48, align 4
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %44, %34, %24, %18
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @mtk_hw_get_value(%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
