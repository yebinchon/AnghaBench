; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_pmx_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_pmx_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.lpc18xx_pin_caps* }
%struct.lpc18xx_pin_caps = type { i64, i32, i32, i32* }
%struct.pinctrl_dev = type { i32 }
%struct.lpc18xx_scu_data = type { i32 }

@lpc18xx_pins = common dso_local global %struct.TYPE_2__* null, align 8
@TYPE_USB1 = common dso_local global i64 0, align 8
@FUNC_USB1 = common dso_local global i32 0, align 4
@TYPE_I2C0 = common dso_local global i64 0, align 8
@FUNC_I2C0 = common dso_local global i32 0, align 4
@FUNC_ADC = common dso_local global i32 0, align 4
@LPC18XX_ANALOG_PIN = common dso_local global i32 0, align 4
@LPC18XX_SCU_ANALOG_PIN_CFG = common dso_local global i32 0, align 4
@LPC18XX_SCU_REG_ENAIO0 = common dso_local global i32 0, align 4
@LPC18XX_SCU_REG_ENAIO1 = common dso_local global i32 0, align 4
@LPC18XX_ANALOG_BIT_MASK = common dso_local global i32 0, align 4
@FUNC_DAC = common dso_local global i32 0, align 4
@LPC18XX_SCU_REG_ENAIO2 = common dso_local global i32 0, align 4
@LPC18XX_SCU_REG_ENAIO2_DAC = common dso_local global i32 0, align 4
@LPC18XX_SCU_FUNC_PER_PIN = common dso_local global i32 0, align 4
@LPC18XX_SCU_PIN_MODE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Pin %s can't be %s\0A\00", align 1
@lpc18xx_function_names = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @lpc18xx_pmx_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_pmx_set(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpc18xx_scu_data*, align 8
  %9 = alloca %struct.lpc18xx_pin_caps*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %14 = call %struct.lpc18xx_scu_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.lpc18xx_scu_data* %14, %struct.lpc18xx_scu_data** %8, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lpc18xx_pins, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %19, align 8
  store %struct.lpc18xx_pin_caps* %20, %struct.lpc18xx_pin_caps** %9, align 8
  %21 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %9, align 8
  %22 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TYPE_USB1, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @FUNC_USB1, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %199

31:                                               ; preds = %26
  br label %181

32:                                               ; preds = %3
  %33 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %9, align 8
  %34 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TYPE_I2C0, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @FUNC_I2C0, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %199

43:                                               ; preds = %38
  br label %181

44:                                               ; preds = %32
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @FUNC_ADC, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %95

48:                                               ; preds = %44
  %49 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %9, align 8
  %50 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @LPC18XX_ANALOG_PIN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %95

55:                                               ; preds = %48
  %56 = load i32, i32* @LPC18XX_SCU_ANALOG_PIN_CFG, align 4
  %57 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %8, align 8
  %58 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %9, align 8
  %61 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %59, %62
  %64 = call i32 @writel(i32 %56, i32 %63)
  %65 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %9, align 8
  %66 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @LPC18XX_ANALOG_ADC(i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %55
  %71 = load i32, i32* @LPC18XX_SCU_REG_ENAIO0, align 4
  store i32 %71, i32* %12, align 4
  br label %74

72:                                               ; preds = %55
  %73 = load i32, i32* @LPC18XX_SCU_REG_ENAIO1, align 4
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %8, align 8
  %76 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %77, %78
  %80 = call i32 @readl(i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %9, align 8
  %82 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @LPC18XX_ANALOG_BIT_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* %11, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %8, align 8
  %90 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %91, %92
  %94 = call i32 @writel(i32 %88, i32 %93)
  store i32 0, i32* %4, align 4
  br label %199

95:                                               ; preds = %48, %44
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @FUNC_DAC, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %132

99:                                               ; preds = %95
  %100 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %9, align 8
  %101 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @LPC18XX_ANALOG_PIN, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %132

106:                                              ; preds = %99
  %107 = load i32, i32* @LPC18XX_SCU_ANALOG_PIN_CFG, align 4
  %108 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %8, align 8
  %109 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %9, align 8
  %112 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %110, %113
  %115 = call i32 @writel(i32 %107, i32 %114)
  %116 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %8, align 8
  %117 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @LPC18XX_SCU_REG_ENAIO2, align 4
  %120 = add nsw i32 %118, %119
  %121 = call i32 @readl(i32 %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* @LPC18XX_SCU_REG_ENAIO2_DAC, align 4
  %123 = load i32, i32* %11, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %8, align 8
  %127 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @LPC18XX_SCU_REG_ENAIO2, align 4
  %130 = add nsw i32 %128, %129
  %131 = call i32 @writel(i32 %125, i32 %130)
  store i32 0, i32* %4, align 4
  br label %199

132:                                              ; preds = %99, %95
  store i32 0, i32* %10, align 4
  br label %133

133:                                              ; preds = %149, %132
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @LPC18XX_SCU_FUNC_PER_PIN, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %152

137:                                              ; preds = %133
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %9, align 8
  %140 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %138, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %137
  br label %152

148:                                              ; preds = %137
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  br label %133

152:                                              ; preds = %147, %133
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @LPC18XX_SCU_FUNC_PER_PIN, align 4
  %155 = icmp sge i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %181

157:                                              ; preds = %152
  %158 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %8, align 8
  %159 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %9, align 8
  %162 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %160, %163
  %165 = call i32 @readl(i32 %164)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* @LPC18XX_SCU_PIN_MODE_MASK, align 4
  %167 = xor i32 %166, -1
  %168 = load i32, i32* %11, align 4
  %169 = and i32 %168, %167
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %10, align 4
  %172 = or i32 %170, %171
  %173 = load %struct.lpc18xx_scu_data*, %struct.lpc18xx_scu_data** %8, align 8
  %174 = getelementptr inbounds %struct.lpc18xx_scu_data, %struct.lpc18xx_scu_data* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.lpc18xx_pin_caps*, %struct.lpc18xx_pin_caps** %9, align 8
  %177 = getelementptr inbounds %struct.lpc18xx_pin_caps, %struct.lpc18xx_pin_caps* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %175, %178
  %180 = call i32 @writel(i32 %172, i32 %179)
  store i32 0, i32* %4, align 4
  br label %199

181:                                              ; preds = %156, %43, %31
  %182 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %183 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lpc18xx_pins, align 8
  %186 = load i32, i32* %7, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32*, i32** @lpc18xx_function_names, align 8
  %192 = load i32, i32* %6, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @dev_err(i32 %184, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %190, i32 %195)
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %181, %157, %106, %74, %42, %30
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local %struct.lpc18xx_scu_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i64 @LPC18XX_ANALOG_ADC(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
