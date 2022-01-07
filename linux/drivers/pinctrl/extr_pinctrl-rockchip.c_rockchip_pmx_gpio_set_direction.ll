; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_pmx_gpio_set_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_pmx_gpio_set_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32, %struct.gpio_chip* }
%struct.gpio_chip = type { i32 }
%struct.rockchip_pinctrl = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"gpio_direction for pin %u as %s-%d to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32, i32)* @rockchip_pmx_gpio_set_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pmx_gpio_set_direction(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca %struct.pinctrl_gpio_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rockchip_pinctrl*, align 8
  %10 = alloca %struct.gpio_chip*, align 8
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.rockchip_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.rockchip_pinctrl* %13, %struct.rockchip_pinctrl** %9, align 8
  %14 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %6, align 8
  %15 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %14, i32 0, i32 1
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %15, align 8
  store %struct.gpio_chip* %16, %struct.gpio_chip** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %10, align 8
  %19 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub i32 %17, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %9, align 8
  %23 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %6, align 8
  %27 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %29, i8* %33)
  %35 = load %struct.gpio_chip*, %struct.gpio_chip** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.gpio_chip*, %struct.gpio_chip** %10, align 8
  %38 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub i32 %36, %39
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @_rockchip_pmx_gpio_set_direction(%struct.gpio_chip* %35, i32 %40, i32 %41)
  ret i32 %42
}

declare dso_local %struct.rockchip_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @_rockchip_pmx_gpio_set_direction(%struct.gpio_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
