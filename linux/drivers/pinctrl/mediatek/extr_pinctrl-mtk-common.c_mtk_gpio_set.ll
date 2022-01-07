; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.mtk_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @mtk_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtk_pinctrl*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.mtk_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.mtk_pinctrl* %11, %struct.mtk_pinctrl** %9, align 8
  %12 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @mtk_get_port(%struct.mtk_pinctrl* %12, i32 %13)
  %15 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %16 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add i32 %14, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 15
  %23 = call i32 @BIT(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %29 = call i32 @SET_ADDR(i32 %27, %struct.mtk_pinctrl* %28)
  store i32 %29, i32* %7, align 4
  br label %34

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %33 = call i32 @CLR_ADDR(i32 %31, %struct.mtk_pinctrl* %32)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %9, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @mtk_get_regmap(%struct.mtk_pinctrl* %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @regmap_write(i32 %37, i32 %38, i32 %39)
  ret void
}

declare dso_local %struct.mtk_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mtk_get_port(%struct.mtk_pinctrl*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @SET_ADDR(i32, %struct.mtk_pinctrl*) #1

declare dso_local i32 @CLR_ADDR(i32, %struct.mtk_pinctrl*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mtk_get_regmap(%struct.mtk_pinctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
