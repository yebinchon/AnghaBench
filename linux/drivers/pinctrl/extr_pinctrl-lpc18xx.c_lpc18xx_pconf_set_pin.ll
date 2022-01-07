; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_pconf_set_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_pconf_set_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.lpc18xx_pin_caps = type { i32 }

@LPC18XX_SCU_PIN_EPD = common dso_local global i32 0, align 4
@LPC18XX_SCU_PIN_EPUN = common dso_local global i32 0, align 4
@LPC18XX_SCU_PIN_EZI = common dso_local global i32 0, align 4
@TYPE_HD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Slew rate unsupported on high-drive pins\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@LPC18XX_SCU_PIN_EHS = common dso_local global i32 0, align 4
@LPC18XX_SCU_PIN_ZIF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Drive strength available only on high-drive pins\0A\00", align 1
@LPC18XX_SCU_PIN_EHD_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Drive strength %u unsupported\0A\00", align 1
@LPC18XX_SCU_PIN_EHD_POS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Property not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32, i32*, i32, %struct.lpc18xx_pin_caps*)* @lpc18xx_pconf_set_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_pconf_set_pin(%struct.pinctrl_dev* %0, i32 %1, i32 %2, i32* %3, i32 %4, %struct.lpc18xx_pin_caps* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pinctrl_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.lpc18xx_pin_caps*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.lpc18xx_pin_caps* %5, %struct.lpc18xx_pin_caps** %13, align 8
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %146 [
    i32 135, label %15
    i32 133, label %25
    i32 134, label %31
    i32 130, label %36
    i32 128, label %51
    i32 129, label %79
    i32 132, label %94
    i32 131, label %141
  ]

15:                                               ; preds = %6
  %16 = load i32, i32* @LPC18XX_SCU_PIN_EPD, align 4
  %17 = xor i32 %16, -1
  %18 = load i32*, i32** %11, align 8
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %17
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @LPC18XX_SCU_PIN_EPUN, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  br label %153

25:                                               ; preds = %6
  %26 = load i32, i32* @LPC18XX_SCU_PIN_EPUN, align 4
  %27 = xor i32 %26, -1
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %27
  store i32 %30, i32* %28, align 4
  br label %153

31:                                               ; preds = %6
  %32 = load i32, i32* @LPC18XX_SCU_PIN_EPD, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  br label %153

36:                                               ; preds = %6
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* @LPC18XX_SCU_PIN_EZI, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %50

44:                                               ; preds = %36
  %45 = load i32, i32* @LPC18XX_SCU_PIN_EZI, align 4
  %46 = xor i32 %45, -1
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %39
  br label %153

51:                                               ; preds = %6
  %52 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %13, align 8
  %53 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TYPE_HD, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %59 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @ENOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %154

64:                                               ; preds = %51
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* @LPC18XX_SCU_PIN_EHS, align 4
  %69 = xor i32 %68, -1
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %69
  store i32 %72, i32* %70, align 4
  br label %78

73:                                               ; preds = %64
  %74 = load i32, i32* @LPC18XX_SCU_PIN_EHS, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %67
  br label %153

79:                                               ; preds = %6
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, i32* @LPC18XX_SCU_PIN_ZIF, align 4
  %84 = xor i32 %83, -1
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %93

88:                                               ; preds = %79
  %89 = load i32, i32* @LPC18XX_SCU_PIN_ZIF, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %89
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %88, %82
  br label %153

94:                                               ; preds = %6
  %95 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %13, align 8
  %96 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @TYPE_HD, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %102 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, ...) @dev_err(i32 %103, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* @ENOTSUPP, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  br label %154

107:                                              ; preds = %94
  %108 = load i32, i32* @LPC18XX_SCU_PIN_EHD_MASK, align 4
  %109 = xor i32 %108, -1
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %109
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %10, align 4
  switch i32 %113, label %126 [
    i32 20, label %114
    i32 14, label %117
    i32 8, label %120
    i32 4, label %123
  ]

114:                                              ; preds = %107
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %115, 5
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %107, %114
  %118 = load i32, i32* %10, align 4
  %119 = sub nsw i32 %118, 5
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %107, %117
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 %121, 3
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %107, %120
  %124 = load i32, i32* %10, align 4
  %125 = sub nsw i32 %124, 4
  store i32 %125, i32* %10, align 4
  br label %134

126:                                              ; preds = %107
  %127 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %128 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 (i32, i8*, ...) @dev_err(i32 %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @ENOTSUPP, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %7, align 4
  br label %154

134:                                              ; preds = %123
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @LPC18XX_SCU_PIN_EHD_POS, align 4
  %137 = shl i32 %135, %136
  %138 = load i32*, i32** %11, align 8
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %137
  store i32 %140, i32* %138, align 4
  br label %153

141:                                              ; preds = %6
  %142 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @lpc18xx_pconf_set_gpio_pin_int(%struct.pinctrl_dev* %142, i32 %143, i32 %144)
  store i32 %145, i32* %7, align 4
  br label %154

146:                                              ; preds = %6
  %147 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %148 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i32, i8*, ...) @dev_err(i32 %149, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %151 = load i32, i32* @ENOTSUPP, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %7, align 4
  br label %154

153:                                              ; preds = %134, %93, %78, %50, %31, %25, %15
  store i32 0, i32* %7, align 4
  br label %154

154:                                              ; preds = %153, %146, %141, %126, %100, %57
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @lpc18xx_pconf_set_gpio_pin_int(%struct.pinctrl_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
