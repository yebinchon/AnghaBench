; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinconf.c_pin_config_group_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinconf.c_pin_config_group_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pinconf_ops* }
%struct.pinconf_ops = type { i32 (%struct.pinctrl_dev*, i32, i64*)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"cannot get configuration for pin group, missing group config get function in driver\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pin_config_group_get(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.pinctrl_dev*, align 8
  %9 = alloca %struct.pinconf_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.pinctrl_dev* @get_pinctrl_dev_from_devname(i8* %12)
  store %struct.pinctrl_dev* %13, %struct.pinctrl_dev** %8, align 8
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %15 = icmp ne %struct.pinctrl_dev* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %4, align 4
  br label %64

20:                                               ; preds = %3
  %21 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %22 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %25 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.pinconf_ops*, %struct.pinconf_ops** %27, align 8
  store %struct.pinconf_ops* %28, %struct.pinconf_ops** %9, align 8
  %29 = load %struct.pinconf_ops*, %struct.pinconf_ops** %9, align 8
  %30 = icmp ne %struct.pinconf_ops* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = load %struct.pinconf_ops*, %struct.pinconf_ops** %9, align 8
  %33 = getelementptr inbounds %struct.pinconf_ops, %struct.pinconf_ops* %32, i32 0, i32 0
  %34 = load i32 (%struct.pinctrl_dev*, i32, i64*)*, i32 (%struct.pinctrl_dev*, i32, i64*)** %33, align 8
  %35 = icmp ne i32 (%struct.pinctrl_dev*, i32, i64*)* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %31, %20
  %37 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %38 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %59

43:                                               ; preds = %31
  %44 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @pinctrl_get_group_selector(%struct.pinctrl_dev* %44, i8* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %11, align 4
  br label %59

51:                                               ; preds = %43
  %52 = load %struct.pinconf_ops*, %struct.pinconf_ops** %9, align 8
  %53 = getelementptr inbounds %struct.pinconf_ops, %struct.pinconf_ops* %52, i32 0, i32 0
  %54 = load i32 (%struct.pinctrl_dev*, i32, i64*)*, i32 (%struct.pinctrl_dev*, i32, i64*)** %53, align 8
  %55 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i64*, i64** %7, align 8
  %58 = call i32 %54(%struct.pinctrl_dev* %55, i32 %56, i64* %57)
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %51, %49, %36
  %60 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %61 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %16
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.pinctrl_dev* @get_pinctrl_dev_from_devname(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @pinctrl_get_group_selector(%struct.pinctrl_dev*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
