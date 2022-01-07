; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.sunxi_pinctrl = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SUN4I_FUNC_INPUT = common dso_local global i32 0, align 4
@DATA_PINS_MASK = common dso_local global i32 0, align 4
@SUN4I_FUNC_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @sunxi_pinctrl_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_pinctrl_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sunxi_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %12 = call %struct.sunxi_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.sunxi_pinctrl* %12, %struct.sunxi_pinctrl** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @sunxi_data_reg(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @sunxi_data_offset(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %5, align 8
  %18 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @gpiochip_line_is_irq(%struct.gpio_chip* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %2
  %29 = phi i1 [ false, %2 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %33 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %31, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %5, align 8
  %40 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @SUN4I_FUNC_INPUT, align 4
  %44 = call i32 @sunxi_pmx_set(i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %28
  %46 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %5, align 8
  %47 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %48, %49
  %51 = call i32 @readl(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %51, %52
  %54 = load i32, i32* @DATA_PINS_MASK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %45
  %59 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %5, align 8
  %60 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @SUN4I_FUNC_IRQ, align 4
  %64 = call i32 @sunxi_pmx_set(i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %45
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  ret i32 %70
}

declare dso_local %struct.sunxi_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @sunxi_data_reg(i32) #1

declare dso_local i32 @sunxi_data_offset(i32) #1

declare dso_local i64 @gpiochip_line_is_irq(%struct.gpio_chip*, i32) #1

declare dso_local i32 @sunxi_pmx_set(i32, i32, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
