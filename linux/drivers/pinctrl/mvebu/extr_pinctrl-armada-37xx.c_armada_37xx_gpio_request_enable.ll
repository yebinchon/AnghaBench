; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_gpio_request_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_gpio_request_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.armada_37xx_pinctrl = type { i32 }
%struct.armada_37xx_pin_group = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"requesting gpio %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32)* @armada_37xx_gpio_request_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_37xx_gpio_request_enable(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.pinctrl_gpio_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.armada_37xx_pinctrl*, align 8
  %8 = alloca %struct.armada_37xx_pin_group*, align 8
  %9 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %11 = call %struct.armada_37xx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %10)
  store %struct.armada_37xx_pinctrl* %11, %struct.armada_37xx_pinctrl** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %7, align 8
  %13 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %22, %3
  %18 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.armada_37xx_pin_group* @armada_37xx_find_next_grp_by_pin(%struct.armada_37xx_pinctrl* %18, i32 %19, i32* %9)
  store %struct.armada_37xx_pin_group* %20, %struct.armada_37xx_pin_group** %8, align 8
  %21 = icmp ne %struct.armada_37xx_pin_group* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %24 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %8, align 8
  %25 = call i32 @armada_37xx_pmx_set_by_name(%struct.pinctrl_dev* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.armada_37xx_pin_group* %24)
  br label %17

26:                                               ; preds = %17
  ret i32 0
}

declare dso_local %struct.armada_37xx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local %struct.armada_37xx_pin_group* @armada_37xx_find_next_grp_by_pin(%struct.armada_37xx_pinctrl*, i32, i32*) #1

declare dso_local i32 @armada_37xx_pmx_set_by_name(%struct.pinctrl_dev*, i8*, %struct.armada_37xx_pin_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
