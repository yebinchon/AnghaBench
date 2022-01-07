; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_pin_config_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_pin_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pm8xxx_gpio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pm8xxx_pin_data* }
%struct.pm8xxx_pin_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@PM8XXX_GPIO_BIAS_NP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PM8XXX_GPIO_BIAS_PD = common dso_local global i32 0, align 4
@PM8XXX_GPIO_BIAS_PU_1P5_30 = common dso_local global i32 0, align 4
@PM8XXX_GPIO_MODE_INPUT = common dso_local global i32 0, align 4
@PM8XXX_GPIO_MODE_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @pm8xxx_pin_config_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_pin_config_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.pm8xxx_gpio*, align 8
  %9 = alloca %struct.pm8xxx_pin_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.pm8xxx_gpio* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.pm8xxx_gpio* %13, %struct.pm8xxx_gpio** %8, align 8
  %14 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %15 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %14, i32 0, i32 0
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
  switch i32 %26, label %119 [
    i32 138, label %27
    i32 136, label %37
    i32 135, label %47
    i32 128, label %57
    i32 137, label %61
    i32 132, label %70
    i32 131, label %80
    i32 130, label %93
    i32 129, label %97
    i32 133, label %101
    i32 134, label %110
  ]

27:                                               ; preds = %3
  %28 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %29 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PM8XXX_GPIO_BIAS_NP, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %127

36:                                               ; preds = %27
  store i32 1, i32* %11, align 4
  br label %122

37:                                               ; preds = %3
  %38 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %39 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PM8XXX_GPIO_BIAS_PD, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %127

46:                                               ; preds = %37
  store i32 1, i32* %11, align 4
  br label %122

47:                                               ; preds = %3
  %48 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %49 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PM8XXX_GPIO_BIAS_PU_1P5_30, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %127

56:                                               ; preds = %47
  store i32 1, i32* %11, align 4
  br label %122

57:                                               ; preds = %3
  %58 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %59 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %11, align 4
  br label %122

61:                                               ; preds = %3
  %62 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %63 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %127

69:                                               ; preds = %61
  store i32 1, i32* %11, align 4
  br label %122

70:                                               ; preds = %3
  %71 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %72 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PM8XXX_GPIO_MODE_INPUT, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %127

79:                                               ; preds = %70
  store i32 1, i32* %11, align 4
  br label %122

80:                                               ; preds = %3
  %81 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %82 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PM8XXX_GPIO_MODE_OUTPUT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %89 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %11, align 4
  br label %92

91:                                               ; preds = %80
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %91, %87
  br label %122

93:                                               ; preds = %3
  %94 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %95 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %11, align 4
  br label %122

97:                                               ; preds = %3
  %98 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %99 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %11, align 4
  br label %122

101:                                              ; preds = %3
  %102 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %103 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %127

109:                                              ; preds = %101
  store i32 1, i32* %11, align 4
  br label %122

110:                                              ; preds = %3
  %111 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %9, align 8
  %112 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %127

118:                                              ; preds = %110
  store i32 1, i32* %11, align 4
  br label %122

119:                                              ; preds = %3
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %127

122:                                              ; preds = %118, %109, %97, %93, %92, %79, %69, %57, %56, %46, %36
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i64 @pinconf_to_config_packed(i32 %123, i32 %124)
  %126 = load i64*, i64** %7, align 8
  store i64 %125, i64* %126, align 8
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %122, %119, %115, %106, %76, %66, %53, %43, %33
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.pm8xxx_gpio* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
