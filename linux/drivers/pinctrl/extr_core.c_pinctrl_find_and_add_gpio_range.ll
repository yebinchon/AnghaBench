; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_find_and_add_gpio_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_find_and_add_gpio_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pinctrl_dev* @pinctrl_find_and_add_gpio_range(i8* %0, %struct.pinctrl_gpio_range* %1) #0 {
  %3 = alloca %struct.pinctrl_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pinctrl_gpio_range*, align 8
  %6 = alloca %struct.pinctrl_dev*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.pinctrl_dev* @get_pinctrl_dev_from_devname(i8* %7)
  store %struct.pinctrl_dev* %8, %struct.pinctrl_dev** %6, align 8
  %9 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %10 = icmp ne %struct.pinctrl_dev* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EPROBE_DEFER, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.pinctrl_dev* @ERR_PTR(i32 %13)
  store %struct.pinctrl_dev* %14, %struct.pinctrl_dev** %3, align 8
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %17 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %5, align 8
  %18 = call i32 @pinctrl_add_gpio_range(%struct.pinctrl_dev* %16, %struct.pinctrl_gpio_range* %17)
  %19 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  store %struct.pinctrl_dev* %19, %struct.pinctrl_dev** %3, align 8
  br label %20

20:                                               ; preds = %15, %11
  %21 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  ret %struct.pinctrl_dev* %21
}

declare dso_local %struct.pinctrl_dev* @get_pinctrl_dev_from_devname(i8*) #1

declare dso_local %struct.pinctrl_dev* @ERR_PTR(i32) #1

declare dso_local i32 @pinctrl_add_gpio_range(%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
