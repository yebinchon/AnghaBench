; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-as3722.c_as3722_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-as3722.c_as3722_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.as3722_pctrl_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@AS3722_GPIO_MODE_PULL_UP = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_PULL_DOWN = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_OPEN_DRAIN = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_HIGH_IMPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Properties not supported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @as3722_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.as3722_pctrl_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.as3722_pctrl_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.as3722_pctrl_info* %13, %struct.as3722_pctrl_info** %8, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @pinconf_to_config_param(i64 %15)
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %43 [
    i32 132, label %18
    i32 129, label %35
    i32 130, label %37
    i32 128, label %39
    i32 131, label %41
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* @AS3722_GPIO_MODE_PULL_UP, align 4
  %20 = load i32, i32* @AS3722_GPIO_MODE_PULL_DOWN, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %8, align 8
  %23 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %18
  store i32 1, i32* %10, align 4
  br label %34

34:                                               ; preds = %33, %18
  store i32 0, i32* %11, align 4
  br label %50

35:                                               ; preds = %3
  %36 = load i32, i32* @AS3722_GPIO_MODE_PULL_UP, align 4
  store i32 %36, i32* %11, align 4
  br label %50

37:                                               ; preds = %3
  %38 = load i32, i32* @AS3722_GPIO_MODE_PULL_DOWN, align 4
  store i32 %38, i32* %11, align 4
  br label %50

39:                                               ; preds = %3
  %40 = load i32, i32* @AS3722_GPIO_MODE_OPEN_DRAIN, align 4
  store i32 %40, i32* %11, align 4
  br label %50

41:                                               ; preds = %3
  %42 = load i32, i32* @AS3722_GPIO_MODE_HIGH_IMPED, align 4
  store i32 %42, i32* %11, align 4
  br label %50

43:                                               ; preds = %3
  %44 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %8, align 8
  %45 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %68

50:                                               ; preds = %41, %39, %37, %35, %34
  %51 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %8, align 8
  %52 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  store i32 1, i32* %10, align 4
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @pinconf_to_config_packed(i32 %64, i32 %65)
  %67 = load i64*, i64** %7, align 8
  store i64 %66, i64* %67, align 8
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %43
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.as3722_pctrl_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
