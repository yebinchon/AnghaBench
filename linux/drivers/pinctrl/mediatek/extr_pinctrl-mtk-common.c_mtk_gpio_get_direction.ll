; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_gpio_get_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-mtk-common.c_mtk_gpio_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.mtk_pinctrl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @mtk_gpio_get_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_gpio_get_direction(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtk_pinctrl*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.mtk_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.mtk_pinctrl* %10, %struct.mtk_pinctrl** %8, align 8
  %11 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @mtk_get_port(%struct.mtk_pinctrl* %11, i32 %12)
  %14 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %15 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add i32 %13, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 15
  %22 = call i32 @BIT(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %24 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32 (i32*, i32)*, i32 (i32*, i32)** %26, align 8
  %28 = icmp ne i32 (i32*, i32)* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %31 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32 (i32*, i32)*, i32 (i32*, i32)** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 %34(i32* %5, i32 %35)
  br label %37

37:                                               ; preds = %29, %2
  %38 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %39 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @regmap_read(i32 %40, i32 %41, i32* %7)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  ret i32 %48
}

declare dso_local %struct.mtk_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mtk_get_port(%struct.mtk_pinctrl*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
