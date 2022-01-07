; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinmux_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinmux_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.mvebu_pinctrl = type { i32, %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_function* }
%struct.mvebu_pinctrl_group = type { i32 }
%struct.mvebu_pinctrl_function = type { i32, i32* }
%struct.mvebu_mpp_ctrl_setting = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"unable to find setting %s in group %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot set group %s to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @mvebu_pinmux_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_pinmux_set(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvebu_pinctrl*, align 8
  %9 = alloca %struct.mvebu_pinctrl_function*, align 8
  %10 = alloca %struct.mvebu_pinctrl_group*, align 8
  %11 = alloca %struct.mvebu_mpp_ctrl_setting*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = call %struct.mvebu_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.mvebu_pinctrl* %15, %struct.mvebu_pinctrl** %8, align 8
  %16 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %8, align 8
  %17 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %16, i32 0, i32 2
  %18 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %18, i64 %20
  store %struct.mvebu_pinctrl_function* %21, %struct.mvebu_pinctrl_function** %9, align 8
  %22 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %8, align 8
  %23 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %22, i32 0, i32 1
  %24 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %24, i64 %26
  store %struct.mvebu_pinctrl_group* %27, %struct.mvebu_pinctrl_group** %10, align 8
  %28 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %8, align 8
  %29 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %10, align 8
  %30 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %9, align 8
  %31 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.mvebu_mpp_ctrl_setting* @mvebu_pinctrl_find_setting_by_name(%struct.mvebu_pinctrl* %28, %struct.mvebu_pinctrl_group* %29, i32 %32)
  store %struct.mvebu_mpp_ctrl_setting* %33, %struct.mvebu_mpp_ctrl_setting** %11, align 8
  %34 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %11, align 8
  %35 = icmp ne %struct.mvebu_mpp_ctrl_setting* %34, null
  br i1 %35, label %53, label %36

36:                                               ; preds = %3
  %37 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %8, align 8
  %38 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %9, align 8
  %41 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %9, align 8
  %44 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %81

53:                                               ; preds = %3
  %54 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %11, align 8
  %55 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %13, align 8
  %57 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %58 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %10, align 8
  %59 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mvebu_pinconf_group_set(%struct.pinctrl_dev* %57, i32 %60, i64* %13, i32 1)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %53
  %65 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %8, align 8
  %66 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %9, align 8
  %69 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %9, align 8
  %76 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %77)
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %4, align 4
  br label %81

80:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %64, %36
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.mvebu_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.mvebu_mpp_ctrl_setting* @mvebu_pinctrl_find_setting_by_name(%struct.mvebu_pinctrl*, %struct.mvebu_pinctrl_group*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @mvebu_pinconf_group_set(%struct.pinctrl_dev*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
