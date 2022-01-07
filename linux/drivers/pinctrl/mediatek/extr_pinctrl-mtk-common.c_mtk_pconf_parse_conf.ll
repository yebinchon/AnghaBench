; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pconf_parse_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pconf_parse_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.mtk_pinctrl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32, i32)* @mtk_pconf_parse_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pconf_parse_conf(%struct.pinctrl_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtk_pinctrl*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %12 = call %struct.mtk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.mtk_pinctrl* %12, %struct.mtk_pinctrl** %10, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %62 [
    i32 134, label %14
    i32 132, label %19
    i32 133, label %24
    i32 130, label %29
    i32 128, label %38
    i32 129, label %48
    i32 131, label %57
  ]

14:                                               ; preds = %4
  %15 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @mtk_pconf_set_pull_select(%struct.mtk_pinctrl* %15, i32 %16, i32 0, i32 0, i32 %17)
  store i32 %18, i32* %9, align 4
  br label %65

19:                                               ; preds = %4
  %20 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @mtk_pconf_set_pull_select(%struct.mtk_pinctrl* %20, i32 %21, i32 1, i32 1, i32 %22)
  store i32 %23, i32* %9, align 4
  br label %65

24:                                               ; preds = %4
  %25 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @mtk_pconf_set_pull_select(%struct.mtk_pinctrl* %25, i32 %26, i32 1, i32 0, i32 %27)
  store i32 %28, i32* %9, align 4
  br label %65

29:                                               ; preds = %4
  %30 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @mtk_pmx_gpio_set_direction(%struct.pinctrl_dev* %30, i32* null, i32 %31, i32 1)
  %33 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @mtk_pconf_set_ies_smt(%struct.mtk_pinctrl* %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  br label %65

38:                                               ; preds = %4
  %39 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %40 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @mtk_gpio_set(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @mtk_pmx_gpio_set_direction(%struct.pinctrl_dev* %45, i32* null, i32 %46, i32 0)
  store i32 %47, i32* %9, align 4
  br label %65

48:                                               ; preds = %4
  %49 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @mtk_pmx_gpio_set_direction(%struct.pinctrl_dev* %49, i32* null, i32 %50, i32 1)
  %52 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @mtk_pconf_set_ies_smt(%struct.mtk_pinctrl* %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %9, align 4
  br label %65

57:                                               ; preds = %4
  %58 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @mtk_pconf_set_driving(%struct.mtk_pinctrl* %58, i32 %59, i32 %60)
  store i32 %61, i32* %9, align 4
  br label %65

62:                                               ; preds = %4
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %62, %57, %48, %38, %29, %24, %19, %14
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local %struct.mtk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @mtk_pconf_set_pull_select(%struct.mtk_pinctrl*, i32, i32, i32, i32) #1

declare dso_local i32 @mtk_pmx_gpio_set_direction(%struct.pinctrl_dev*, i32*, i32, i32) #1

declare dso_local i32 @mtk_pconf_set_ies_smt(%struct.mtk_pinctrl*, i32, i32, i32) #1

declare dso_local i32 @mtk_gpio_set(i32, i32, i32) #1

declare dso_local i32 @mtk_pconf_set_driving(%struct.mtk_pinctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
