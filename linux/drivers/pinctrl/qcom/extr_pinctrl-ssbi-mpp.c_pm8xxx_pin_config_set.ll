; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-mpp.c_pm8xxx_pin_config_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-mpp.c_pm8xxx_pin_config_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pm8xxx_mpp = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pm8xxx_pin_data* }
%struct.pm8xxx_pin_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"unsupported config parameter: %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @pm8xxx_pin_config_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_pin_config_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pm8xxx_mpp*, align 8
  %11 = alloca %struct.pm8xxx_pin_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %16 = call %struct.pm8xxx_mpp* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %15)
  store %struct.pm8xxx_mpp* %16, %struct.pm8xxx_mpp** %10, align 8
  %17 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %10, align 8
  %18 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %24, align 8
  store %struct.pm8xxx_pin_data* %25, %struct.pm8xxx_pin_data** %11, align 8
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %101, %4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %104

30:                                               ; preds = %26
  %31 = load i64*, i64** %8, align 8
  %32 = load i32, i32* %14, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @pinconf_to_config_param(i64 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i64*, i64** %8, align 8
  %38 = load i32, i32* %14, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @pinconf_to_config_argument(i64 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %12, align 4
  switch i32 %43, label %92 [
    i32 136, label %44
    i32 137, label %48
    i32 134, label %51
    i32 133, label %54
    i32 132, label %64
    i32 135, label %68
    i32 129, label %72
    i32 130, label %76
    i32 131, label %80
    i32 128, label %84
  ]

44:                                               ; preds = %30
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %47 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %100

48:                                               ; preds = %30
  %49 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %50 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  br label %100

51:                                               ; preds = %30
  %52 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %53 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %52, i32 0, i32 2
  store i32 1, i32* %53, align 4
  br label %100

54:                                               ; preds = %30
  %55 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %56 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %55, i32 0, i32 3
  store i32 1, i32* %56, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %63 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  br label %100

64:                                               ; preds = %30
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %67 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  br label %100

68:                                               ; preds = %30
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %71 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  br label %100

72:                                               ; preds = %30
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %75 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  br label %100

76:                                               ; preds = %30
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %79 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 4
  br label %100

80:                                               ; preds = %30
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %83 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %82, i32 0, i32 9
  store i32 %81, i32* %83, align 4
  br label %100

84:                                               ; preds = %30
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %91 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %90, i32 0, i32 10
  store i32 %89, i32* %91, align 4
  br label %100

92:                                               ; preds = %30
  %93 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %10, align 8
  %94 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %108

100:                                              ; preds = %84, %80, %76, %72, %68, %64, %54, %51, %48, %44
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %14, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %14, align 4
  br label %26

104:                                              ; preds = %26
  %105 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %10, align 8
  %106 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %107 = call i32 @pm8xxx_mpp_update(%struct.pm8xxx_mpp* %105, %struct.pm8xxx_pin_data* %106)
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %104, %92
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.pm8xxx_mpp* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pm8xxx_mpp_update(%struct.pm8xxx_mpp*, %struct.pm8xxx_pin_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
