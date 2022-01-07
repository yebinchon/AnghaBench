; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_conf_pin_config_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_conf_pin_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @uniphier_conf_pin_config_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_conf_pin_config_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @pinconf_to_config_param(i64 %12)
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %28 [
    i32 132, label %15
    i32 130, label %15
    i32 131, label %15
    i32 129, label %20
    i32 128, label %24
  ]

15:                                               ; preds = %3, %3, %3
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @uniphier_conf_pin_bias_get(%struct.pinctrl_dev* %16, i32 %17, i32 %18)
  store i32 %19, i32* %10, align 4
  br label %31

20:                                               ; preds = %3
  %21 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @uniphier_conf_pin_drive_get(%struct.pinctrl_dev* %21, i32 %22, i32* %9)
  store i32 %23, i32* %10, align 4
  store i32 1, i32* %8, align 4
  br label %31

24:                                               ; preds = %3
  %25 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @uniphier_conf_pin_input_enable_get(%struct.pinctrl_dev* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %28, %24, %20, %15
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @pinconf_to_config_packed(i32 %38, i32 %39)
  %41 = load i64*, i64** %6, align 8
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %34, %31
  %43 = load i32, i32* %10, align 4
  ret i32 %43
}

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @uniphier_conf_pin_bias_get(%struct.pinctrl_dev*, i32, i32) #1

declare dso_local i32 @uniphier_conf_pin_drive_get(%struct.pinctrl_dev*, i32, i32*) #1

declare dso_local i32 @uniphier_conf_pin_input_enable_get(%struct.pinctrl_dev*, i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
