; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-moore.c_mtk_gpio_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-moore.c_mtk_gpio_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.mtk_pinctrl = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.mtk_pin_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ENOTSUPP = common dso_local global i32 0, align 4
@EINT_NA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @mtk_gpio_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_gpio_to_irq(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_pinctrl*, align 8
  %7 = alloca %struct.mtk_pin_desc*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.mtk_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.mtk_pinctrl* %9, %struct.mtk_pinctrl** %6, align 8
  %10 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %11 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %19 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = bitcast i32* %25 to %struct.mtk_pin_desc*
  store %struct.mtk_pin_desc* %26, %struct.mtk_pin_desc** %7, align 8
  %27 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %7, align 8
  %28 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @EINT_NA, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load i32, i32* @ENOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %45

36:                                               ; preds = %17
  %37 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %6, align 8
  %38 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %7, align 8
  %41 = getelementptr inbounds %struct.mtk_pin_desc, %struct.mtk_pin_desc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @mtk_eint_find_irq(i32 %39, i64 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %36, %33, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.mtk_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mtk_eint_find_irq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
