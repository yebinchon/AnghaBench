; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pctrl_is_function_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pctrl_is_function_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.mtk_desc_pin* }
%struct.mtk_desc_pin = type { %struct.mtk_desc_function*, %struct.TYPE_4__ }
%struct.mtk_desc_function = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pinctrl*, i64, i64)* @mtk_pctrl_is_function_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pctrl_is_function_valid(%struct.mtk_pinctrl* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_pinctrl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtk_desc_pin*, align 8
  %10 = alloca %struct.mtk_desc_function*, align 8
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %60, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %14 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %63

19:                                               ; preds = %11
  %20 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %5, align 8
  %21 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.mtk_desc_pin*, %struct.mtk_desc_pin** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mtk_desc_pin, %struct.mtk_desc_pin* %24, i64 %26
  store %struct.mtk_desc_pin* %27, %struct.mtk_desc_pin** %9, align 8
  %28 = load %struct.mtk_desc_pin*, %struct.mtk_desc_pin** %9, align 8
  %29 = getelementptr inbounds %struct.mtk_desc_pin, %struct.mtk_desc_pin* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %19
  %35 = load %struct.mtk_desc_pin*, %struct.mtk_desc_pin** %9, align 8
  %36 = getelementptr inbounds %struct.mtk_desc_pin, %struct.mtk_desc_pin* %35, i32 0, i32 0
  %37 = load %struct.mtk_desc_function*, %struct.mtk_desc_function** %36, align 8
  store %struct.mtk_desc_function* %37, %struct.mtk_desc_function** %10, align 8
  br label %38

38:                                               ; preds = %55, %34
  %39 = load %struct.mtk_desc_function*, %struct.mtk_desc_function** %10, align 8
  %40 = icmp ne %struct.mtk_desc_function* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.mtk_desc_function*, %struct.mtk_desc_function** %10, align 8
  %43 = getelementptr inbounds %struct.mtk_desc_function, %struct.mtk_desc_function* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %41, %38
  %47 = phi i1 [ false, %38 ], [ %45, %41 ]
  br i1 %47, label %48, label %58

48:                                               ; preds = %46
  %49 = load %struct.mtk_desc_function*, %struct.mtk_desc_function** %10, align 8
  %50 = getelementptr inbounds %struct.mtk_desc_function, %struct.mtk_desc_function* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* %4, align 4
  br label %64

55:                                               ; preds = %48
  %56 = load %struct.mtk_desc_function*, %struct.mtk_desc_function** %10, align 8
  %57 = getelementptr inbounds %struct.mtk_desc_function, %struct.mtk_desc_function* %56, i32 1
  store %struct.mtk_desc_function* %57, %struct.mtk_desc_function** %10, align 8
  br label %38

58:                                               ; preds = %46
  br label %63

59:                                               ; preds = %19
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %11

63:                                               ; preds = %58, %11
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %54
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
