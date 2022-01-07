; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pconf_parse_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pconf_parse_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.stm32_pinctrl = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.stm32_gpio_bank = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"No gpio range defined.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32, i32)* @stm32_pconf_parse_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pconf_parse_conf(%struct.pinctrl_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stm32_pinctrl*, align 8
  %11 = alloca %struct.pinctrl_gpio_range*, align 8
  %12 = alloca %struct.stm32_gpio_bank*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %16 = call %struct.stm32_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %15)
  store %struct.stm32_pinctrl* %16, %struct.stm32_pinctrl** %10, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin(%struct.pinctrl_dev* %17, i32 %18)
  store %struct.pinctrl_gpio_range* %19, %struct.pinctrl_gpio_range** %11, align 8
  %20 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %11, align 8
  %21 = icmp ne %struct.pinctrl_gpio_range* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %4
  %23 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %10, align 8
  %24 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %76

29:                                               ; preds = %4
  %30 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %11, align 8
  %31 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.stm32_gpio_bank* @gpiochip_get_data(i32 %32)
  store %struct.stm32_gpio_bank* %33, %struct.stm32_gpio_bank** %12, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @stm32_gpio_pin(i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %8, align 4
  switch i32 %36, label %71 [
    i32 130, label %37
    i32 131, label %41
    i32 128, label %45
    i32 134, label %50
    i32 132, label %54
    i32 133, label %58
    i32 129, label %62
  ]

37:                                               ; preds = %29
  %38 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %12, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @stm32_pconf_set_driving(%struct.stm32_gpio_bank* %38, i32 %39, i32 0)
  store i32 %40, i32* %14, align 4
  br label %74

41:                                               ; preds = %29
  %42 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %12, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @stm32_pconf_set_driving(%struct.stm32_gpio_bank* %42, i32 %43, i32 1)
  store i32 %44, i32* %14, align 4
  br label %74

45:                                               ; preds = %29
  %46 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @stm32_pconf_set_speed(%struct.stm32_gpio_bank* %46, i32 %47, i32 %48)
  store i32 %49, i32* %14, align 4
  br label %74

50:                                               ; preds = %29
  %51 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @stm32_pconf_set_bias(%struct.stm32_gpio_bank* %51, i32 %52, i32 0)
  store i32 %53, i32* %14, align 4
  br label %74

54:                                               ; preds = %29
  %55 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @stm32_pconf_set_bias(%struct.stm32_gpio_bank* %55, i32 %56, i32 1)
  store i32 %57, i32* %14, align 4
  br label %74

58:                                               ; preds = %29
  %59 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @stm32_pconf_set_bias(%struct.stm32_gpio_bank* %59, i32 %60, i32 2)
  store i32 %61, i32* %14, align 4
  br label %74

62:                                               ; preds = %29
  %63 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %12, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @__stm32_gpio_set(%struct.stm32_gpio_bank* %63, i32 %64, i32 %65)
  %67 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %68 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %11, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @stm32_pmx_gpio_set_direction(%struct.pinctrl_dev* %67, %struct.pinctrl_gpio_range* %68, i32 %69, i32 0)
  store i32 %70, i32* %14, align 4
  br label %74

71:                                               ; preds = %29
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %71, %62, %58, %54, %50, %45, %41, %37
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %22
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.stm32_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.stm32_gpio_bank* @gpiochip_get_data(i32) #1

declare dso_local i32 @stm32_gpio_pin(i32) #1

declare dso_local i32 @stm32_pconf_set_driving(%struct.stm32_gpio_bank*, i32, i32) #1

declare dso_local i32 @stm32_pconf_set_speed(%struct.stm32_gpio_bank*, i32, i32) #1

declare dso_local i32 @stm32_pconf_set_bias(%struct.stm32_gpio_bank*, i32, i32) #1

declare dso_local i32 @__stm32_gpio_set(%struct.stm32_gpio_bank*, i32, i32) #1

declare dso_local i32 @stm32_pmx_gpio_set_direction(%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
