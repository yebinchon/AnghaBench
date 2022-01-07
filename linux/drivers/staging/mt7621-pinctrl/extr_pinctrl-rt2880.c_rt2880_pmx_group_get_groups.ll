; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-pinctrl/extr_pinctrl-rt2880.c_rt2880_pmx_group_get_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-pinctrl/extr_pinctrl-rt2880.c_rt2880_pmx_group_get_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.rt2880_priv = type { i8**, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i8***, i32*)* @rt2880_pmx_group_get_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2880_pmx_group_get_groups(%struct.pinctrl_dev* %0, i32 %1, i8*** %2, i32* %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8***, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.rt2880_priv*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8*** %2, i8**** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %11 = call %struct.rt2880_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %10)
  store %struct.rt2880_priv* %11, %struct.rt2880_priv** %9, align 8
  %12 = load %struct.rt2880_priv*, %struct.rt2880_priv** %9, align 8
  %13 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %14, i64 %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %39

22:                                               ; preds = %4
  %23 = load %struct.rt2880_priv*, %struct.rt2880_priv** %9, align 8
  %24 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = load %struct.rt2880_priv*, %struct.rt2880_priv** %9, align 8
  %27 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8*, i8** %25, i64 %36
  %38 = load i8***, i8**** %7, align 8
  store i8** %37, i8*** %38, align 8
  br label %44

39:                                               ; preds = %4
  %40 = load %struct.rt2880_priv*, %struct.rt2880_priv** %9, align 8
  %41 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = load i8***, i8**** %7, align 8
  store i8** %42, i8*** %43, align 8
  br label %44

44:                                               ; preds = %39, %22
  %45 = load %struct.rt2880_priv*, %struct.rt2880_priv** %9, align 8
  %46 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 %49
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  ret i32 0
}

declare dso_local %struct.rt2880_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
