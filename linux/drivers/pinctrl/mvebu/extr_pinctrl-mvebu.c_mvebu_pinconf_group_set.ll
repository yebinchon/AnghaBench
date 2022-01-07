; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinconf_group_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinconf_group_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.mvebu_pinctrl = type { %struct.mvebu_pinctrl_group* }
%struct.mvebu_pinctrl_group = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i64)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @mvebu_pinconf_group_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_pinconf_group_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mvebu_pinctrl*, align 8
  %11 = alloca %struct.mvebu_pinctrl_group*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %15 = call %struct.mvebu_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.mvebu_pinctrl* %15, %struct.mvebu_pinctrl** %10, align 8
  %16 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %10, align 8
  %17 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %16, i32 0, i32 0
  %18 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %18, i64 %20
  store %struct.mvebu_pinctrl_group* %21, %struct.mvebu_pinctrl_group** %11, align 8
  %22 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %11, align 8
  %23 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %63

29:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %59, %29
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %30
  %35 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %11, align 8
  %36 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (i32, i32, i64)*, i32 (i32, i32, i64)** %38, align 8
  %40 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %11, align 8
  %41 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %11, align 8
  %44 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64*, i64** %8, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i32 %39(i32 %42, i32 %47, i64 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %34
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %5, align 4
  br label %63

58:                                               ; preds = %34
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %30

62:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %56, %26
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.mvebu_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
