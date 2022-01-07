; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/ti/extr_pinctrl-ti-iodelay.c_ti_iodelay_pinconf_group_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/ti/extr_pinctrl-ti-iodelay.c_ti_iodelay_pinconf_group_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.ti_iodelay_device = type { i32 }
%struct.ti_iodelay_pingroup = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @ti_iodelay_pinconf_group_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_iodelay_pinconf_group_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ti_iodelay_device*, align 8
  %9 = alloca %struct.ti_iodelay_pingroup*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %11 = call %struct.ti_iodelay_device* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %10)
  store %struct.ti_iodelay_device* %11, %struct.ti_iodelay_device** %8, align 8
  %12 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.ti_iodelay_pingroup* @ti_iodelay_get_pingroup(%struct.ti_iodelay_device* %12, i32 %13)
  store %struct.ti_iodelay_pingroup* %14, %struct.ti_iodelay_pingroup** %9, align 8
  %15 = load %struct.ti_iodelay_pingroup*, %struct.ti_iodelay_pingroup** %9, align 8
  %16 = icmp ne %struct.ti_iodelay_pingroup* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.ti_iodelay_pingroup*, %struct.ti_iodelay_pingroup** %9, align 8
  %22 = getelementptr inbounds %struct.ti_iodelay_pingroup, %struct.ti_iodelay_pingroup* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %7, align 8
  store i64 %23, i64* %24, align 8
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %20, %17
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local %struct.ti_iodelay_device* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.ti_iodelay_pingroup* @ti_iodelay_get_pingroup(%struct.ti_iodelay_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
