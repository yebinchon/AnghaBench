; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-moore.c_mtk_gpio_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-moore.c_mtk_gpio_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.mtk_pinctrl = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.mtk_pin_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@PIN_CONFIG_INPUT_DEBOUNCE = common dso_local global i64 0, align 8
@EINT_NA = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i64)* @mtk_gpio_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_gpio_set_config(%struct.gpio_chip* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mtk_pinctrl*, align 8
  %9 = alloca %struct.mtk_pin_desc*, align 8
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %12 = call %struct.mtk_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.mtk_pinctrl* %12, %struct.mtk_pinctrl** %8, align 8
  %13 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %14 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = bitcast i32* %20 to %struct.mtk_pin_desc*
  store %struct.mtk_pin_desc* %21, %struct.mtk_pin_desc** %9, align 8
  %22 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %23 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @pinconf_to_config_param(i64 %27)
  %29 = load i64, i64* @PIN_CONFIG_INPUT_DEBOUNCE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %9, align 8
  %33 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @EINT_NA, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31, %26, %3
  %39 = load i32, i32* @ENOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %53

41:                                               ; preds = %31
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @pinconf_to_config_argument(i64 %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %45 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %9, align 8
  %48 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @mtk_eint_set_debounce(i32 %46, i64 %50, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %41, %38
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.mtk_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @mtk_eint_set_debounce(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
