; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinconf.c_pinconf_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinconf.c_pinconf_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pinconf_ops* }
%struct.pinconf_ops = type { {}* }

@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinconf_set_config(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pinconf_ops*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %12 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.pinconf_ops*, %struct.pinconf_ops** %14, align 8
  store %struct.pinconf_ops* %15, %struct.pinconf_ops** %10, align 8
  %16 = load %struct.pinconf_ops*, %struct.pinconf_ops** %10, align 8
  %17 = icmp ne %struct.pinconf_ops* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.pinconf_ops*, %struct.pinconf_ops** %10, align 8
  %20 = getelementptr inbounds %struct.pinconf_ops, %struct.pinconf_ops* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.pinctrl_dev*, i32, i64*, i64)**
  %22 = load i32 (%struct.pinctrl_dev*, i32, i64*, i64)*, i32 (%struct.pinctrl_dev*, i32, i64*, i64)** %21, align 8
  %23 = icmp ne i32 (%struct.pinctrl_dev*, i32, i64*, i64)* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18, %4
  %25 = load i32, i32* @ENOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %37

27:                                               ; preds = %18
  %28 = load %struct.pinconf_ops*, %struct.pinconf_ops** %10, align 8
  %29 = getelementptr inbounds %struct.pinconf_ops, %struct.pinconf_ops* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.pinctrl_dev*, i32, i64*, i64)**
  %31 = load i32 (%struct.pinctrl_dev*, i32, i64*, i64)*, i32 (%struct.pinctrl_dev*, i32, i64*, i64)** %30, align 8
  %32 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i64*, i64** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 %31(%struct.pinctrl_dev* %32, i32 %33, i64* %34, i64 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %27, %24
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
