; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinmux_gpio_request_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinmux_gpio_request_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.mvebu_pinctrl = type { i32 }
%struct.mvebu_pinctrl_group = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }
%struct.mvebu_mpp_ctrl_setting = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32)* @mvebu_pinmux_gpio_request_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_pinmux_gpio_request_enable(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca %struct.pinctrl_gpio_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvebu_pinctrl*, align 8
  %9 = alloca %struct.mvebu_pinctrl_group*, align 8
  %10 = alloca %struct.mvebu_mpp_ctrl_setting*, align 8
  %11 = alloca i64, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.mvebu_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.mvebu_pinctrl* %13, %struct.mvebu_pinctrl** %8, align 8
  %14 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.mvebu_pinctrl_group* @mvebu_pinctrl_find_group_by_pid(%struct.mvebu_pinctrl* %14, i32 %15)
  store %struct.mvebu_pinctrl_group* %16, %struct.mvebu_pinctrl_group** %9, align 8
  %17 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %9, align 8
  %18 = icmp ne %struct.mvebu_pinctrl_group* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %58

22:                                               ; preds = %3
  %23 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %9, align 8
  %24 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (i32, i32)*, i32 (i32, i32)** %26, align 8
  %28 = icmp ne i32 (i32, i32)* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %9, align 8
  %31 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (i32, i32)*, i32 (i32, i32)** %33, align 8
  %35 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %9, align 8
  %36 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 %34(i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %58

40:                                               ; preds = %22
  %41 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %8, align 8
  %42 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %9, align 8
  %43 = call %struct.mvebu_mpp_ctrl_setting* @mvebu_pinctrl_find_gpio_setting(%struct.mvebu_pinctrl* %41, %struct.mvebu_pinctrl_group* %42)
  store %struct.mvebu_mpp_ctrl_setting* %43, %struct.mvebu_mpp_ctrl_setting** %10, align 8
  %44 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %10, align 8
  %45 = icmp ne %struct.mvebu_mpp_ctrl_setting* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %58

49:                                               ; preds = %40
  %50 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %10, align 8
  %51 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %11, align 8
  %53 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %54 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %9, align 8
  %55 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @mvebu_pinconf_group_set(%struct.pinctrl_dev* %53, i32 %56, i64* %11, i32 1)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %49, %46, %29, %19
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.mvebu_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.mvebu_pinctrl_group* @mvebu_pinctrl_find_group_by_pid(%struct.mvebu_pinctrl*, i32) #1

declare dso_local %struct.mvebu_mpp_ctrl_setting* @mvebu_pinctrl_find_gpio_setting(%struct.mvebu_pinctrl*, %struct.mvebu_pinctrl_group*) #1

declare dso_local i32 @mvebu_pinconf_group_set(%struct.pinctrl_dev*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
