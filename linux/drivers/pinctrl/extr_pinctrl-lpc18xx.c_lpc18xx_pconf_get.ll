; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_pconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_pconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.lpc18xx_scu_data = type { i64 }
%struct.lpc18xx_pin_caps = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@TYPE_I2C0 = common dso_local global i64 0, align 8
@TYPE_USB1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @lpc18xx_pconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_pconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.lpc18xx_scu_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpc18xx_pin_caps*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = call %struct.lpc18xx_scu_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.lpc18xx_scu_data* %15, %struct.lpc18xx_scu_data** %8, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @pinconf_to_config_param(i64 %17)
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.lpc18xx_pin_caps* @lpc18xx_get_pin_caps(i32 %19)
  store %struct.lpc18xx_pin_caps* %20, %struct.lpc18xx_pin_caps** %10, align 8
  %21 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %10, align 8
  %22 = icmp ne %struct.lpc18xx_pin_caps* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %73

26:                                               ; preds = %3
  %27 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %8, align 8
  %28 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %10, align 8
  %31 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = call i32 @readl(i64 %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %10, align 8
  %36 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TYPE_I2C0, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %26
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @lpc18xx_pconf_get_i2c0(i32 %41, i32* %12, i32 %42, i32 %43)
  store i32 %44, i32* %11, align 4
  br label %63

45:                                               ; preds = %26
  %46 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %10, align 8
  %47 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TYPE_USB1, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @lpc18xx_pconf_get_usb1(i32 %52, i32* %12, i32 %53)
  store i32 %54, i32* %11, align 4
  br label %62

55:                                               ; preds = %45
  %56 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %10, align 8
  %61 = call i32 @lpc18xx_pconf_get_pin(%struct.pinctrl_dev* %56, i32 %57, i32* %12, i32 %58, i32 %59, %struct.lpc18xx_pin_caps* %60)
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %55, %51
  br label %63

63:                                               ; preds = %62, %40
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %4, align 4
  br label %73

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i64 @pinconf_to_config_packed(i32 %69, i32 %70)
  %72 = load i64*, i64** %7, align 8
  store i64 %71, i64* %72, align 8
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %66, %23
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.lpc18xx_scu_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local %struct.lpc18xx_pin_caps* @lpc18xx_get_pin_caps(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @lpc18xx_pconf_get_i2c0(i32, i32*, i32, i32) #1

declare dso_local i32 @lpc18xx_pconf_get_usb1(i32, i32*, i32) #1

declare dso_local i32 @lpc18xx_pconf_get_pin(%struct.pinctrl_dev*, i32, i32*, i32, i32, %struct.lpc18xx_pin_caps*) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
