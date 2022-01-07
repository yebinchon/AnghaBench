; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.st_pinctrl = type { i32 }
%struct.st_pio_control = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @st_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.st_pinctrl*, align 8
  %9 = alloca %struct.st_pio_control*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @st_gpio_pin(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %13 = call %struct.st_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.st_pinctrl* %13, %struct.st_pinctrl** %8, align 8
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.st_pio_control* @st_get_pio_control(%struct.pinctrl_dev* %14, i32 %15)
  store %struct.st_pio_control* %16, %struct.st_pio_control** %9, align 8
  %17 = load i64*, i64** %6, align 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.st_pio_control*, %struct.st_pio_control** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i64*, i64** %6, align 8
  %21 = call i32 @st_pinconf_get_direction(%struct.st_pio_control* %18, i32 %19, i64* %20)
  %22 = load %struct.st_pinctrl*, %struct.st_pinctrl** %8, align 8
  %23 = load %struct.st_pio_control*, %struct.st_pio_control** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i64*, i64** %6, align 8
  %26 = call i32 @st_pinconf_get_retime(%struct.st_pinctrl* %22, %struct.st_pio_control* %23, i32 %24, i64* %25)
  ret i32 0
}

declare dso_local i32 @st_gpio_pin(i32) #1

declare dso_local %struct.st_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.st_pio_control* @st_get_pio_control(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @st_pinconf_get_direction(%struct.st_pio_control*, i32, i64*) #1

declare dso_local i32 @st_pinconf_get_retime(%struct.st_pinctrl*, %struct.st_pio_control*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
