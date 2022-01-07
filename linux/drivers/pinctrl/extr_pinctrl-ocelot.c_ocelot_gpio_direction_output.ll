; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ocelot.c_ocelot_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ocelot.c_ocelot_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i64 }
%struct.ocelot_pinctrl = type { i32 }

@OCELOT_GPIO_OUT_SET = common dso_local global i32 0, align 4
@OCELOT_GPIO_OUT_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @ocelot_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocelot_pinctrl*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.ocelot_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.ocelot_pinctrl* %10, %struct.ocelot_pinctrl** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = urem i32 %11, 32
  %13 = call i32 @BIT(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %7, align 8
  %18 = getelementptr inbounds %struct.ocelot_pinctrl, %struct.ocelot_pinctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @OCELOT_GPIO_OUT_SET, align 4
  %21 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @REG(i32 %20, %struct.ocelot_pinctrl* %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @regmap_write(i32 %19, i32 %23, i32 %24)
  br label %36

26:                                               ; preds = %3
  %27 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %7, align 8
  %28 = getelementptr inbounds %struct.ocelot_pinctrl, %struct.ocelot_pinctrl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @OCELOT_GPIO_OUT_CLR, align 4
  %31 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @REG(i32 %30, %struct.ocelot_pinctrl* %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @regmap_write(i32 %29, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %26, %16
  %37 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %38 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = call i32 @pinctrl_gpio_direction_output(i64 %42)
  ret i32 %43
}

declare dso_local %struct.ocelot_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @REG(i32, %struct.ocelot_pinctrl*, i32) #1

declare dso_local i32 @pinctrl_gpio_direction_output(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
