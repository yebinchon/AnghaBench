; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_pconf_get_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_pconf_get_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.lpc18xx_pin_caps = type { i32 }

@LPC18XX_SCU_PIN_EPD = common dso_local global i32 0, align 4
@LPC18XX_SCU_PIN_EPUN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LPC18XX_SCU_PIN_EZI = common dso_local global i32 0, align 4
@TYPE_HD = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@LPC18XX_SCU_PIN_EHS = common dso_local global i32 0, align 4
@LPC18XX_SCU_PIN_ZIF = common dso_local global i32 0, align 4
@LPC18XX_SCU_PIN_EHD_MASK = common dso_local global i32 0, align 4
@LPC18XX_SCU_PIN_EHD_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32*, i32, i32, %struct.lpc18xx_pin_caps*)* @lpc18xx_pconf_get_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_pconf_get_pin(%struct.pinctrl_dev* %0, i32 %1, i32* %2, i32 %3, i32 %4, %struct.lpc18xx_pin_caps* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pinctrl_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lpc18xx_pin_caps*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.lpc18xx_pin_caps* %5, %struct.lpc18xx_pin_caps** %13, align 8
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %133 [
    i32 135, label %15
    i32 133, label %30
    i32 134, label %41
    i32 130, label %52
    i32 128, label %63
    i32 129, label %82
    i32 132, label %93
    i32 131, label %128
  ]

15:                                               ; preds = %6
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @LPC18XX_SCU_PIN_EPD, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @LPC18XX_SCU_PIN_EPUN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %29

26:                                               ; preds = %20, %15
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %137

29:                                               ; preds = %25
  br label %136

30:                                               ; preds = %6
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @LPC18XX_SCU_PIN_EPUN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %137

38:                                               ; preds = %30
  %39 = load i32*, i32** %10, align 8
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %38
  br label %136

41:                                               ; preds = %6
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @LPC18XX_SCU_PIN_EPD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32*, i32** %10, align 8
  store i32 1, i32* %47, align 4
  br label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %137

51:                                               ; preds = %46
  br label %136

52:                                               ; preds = %6
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @LPC18XX_SCU_PIN_EZI, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32*, i32** %10, align 8
  store i32 1, i32* %58, align 4
  br label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %137

62:                                               ; preds = %57
  br label %136

63:                                               ; preds = %6
  %64 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %13, align 8
  %65 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @TYPE_HD, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @ENOTSUPP, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %137

72:                                               ; preds = %63
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @LPC18XX_SCU_PIN_EHS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32*, i32** %10, align 8
  store i32 1, i32* %78, align 4
  br label %81

79:                                               ; preds = %72
  %80 = load i32*, i32** %10, align 8
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %79, %77
  br label %136

82:                                               ; preds = %6
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @LPC18XX_SCU_PIN_ZIF, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %7, align 4
  br label %137

90:                                               ; preds = %82
  %91 = load i32*, i32** %10, align 8
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %90
  br label %136

93:                                               ; preds = %6
  %94 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %13, align 8
  %95 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TYPE_HD, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* @ENOTSUPP, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %7, align 4
  br label %137

102:                                              ; preds = %93
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @LPC18XX_SCU_PIN_EHD_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @LPC18XX_SCU_PIN_EHD_POS, align 4
  %107 = ashr i32 %105, %106
  %108 = load i32*, i32** %10, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %127 [
    i32 3, label %111
    i32 2, label %115
    i32 1, label %119
    i32 0, label %123
  ]

111:                                              ; preds = %102
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 5
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %102, %111
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 5
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %102, %115
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 3
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %102, %119
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 4
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %123, %102
  br label %136

128:                                              ; preds = %6
  %129 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @lpc18xx_pconf_get_gpio_pin_int(%struct.pinctrl_dev* %129, i32* %130, i32 %131)
  store i32 %132, i32* %7, align 4
  br label %137

133:                                              ; preds = %6
  %134 = load i32, i32* @ENOTSUPP, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %7, align 4
  br label %137

136:                                              ; preds = %127, %92, %81, %62, %51, %40, %29
  store i32 0, i32* %7, align 4
  br label %137

137:                                              ; preds = %136, %133, %128, %99, %87, %69, %59, %48, %35, %26
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

declare dso_local i32 @lpc18xx_pconf_get_gpio_pin_int(%struct.pinctrl_dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
