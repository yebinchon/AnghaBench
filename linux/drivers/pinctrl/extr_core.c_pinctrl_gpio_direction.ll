; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_gpio_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_gpio_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @pinctrl_gpio_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pinctrl_gpio_direction(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca %struct.pinctrl_gpio_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @pinctrl_get_device_gpio_range(i32 %10, %struct.pinctrl_dev** %6, %struct.pinctrl_gpio_range** %7)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %18 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %7, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @gpio_to_pin(%struct.pinctrl_gpio_range* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %24 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @pinmux_gpio_direction(%struct.pinctrl_dev* %23, %struct.pinctrl_gpio_range* %24, i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %29 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %16, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @pinctrl_get_device_gpio_range(i32, %struct.pinctrl_dev**, %struct.pinctrl_gpio_range**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpio_to_pin(%struct.pinctrl_gpio_range*, i32) #1

declare dso_local i32 @pinmux_gpio_direction(%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
