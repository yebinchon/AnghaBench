; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_nmk_gpio_request_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_nmk_gpio_request_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { %struct.gpio_chip* }
%struct.gpio_chip = type { i32 }
%struct.nmk_pinctrl = type { i32 }
%struct.nmk_gpio_chip = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"invalid range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"missing GPIO chip in range\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"enable pin %u as GPIO\0A\00", align 1
@NMK_GPIO_PER_CHIP = common dso_local global i32 0, align 4
@NMK_GPIO_ALT_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32)* @nmk_gpio_request_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmk_gpio_request_enable(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca %struct.pinctrl_gpio_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nmk_pinctrl*, align 8
  %9 = alloca %struct.nmk_gpio_chip*, align 8
  %10 = alloca %struct.gpio_chip*, align 8
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.nmk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.nmk_pinctrl* %13, %struct.nmk_pinctrl** %8, align 8
  %14 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %6, align 8
  %15 = icmp ne %struct.pinctrl_gpio_range* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %8, align 8
  %18 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %61

23:                                               ; preds = %3
  %24 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %6, align 8
  %25 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %24, i32 0, i32 0
  %26 = load %struct.gpio_chip*, %struct.gpio_chip** %25, align 8
  %27 = icmp ne %struct.gpio_chip* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %8, align 8
  %30 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %61

35:                                               ; preds = %23
  %36 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %6, align 8
  %37 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %36, i32 0, i32 0
  %38 = load %struct.gpio_chip*, %struct.gpio_chip** %37, align 8
  store %struct.gpio_chip* %38, %struct.gpio_chip** %10, align 8
  %39 = load %struct.gpio_chip*, %struct.gpio_chip** %10, align 8
  %40 = call %struct.nmk_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %39)
  store %struct.nmk_gpio_chip* %40, %struct.nmk_gpio_chip** %9, align 8
  %41 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %8, align 8
  %42 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %9, align 8
  %47 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_enable(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @NMK_GPIO_PER_CHIP, align 4
  %52 = urem i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %9, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @NMK_GPIO_ALT_GPIO, align 4
  %56 = call i32 @__nmk_gpio_set_mode(%struct.nmk_gpio_chip* %53, i32 %54, i32 %55)
  %57 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %9, align 8
  %58 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @clk_disable(i32 %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %35, %28, %16
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.nmk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.nmk_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @__nmk_gpio_set_mode(%struct.nmk_gpio_chip*, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
