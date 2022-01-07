; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lantiq.c_ltq_pmx_gpio_request_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lantiq.c_ltq_pmx_gpio_request_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.ltq_pinmux_info = type { i32 (%struct.pinctrl_dev*, i32, i32)*, i32, i32* }

@.str = private unnamed_addr constant [31 x i8] c"could not find mfp for pin %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"No GPIO function on pin%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32)* @ltq_pmx_gpio_request_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_pmx_gpio_request_enable(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca %struct.pinctrl_gpio_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ltq_pinmux_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %12 = call %struct.ltq_pinmux_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.ltq_pinmux_info* %12, %struct.ltq_pinmux_info** %8, align 8
  %13 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @match_mfp(%struct.ltq_pinmux_info* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %8, align 8
  %20 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %52

26:                                               ; preds = %3
  %27 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %8, align 8
  %28 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @match_mux(i32* %32, i32 0)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %8, align 8
  %38 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %52

44:                                               ; preds = %26
  %45 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %8, align 8
  %46 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %45, i32 0, i32 0
  %47 = load i32 (%struct.pinctrl_dev*, i32, i32)*, i32 (%struct.pinctrl_dev*, i32, i32)** %46, align 8
  %48 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 %47(%struct.pinctrl_dev* %48, i32 %49, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %44, %36, %18
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.ltq_pinmux_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @match_mfp(%struct.ltq_pinmux_info*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @match_mux(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
