; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-u300.c_u300_pin_config_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-u300.c_u300_pin_config_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @u300_pin_config_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u300_pin_config_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pinctrl_gpio_range*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin(%struct.pinctrl_dev* %13, i32 %14)
  store %struct.pinctrl_gpio_range* %15, %struct.pinctrl_gpio_range** %10, align 8
  %16 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %10, align 8
  %17 = icmp ne %struct.pinctrl_gpio_range* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %55

21:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %51, %21
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  %27 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %10, align 8
  %28 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %10, align 8
  %32 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub i32 %30, %33
  %35 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %10, align 8
  %36 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %34, %37
  %39 = load i64*, i64** %8, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @pinconf_to_config_param(i64 %43)
  %45 = call i32 @u300_gpio_config_set(i32 %29, i32 %38, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %26
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %55

50:                                               ; preds = %26
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %22

54:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %48, %18
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @u300_gpio_config_set(i32, i32, i32) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
