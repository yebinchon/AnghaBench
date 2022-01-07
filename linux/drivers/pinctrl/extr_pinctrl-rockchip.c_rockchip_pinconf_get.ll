; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.rockchip_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rockchip_pin_bank = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@RK_FUNC_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @rockchip_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.rockchip_pinctrl*, align 8
  %9 = alloca %struct.rockchip_pin_bank*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %14 = call %struct.rockchip_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.rockchip_pinctrl* %14, %struct.rockchip_pinctrl** %8, align 8
  %15 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.rockchip_pin_bank* @pin_to_bank(%struct.rockchip_pinctrl* %15, i32 %16)
  store %struct.rockchip_pin_bank* %17, %struct.rockchip_pin_bank** %9, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @pinconf_to_config_param(i64 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %140 [
    i32 134, label %22
    i32 131, label %36
    i32 133, label %36
    i32 132, label %36
    i32 135, label %36
    i32 128, label %60
    i32 130, label %92
    i32 129, label %116
  ]

22:                                               ; preds = %3
  %23 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %26 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub i32 %24, %27
  %29 = call i32 @rockchip_get_pull(%struct.rockchip_pin_bank* %23, i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %148

35:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  br label %143

36:                                               ; preds = %3, %3, %3, %3
  %37 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %38 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @rockchip_pinconf_pull_valid(%struct.TYPE_2__* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %148

46:                                               ; preds = %36
  %47 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %50 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub i32 %48, %51
  %53 = call i32 @rockchip_get_pull(%struct.rockchip_pin_bank* %47, i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %148

59:                                               ; preds = %46
  store i32 1, i32* %11, align 4
  br label %143

60:                                               ; preds = %3
  %61 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %64 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sub i32 %62, %65
  %67 = call i32 @rockchip_get_mux(%struct.rockchip_pin_bank* %61, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @RK_FUNC_GPIO, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %148

74:                                               ; preds = %60
  %75 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %76 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %75, i32 0, i32 1
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %79 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sub i32 %77, %80
  %82 = call i32 @rockchip_gpio_get(i32* %76, i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %4, align 4
  br label %148

87:                                               ; preds = %74
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1, i32 0
  store i32 %91, i32* %11, align 4
  br label %143

92:                                               ; preds = %3
  %93 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %94 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* @ENOTSUPP, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %148

102:                                              ; preds = %92
  %103 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %106 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sub i32 %104, %107
  %109 = call i32 @rockchip_get_drive_perpin(%struct.rockchip_pin_bank* %103, i32 %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %102
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %4, align 4
  br label %148

114:                                              ; preds = %102
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %11, align 4
  br label %143

116:                                              ; preds = %3
  %117 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %118 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %116
  %124 = load i32, i32* @ENOTSUPP, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %4, align 4
  br label %148

126:                                              ; preds = %116
  %127 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %130 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sub i32 %128, %131
  %133 = call i32 @rockchip_get_schmitt(%struct.rockchip_pin_bank* %127, i32 %132)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %126
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %4, align 4
  br label %148

138:                                              ; preds = %126
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %11, align 4
  br label %143

140:                                              ; preds = %3
  %141 = load i32, i32* @ENOTSUPP, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  br label %148

143:                                              ; preds = %138, %114, %87, %59, %35
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %11, align 4
  %146 = call i64 @pinconf_to_config_packed(i32 %144, i32 %145)
  %147 = load i64*, i64** %7, align 8
  store i64 %146, i64* %147, align 8
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %143, %140, %136, %123, %112, %99, %85, %71, %56, %43, %32
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.rockchip_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.rockchip_pin_bank* @pin_to_bank(%struct.rockchip_pinctrl*, i32) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @rockchip_get_pull(%struct.rockchip_pin_bank*, i32) #1

declare dso_local i32 @rockchip_pinconf_pull_valid(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @rockchip_get_mux(%struct.rockchip_pin_bank*, i32) #1

declare dso_local i32 @rockchip_gpio_get(i32*, i32) #1

declare dso_local i32 @rockchip_get_drive_perpin(%struct.rockchip_pin_bank*, i32) #1

declare dso_local i32 @rockchip_get_schmitt(%struct.rockchip_pin_bank*, i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
