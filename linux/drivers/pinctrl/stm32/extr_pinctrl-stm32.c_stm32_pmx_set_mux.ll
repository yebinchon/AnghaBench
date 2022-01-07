; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pmx_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pmx_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.stm32_pinctrl = type { i32, %struct.stm32_pinctrl_group* }
%struct.stm32_pinctrl_group = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.stm32_gpio_bank = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"invalid function %d on group %d .\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"No gpio range defined.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @stm32_pmx_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pmx_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stm32_pinctrl*, align 8
  %10 = alloca %struct.stm32_pinctrl_group*, align 8
  %11 = alloca %struct.pinctrl_gpio_range*, align 8
  %12 = alloca %struct.stm32_gpio_bank*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %17 = call %struct.stm32_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.stm32_pinctrl* %17, %struct.stm32_pinctrl** %9, align 8
  %18 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %9, align 8
  %19 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %18, i32 0, i32 1
  %20 = load %struct.stm32_pinctrl_group*, %struct.stm32_pinctrl_group** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.stm32_pinctrl_group, %struct.stm32_pinctrl_group* %20, i64 %22
  store %struct.stm32_pinctrl_group* %23, %struct.stm32_pinctrl_group** %10, align 8
  %24 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %9, align 8
  %25 = load %struct.stm32_pinctrl_group*, %struct.stm32_pinctrl_group** %10, align 8
  %26 = getelementptr inbounds %struct.stm32_pinctrl_group, %struct.stm32_pinctrl_group* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @stm32_pctrl_is_function_valid(%struct.stm32_pinctrl* %24, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %3
  %33 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %9, align 8
  %34 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %74

41:                                               ; preds = %3
  %42 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %43 = load %struct.stm32_pinctrl_group*, %struct.stm32_pinctrl_group** %10, align 8
  %44 = getelementptr inbounds %struct.stm32_pinctrl_group, %struct.stm32_pinctrl_group* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin(%struct.pinctrl_dev* %42, i32 %45)
  store %struct.pinctrl_gpio_range* %46, %struct.pinctrl_gpio_range** %11, align 8
  %47 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %11, align 8
  %48 = icmp ne %struct.pinctrl_gpio_range* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %41
  %50 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %9, align 8
  %51 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %74

56:                                               ; preds = %41
  %57 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %11, align 8
  %58 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.stm32_gpio_bank* @gpiochip_get_data(i32 %59)
  store %struct.stm32_gpio_bank* %60, %struct.stm32_gpio_bank** %12, align 8
  %61 = load %struct.stm32_pinctrl_group*, %struct.stm32_pinctrl_group** %10, align 8
  %62 = getelementptr inbounds %struct.stm32_pinctrl_group, %struct.stm32_pinctrl_group* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @stm32_gpio_pin(i32 %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @stm32_gpio_get_mode(i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @stm32_gpio_get_alt(i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %12, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @stm32_pmx_set_mode(%struct.stm32_gpio_bank* %69, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %56, %49, %32
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.stm32_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @stm32_pctrl_is_function_valid(%struct.stm32_pinctrl*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin(%struct.pinctrl_dev*, i32) #1

declare dso_local %struct.stm32_gpio_bank* @gpiochip_get_data(i32) #1

declare dso_local i32 @stm32_gpio_pin(i32) #1

declare dso_local i32 @stm32_gpio_get_mode(i32) #1

declare dso_local i32 @stm32_gpio_get_alt(i32) #1

declare dso_local i32 @stm32_pmx_set_mode(%struct.stm32_gpio_bank*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
