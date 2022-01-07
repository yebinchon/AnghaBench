; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_xt_get_gpio_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_xt_get_gpio_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.mtk_pin_desc = type { i32 }
%struct.gpio_chip = type { i32 }

@PINCTRL_PIN_REG_DI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @mtk_xt_get_gpio_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_xt_get_gpio_state(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mtk_pinctrl*, align 8
  %7 = alloca %struct.mtk_pin_desc*, align 8
  %8 = alloca %struct.gpio_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.mtk_pinctrl*
  store %struct.mtk_pinctrl* %13, %struct.mtk_pinctrl** %6, align 8
  %14 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @mtk_xt_get_gpio_n(%struct.mtk_pinctrl* %14, i64 %15, i32* %9, %struct.gpio_chip** %8)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %3, align 4
  br label %45

21:                                               ; preds = %2
  %22 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %23 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = bitcast i32* %29 to %struct.mtk_pin_desc*
  store %struct.mtk_pin_desc* %30, %struct.mtk_pin_desc** %7, align 8
  %31 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %32 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %7, align 8
  %33 = load i32, i32* @PINCTRL_PIN_REG_DI, align 4
  %34 = call i32 @mtk_hw_get_value(%struct.mtk_pinctrl* %31, %struct.mtk_pin_desc* %32, i32 %33, i32* %10)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %3, align 4
  br label %45

39:                                               ; preds = %21
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %39, %37, %19
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @mtk_xt_get_gpio_n(%struct.mtk_pinctrl*, i64, i32*, %struct.gpio_chip**) #1

declare dso_local i32 @mtk_hw_get_value(%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
