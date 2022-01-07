; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-paris.c_mtk_build_gpiochip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-paris.c_mtk_build_gpiochip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pinctrl = type { %struct.TYPE_2__*, i32, %struct.gpio_chip }
%struct.TYPE_2__ = type { i32 }
%struct.gpio_chip = type { i32, i32, %struct.device_node*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device_node = type { i32 }

@PINCTRL_PINCTRL_DEV = common dso_local global i32 0, align 4
@gpiochip_generic_request = common dso_local global i32 0, align 4
@gpiochip_generic_free = common dso_local global i32 0, align 4
@mtk_gpio_get_direction = common dso_local global i32 0, align 4
@mtk_gpio_direction_input = common dso_local global i32 0, align 4
@mtk_gpio_direction_output = common dso_local global i32 0, align 4
@mtk_gpio_get = common dso_local global i32 0, align 4
@mtk_gpio_set = common dso_local global i32 0, align 4
@mtk_gpio_to_irq = common dso_local global i32 0, align 4
@mtk_gpio_set_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pinctrl*, %struct.device_node*)* @mtk_build_gpiochip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_build_gpiochip(%struct.mtk_pinctrl* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_pinctrl*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.mtk_pinctrl* %0, %struct.mtk_pinctrl** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %8 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %9 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %8, i32 0, i32 2
  store %struct.gpio_chip* %9, %struct.gpio_chip** %6, align 8
  %10 = load i32, i32* @PINCTRL_PINCTRL_DEV, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %12 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %11, i32 0, i32 14
  store i32 %10, i32* %12, align 4
  %13 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %14 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %17 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 13
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @gpiochip_generic_request, align 4
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 12
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @gpiochip_generic_free, align 4
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %23 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %22, i32 0, i32 11
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @mtk_gpio_get_direction, align 4
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %26 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %25, i32 0, i32 10
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @mtk_gpio_direction_input, align 4
  %28 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %29 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @mtk_gpio_direction_output, align 4
  %31 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %32 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @mtk_gpio_get, align 4
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %35 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @mtk_gpio_set, align 4
  %37 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %38 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @mtk_gpio_to_irq, align 4
  %40 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %41 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @mtk_gpio_set_config, align 4
  %43 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %44 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %46 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 8
  %47 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %48 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %53 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.device_node*, %struct.device_node** %5, align 8
  %55 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %56 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %55, i32 0, i32 2
  store %struct.device_node* %54, %struct.device_node** %56, align 8
  %57 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %58 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %57, i32 0, i32 1
  store i32 2, i32* %58, align 4
  %59 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %60 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %4, align 8
  %61 = call i32 @gpiochip_add_data(%struct.gpio_chip* %59, %struct.mtk_pinctrl* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %2
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %67

66:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %64
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @gpiochip_add_data(%struct.gpio_chip*, %struct.mtk_pinctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
