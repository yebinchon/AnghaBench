; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson8-pmx.c_meson8_pmx_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson8-pmx.c_meson8_pmx_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.meson_pinctrl = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.meson_pmx_group*, %struct.meson_pmx_func* }
%struct.meson_pmx_group = type { i32, i32*, i32, i64 }
%struct.meson_pmx_func = type { i32 }
%struct.meson8_pmx_data = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"enable function %s, group %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @meson8_pmx_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson8_pmx_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.meson_pinctrl*, align 8
  %8 = alloca %struct.meson_pmx_func*, align 8
  %9 = alloca %struct.meson_pmx_group*, align 8
  %10 = alloca %struct.meson8_pmx_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %14 = call %struct.meson_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.meson_pinctrl* %14, %struct.meson_pinctrl** %7, align 8
  %15 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %7, align 8
  %16 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.meson_pmx_func*, %struct.meson_pmx_func** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.meson_pmx_func, %struct.meson_pmx_func* %19, i64 %21
  store %struct.meson_pmx_func* %22, %struct.meson_pmx_func** %8, align 8
  %23 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %7, align 8
  %24 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.meson_pmx_group*, %struct.meson_pmx_group** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.meson_pmx_group, %struct.meson_pmx_group* %27, i64 %29
  store %struct.meson_pmx_group* %30, %struct.meson_pmx_group** %9, align 8
  %31 = load %struct.meson_pmx_group*, %struct.meson_pmx_group** %9, align 8
  %32 = getelementptr inbounds %struct.meson_pmx_group, %struct.meson_pmx_group* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.meson8_pmx_data*
  store %struct.meson8_pmx_data* %34, %struct.meson8_pmx_data** %10, align 8
  store i32 0, i32* %12, align 4
  %35 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %7, align 8
  %36 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.meson_pmx_func*, %struct.meson_pmx_func** %8, align 8
  %39 = getelementptr inbounds %struct.meson_pmx_func, %struct.meson_pmx_func* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.meson_pmx_group*, %struct.meson_pmx_group** %9, align 8
  %42 = getelementptr inbounds %struct.meson_pmx_group, %struct.meson_pmx_group* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %62, %3
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.meson_pmx_group*, %struct.meson_pmx_group** %9, align 8
  %48 = getelementptr inbounds %struct.meson_pmx_group, %struct.meson_pmx_group* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %7, align 8
  %53 = load %struct.meson_pmx_group*, %struct.meson_pmx_group** %9, align 8
  %54 = getelementptr inbounds %struct.meson_pmx_group, %struct.meson_pmx_group* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @meson8_pmx_disable_other_groups(%struct.meson_pinctrl* %52, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %45

65:                                               ; preds = %45
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %65
  %69 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %7, align 8
  %70 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.meson8_pmx_data*, %struct.meson8_pmx_data** %10, align 8
  %73 = getelementptr inbounds %struct.meson8_pmx_data, %struct.meson8_pmx_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %74, 4
  %76 = load %struct.meson8_pmx_data*, %struct.meson8_pmx_data** %10, align 8
  %77 = getelementptr inbounds %struct.meson8_pmx_data, %struct.meson8_pmx_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = load %struct.meson8_pmx_data*, %struct.meson8_pmx_data** %10, align 8
  %81 = getelementptr inbounds %struct.meson8_pmx_data, %struct.meson8_pmx_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @BIT(i32 %82)
  %84 = call i32 @regmap_update_bits(i32 %71, i32 %75, i32 %79, i32 %83)
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %68, %65
  %86 = load i32, i32* %12, align 4
  ret i32 %86
}

declare dso_local %struct.meson_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @meson8_pmx_disable_other_groups(%struct.meson_pinctrl*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
