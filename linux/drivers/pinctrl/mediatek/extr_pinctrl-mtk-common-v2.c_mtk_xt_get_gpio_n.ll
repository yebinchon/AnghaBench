; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_xt_get_gpio_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_xt_get_gpio_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.mtk_pinctrl = type { %struct.gpio_chip, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.mtk_pin_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EINT_NA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*, %struct.gpio_chip**)* @mtk_xt_get_gpio_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_xt_get_gpio_n(i8* %0, i64 %1, i32* %2, %struct.gpio_chip** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.gpio_chip**, align 8
  %9 = alloca %struct.mtk_pinctrl*, align 8
  %10 = alloca %struct.mtk_pin_desc*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.gpio_chip** %3, %struct.gpio_chip*** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.mtk_pinctrl*
  store %struct.mtk_pinctrl* %12, %struct.mtk_pinctrl** %9, align 8
  %13 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %14 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.mtk_pin_desc*
  store %struct.mtk_pin_desc* %18, %struct.mtk_pin_desc** %10, align 8
  %19 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %20 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %19, i32 0, i32 0
  %21 = load %struct.gpio_chip**, %struct.gpio_chip*** %8, align 8
  store %struct.gpio_chip* %20, %struct.gpio_chip** %21, align 8
  %22 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %10, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %22, i64 %23
  %25 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i64, i64* %6, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %39

34:                                               ; preds = %4
  %35 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @mtk_xt_find_eint_num(%struct.mtk_pinctrl* %35, i64 %36)
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EINT_NA, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  br label %48

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi i32 [ %46, %44 ], [ 0, %47 ]
  ret i32 %49
}

declare dso_local i32 @mtk_xt_find_eint_num(%struct.mtk_pinctrl*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
