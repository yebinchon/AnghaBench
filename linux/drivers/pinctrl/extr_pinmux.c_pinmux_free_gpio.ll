; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinmux.c_pinmux_free_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinmux.c_pinmux_free_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pinmux_free_gpio(%struct.pinctrl_dev* %0, i32 %1, %struct.pinctrl_gpio_range* %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_gpio_range*, align 8
  %7 = alloca i8*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pinctrl_gpio_range* %2, %struct.pinctrl_gpio_range** %6, align 8
  %8 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %6, align 8
  %11 = call i8* @pin_free(%struct.pinctrl_dev* %8, i32 %9, %struct.pinctrl_gpio_range* %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @kfree(i8* %12)
  ret void
}

declare dso_local i8* @pin_free(%struct.pinctrl_dev*, i32, %struct.pinctrl_gpio_range*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
