; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-tb10x.c_tb10x_gpio_disable_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-tb10x.c_tb10x_gpio_disable_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.tb10x_pinctrl = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32)* @tb10x_gpio_disable_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tb10x_gpio_disable_free(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.pinctrl_gpio_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tb10x_pinctrl*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %9 = call %struct.tb10x_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %8)
  store %struct.tb10x_pinctrl* %9, %struct.tb10x_pinctrl** %7, align 8
  %10 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %7, align 8
  %11 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %7, align 8
  %15 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clear_bit(i32 %13, i32 %16)
  %18 = load %struct.tb10x_pinctrl*, %struct.tb10x_pinctrl** %7, align 8
  %19 = getelementptr inbounds %struct.tb10x_pinctrl, %struct.tb10x_pinctrl* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  ret void
}

declare dso_local %struct.tb10x_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
