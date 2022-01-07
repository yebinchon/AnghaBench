; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-paris.c_mtk_pmx_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-paris.c_mtk_pmx_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.mtk_pinctrl = type { %struct.TYPE_2__*, i32, %struct.mtk_pinctrl_group* }
%struct.TYPE_2__ = type { i32* }
%struct.mtk_pinctrl_group = type { i64 }
%struct.mtk_func_desc = type { i32 }
%struct.mtk_pin_desc = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"invalid function %d on group %d .\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @mtk_pmx_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pmx_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtk_pinctrl*, align 8
  %9 = alloca %struct.mtk_pinctrl_group*, align 8
  %10 = alloca %struct.mtk_func_desc*, align 8
  %11 = alloca %struct.mtk_pin_desc*, align 8
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %14 = call %struct.mtk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.mtk_pinctrl* %14, %struct.mtk_pinctrl** %8, align 8
  %15 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %16 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %15, i32 0, i32 2
  %17 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mtk_pinctrl_group, %struct.mtk_pinctrl_group* %17, i64 %19
  store %struct.mtk_pinctrl_group* %20, %struct.mtk_pinctrl_group** %9, align 8
  %21 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %22 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %9, align 8
  %23 = getelementptr inbounds %struct.mtk_pinctrl_group, %struct.mtk_pinctrl_group* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @mtk_pctrl_is_function_valid(%struct.mtk_pinctrl* %21, i64 %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %3
  %30 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %31 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %68

38:                                               ; preds = %3
  %39 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %40 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %9, align 8
  %41 = getelementptr inbounds %struct.mtk_pinctrl_group, %struct.mtk_pinctrl_group* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call %struct.mtk_func_desc* @mtk_pctrl_find_function_by_pin(%struct.mtk_pinctrl* %39, i64 %42, i32 %43)
  store %struct.mtk_func_desc* %44, %struct.mtk_func_desc** %10, align 8
  %45 = load %struct.mtk_func_desc*, %struct.mtk_func_desc** %10, align 8
  %46 = icmp ne %struct.mtk_func_desc* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %68

50:                                               ; preds = %38
  %51 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %52 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %9, align 8
  %57 = getelementptr inbounds %struct.mtk_pinctrl_group, %struct.mtk_pinctrl_group* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = bitcast i32* %59 to %struct.mtk_pin_desc*
  store %struct.mtk_pin_desc* %60, %struct.mtk_pin_desc** %11, align 8
  %61 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %62 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %63 = load i32, i32* @PINCTRL_PIN_REG_MODE, align 4
  %64 = load %struct.mtk_func_desc*, %struct.mtk_func_desc** %10, align 8
  %65 = getelementptr inbounds %struct.mtk_func_desc, %struct.mtk_func_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %61, %struct.mtk_pin_desc* %62, i32 %63, i32 %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %50, %47, %29
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.mtk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @mtk_pctrl_is_function_valid(%struct.mtk_pinctrl*, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local %struct.mtk_func_desc* @mtk_pctrl_find_function_by_pin(%struct.mtk_pinctrl*, i64, i32) #1

declare dso_local i32 @mtk_hw_set_value(%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
