; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_conf_get_drvctrl_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_conf_get_drvctrl_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pin_desc = type { i32 }

@uniphier_conf_drv_strengths_1bit = common dso_local global i32* null, align 8
@UNIPHIER_PINCTRL_DRVCTRL_BASE = common dso_local global i32 0, align 4
@uniphier_conf_drv_strengths_2bit = common dso_local global i32* null, align 8
@UNIPHIER_PINCTRL_DRV2CTRL_BASE = common dso_local global i32 0, align 4
@uniphier_conf_drv_strengths_3bit = common dso_local global i32* null, align 8
@UNIPHIER_PINCTRL_DRV3CTRL_BASE = common dso_local global i32 0, align 4
@uniphier_conf_drv_strengths_fixed4 = common dso_local global i32* null, align 8
@uniphier_conf_drv_strengths_fixed5 = common dso_local global i32* null, align 8
@uniphier_conf_drv_strengths_fixed8 = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32*, i32*, i32*, i32**)* @uniphier_conf_get_drvctrl_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_conf_get_drvctrl_data(%struct.pinctrl_dev* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pinctrl_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca %struct.pin_desc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32** %5, i32*** %13, align 8
  %20 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev* %20, i32 %21)
  store %struct.pin_desc* %22, %struct.pin_desc** %14, align 8
  %23 = load %struct.pin_desc*, %struct.pin_desc** %14, align 8
  %24 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @uniphier_pin_get_drv_type(i32 %25)
  store i32 %26, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %27 = load i32, i32* %15, align 4
  switch i32 %27, label %49 [
    i32 133, label %28
    i32 132, label %32
    i32 131, label %36
    i32 130, label %40
    i32 129, label %43
    i32 128, label %46
  ]

28:                                               ; preds = %6
  %29 = load i32*, i32** @uniphier_conf_drv_strengths_1bit, align 8
  %30 = load i32**, i32*** %13, align 8
  store i32* %29, i32** %30, align 8
  %31 = load i32, i32* @UNIPHIER_PINCTRL_DRVCTRL_BASE, align 4
  store i32 %31, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 1, i32* %18, align 4
  br label %52

32:                                               ; preds = %6
  %33 = load i32*, i32** @uniphier_conf_drv_strengths_2bit, align 8
  %34 = load i32**, i32*** %13, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i32, i32* @UNIPHIER_PINCTRL_DRV2CTRL_BASE, align 4
  store i32 %35, i32* %16, align 4
  store i32 2, i32* %17, align 4
  store i32 2, i32* %18, align 4
  br label %52

36:                                               ; preds = %6
  %37 = load i32*, i32** @uniphier_conf_drv_strengths_3bit, align 8
  %38 = load i32**, i32*** %13, align 8
  store i32* %37, i32** %38, align 8
  %39 = load i32, i32* @UNIPHIER_PINCTRL_DRV3CTRL_BASE, align 4
  store i32 %39, i32* %16, align 4
  store i32 4, i32* %17, align 4
  store i32 3, i32* %18, align 4
  br label %52

40:                                               ; preds = %6
  %41 = load i32*, i32** @uniphier_conf_drv_strengths_fixed4, align 8
  %42 = load i32**, i32*** %13, align 8
  store i32* %41, i32** %42, align 8
  br label %52

43:                                               ; preds = %6
  %44 = load i32*, i32** @uniphier_conf_drv_strengths_fixed5, align 8
  %45 = load i32**, i32*** %13, align 8
  store i32* %44, i32** %45, align 8
  br label %52

46:                                               ; preds = %6
  %47 = load i32*, i32** @uniphier_conf_drv_strengths_fixed8, align 8
  %48 = load i32**, i32*** %13, align 8
  store i32* %47, i32** %48, align 8
  br label %52

49:                                               ; preds = %6
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %73

52:                                               ; preds = %46, %43, %40, %36, %32, %28
  %53 = load %struct.pin_desc*, %struct.pin_desc** %14, align 8
  %54 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @uniphier_pin_get_drvctrl(i32 %55)
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %19, align 4
  %59 = mul i32 %58, %57
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %19, align 4
  %62 = udiv i32 %61, 32
  %63 = mul i32 %62, 4
  %64 = add i32 %60, %63
  %65 = load i32*, i32** %10, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %19, align 4
  %67 = urem i32 %66, 32
  %68 = load i32*, i32** %11, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %18, align 4
  %70 = shl i32 1, %69
  %71 = sub i32 %70, 1
  %72 = load i32*, i32** %12, align 8
  store i32 %71, i32* %72, align 4
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %52, %49
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @uniphier_pin_get_drv_type(i32) #1

declare dso_local i32 @uniphier_pin_get_drvctrl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
