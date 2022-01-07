; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson-axg-pmx.c_meson_axg_pmx_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson-axg-pmx.c_meson_axg_pmx_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.meson_pinctrl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.meson_pmx_group*, %struct.meson_pmx_func* }
%struct.meson_pmx_group = type { i32, i32*, i32, i64 }
%struct.meson_pmx_func = type { i32 }
%struct.meson_pmx_axg_data = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"enable function %s, group %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @meson_axg_pmx_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_axg_pmx_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.meson_pinctrl*, align 8
  %11 = alloca %struct.meson_pmx_func*, align 8
  %12 = alloca %struct.meson_pmx_group*, align 8
  %13 = alloca %struct.meson_pmx_axg_data*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = call %struct.meson_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.meson_pinctrl* %15, %struct.meson_pinctrl** %10, align 8
  %16 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %10, align 8
  %17 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.meson_pmx_func*, %struct.meson_pmx_func** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.meson_pmx_func, %struct.meson_pmx_func* %20, i64 %22
  store %struct.meson_pmx_func* %23, %struct.meson_pmx_func** %11, align 8
  %24 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %10, align 8
  %25 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.meson_pmx_group*, %struct.meson_pmx_group** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.meson_pmx_group, %struct.meson_pmx_group* %28, i64 %30
  store %struct.meson_pmx_group* %31, %struct.meson_pmx_group** %12, align 8
  %32 = load %struct.meson_pmx_group*, %struct.meson_pmx_group** %12, align 8
  %33 = getelementptr inbounds %struct.meson_pmx_group, %struct.meson_pmx_group* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.meson_pmx_axg_data*
  store %struct.meson_pmx_axg_data* %35, %struct.meson_pmx_axg_data** %13, align 8
  %36 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %10, align 8
  %37 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.meson_pmx_func*, %struct.meson_pmx_func** %11, align 8
  %40 = getelementptr inbounds %struct.meson_pmx_func, %struct.meson_pmx_func* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.meson_pmx_group*, %struct.meson_pmx_group** %12, align 8
  %43 = getelementptr inbounds %struct.meson_pmx_group, %struct.meson_pmx_group* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %70, %3
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.meson_pmx_group*, %struct.meson_pmx_group** %12, align 8
  %49 = getelementptr inbounds %struct.meson_pmx_group, %struct.meson_pmx_group* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %46
  %53 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %10, align 8
  %54 = load %struct.meson_pmx_group*, %struct.meson_pmx_group** %12, align 8
  %55 = getelementptr inbounds %struct.meson_pmx_group, %struct.meson_pmx_group* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.meson_pmx_axg_data*, %struct.meson_pmx_axg_data** %13, align 8
  %62 = getelementptr inbounds %struct.meson_pmx_axg_data, %struct.meson_pmx_axg_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @meson_axg_pmx_update_function(%struct.meson_pinctrl* %53, i32 %60, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %52
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %74

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %46

73:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %67
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.meson_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @meson_axg_pmx_update_function(%struct.meson_pinctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
