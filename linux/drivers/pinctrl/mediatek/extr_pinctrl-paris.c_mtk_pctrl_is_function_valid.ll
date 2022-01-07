; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-paris.c_mtk_pctrl_is_function_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-paris.c_mtk_pctrl_is_function_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.mtk_pin_desc* }
%struct.mtk_pin_desc = type { i64, %struct.mtk_func_desc* }
%struct.mtk_func_desc = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pinctrl*, i64, i64)* @mtk_pctrl_is_function_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pctrl_is_function_valid(%struct.mtk_pinctrl* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_pinctrl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtk_pin_desc*, align 8
  %10 = alloca %struct.mtk_func_desc*, align 8
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %59, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %14 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %11
  %20 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %21 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %24, i64 %26
  store %struct.mtk_pin_desc* %27, %struct.mtk_pin_desc** %9, align 8
  %28 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %9, align 8
  %29 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %19
  %34 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %9, align 8
  %35 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %34, i32 0, i32 1
  %36 = load %struct.mtk_func_desc*, %struct.mtk_func_desc** %35, align 8
  store %struct.mtk_func_desc* %36, %struct.mtk_func_desc** %10, align 8
  br label %37

37:                                               ; preds = %54, %33
  %38 = load %struct.mtk_func_desc*, %struct.mtk_func_desc** %10, align 8
  %39 = icmp ne %struct.mtk_func_desc* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.mtk_func_desc*, %struct.mtk_func_desc** %10, align 8
  %42 = getelementptr inbounds %struct.mtk_func_desc, %struct.mtk_func_desc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %40, %37
  %46 = phi i1 [ false, %37 ], [ %44, %40 ]
  br i1 %46, label %47, label %57

47:                                               ; preds = %45
  %48 = load %struct.mtk_func_desc*, %struct.mtk_func_desc** %10, align 8
  %49 = getelementptr inbounds %struct.mtk_func_desc, %struct.mtk_func_desc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %4, align 4
  br label %63

54:                                               ; preds = %47
  %55 = load %struct.mtk_func_desc*, %struct.mtk_func_desc** %10, align 8
  %56 = getelementptr inbounds %struct.mtk_func_desc, %struct.mtk_func_desc* %55, i32 1
  store %struct.mtk_func_desc* %56, %struct.mtk_func_desc** %10, align 8
  br label %37

57:                                               ; preds = %45
  br label %62

58:                                               ; preds = %19
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %11

62:                                               ; preds = %57, %11
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %53
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
