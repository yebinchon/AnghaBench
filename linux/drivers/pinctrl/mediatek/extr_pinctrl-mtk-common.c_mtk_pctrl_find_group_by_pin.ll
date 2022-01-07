; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pctrl_find_group_by_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pctrl_find_group_by_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl_group = type { i64 }
%struct.mtk_pinctrl = type { i32, %struct.mtk_pinctrl_group* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtk_pinctrl_group* (%struct.mtk_pinctrl*, i64)* @mtk_pctrl_find_group_by_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtk_pinctrl_group* @mtk_pctrl_find_group_by_pin(%struct.mtk_pinctrl* %0, i64 %1) #0 {
  %3 = alloca %struct.mtk_pinctrl_group*, align 8
  %4 = alloca %struct.mtk_pinctrl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtk_pinctrl_group*, align 8
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %29, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %11 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %8
  %15 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %16 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %15, i32 0, i32 1
  %17 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mtk_pinctrl_group, %struct.mtk_pinctrl_group* %17, i64 %19
  store %struct.mtk_pinctrl_group* %20, %struct.mtk_pinctrl_group** %7, align 8
  %21 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %7, align 8
  %22 = getelementptr inbounds %struct.mtk_pinctrl_group, %struct.mtk_pinctrl_group* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %7, align 8
  store %struct.mtk_pinctrl_group* %27, %struct.mtk_pinctrl_group** %3, align 8
  br label %33

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %8

32:                                               ; preds = %8
  store %struct.mtk_pinctrl_group* null, %struct.mtk_pinctrl_group** %3, align 8
  br label %33

33:                                               ; preds = %32, %26
  %34 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %3, align 8
  ret %struct.mtk_pinctrl_group* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
