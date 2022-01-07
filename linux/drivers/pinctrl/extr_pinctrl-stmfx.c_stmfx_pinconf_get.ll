; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-stmfx.c_stmfx_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-stmfx.c_stmfx_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.stmfx_pinctrl = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @stmfx_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmfx_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.stmfx_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pinctrl_gpio_range*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %17 = call %struct.stmfx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.stmfx_pinctrl* %17, %struct.stmfx_pinctrl** %8, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @pinconf_to_config_param(i64 %19)
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin_nolock(%struct.pinctrl_dev* %21, i32 %22)
  store %struct.pinctrl_gpio_range* %23, %struct.pinctrl_gpio_range** %10, align 8
  %24 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %10, align 8
  %25 = icmp ne %struct.pinctrl_gpio_range* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %145

29:                                               ; preds = %3
  %30 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %8, align 8
  %31 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %30, i32 0, i32 0
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @stmfx_gpio_get_direction(i32* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %4, align 4
  br label %145

38:                                               ; preds = %29
  %39 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @stmfx_pinconf_get_type(%struct.stmfx_pinctrl* %39, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %4, align 4
  br label %145

46:                                               ; preds = %38
  %47 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @stmfx_pinconf_get_pupd(%struct.stmfx_pinctrl* %47, i32 %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %4, align 4
  br label %145

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  switch i32 %55, label %137 [
    i32 133, label %56
    i32 132, label %73
    i32 131, label %84
    i32 130, label %92
    i32 129, label %106
    i32 128, label %120
  ]

56:                                               ; preds = %54
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62, %56
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68, %62, %59
  store i32 1, i32* %11, align 4
  br label %72

72:                                               ; preds = %71, %68, %65
  br label %140

73:                                               ; preds = %54
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  store i32 1, i32* %11, align 4
  br label %83

83:                                               ; preds = %82, %79, %76, %73
  br label %140

84:                                               ; preds = %54
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 1, i32* %11, align 4
  br label %91

91:                                               ; preds = %90, %87, %84
  br label %140

92:                                               ; preds = %54
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101, %95
  store i32 1, i32* %11, align 4
  br label %105

105:                                              ; preds = %104, %101, %98
  br label %140

106:                                              ; preds = %54
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109, %106
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115, %109
  store i32 1, i32* %11, align 4
  br label %119

119:                                              ; preds = %118, %115, %112
  br label %140

120:                                              ; preds = %54
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %4, align 4
  br label %145

126:                                              ; preds = %120
  %127 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %8, align 8
  %128 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %127, i32 0, i32 0
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @stmfx_gpio_get(i32* %128, i32 %129)
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %4, align 4
  br label %145

135:                                              ; preds = %126
  %136 = load i32, i32* %12, align 4
  store i32 %136, i32* %11, align 4
  br label %140

137:                                              ; preds = %54
  %138 = load i32, i32* @ENOTSUPP, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %4, align 4
  br label %145

140:                                              ; preds = %135, %119, %105, %91, %83, %72
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %11, align 4
  %143 = call i64 @pinconf_to_config_packed(i32 %141, i32 %142)
  %144 = load i64*, i64** %7, align 8
  store i64 %143, i64* %144, align 8
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %140, %137, %133, %123, %52, %44, %36, %26
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local %struct.stmfx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin_nolock(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @stmfx_gpio_get_direction(i32*, i32) #1

declare dso_local i32 @stmfx_pinconf_get_type(%struct.stmfx_pinctrl*, i32) #1

declare dso_local i32 @stmfx_pinconf_get_pupd(%struct.stmfx_pinctrl*, i32) #1

declare dso_local i32 @stmfx_gpio_get(i32*, i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
