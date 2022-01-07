; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pmx_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pmx_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.mtk_desc_function = type { i32 }
%struct.mtk_pinctrl = type { i32, %struct.mtk_pinctrl_group* }
%struct.mtk_pinctrl_group = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"invalid function %d on group %d .\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @mtk_pmx_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pmx_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtk_desc_function*, align 8
  %10 = alloca %struct.mtk_pinctrl*, align 8
  %11 = alloca %struct.mtk_pinctrl_group*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.mtk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.mtk_pinctrl* %13, %struct.mtk_pinctrl** %10, align 8
  %14 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %15 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %14, i32 0, i32 1
  %16 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mtk_pinctrl_group, %struct.mtk_pinctrl_group* %16, i64 %18
  store %struct.mtk_pinctrl_group* %19, %struct.mtk_pinctrl_group** %11, align 8
  %20 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %21 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %11, align 8
  %22 = getelementptr inbounds %struct.mtk_pinctrl_group, %struct.mtk_pinctrl_group* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @mtk_pctrl_is_function_valid(%struct.mtk_pinctrl* %20, i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %3
  %29 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %30 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %58

37:                                               ; preds = %3
  %38 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %39 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %11, align 8
  %40 = getelementptr inbounds %struct.mtk_pinctrl_group, %struct.mtk_pinctrl_group* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.mtk_desc_function* @mtk_pctrl_find_function_by_pin(%struct.mtk_pinctrl* %38, i32 %41, i32 %42)
  store %struct.mtk_desc_function* %43, %struct.mtk_desc_function** %9, align 8
  %44 = load %struct.mtk_desc_function*, %struct.mtk_desc_function** %9, align 8
  %45 = icmp ne %struct.mtk_desc_function* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %58

49:                                               ; preds = %37
  %50 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %51 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %11, align 8
  %52 = getelementptr inbounds %struct.mtk_pinctrl_group, %struct.mtk_pinctrl_group* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mtk_desc_function*, %struct.mtk_desc_function** %9, align 8
  %55 = getelementptr inbounds %struct.mtk_desc_function, %struct.mtk_desc_function* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mtk_pmx_set_mode(%struct.pinctrl_dev* %50, i32 %53, i32 %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %49, %46, %28
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.mtk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @mtk_pctrl_is_function_valid(%struct.mtk_pinctrl*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local %struct.mtk_desc_function* @mtk_pctrl_find_function_by_pin(%struct.mtk_pinctrl*, i32, i32) #1

declare dso_local i32 @mtk_pmx_set_mode(%struct.pinctrl_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
