; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-stmfx.c_stmfx_pinctrl_gpio_function_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-stmfx.c_stmfx_pinctrl_gpio_function_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmfx_pinctrl = type { i32, i32, %struct.pinctrl_dev* }
%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }

@STMFX_FUNC_GPIO = common dso_local global i32 0, align 4
@STMFX_FUNC_ALTGPIO_LOW = common dso_local global i32 0, align 4
@STMFX_FUNC_ALTGPIO_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmfx_pinctrl*)* @stmfx_pinctrl_gpio_function_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmfx_pinctrl_gpio_function_enable(%struct.stmfx_pinctrl* %0) #0 {
  %2 = alloca %struct.stmfx_pinctrl*, align 8
  %3 = alloca %struct.pinctrl_gpio_range*, align 8
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.stmfx_pinctrl* %0, %struct.stmfx_pinctrl** %2, align 8
  %6 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %2, align 8
  %7 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %6, i32 0, i32 2
  %8 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  store %struct.pinctrl_dev* %8, %struct.pinctrl_dev** %4, align 8
  %9 = load i32, i32* @STMFX_FUNC_GPIO, align 4
  store i32 %9, i32* %5, align 4
  %10 = call i32 @GENMASK(i32 15, i32 0)
  %11 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %2, align 8
  %12 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %14 = call %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin(%struct.pinctrl_dev* %13, i32 16)
  store %struct.pinctrl_gpio_range* %14, %struct.pinctrl_gpio_range** %3, align 8
  %15 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %3, align 8
  %16 = icmp ne %struct.pinctrl_gpio_range* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load i32, i32* @STMFX_FUNC_ALTGPIO_LOW, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = call i32 @GENMASK(i32 19, i32 16)
  %22 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %2, align 8
  %23 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %17, %1
  %27 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %28 = call %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin(%struct.pinctrl_dev* %27, i32 20)
  store %struct.pinctrl_gpio_range* %28, %struct.pinctrl_gpio_range** %3, align 8
  %29 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %3, align 8
  %30 = icmp ne %struct.pinctrl_gpio_range* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32, i32* @STMFX_FUNC_ALTGPIO_HIGH, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = call i32 @GENMASK(i32 23, i32 20)
  %36 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %2, align 8
  %37 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %31, %26
  %41 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %2, align 8
  %42 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @stmfx_function_enable(i32 %43, i32 %44)
  ret i32 %45
}

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @stmfx_function_enable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
