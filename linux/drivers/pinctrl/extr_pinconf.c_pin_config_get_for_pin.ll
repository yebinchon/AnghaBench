; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinconf.c_pin_config_get_for_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinconf.c_pin_config_get_for_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pinconf_ops* }
%struct.pinconf_ops = type { {}* }

@.str = private unnamed_addr constant [65 x i8] c"cannot get pin configuration, .pin_config_get missing in driver\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pin_config_get_for_pin(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.pinconf_ops*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %9 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %10 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.pinconf_ops*, %struct.pinconf_ops** %12, align 8
  store %struct.pinconf_ops* %13, %struct.pinconf_ops** %8, align 8
  %14 = load %struct.pinconf_ops*, %struct.pinconf_ops** %8, align 8
  %15 = icmp ne %struct.pinconf_ops* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.pinconf_ops*, %struct.pinconf_ops** %8, align 8
  %18 = getelementptr inbounds %struct.pinconf_ops, %struct.pinconf_ops* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.pinctrl_dev*, i32, i64*)**
  %20 = load i32 (%struct.pinctrl_dev*, i32, i64*)*, i32 (%struct.pinctrl_dev*, i32, i64*)** %19, align 8
  %21 = icmp ne i32 (%struct.pinctrl_dev*, i32, i64*)* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %16, %3
  %23 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %24 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %38

29:                                               ; preds = %16
  %30 = load %struct.pinconf_ops*, %struct.pinconf_ops** %8, align 8
  %31 = getelementptr inbounds %struct.pinconf_ops, %struct.pinconf_ops* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.pinctrl_dev*, i32, i64*)**
  %33 = load i32 (%struct.pinctrl_dev*, i32, i64*)*, i32 (%struct.pinctrl_dev*, i32, i64*)** %32, align 8
  %34 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i64*, i64** %7, align 8
  %37 = call i32 %33(%struct.pinctrl_dev* %34, i32 %35, i64* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %29, %22
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
