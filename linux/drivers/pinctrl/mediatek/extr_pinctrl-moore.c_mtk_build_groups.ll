; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-moore.c_mtk_build_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-moore.c_mtk_build_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.group_desc* }
%struct.group_desc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to register group %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pinctrl*)* @mtk_build_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_build_groups(%struct.mtk_pinctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_pinctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.group_desc*, align 8
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %52, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %3, align 8
  %10 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %7
  %16 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %3, align 8
  %17 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.group_desc*, %struct.group_desc** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %20, i64 %22
  store %struct.group_desc* %23, %struct.group_desc** %6, align 8
  %24 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.group_desc*, %struct.group_desc** %6, align 8
  %28 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.group_desc*, %struct.group_desc** %6, align 8
  %31 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.group_desc*, %struct.group_desc** %6, align 8
  %34 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.group_desc*, %struct.group_desc** %6, align 8
  %37 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pinctrl_generic_add_group(i32 %26, i32 %29, i32 %32, i32 %35, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %15
  %43 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %3, align 8
  %44 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.group_desc*, %struct.group_desc** %6, align 8
  %47 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %56

51:                                               ; preds = %15
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %7

55:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @pinctrl_generic_add_group(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
