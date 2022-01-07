; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_pconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_pconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.lpc18xx_scu_data = type { i64 }
%struct.lpc18xx_pin_caps = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@TYPE_I2C0 = common dso_local global i64 0, align 8
@TYPE_USB1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @lpc18xx_pconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_pconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpc18xx_scu_data*, align 8
  %11 = alloca %struct.lpc18xx_pin_caps*, align 8
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
  %18 = call %struct.lpc18xx_scu_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %17)
  store %struct.lpc18xx_scu_data* %18, %struct.lpc18xx_scu_data** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.lpc18xx_pin_caps* @lpc18xx_get_pin_caps(i32 %19)
  store %struct.lpc18xx_pin_caps* %20, %struct.lpc18xx_pin_caps** %11, align 8
  %21 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %11, align 8
  %22 = icmp ne %struct.lpc18xx_pin_caps* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %101

26:                                               ; preds = %4
  %27 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %10, align 8
  %28 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %11, align 8
  %31 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = call i32 @readl(i64 %33)
  store i32 %34, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %35

35:                                               ; preds = %88, %26
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %91

39:                                               ; preds = %35
  %40 = load i64*, i64** %8, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @pinconf_to_config_param(i64 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i64*, i64** %8, align 8
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @pinconf_to_config_argument(i64 %50)
  store i32 %51, i32* %13, align 4
  %52 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %11, align 8
  %53 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TYPE_I2C0, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %39
  %58 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @lpc18xx_pconf_set_i2c0(%struct.pinctrl_dev* %58, i32 %59, i32 %60, i32* %14, i32 %61)
  store i32 %62, i32* %15, align 4
  br label %82

63:                                               ; preds = %39
  %64 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %11, align 8
  %65 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TYPE_USB1, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @lpc18xx_pconf_set_usb1(%struct.pinctrl_dev* %70, i32 %71, i32 %72, i32* %14)
  store i32 %73, i32* %15, align 4
  br label %81

74:                                               ; preds = %63
  %75 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %11, align 8
  %80 = call i32 @lpc18xx_pconf_set_pin(%struct.pinctrl_dev* %75, i32 %76, i32 %77, i32* %14, i32 %78, %struct.lpc18xx_pin_caps* %79)
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %74, %69
  br label %82

82:                                               ; preds = %81, %57
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %5, align 4
  br label %101

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %16, align 4
  br label %35

91:                                               ; preds = %35
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %10, align 8
  %94 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %11, align 8
  %97 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = call i32 @writel(i32 %92, i64 %99)
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %91, %85, %23
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.lpc18xx_scu_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.lpc18xx_pin_caps* @lpc18xx_get_pin_caps(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @lpc18xx_pconf_set_i2c0(%struct.pinctrl_dev*, i32, i32, i32*, i32) #1

declare dso_local i32 @lpc18xx_pconf_set_usb1(%struct.pinctrl_dev*, i32, i32, i32*) #1

declare dso_local i32 @lpc18xx_pconf_set_pin(%struct.pinctrl_dev*, i32, i32, i32*, i32, %struct.lpc18xx_pin_caps*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
