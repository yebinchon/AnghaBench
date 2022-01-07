; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson8-pmx.c_meson8_pmx_disable_other_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson8-pmx.c_meson8_pmx_disable_other_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_pinctrl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.meson_pmx_group* }
%struct.meson_pmx_group = type { i32, i32*, i64 }
%struct.meson8_pmx_data = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_pinctrl*, i32, i32)* @meson8_pmx_disable_other_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson8_pmx_disable_other_groups(%struct.meson_pinctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.meson_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.meson_pmx_group*, align 8
  %8 = alloca %struct.meson8_pmx_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.meson_pinctrl* %0, %struct.meson_pinctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %76, %3
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %4, align 8
  %14 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %79

19:                                               ; preds = %11
  %20 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %4, align 8
  %21 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.meson_pmx_group*, %struct.meson_pmx_group** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.meson_pmx_group, %struct.meson_pmx_group* %24, i64 %26
  store %struct.meson_pmx_group* %27, %struct.meson_pmx_group** %7, align 8
  %28 = load %struct.meson_pmx_group*, %struct.meson_pmx_group** %7, align 8
  %29 = getelementptr inbounds %struct.meson_pmx_group, %struct.meson_pmx_group* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.meson8_pmx_data*
  store %struct.meson8_pmx_data* %31, %struct.meson8_pmx_data** %8, align 8
  %32 = load %struct.meson8_pmx_data*, %struct.meson8_pmx_data** %8, align 8
  %33 = getelementptr inbounds %struct.meson8_pmx_data, %struct.meson8_pmx_data* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %19
  br label %76

41:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %72, %41
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.meson_pmx_group*, %struct.meson_pmx_group** %7, align 8
  %45 = getelementptr inbounds %struct.meson_pmx_group, %struct.meson_pmx_group* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %42
  %49 = load %struct.meson_pmx_group*, %struct.meson_pmx_group** %7, align 8
  %50 = getelementptr inbounds %struct.meson_pmx_group, %struct.meson_pmx_group* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %48
  %59 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %4, align 8
  %60 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.meson8_pmx_data*, %struct.meson8_pmx_data** %8, align 8
  %63 = getelementptr inbounds %struct.meson8_pmx_data, %struct.meson8_pmx_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %64, 4
  %66 = load %struct.meson8_pmx_data*, %struct.meson8_pmx_data** %8, align 8
  %67 = getelementptr inbounds %struct.meson8_pmx_data, %struct.meson8_pmx_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @BIT(i32 %68)
  %70 = call i32 @regmap_update_bits(i32 %61, i32 %65, i32 %69, i32 0)
  br label %71

71:                                               ; preds = %58, %48
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %42

75:                                               ; preds = %42
  br label %76

76:                                               ; preds = %75, %40
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %11

79:                                               ; preds = %11
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
