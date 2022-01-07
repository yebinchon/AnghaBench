; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_hw_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_hw_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { i32 }
%struct.mtk_pin_desc = type { i32 }
%struct.mtk_pin_field = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_hw_get_value(%struct.mtk_pinctrl* %0, %struct.mtk_pin_desc* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_pinctrl*, align 8
  %7 = alloca %struct.mtk_pin_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mtk_pin_field, align 4
  %11 = alloca i32, align 4
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %6, align 8
  store %struct.mtk_pin_desc* %1, %struct.mtk_pin_desc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %13 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @mtk_hw_pin_field_get(%struct.mtk_pinctrl* %12, %struct.mtk_pin_desc* %13, i32 %14, %struct.mtk_pin_field* %10)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %43

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %10, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %20
  %25 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %26 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %10, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %10, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mtk_r32(%struct.mtk_pinctrl* %25, i32 %27, i32 %29)
  %31 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %30, %32
  %34 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %10, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %33, %35
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  br label %42

38:                                               ; preds = %20
  %39 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @mtk_hw_read_cross_field(%struct.mtk_pinctrl* %39, %struct.mtk_pin_field* %10, i32* %40)
  br label %42

42:                                               ; preds = %38, %24
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %18
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @mtk_hw_pin_field_get(%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, %struct.mtk_pin_field*) #1

declare dso_local i32 @mtk_r32(%struct.mtk_pinctrl*, i32, i32) #1

declare dso_local i32 @mtk_hw_read_cross_field(%struct.mtk_pinctrl*, %struct.mtk_pin_field*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
