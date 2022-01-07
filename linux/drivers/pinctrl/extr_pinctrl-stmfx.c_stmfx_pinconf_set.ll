; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-stmfx.c_stmfx_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-stmfx.c_stmfx_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.stmfx_pinctrl = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"pin %d is not available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @stmfx_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmfx_pinconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stmfx_pinctrl*, align 8
  %11 = alloca %struct.pinctrl_gpio_range*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %18 = call %struct.stmfx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %17)
  store %struct.stmfx_pinctrl* %18, %struct.stmfx_pinctrl** %10, align 8
  %19 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin_nolock(%struct.pinctrl_dev* %19, i32 %20)
  store %struct.pinctrl_gpio_range* %21, %struct.pinctrl_gpio_range** %11, align 8
  %22 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %11, align 8
  %23 = icmp ne %struct.pinctrl_gpio_range* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %4
  %25 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %26 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %131

32:                                               ; preds = %4
  %33 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %10, align 8
  %34 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %33, i32 0, i32 0
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @stmfx_gpio_get_direction(i32* %34, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %5, align 4
  br label %131

41:                                               ; preds = %32
  store i32 0, i32* %15, align 4
  br label %42

42:                                               ; preds = %127, %41
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %130

46:                                               ; preds = %42
  %47 = load i64*, i64** %8, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @pinconf_to_config_param(i64 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i64*, i64** %8, align 8
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @pinconf_to_config_argument(i64 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %12, align 4
  switch i32 %59, label %123 [
    i32 132, label %60
    i32 134, label %60
    i32 129, label %60
    i32 133, label %69
    i32 131, label %86
    i32 130, label %103
    i32 128, label %112
  ]

60:                                               ; preds = %46, %46, %46
  %61 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %10, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @stmfx_pinconf_set_type(%struct.stmfx_pinctrl* %61, i32 %62, i32 0)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %5, align 4
  br label %131

68:                                               ; preds = %60
  br label %126

69:                                               ; preds = %46
  %70 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %10, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @stmfx_pinconf_set_type(%struct.stmfx_pinctrl* %70, i32 %71, i32 1)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %5, align 4
  br label %131

77:                                               ; preds = %69
  %78 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %10, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @stmfx_pinconf_set_pupd(%struct.stmfx_pinctrl* %78, i32 %79, i32 0)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %16, align 4
  store i32 %84, i32* %5, align 4
  br label %131

85:                                               ; preds = %77
  br label %126

86:                                               ; preds = %46
  %87 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %10, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @stmfx_pinconf_set_type(%struct.stmfx_pinctrl* %87, i32 %88, i32 1)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %5, align 4
  br label %131

94:                                               ; preds = %86
  %95 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %10, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @stmfx_pinconf_set_pupd(%struct.stmfx_pinctrl* %95, i32 %96, i32 1)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %16, align 4
  store i32 %101, i32* %5, align 4
  br label %131

102:                                              ; preds = %94
  br label %126

103:                                              ; preds = %46
  %104 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %10, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @stmfx_pinconf_set_type(%struct.stmfx_pinctrl* %104, i32 %105, i32 1)
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %16, align 4
  store i32 %110, i32* %5, align 4
  br label %131

111:                                              ; preds = %103
  br label %126

112:                                              ; preds = %46
  %113 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %10, align 8
  %114 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %113, i32 0, i32 0
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @stmfx_gpio_direction_output(i32* %114, i32 %115, i32 %116)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i32, i32* %16, align 4
  store i32 %121, i32* %5, align 4
  br label %131

122:                                              ; preds = %112
  br label %126

123:                                              ; preds = %46
  %124 = load i32, i32* @ENOTSUPP, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %131

126:                                              ; preds = %122, %111, %102, %85, %68
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %42

130:                                              ; preds = %42
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %130, %123, %120, %109, %100, %92, %83, %75, %66, %39, %24
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local %struct.stmfx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin_nolock(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @stmfx_gpio_get_direction(i32*, i32) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @stmfx_pinconf_set_type(%struct.stmfx_pinctrl*, i32, i32) #1

declare dso_local i32 @stmfx_pinconf_set_pupd(%struct.stmfx_pinctrl*, i32, i32) #1

declare dso_local i32 @stmfx_gpio_direction_output(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
