; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-gpio.c_pmic_gpio_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-gpio.c_pmic_gpio_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pmic_gpio_pad* }
%struct.pmic_gpio_pad = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.pmic_gpio_state = type { i32 }

@PMIC_GPIO_FUNC_INDEX_DTEST4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"function: %d is not defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PMIC_GPIO_FUNC_INDEX_FUNC3 = common dso_local global i32 0, align 4
@PMIC_GPIO_FUNC_INDEX_FUNC4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"LV/MV subtype doesn't have func3/func4\0A\00", align 1
@PMIC_GPIO_FUNC_INDEX_DTEST1 = common dso_local global i32 0, align 4
@PMIC_GPIO_MODE_ANALOG_PASS_THRU = common dso_local global i32 0, align 4
@PMIC_GPIO_MODE_DIGITAL_INPUT_OUTPUT = common dso_local global i32 0, align 4
@PMIC_GPIO_MODE_DIGITAL_OUTPUT = common dso_local global i32 0, align 4
@PMIC_GPIO_MODE_DIGITAL_INPUT = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_MODE_CTL = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_LV_MV_ANA_PASS_THRU_SEL = common dso_local global i32 0, align 4
@PMIC_GPIO_LV_MV_OUTPUT_INVERT_SHIFT = common dso_local global i32 0, align 4
@PMIC_GPIO_LV_MV_OUTPUT_SOURCE_SEL_MASK = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_LV_MV_DIG_OUT_SOURCE_CTL = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_MODE_DIR_SHIFT = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_MODE_FUNCTION_SHIFT = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_MODE_VALUE_SHIFT = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_MASTER_EN_SHIFT = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_EN_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @pmic_gpio_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_gpio_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmic_gpio_state*, align 8
  %9 = alloca %struct.pmic_gpio_pad*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.pmic_gpio_state* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.pmic_gpio_state* %13, %struct.pmic_gpio_state** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @PMIC_GPIO_FUNC_INDEX_DTEST4, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %184

22:                                               ; preds = %3
  %23 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %24 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %31, align 8
  store %struct.pmic_gpio_pad* %32, %struct.pmic_gpio_pad** %9, align 8
  %33 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %34 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %60, label %37

37:                                               ; preds = %22
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @PMIC_GPIO_FUNC_INDEX_FUNC3, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @PMIC_GPIO_FUNC_INDEX_FUNC4, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %37
  %46 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %184

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @PMIC_GPIO_FUNC_INDEX_DTEST1, align 4
  %52 = icmp uge i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* @PMIC_GPIO_FUNC_INDEX_DTEST1, align 4
  %55 = load i32, i32* @PMIC_GPIO_FUNC_INDEX_FUNC3, align 4
  %56 = sub i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = sub i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %53, %49
  br label %60

60:                                               ; preds = %59, %22
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %63 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %65 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @PMIC_GPIO_MODE_ANALOG_PASS_THRU, align 4
  store i32 %69, i32* %10, align 4
  br label %93

70:                                               ; preds = %60
  %71 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %72 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %77 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @PMIC_GPIO_MODE_DIGITAL_INPUT_OUTPUT, align 4
  store i32 %81, i32* %10, align 4
  br label %92

82:                                               ; preds = %75, %70
  %83 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %84 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @PMIC_GPIO_MODE_DIGITAL_OUTPUT, align 4
  store i32 %88, i32* %10, align 4
  br label %91

89:                                               ; preds = %82
  %90 = load i32, i32* @PMIC_GPIO_MODE_DIGITAL_INPUT, align 4
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %89, %87
  br label %92

92:                                               ; preds = %91, %80
  br label %93

93:                                               ; preds = %92, %68
  %94 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %95 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %145

98:                                               ; preds = %93
  %99 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %8, align 8
  %100 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %101 = load i32, i32* @PMIC_GPIO_REG_MODE_CTL, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @pmic_gpio_write(%struct.pmic_gpio_state* %99, %struct.pmic_gpio_pad* %100, i32 %101, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %4, align 4
  br label %184

108:                                              ; preds = %98
  %109 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %110 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  %113 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %8, align 8
  %114 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %115 = load i32, i32* @PMIC_GPIO_REG_LV_MV_ANA_PASS_THRU_SEL, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @pmic_gpio_write(%struct.pmic_gpio_state* %113, %struct.pmic_gpio_pad* %114, i32 %115, i32 %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %108
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %4, align 4
  br label %184

122:                                              ; preds = %108
  %123 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %124 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @PMIC_GPIO_LV_MV_OUTPUT_INVERT_SHIFT, align 4
  %127 = shl i32 %125, %126
  store i32 %127, i32* %10, align 4
  %128 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %129 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @PMIC_GPIO_LV_MV_OUTPUT_SOURCE_SEL_MASK, align 4
  %132 = and i32 %130, %131
  %133 = load i32, i32* %10, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %10, align 4
  %135 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %8, align 8
  %136 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %137 = load i32, i32* @PMIC_GPIO_REG_LV_MV_DIG_OUT_SOURCE_CTL, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @pmic_gpio_write(%struct.pmic_gpio_state* %135, %struct.pmic_gpio_pad* %136, i32 %137, i32 %138)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %122
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %4, align 4
  br label %184

144:                                              ; preds = %122
  br label %173

145:                                              ; preds = %93
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @PMIC_GPIO_REG_MODE_DIR_SHIFT, align 4
  %148 = shl i32 %146, %147
  store i32 %148, i32* %10, align 4
  %149 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %150 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @PMIC_GPIO_REG_MODE_FUNCTION_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = load i32, i32* %10, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %10, align 4
  %156 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %157 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @PMIC_GPIO_REG_MODE_VALUE_SHIFT, align 4
  %160 = and i32 %158, %159
  %161 = load i32, i32* %10, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %10, align 4
  %163 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %8, align 8
  %164 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %165 = load i32, i32* @PMIC_GPIO_REG_MODE_CTL, align 4
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @pmic_gpio_write(%struct.pmic_gpio_state* %163, %struct.pmic_gpio_pad* %164, i32 %165, i32 %166)
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %145
  %171 = load i32, i32* %11, align 4
  store i32 %171, i32* %4, align 4
  br label %184

172:                                              ; preds = %145
  br label %173

173:                                              ; preds = %172, %144
  %174 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %175 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @PMIC_GPIO_REG_MASTER_EN_SHIFT, align 4
  %178 = shl i32 %176, %177
  store i32 %178, i32* %10, align 4
  %179 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %8, align 8
  %180 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %181 = load i32, i32* @PMIC_GPIO_REG_EN_CTL, align 4
  %182 = load i32, i32* %10, align 4
  %183 = call i32 @pmic_gpio_write(%struct.pmic_gpio_state* %179, %struct.pmic_gpio_pad* %180, i32 %181, i32 %182)
  store i32 %183, i32* %4, align 4
  br label %184

184:                                              ; preds = %173, %170, %142, %120, %106, %45, %17
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local %struct.pmic_gpio_state* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pmic_gpio_write(%struct.pmic_gpio_state*, %struct.pmic_gpio_pad*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
