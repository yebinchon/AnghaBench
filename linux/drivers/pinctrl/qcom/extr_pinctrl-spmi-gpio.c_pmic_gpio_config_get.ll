; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-gpio.c_pmic_gpio_config_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-gpio.c_pmic_gpio_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pmic_gpio_pad* }
%struct.pmic_gpio_pad = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PMIC_GPIO_OUT_BUF_CMOS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PMIC_GPIO_OUT_BUF_OPEN_DRAIN_NMOS = common dso_local global i32 0, align 4
@PMIC_GPIO_OUT_BUF_OPEN_DRAIN_PMOS = common dso_local global i32 0, align 4
@PMIC_GPIO_PULL_DOWN = common dso_local global i32 0, align 4
@PMIC_GPIO_PULL_DISABLE = common dso_local global i32 0, align 4
@PMIC_GPIO_PULL_UP_30 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @pmic_gpio_config_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_gpio_config_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pmic_gpio_pad*, align 8
  %10 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @pinconf_to_config_param(i64 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %22, align 8
  store %struct.pmic_gpio_pad* %23, %struct.pmic_gpio_pad** %9, align 8
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %131 [
    i32 136, label %25
    i32 138, label %35
    i32 137, label %45
    i32 140, label %55
    i32 142, label %65
    i32 139, label %75
    i32 141, label %85
    i32 133, label %94
    i32 135, label %98
    i32 134, label %107
    i32 129, label %111
    i32 128, label %115
    i32 131, label %119
    i32 132, label %123
    i32 130, label %127
  ]

25:                                               ; preds = %3
  %26 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %27 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PMIC_GPIO_OUT_BUF_CMOS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %139

34:                                               ; preds = %25
  store i32 1, i32* %10, align 4
  br label %134

35:                                               ; preds = %3
  %36 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %37 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PMIC_GPIO_OUT_BUF_OPEN_DRAIN_NMOS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %139

44:                                               ; preds = %35
  store i32 1, i32* %10, align 4
  br label %134

45:                                               ; preds = %3
  %46 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %47 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PMIC_GPIO_OUT_BUF_OPEN_DRAIN_PMOS, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %139

54:                                               ; preds = %45
  store i32 1, i32* %10, align 4
  br label %134

55:                                               ; preds = %3
  %56 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %57 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PMIC_GPIO_PULL_DOWN, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %139

64:                                               ; preds = %55
  store i32 1, i32* %10, align 4
  br label %134

65:                                               ; preds = %3
  %66 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %67 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PMIC_GPIO_PULL_DISABLE, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %139

74:                                               ; preds = %65
  store i32 1, i32* %10, align 4
  br label %134

75:                                               ; preds = %3
  %76 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %77 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PMIC_GPIO_PULL_UP_30, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %139

84:                                               ; preds = %75
  store i32 1, i32* %10, align 4
  br label %134

85:                                               ; preds = %3
  %86 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %87 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %139

93:                                               ; preds = %85
  store i32 1, i32* %10, align 4
  br label %134

94:                                               ; preds = %3
  %95 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %96 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %10, align 4
  br label %134

98:                                               ; preds = %3
  %99 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %100 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %139

106:                                              ; preds = %98
  store i32 1, i32* %10, align 4
  br label %134

107:                                              ; preds = %3
  %108 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %109 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %10, align 4
  br label %134

111:                                              ; preds = %3
  %112 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %113 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %10, align 4
  br label %134

115:                                              ; preds = %3
  %116 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %117 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %10, align 4
  br label %134

119:                                              ; preds = %3
  %120 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %121 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %10, align 4
  br label %134

123:                                              ; preds = %3
  %124 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %125 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %10, align 4
  br label %134

127:                                              ; preds = %3
  %128 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %129 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %10, align 4
  br label %134

131:                                              ; preds = %3
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %139

134:                                              ; preds = %127, %123, %119, %115, %111, %107, %106, %94, %93, %84, %74, %64, %54, %44, %34
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i64 @pinconf_to_config_packed(i32 %135, i32 %136)
  %138 = load i64*, i64** %7, align 8
  store i64 %137, i64* %138, align 8
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %134, %131, %103, %90, %81, %71, %61, %51, %41, %31
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
