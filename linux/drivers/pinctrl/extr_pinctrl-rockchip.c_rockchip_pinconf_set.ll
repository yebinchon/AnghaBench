; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.rockchip_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rockchip_pin_bank = type { i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @rockchip_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pinconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rockchip_pinctrl*, align 8
  %11 = alloca %struct.rockchip_pin_bank*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %17 = call %struct.rockchip_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.rockchip_pinctrl* %17, %struct.rockchip_pinctrl** %10, align 8
  %18 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.rockchip_pin_bank* @pin_to_bank(%struct.rockchip_pinctrl* %18, i32 %19)
  store %struct.rockchip_pin_bank* %20, %struct.rockchip_pin_bank** %11, align 8
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %158, %4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %161

25:                                               ; preds = %21
  %26 = load i64*, i64** %8, align 8
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @pinconf_to_config_param(i64 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i64*, i64** %8, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @pinconf_to_config_argument(i64 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %12, align 4
  switch i32 %38, label %154 [
    i32 134, label %39
    i32 131, label %53
    i32 133, label %53
    i32 132, label %53
    i32 135, label %53
    i32 128, label %83
    i32 130, label %106
    i32 129, label %130
  ]

39:                                               ; preds = %25
  %40 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %11, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %11, align 8
  %43 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub i32 %41, %44
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @rockchip_set_pull(%struct.rockchip_pin_bank* %40, i32 %45, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %5, align 4
  br label %162

52:                                               ; preds = %39
  br label %157

53:                                               ; preds = %25, %25, %25, %25
  %54 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %10, align 8
  %55 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @rockchip_pinconf_pull_valid(%struct.TYPE_2__* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @ENOTSUPP, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %162

63:                                               ; preds = %53
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %162

69:                                               ; preds = %63
  %70 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %11, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %11, align 8
  %73 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sub i32 %71, %74
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @rockchip_set_pull(%struct.rockchip_pin_bank* %70, i32 %75, i32 %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %5, align 4
  br label %162

82:                                               ; preds = %69
  br label %157

83:                                               ; preds = %25
  %84 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %11, align 8
  %85 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %84, i32 0, i32 1
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %11, align 8
  %88 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sub i32 %86, %89
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @rockchip_gpio_set(i32* %85, i32 %90, i32 %91)
  %93 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %11, align 8
  %94 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %93, i32 0, i32 1
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %11, align 8
  %97 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub i32 %95, %98
  %100 = call i32 @_rockchip_pmx_gpio_set_direction(i32* %94, i32 %99, i32 0)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %83
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* %5, align 4
  br label %162

105:                                              ; preds = %83
  br label %157

106:                                              ; preds = %25
  %107 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %10, align 8
  %108 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @ENOTSUPP, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  br label %162

116:                                              ; preds = %106
  %117 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %11, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %11, align 8
  %120 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sub i32 %118, %121
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @rockchip_set_drive_perpin(%struct.rockchip_pin_bank* %117, i32 %122, i32 %123)
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %116
  %128 = load i32, i32* %15, align 4
  store i32 %128, i32* %5, align 4
  br label %162

129:                                              ; preds = %116
  br label %157

130:                                              ; preds = %25
  %131 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %10, align 8
  %132 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %130
  %138 = load i32, i32* @ENOTSUPP, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  br label %162

140:                                              ; preds = %130
  %141 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %11, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %11, align 8
  %144 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sub i32 %142, %145
  %147 = load i32, i32* %13, align 4
  %148 = call i32 @rockchip_set_schmitt(%struct.rockchip_pin_bank* %141, i32 %146, i32 %147)
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* %15, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %140
  %152 = load i32, i32* %15, align 4
  store i32 %152, i32* %5, align 4
  br label %162

153:                                              ; preds = %140
  br label %157

154:                                              ; preds = %25
  %155 = load i32, i32* @ENOTSUPP, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %5, align 4
  br label %162

157:                                              ; preds = %153, %129, %105, %82, %52
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %14, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %14, align 4
  br label %21

161:                                              ; preds = %21
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %161, %154, %151, %137, %127, %113, %103, %80, %66, %60, %50
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local %struct.rockchip_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.rockchip_pin_bank* @pin_to_bank(%struct.rockchip_pinctrl*, i32) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @rockchip_set_pull(%struct.rockchip_pin_bank*, i32, i32) #1

declare dso_local i32 @rockchip_pinconf_pull_valid(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @rockchip_gpio_set(i32*, i32, i32) #1

declare dso_local i32 @_rockchip_pmx_gpio_set_direction(i32*, i32, i32) #1

declare dso_local i32 @rockchip_set_drive_perpin(%struct.rockchip_pin_bank*, i32, i32) #1

declare dso_local i32 @rockchip_set_schmitt(%struct.rockchip_pin_bank*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
