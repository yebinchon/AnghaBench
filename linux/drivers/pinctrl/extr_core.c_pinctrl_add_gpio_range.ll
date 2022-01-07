; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_add_gpio_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_add_gpio_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32, i32 }
%struct.pinctrl_gpio_range = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pinctrl_add_gpio_range(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1) #0 {
  %3 = alloca %struct.pinctrl_dev*, align 8
  %4 = alloca %struct.pinctrl_gpio_range*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %3, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %4, align 8
  %5 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %6 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %4, align 8
  %9 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %8, i32 0, i32 0
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %10, i32 0, i32 1
  %12 = call i32 @list_add_tail(i32* %9, i32* %11)
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %13, i32 0, i32 0
  %15 = call i32 @mutex_unlock(i32* %14)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
