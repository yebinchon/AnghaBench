; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_pmx_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_pmx_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.uniphier_pinctrl_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.uniphier_pinctrl_group* }
%struct.uniphier_pinctrl_group = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @uniphier_pmx_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_pmx_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uniphier_pinctrl_priv*, align 8
  %9 = alloca %struct.uniphier_pinctrl_group*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.uniphier_pinctrl_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.uniphier_pinctrl_priv* %13, %struct.uniphier_pinctrl_priv** %8, align 8
  %14 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %8, align 8
  %15 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.uniphier_pinctrl_group*, %struct.uniphier_pinctrl_group** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.uniphier_pinctrl_group, %struct.uniphier_pinctrl_group* %18, i64 %20
  store %struct.uniphier_pinctrl_group* %21, %struct.uniphier_pinctrl_group** %9, align 8
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %50, %3
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.uniphier_pinctrl_group*, %struct.uniphier_pinctrl_group** %9, align 8
  %25 = getelementptr inbounds %struct.uniphier_pinctrl_group, %struct.uniphier_pinctrl_group* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %22
  %29 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %30 = load %struct.uniphier_pinctrl_group*, %struct.uniphier_pinctrl_group** %9, align 8
  %31 = getelementptr inbounds %struct.uniphier_pinctrl_group, %struct.uniphier_pinctrl_group* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.uniphier_pinctrl_group*, %struct.uniphier_pinctrl_group** %9, align 8
  %38 = getelementptr inbounds %struct.uniphier_pinctrl_group, %struct.uniphier_pinctrl_group* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @uniphier_pmx_set_one_mux(%struct.pinctrl_dev* %29, i32 %36, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %28
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %54

49:                                               ; preds = %28
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %22

53:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.uniphier_pinctrl_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @uniphier_pmx_set_one_mux(%struct.pinctrl_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
