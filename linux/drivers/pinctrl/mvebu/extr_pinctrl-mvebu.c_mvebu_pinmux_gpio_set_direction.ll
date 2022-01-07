; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinmux_gpio_set_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinmux_gpio_set_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.mvebu_pinctrl = type { i32 }
%struct.mvebu_pinctrl_group = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }
%struct.mvebu_mpp_ctrl_setting = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@MVEBU_SETTING_GPI = common dso_local global i32 0, align 4
@MVEBU_SETTING_GPO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32, i32)* @mvebu_pinmux_gpio_set_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_pinmux_gpio_set_direction(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca %struct.pinctrl_gpio_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mvebu_pinctrl*, align 8
  %11 = alloca %struct.mvebu_pinctrl_group*, align 8
  %12 = alloca %struct.mvebu_mpp_ctrl_setting*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %14 = call %struct.mvebu_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.mvebu_pinctrl* %14, %struct.mvebu_pinctrl** %10, align 8
  %15 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.mvebu_pinctrl_group* @mvebu_pinctrl_find_group_by_pid(%struct.mvebu_pinctrl* %15, i32 %16)
  store %struct.mvebu_pinctrl_group* %17, %struct.mvebu_pinctrl_group** %11, align 8
  %18 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %11, align 8
  %19 = icmp ne %struct.mvebu_pinctrl_group* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %75

23:                                               ; preds = %4
  %24 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %11, align 8
  %25 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %27, align 8
  %29 = icmp ne i32 (i32, i32, i32)* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %11, align 8
  %32 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %34, align 8
  %36 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %11, align 8
  %37 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 %35(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %75

42:                                               ; preds = %23
  %43 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %10, align 8
  %44 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %11, align 8
  %45 = call %struct.mvebu_mpp_ctrl_setting* @mvebu_pinctrl_find_gpio_setting(%struct.mvebu_pinctrl* %43, %struct.mvebu_pinctrl_group* %44)
  store %struct.mvebu_mpp_ctrl_setting* %45, %struct.mvebu_mpp_ctrl_setting** %12, align 8
  %46 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %12, align 8
  %47 = icmp ne %struct.mvebu_mpp_ctrl_setting* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %75

51:                                               ; preds = %42
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %12, align 8
  %56 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MVEBU_SETTING_GPI, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %54, %51
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  %65 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %12, align 8
  %66 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MVEBU_SETTING_GPO, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64, %54
  store i32 0, i32* %5, align 4
  br label %75

72:                                               ; preds = %64, %61
  %73 = load i32, i32* @ENOTSUPP, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %71, %48, %30, %20
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.mvebu_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.mvebu_pinctrl_group* @mvebu_pinctrl_find_group_by_pid(%struct.mvebu_pinctrl*, i32) #1

declare dso_local %struct.mvebu_mpp_ctrl_setting* @mvebu_pinctrl_find_gpio_setting(%struct.mvebu_pinctrl*, %struct.mvebu_pinctrl_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
