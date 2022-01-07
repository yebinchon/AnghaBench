; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_hw_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_hw_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { i32 }
%struct.mtk_pin_desc = type { i32 }
%struct.mtk_pin_field = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %0, %struct.mtk_pin_desc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_pinctrl*, align 8
  %7 = alloca %struct.mtk_pin_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtk_pin_field, align 4
  %11 = alloca i32, align 4
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %6, align 8
  store %struct.mtk_pin_desc* %1, %struct.mtk_pin_desc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
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
  br label %48

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %10, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %20
  %25 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %26 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %10, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %10, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %10, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %31, %33
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %10, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %35, %37
  %39 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %10, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %38, %40
  %42 = call i32 @mtk_rmw(%struct.mtk_pinctrl* %25, i32 %27, i32 %29, i32 %34, i32 %41)
  br label %47

43:                                               ; preds = %20
  %44 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @mtk_hw_write_cross_field(%struct.mtk_pinctrl* %44, %struct.mtk_pin_field* %10, i32 %45)
  br label %47

47:                                               ; preds = %43, %24
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %18
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @mtk_hw_pin_field_get(%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, %struct.mtk_pin_field*) #1

declare dso_local i32 @mtk_rmw(%struct.mtk_pinctrl*, i32, i32, i32, i32) #1

declare dso_local i32 @mtk_hw_write_cross_field(%struct.mtk_pinctrl*, %struct.mtk_pin_field*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
