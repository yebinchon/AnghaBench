; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_xt_find_eint_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_xt_find_eint_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.mtk_pin_desc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EINT_NA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pinctrl*, i64)* @mtk_xt_find_eint_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_xt_find_eint_num(%struct.mtk_pinctrl* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_pinctrl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mtk_pin_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %9 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.mtk_pin_desc*
  store %struct.mtk_pin_desc* %13, %struct.mtk_pin_desc** %6, align 8
  br label %14

14:                                               ; preds = %39, %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %17 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %14
  %23 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %23, i64 %25
  %27 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %33, i64 %35
  %37 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %22
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %14

42:                                               ; preds = %14
  %43 = load i32, i32* @EINT_NA, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %32
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
