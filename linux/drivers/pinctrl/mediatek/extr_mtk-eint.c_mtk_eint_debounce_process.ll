; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_mtk-eint.c_mtk_eint_debounce_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_mtk-eint.c_mtk_eint_debounce_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eint = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MTK_EINT_DBNC_SET_EN = common dso_local global i32 0, align 4
@MTK_EINT_DBNC_RST_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_eint*, i32)* @mtk_eint_debounce_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_eint_debounce_process(%struct.mtk_eint* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_eint*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtk_eint* %0, %struct.mtk_eint** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sdiv i32 %9, 4
  %11 = mul nsw i32 %10, 4
  %12 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %13 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %11, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %19 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @MTK_EINT_DBNC_SET_EN, align 4
  %26 = load i32, i32* %4, align 4
  %27 = srem i32 %26, 4
  %28 = mul nsw i32 %27, 8
  %29 = shl i32 %25, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %30, %31
  %33 = icmp ugt i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = sdiv i32 %35, 4
  %37 = mul nsw i32 %36, 4
  %38 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %39 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %37, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @MTK_EINT_DBNC_RST_BIT, align 4
  %45 = load i32, i32* %4, align 4
  %46 = srem i32 %45, 4
  %47 = mul nsw i32 %46, 8
  %48 = shl i32 %44, %47
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.mtk_eint*, %struct.mtk_eint** %3, align 8
  %51 = getelementptr inbounds %struct.mtk_eint, %struct.mtk_eint* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call i32 @writel(i32 %49, i64 %55)
  br label %57

57:                                               ; preds = %34, %2
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
