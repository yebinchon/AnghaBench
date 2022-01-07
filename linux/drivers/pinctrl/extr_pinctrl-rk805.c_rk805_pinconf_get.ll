; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rk805.c_rk805_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rk805.c_rk805_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.rk805_pctrl_info = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Properties not supported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @rk805_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk805_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.rk805_pctrl_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %12 = call %struct.rk805_pctrl_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.rk805_pctrl_info* %12, %struct.rk805_pctrl_info** %8, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @pinconf_to_config_param(i64 %14)
  store i32 %15, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %22 [
    i32 128, label %17
  ]

17:                                               ; preds = %3
  %18 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %8, align 8
  %19 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %18, i32 0, i32 1
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @rk805_gpio_get(i32* %19, i32 %20)
  store i64 %21, i64* %10, align 8
  br label %29

22:                                               ; preds = %3
  %23 = load %struct.rk805_pctrl_info*, %struct.rk805_pctrl_info** %8, align 8
  %24 = getelementptr inbounds %struct.rk805_pctrl_info, %struct.rk805_pctrl_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %35

29:                                               ; preds = %17
  %30 = load i32, i32* %9, align 4
  %31 = load i64, i64* %10, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i64 @pinconf_to_config_packed(i32 %30, i32 %32)
  %34 = load i64*, i64** %7, align 8
  store i64 %33, i64* %34, align 8
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %22
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.rk805_pctrl_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i64 @rk805_gpio_get(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
