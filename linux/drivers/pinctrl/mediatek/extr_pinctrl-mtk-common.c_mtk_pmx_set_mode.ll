; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pmx_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_pmx_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.mtk_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 (i32, i64, i64)* }

@GPIO_MODE_BITS = common dso_local global i64 0, align 8
@MAX_GPIO_MODE_PER_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i64, i64)* @mtk_pmx_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pmx_set_mode(%struct.pinctrl_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mtk_pinctrl*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* @GPIO_MODE_BITS, align 8
  %13 = shl i64 1, %12
  %14 = sub nsw i64 %13, 1
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %10, align 4
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %17 = call %struct.mtk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.mtk_pinctrl* %17, %struct.mtk_pinctrl** %11, align 8
  %18 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %11, align 8
  %19 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32 (i32, i64, i64)*, i32 (i32, i64, i64)** %21, align 8
  %23 = icmp ne i32 (i32, i64, i64)* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %3
  %25 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %11, align 8
  %26 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32 (i32, i64, i64)*, i32 (i32, i64, i64)** %28, align 8
  %30 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %11, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @mtk_get_regmap(%struct.mtk_pinctrl* %30, i64 %31)
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 %29(i32 %32, i64 %33, i64 %34)
  br label %36

36:                                               ; preds = %24, %3
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @MAX_GPIO_MODE_PER_REG, align 8
  %39 = udiv i64 %37, %38
  %40 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %11, align 8
  %41 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = shl i64 %39, %44
  %46 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %11, align 8
  %47 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %45, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* %6, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @MAX_GPIO_MODE_PER_REG, align 8
  %59 = urem i64 %57, %58
  %60 = trunc i64 %59 to i8
  store i8 %60, i8* %8, align 1
  %61 = load i64, i64* @GPIO_MODE_BITS, align 8
  %62 = load i8, i8* %8, align 1
  %63 = zext i8 %62 to i64
  %64 = mul nsw i64 %61, %63
  %65 = load i32, i32* %10, align 4
  %66 = trunc i64 %64 to i32
  %67 = shl i32 %65, %66
  store i32 %67, i32* %10, align 4
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @GPIO_MODE_BITS, align 8
  %70 = load i8, i8* %8, align 1
  %71 = zext i8 %70 to i64
  %72 = mul nsw i64 %69, %71
  %73 = shl i64 %68, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %9, align 4
  %75 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %11, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @mtk_get_regmap(%struct.mtk_pinctrl* %75, i64 %76)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @regmap_update_bits(i32 %77, i32 %78, i32 %79, i32 %80)
  ret i32 %81
}

declare dso_local %struct.mtk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @mtk_get_regmap(%struct.mtk_pinctrl*, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
