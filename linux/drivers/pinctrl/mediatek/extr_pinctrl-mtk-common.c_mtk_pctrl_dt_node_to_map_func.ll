; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pctrl_dt_node_to_map_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pctrl_dt_node_to_map_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { i32 }
%struct.mtk_pinctrl_group = type { i32 }
%struct.pinctrl_map = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@PIN_MAP_TYPE_MUX_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid function %d on pin %d .\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mtk_gpio_functions = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pinctrl*, i64, i64, %struct.mtk_pinctrl_group*, %struct.pinctrl_map**, i32*, i32*)* @mtk_pctrl_dt_node_to_map_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pctrl_dt_node_to_map_func(%struct.mtk_pinctrl* %0, i64 %1, i64 %2, %struct.mtk_pinctrl_group* %3, %struct.pinctrl_map** %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtk_pinctrl*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mtk_pinctrl_group*, align 8
  %13 = alloca %struct.pinctrl_map**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.mtk_pinctrl_group* %3, %struct.mtk_pinctrl_group** %12, align 8
  store %struct.pinctrl_map** %4, %struct.pinctrl_map*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load i32*, i32** %15, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %14, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load i32, i32* @ENOSPC, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %78

25:                                               ; preds = %7
  %26 = load i32, i32* @PIN_MAP_TYPE_MUX_GROUP, align 4
  %27 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %13, align 8
  %28 = load %struct.pinctrl_map*, %struct.pinctrl_map** %27, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = load i32, i32* %29, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %28, i64 %31
  %33 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %32, i32 0, i32 1
  store i32 %26, i32* %33, align 4
  %34 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %12, align 8
  %35 = getelementptr inbounds %struct.mtk_pinctrl_group, %struct.mtk_pinctrl_group* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %13, align 8
  %38 = load %struct.pinctrl_map*, %struct.pinctrl_map** %37, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = load i32, i32* %39, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %38, i64 %41
  %43 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %36, i32* %45, align 4
  %46 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @mtk_pctrl_is_function_valid(%struct.mtk_pinctrl* %46, i64 %47, i64 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %25
  %53 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %54 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %56, i64 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  br label %78

61:                                               ; preds = %25
  %62 = load i32*, i32** @mtk_gpio_functions, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %13, align 8
  %67 = load %struct.pinctrl_map*, %struct.pinctrl_map** %66, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = load i32, i32* %68, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %67, i64 %70
  %72 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %65, i32* %74, align 4
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* %75, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %75, align 4
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %61, %52, %22
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i32 @mtk_pctrl_is_function_valid(%struct.mtk_pinctrl*, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
