; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-mpp.c_pm8xxx_pin_config_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-mpp.c_pm8xxx_pin_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pm8xxx_mpp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pm8xxx_pin_data* }
%struct.pm8xxx_pin_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @pm8xxx_pin_config_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_pin_config_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.pm8xxx_mpp*, align 8
  %9 = alloca %struct.pm8xxx_pin_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.pm8xxx_mpp* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.pm8xxx_mpp* %13, %struct.pm8xxx_mpp** %8, align 8
  %14 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %8, align 8
  %15 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %21, align 8
  store %struct.pm8xxx_pin_data* %22, %struct.pm8xxx_pin_data** %9, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @pinconf_to_config_param(i64 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %67 [
    i32 136, label %27
    i32 137, label %31
    i32 134, label %35
    i32 133, label %39
    i32 132, label %43
    i32 135, label %47
    i32 129, label %51
    i32 130, label %55
    i32 131, label %59
    i32 128, label %63
  ]

27:                                               ; preds = %3
  %28 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %29 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  br label %70

31:                                               ; preds = %3
  %32 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %33 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  br label %70

35:                                               ; preds = %3
  %36 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %37 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  br label %70

39:                                               ; preds = %3
  %40 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %41 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  br label %70

43:                                               ; preds = %3
  %44 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %45 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  br label %70

47:                                               ; preds = %3
  %48 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %49 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  br label %70

51:                                               ; preds = %3
  %52 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %53 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  br label %70

55:                                               ; preds = %3
  %56 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %57 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  br label %70

59:                                               ; preds = %3
  %60 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %61 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %11, align 4
  br label %70

63:                                               ; preds = %3
  %64 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %65 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  br label %70

67:                                               ; preds = %3
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %75

70:                                               ; preds = %63, %59, %55, %51, %47, %43, %39, %35, %31, %27
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i64 @pinconf_to_config_packed(i32 %71, i32 %72)
  %74 = load i64*, i64** %7, align 8
  store i64 %73, i64* %74, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %70, %67
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.pm8xxx_mpp* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
