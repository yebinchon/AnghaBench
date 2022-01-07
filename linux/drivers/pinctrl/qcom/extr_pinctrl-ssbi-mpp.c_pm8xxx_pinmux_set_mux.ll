; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-mpp.c_pm8xxx_pinmux_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-mpp.c_pm8xxx_pinmux_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pm8xxx_mpp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pm8xxx_pin_data* }
%struct.pm8xxx_pin_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @pm8xxx_pinmux_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_pinmux_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pm8xxx_mpp*, align 8
  %8 = alloca %struct.pm8xxx_pin_data*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %10 = call %struct.pm8xxx_mpp* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %9)
  store %struct.pm8xxx_mpp* %10, %struct.pm8xxx_mpp** %7, align 8
  %11 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %7, align 8
  %12 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %18, align 8
  store %struct.pm8xxx_pin_data* %19, %struct.pm8xxx_pin_data** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %8, align 8
  %22 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %7, align 8
  %24 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %8, align 8
  %25 = call i32 @pm8xxx_mpp_update(%struct.pm8xxx_mpp* %23, %struct.pm8xxx_pin_data* %24)
  ret i32 0
}

declare dso_local %struct.pm8xxx_mpp* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pm8xxx_mpp_update(%struct.pm8xxx_mpp*, %struct.pm8xxx_pin_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
