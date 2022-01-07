; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_xt_set_gpio_as_eint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_xt_set_gpio_as_eint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { i32 }
%struct.mtk_desc_pin = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PIN_CONFIG_INPUT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @mtk_xt_set_gpio_as_eint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_xt_set_gpio_as_eint(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mtk_pinctrl*, align 8
  %7 = alloca %struct.mtk_desc_pin*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.mtk_pinctrl*
  store %struct.mtk_pinctrl* %9, %struct.mtk_pinctrl** %6, align 8
  %10 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call %struct.mtk_desc_pin* @mtk_find_pin_by_eint_num(%struct.mtk_pinctrl* %10, i64 %11)
  store %struct.mtk_desc_pin* %12, %struct.mtk_desc_pin** %7, align 8
  %13 = load %struct.mtk_desc_pin*, %struct.mtk_desc_pin** %7, align 8
  %14 = icmp ne %struct.mtk_desc_pin* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %20 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mtk_desc_pin*, %struct.mtk_desc_pin** %7, align 8
  %23 = getelementptr inbounds %struct.mtk_desc_pin, %struct.mtk_desc_pin* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mtk_desc_pin*, %struct.mtk_desc_pin** %7, align 8
  %27 = getelementptr inbounds %struct.mtk_desc_pin, %struct.mtk_desc_pin* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mtk_pmx_set_mode(i32 %21, i32 %25, i32 %29)
  %31 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %32 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mtk_desc_pin*, %struct.mtk_desc_pin** %7, align 8
  %35 = getelementptr inbounds %struct.mtk_desc_pin, %struct.mtk_desc_pin* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mtk_pmx_gpio_set_direction(i32 %33, i32* null, i32 %37, i32 1)
  %39 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %40 = load %struct.mtk_desc_pin*, %struct.mtk_desc_pin** %7, align 8
  %41 = getelementptr inbounds %struct.mtk_desc_pin, %struct.mtk_desc_pin* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PIN_CONFIG_INPUT_ENABLE, align 4
  %45 = call i32 @mtk_pconf_set_ies_smt(%struct.mtk_pinctrl* %39, i32 %43, i32 1, i32 %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %18, %15
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.mtk_desc_pin* @mtk_find_pin_by_eint_num(%struct.mtk_pinctrl*, i64) #1

declare dso_local i32 @mtk_pmx_set_mode(i32, i32, i32) #1

declare dso_local i32 @mtk_pmx_gpio_set_direction(i32, i32*, i32, i32) #1

declare dso_local i32 @mtk_pconf_set_ies_smt(%struct.mtk_pinctrl*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
