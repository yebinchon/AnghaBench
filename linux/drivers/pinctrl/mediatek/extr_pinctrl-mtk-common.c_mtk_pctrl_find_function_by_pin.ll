; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pctrl_find_function_by_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pctrl_find_function_by_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_desc_function = type { i32, i64 }
%struct.mtk_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mtk_desc_pin* }
%struct.mtk_desc_pin = type { %struct.mtk_desc_function* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtk_desc_function* (%struct.mtk_pinctrl*, i32, i32)* @mtk_pctrl_find_function_by_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtk_desc_function* @mtk_pctrl_find_function_by_pin(%struct.mtk_pinctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtk_desc_function*, align 8
  %5 = alloca %struct.mtk_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtk_desc_pin*, align 8
  %9 = alloca %struct.mtk_desc_function*, align 8
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %11 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.mtk_desc_pin*, %struct.mtk_desc_pin** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mtk_desc_pin, %struct.mtk_desc_pin* %14, i64 %16
  store %struct.mtk_desc_pin* %17, %struct.mtk_desc_pin** %8, align 8
  %18 = load %struct.mtk_desc_pin*, %struct.mtk_desc_pin** %8, align 8
  %19 = getelementptr inbounds %struct.mtk_desc_pin, %struct.mtk_desc_pin* %18, i32 0, i32 0
  %20 = load %struct.mtk_desc_function*, %struct.mtk_desc_function** %19, align 8
  store %struct.mtk_desc_function* %20, %struct.mtk_desc_function** %9, align 8
  br label %21

21:                                               ; preds = %39, %3
  %22 = load %struct.mtk_desc_function*, %struct.mtk_desc_function** %9, align 8
  %23 = icmp ne %struct.mtk_desc_function* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.mtk_desc_function*, %struct.mtk_desc_function** %9, align 8
  %26 = getelementptr inbounds %struct.mtk_desc_function, %struct.mtk_desc_function* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i1 [ false, %21 ], [ %28, %24 ]
  br i1 %30, label %31, label %42

31:                                               ; preds = %29
  %32 = load %struct.mtk_desc_function*, %struct.mtk_desc_function** %9, align 8
  %33 = getelementptr inbounds %struct.mtk_desc_function, %struct.mtk_desc_function* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load %struct.mtk_desc_function*, %struct.mtk_desc_function** %9, align 8
  store %struct.mtk_desc_function* %38, %struct.mtk_desc_function** %4, align 8
  br label %43

39:                                               ; preds = %31
  %40 = load %struct.mtk_desc_function*, %struct.mtk_desc_function** %9, align 8
  %41 = getelementptr inbounds %struct.mtk_desc_function, %struct.mtk_desc_function* %40, i32 1
  store %struct.mtk_desc_function* %41, %struct.mtk_desc_function** %9, align 8
  br label %21

42:                                               ; preds = %29
  store %struct.mtk_desc_function* null, %struct.mtk_desc_function** %4, align 8
  br label %43

43:                                               ; preds = %42, %37
  %44 = load %struct.mtk_desc_function*, %struct.mtk_desc_function** %4, align 8
  ret %struct.mtk_desc_function* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
