; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-as3722.c_as3722_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-as3722.c_as3722_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.as3722_pctrl_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@AS3722_GPIO_MODE_PULL_UP = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_PULL_DOWN = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_HIGH_IMPED = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_OPEN_DRAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Properties not supported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @as3722_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_pinconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.as3722_pctrl_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %15 = call %struct.as3722_pctrl_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.as3722_pctrl_info* %15, %struct.as3722_pctrl_info** %10, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %76, %4
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %79

20:                                               ; preds = %16
  %21 = load i64*, i64** %8, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @pinconf_to_config_param(i64 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %10, align 8
  %28 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  switch i32 %35, label %60 [
    i32 130, label %36
    i32 133, label %37
    i32 129, label %44
    i32 131, label %48
    i32 132, label %52
    i32 128, label %56
  ]

36:                                               ; preds = %20
  br label %67

37:                                               ; preds = %20
  %38 = load i32, i32* @AS3722_GPIO_MODE_PULL_UP, align 4
  %39 = load i32, i32* @AS3722_GPIO_MODE_PULL_DOWN, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %12, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %12, align 4
  br label %67

44:                                               ; preds = %20
  %45 = load i32, i32* @AS3722_GPIO_MODE_PULL_UP, align 4
  %46 = load i32, i32* %12, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %12, align 4
  br label %67

48:                                               ; preds = %20
  %49 = load i32, i32* @AS3722_GPIO_MODE_PULL_DOWN, align 4
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %12, align 4
  br label %67

52:                                               ; preds = %20
  %53 = load i32, i32* @AS3722_GPIO_MODE_HIGH_IMPED, align 4
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %12, align 4
  br label %67

56:                                               ; preds = %20
  %57 = load i32, i32* @AS3722_GPIO_MODE_OPEN_DRAIN, align 4
  %58 = load i32, i32* %12, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %12, align 4
  br label %67

60:                                               ; preds = %20
  %61 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %10, align 8
  %62 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @ENOTSUPP, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %80

67:                                               ; preds = %56, %52, %48, %44, %37, %36
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %10, align 8
  %70 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %68, i32* %75, align 4
  br label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %16

79:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %60
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.as3722_pctrl_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
