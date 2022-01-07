; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_xt_set_gpio_as_eint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_xt_set_gpio_as_eint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.mtk_pin_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.gpio_chip = type { i32 }

@PINCTRL_PIN_REG_MODE = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_DIR = common dso_local global i32 0, align 4
@MTK_INPUT = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_SMT = common dso_local global i32 0, align 4
@MTK_ENABLE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @mtk_xt_set_gpio_as_eint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_xt_set_gpio_as_eint(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mtk_pinctrl*, align 8
  %7 = alloca %struct.mtk_pin_desc*, align 8
  %8 = alloca %struct.gpio_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.mtk_pinctrl*
  store %struct.mtk_pinctrl* %12, %struct.mtk_pinctrl** %6, align 8
  %13 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @mtk_xt_get_gpio_n(%struct.mtk_pinctrl* %13, i64 %14, i32* %9, %struct.gpio_chip** %8)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %3, align 4
  br label %68

20:                                               ; preds = %2
  %21 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %22 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = bitcast i32* %28 to %struct.mtk_pin_desc*
  store %struct.mtk_pin_desc* %29, %struct.mtk_pin_desc** %7, align 8
  %30 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %31 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %7, align 8
  %32 = load i32, i32* @PINCTRL_PIN_REG_MODE, align 4
  %33 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %7, align 8
  %34 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %30, %struct.mtk_pin_desc* %31, i32 %32, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %20
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %3, align 4
  br label %68

42:                                               ; preds = %20
  %43 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %44 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %7, align 8
  %45 = load i32, i32* @PINCTRL_PIN_REG_DIR, align 4
  %46 = load i32, i32* @MTK_INPUT, align 4
  %47 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %43, %struct.mtk_pin_desc* %44, i32 %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %68

52:                                               ; preds = %42
  %53 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %54 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %7, align 8
  %55 = load i32, i32* @PINCTRL_PIN_REG_SMT, align 4
  %56 = load i32, i32* @MTK_ENABLE, align 4
  %57 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %53, %struct.mtk_pin_desc* %54, i32 %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @ENOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %60, %52
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %65, %50, %40, %18
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @mtk_xt_get_gpio_n(%struct.mtk_pinctrl*, i64, i32*, %struct.gpio_chip**) #1

declare dso_local i32 @mtk_hw_set_value(%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
