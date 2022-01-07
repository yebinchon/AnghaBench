; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pmx_gpio_set_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pmx_gpio_set_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.sunxi_pinctrl = type { i32 }
%struct.sunxi_desc_function = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"gpio_in\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"gpio_out\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32, i32)* @sunxi_pmx_gpio_set_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_pmx_gpio_set_direction(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca %struct.pinctrl_gpio_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sunxi_pinctrl*, align 8
  %11 = alloca %struct.sunxi_desc_function*, align 8
  %12 = alloca i8*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %14 = call %struct.sunxi_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.sunxi_pinctrl* %14, %struct.sunxi_pinctrl** %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %19

18:                                               ; preds = %4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %19

19:                                               ; preds = %18, %17
  %20 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i8*, i8** %12, align 8
  %23 = call %struct.sunxi_desc_function* @sunxi_pinctrl_desc_find_function_by_pin(%struct.sunxi_pinctrl* %20, i32 %21, i8* %22)
  store %struct.sunxi_desc_function* %23, %struct.sunxi_desc_function** %11, align 8
  %24 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %11, align 8
  %25 = icmp ne %struct.sunxi_desc_function* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %36

29:                                               ; preds = %19
  %30 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %11, align 8
  %33 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sunxi_pmx_set(%struct.pinctrl_dev* %30, i32 %31, i32 %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %29, %26
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.sunxi_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.sunxi_desc_function* @sunxi_pinctrl_desc_find_function_by_pin(%struct.sunxi_pinctrl*, i32, i8*) #1

declare dso_local i32 @sunxi_pmx_set(%struct.pinctrl_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
