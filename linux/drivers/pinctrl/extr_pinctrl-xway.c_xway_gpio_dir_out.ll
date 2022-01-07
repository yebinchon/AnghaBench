; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-xway.c_xway_gpio_dir_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-xway.c_xway_gpio_dir_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ltq_pinmux_info = type { i32* }

@PORT3 = common dso_local global i64 0, align 8
@GPIO3_OD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @xway_gpio_dir_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xway_gpio_dir_out(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ltq_pinmux_info*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ltq_pinmux_info* @dev_get_drvdata(i32 %10)
  store %struct.ltq_pinmux_info* %11, %struct.ltq_pinmux_info** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @PORT(i32 %12)
  %14 = load i64, i64* @PORT3, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %7, align 8
  %18 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GPIO3_OD, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @PORT_PIN(i32 %23)
  %25 = call i32 @gpio_setbit(i32 %21, i32 %22, i32 %24)
  br label %37

26:                                               ; preds = %3
  %27 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %7, align 8
  %28 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @GPIO_OD(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @PORT_PIN(i32 %34)
  %36 = call i32 @gpio_setbit(i32 %31, i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %26, %16
  %38 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %7, align 8
  %39 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @GPIO_DIR(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @PORT_PIN(i32 %45)
  %47 = call i32 @gpio_setbit(i32 %42, i32 %44, i32 %46)
  %48 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @xway_gpio_set(%struct.gpio_chip* %48, i32 %49, i32 %50)
  ret i32 0
}

declare dso_local %struct.ltq_pinmux_info* @dev_get_drvdata(i32) #1

declare dso_local i64 @PORT(i32) #1

declare dso_local i32 @gpio_setbit(i32, i32, i32) #1

declare dso_local i32 @PORT_PIN(i32) #1

declare dso_local i32 @GPIO_OD(i32) #1

declare dso_local i32 @GPIO_DIR(i32) #1

declare dso_local i32 @xway_gpio_set(%struct.gpio_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
