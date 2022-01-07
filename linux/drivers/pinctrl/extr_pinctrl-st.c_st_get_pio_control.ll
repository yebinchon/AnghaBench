; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_get_pio_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_get_pio_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_pio_control = type { i32 }
%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.st_gpio_bank = type { %struct.st_pio_control }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.st_pio_control* (%struct.pinctrl_dev*, i32)* @st_get_pio_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.st_pio_control* @st_get_pio_control(%struct.pinctrl_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pinctrl_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_gpio_range*, align 8
  %6 = alloca %struct.st_gpio_bank*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin(%struct.pinctrl_dev* %7, i32 %8)
  store %struct.pinctrl_gpio_range* %9, %struct.pinctrl_gpio_range** %5, align 8
  %10 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %5, align 8
  %11 = call %struct.st_gpio_bank* @gpio_range_to_bank(%struct.pinctrl_gpio_range* %10)
  store %struct.st_gpio_bank* %11, %struct.st_gpio_bank** %6, align 8
  %12 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %6, align 8
  %13 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %12, i32 0, i32 0
  ret %struct.st_pio_control* %13
}

declare dso_local %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin(%struct.pinctrl_dev*, i32) #1

declare dso_local %struct.st_gpio_bank* @gpio_range_to_bank(%struct.pinctrl_gpio_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
