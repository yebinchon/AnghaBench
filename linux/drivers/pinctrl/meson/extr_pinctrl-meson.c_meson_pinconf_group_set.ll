; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinconf_group_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinconf_group_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.meson_pinctrl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.meson_pmx_group* }
%struct.meson_pmx_group = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"set pinconf for group %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @meson_pinconf_group_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_pinconf_group_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.meson_pinctrl*, align 8
  %10 = alloca %struct.meson_pmx_group*, align 8
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.meson_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.meson_pinctrl* %13, %struct.meson_pinctrl** %9, align 8
  %14 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %9, align 8
  %15 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.meson_pmx_group*, %struct.meson_pmx_group** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.meson_pmx_group, %struct.meson_pmx_group* %18, i64 %20
  store %struct.meson_pmx_group* %21, %struct.meson_pmx_group** %10, align 8
  %22 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %9, align 8
  %23 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.meson_pmx_group*, %struct.meson_pmx_group** %10, align 8
  %26 = getelementptr inbounds %struct.meson_pmx_group, %struct.meson_pmx_group* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %47, %4
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.meson_pmx_group*, %struct.meson_pmx_group** %10, align 8
  %32 = getelementptr inbounds %struct.meson_pmx_group, %struct.meson_pmx_group* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %37 = load %struct.meson_pmx_group*, %struct.meson_pmx_group** %10, align 8
  %38 = getelementptr inbounds %struct.meson_pmx_group, %struct.meson_pmx_group* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i64*, i64** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @meson_pinconf_set(%struct.pinctrl_dev* %36, i32 %43, i64* %44, i32 %45)
  br label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %29

50:                                               ; preds = %29
  ret i32 0
}

declare dso_local %struct.meson_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @meson_pinconf_set(%struct.pinctrl_dev*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
