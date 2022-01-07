; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_hw_read_cross_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common-v2.c_mtk_hw_read_cross_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { i32 }
%struct.mtk_pin_field = type { i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_pinctrl*, %struct.mtk_pin_field*, i32*)* @mtk_hw_read_cross_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hw_read_cross_field(%struct.mtk_pinctrl* %0, %struct.mtk_pin_field* %1, i32* %2) #0 {
  %4 = alloca %struct.mtk_pinctrl*, align 8
  %5 = alloca %struct.mtk_pin_field*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %4, align 8
  store %struct.mtk_pin_field* %1, %struct.mtk_pin_field** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.mtk_pin_field*, %struct.mtk_pin_field** %5, align 8
  %12 = call i32 @mtk_hw_bits_part(%struct.mtk_pin_field* %11, i32* %8, i32* %7)
  %13 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %14 = load %struct.mtk_pin_field*, %struct.mtk_pin_field** %5, align 8
  %15 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mtk_pin_field*, %struct.mtk_pin_field** %5, align 8
  %18 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @mtk_r32(%struct.mtk_pinctrl* %13, i32 %16, i64 %19)
  %21 = load %struct.mtk_pin_field*, %struct.mtk_pin_field** %5, align 8
  %22 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %20, %23
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = sub nsw i32 %26, 1
  %28 = and i32 %24, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %30 = load %struct.mtk_pin_field*, %struct.mtk_pin_field** %5, align 8
  %31 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mtk_pin_field*, %struct.mtk_pin_field** %5, align 8
  %34 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mtk_pin_field*, %struct.mtk_pin_field** %5, align 8
  %37 = getelementptr inbounds %struct.mtk_pin_field, %struct.mtk_pin_field* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = call i32 @mtk_r32(%struct.mtk_pinctrl* %29, i32 %32, i64 %39)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @BIT(i32 %41)
  %43 = sub nsw i32 %42, 1
  %44 = and i32 %40, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %47, %48
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  ret void
}

declare dso_local i32 @mtk_hw_bits_part(%struct.mtk_pin_field*, i32*, i32*) #1

declare dso_local i32 @mtk_r32(%struct.mtk_pinctrl*, i32, i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
