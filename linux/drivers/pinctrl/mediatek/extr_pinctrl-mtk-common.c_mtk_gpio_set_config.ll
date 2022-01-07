; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_gpio_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_gpio_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.mtk_pinctrl = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mtk_desc_pin* }
%struct.mtk_desc_pin = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@PIN_CONFIG_INPUT_DEBOUNCE = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@NO_EINT_SUPPORT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i64)* @mtk_gpio_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_gpio_set_config(%struct.gpio_chip* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mtk_pinctrl*, align 8
  %9 = alloca %struct.mtk_desc_pin*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %13 = call %struct.mtk_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.mtk_pinctrl* %13, %struct.mtk_pinctrl** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @pinconf_to_config_param(i64 %14)
  %16 = load i64, i64* @PIN_CONFIG_INPUT_DEBOUNCE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %52

21:                                               ; preds = %3
  %22 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %23 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.mtk_desc_pin*, %struct.mtk_desc_pin** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mtk_desc_pin, %struct.mtk_desc_pin* %26, i64 %28
  store %struct.mtk_desc_pin* %29, %struct.mtk_desc_pin** %9, align 8
  %30 = load %struct.mtk_desc_pin*, %struct.mtk_desc_pin** %9, align 8
  %31 = getelementptr inbounds %struct.mtk_desc_pin, %struct.mtk_desc_pin* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NO_EINT_SUPPORT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %21
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %52

39:                                               ; preds = %21
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @pinconf_to_config_argument(i64 %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.mtk_desc_pin*, %struct.mtk_desc_pin** %9, align 8
  %43 = getelementptr inbounds %struct.mtk_desc_pin, %struct.mtk_desc_pin* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %10, align 8
  %46 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %47 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @mtk_eint_set_debounce(i32 %48, i64 %49, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %39, %36, %18
  %53 = load i32, i32* %4, align 4
  ret i32 %53
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
