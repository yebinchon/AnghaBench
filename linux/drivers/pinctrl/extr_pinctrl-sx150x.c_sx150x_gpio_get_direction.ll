; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-sx150x.c_sx150x_gpio_get_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-sx150x.c_sx150x_gpio_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.sx150x_pinctrl = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @sx150x_gpio_get_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx150x_gpio_get_direction(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sx150x_pinctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.sx150x_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.sx150x_pinctrl* %10, %struct.sx150x_pinctrl** %6, align 8
  %11 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @sx150x_pin_is_oscio(%struct.sx150x_pinctrl* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %6, align 8
  %18 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %6, align 8
  %21 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regmap_read(i32 %19, i32 %24, i32* %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %39

30:                                               ; preds = %16
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %30, %28, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.sx150x_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @sx150x_pin_is_oscio(%struct.sx150x_pinctrl*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
