; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-gpio.c_pmic_gpio_populate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-gpio.c_pmic_gpio_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic_gpio_state = type { i32 }
%struct.pmic_gpio_pad = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PMIC_GPIO_REG_TYPE = common dso_local global i32 0, align 4
@PMIC_GPIO_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"incorrect block type 0x%x at 0x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_SUBTYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unknown GPIO type 0x%x\0A\00", align 1
@PMIC_GPIO_REG_LV_MV_DIG_OUT_SOURCE_CTL = common dso_local global i32 0, align 4
@PMIC_GPIO_LV_MV_OUTPUT_INVERT = common dso_local global i32 0, align 4
@PMIC_GPIO_LV_MV_OUTPUT_SOURCE_SEL_MASK = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_MODE_CTL = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_LV_MV_MODE_DIR_MASK = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_MODE_VALUE_SHIFT = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_MODE_DIR_SHIFT = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_MODE_DIR_MASK = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_MODE_FUNCTION_SHIFT = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_MODE_FUNCTION_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"unknown GPIO direction\0A\00", align 1
@PMIC_GPIO_REG_DIG_VIN_CTL = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_VIN_SHIFT = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_VIN_MASK = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_DIG_PULL_CTL = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_PULL_SHIFT = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_PULL_MASK = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_DIG_IN_CTL = common dso_local global i32 0, align 4
@PMIC_GPIO_LV_MV_DIG_IN_DTEST_EN = common dso_local global i32 0, align 4
@PMIC_GPIO_LV_MV_DIG_IN_DTEST_SEL_MASK = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_DIG_OUT_CTL = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_OUT_STRENGTH_SHIFT = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_OUT_STRENGTH_MASK = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_OUT_TYPE_SHIFT = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_OUT_TYPE_MASK = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_LV_MV_ANA_PASS_THRU_SEL = common dso_local global i32 0, align 4
@PMIC_GPIO_LV_MV_ANA_MUX_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic_gpio_state*, %struct.pmic_gpio_pad*)* @pmic_gpio_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_gpio_populate(%struct.pmic_gpio_state* %0, %struct.pmic_gpio_pad* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmic_gpio_state*, align 8
  %5 = alloca %struct.pmic_gpio_pad*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pmic_gpio_state* %0, %struct.pmic_gpio_state** %4, align 8
  store %struct.pmic_gpio_pad* %1, %struct.pmic_gpio_pad** %5, align 8
  %10 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %4, align 8
  %11 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %12 = load i32, i32* @PMIC_GPIO_REG_TYPE, align 4
  %13 = call i32 @pmic_gpio_read(%struct.pmic_gpio_state* %10, %struct.pmic_gpio_pad* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %316

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PMIC_GPIO_TYPE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %4, align 8
  %24 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %28 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %27, i32 0, i32 15
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %316

33:                                               ; preds = %18
  %34 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %4, align 8
  %35 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %36 = load i32, i32* @PMIC_GPIO_REG_SUBTYPE, align 4
  %37 = call i32 @pmic_gpio_read(%struct.pmic_gpio_state* %34, %struct.pmic_gpio_pad* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %316

42:                                               ; preds = %33
  %43 = load i32, i32* %7, align 4
  switch i32 %43, label %70 [
    i32 131, label %44
    i32 133, label %47
    i32 130, label %50
    i32 132, label %53
    i32 129, label %56
    i32 128, label %63
  ]

44:                                               ; preds = %42
  %45 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %46 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %44
  %48 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %49 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %48, i32 0, i32 1
  store i32 4, i32* %49, align 4
  br label %78

50:                                               ; preds = %42
  %51 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %52 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %42, %50
  %54 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %55 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %54, i32 0, i32 1
  store i32 8, i32* %55, align 4
  br label %78

56:                                               ; preds = %42
  %57 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %58 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %60 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %62 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %61, i32 0, i32 2
  store i32 1, i32* %62, align 4
  br label %78

63:                                               ; preds = %42
  %64 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %65 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %64, i32 0, i32 1
  store i32 2, i32* %65, align 4
  %66 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %67 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  %68 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %69 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %68, i32 0, i32 2
  store i32 1, i32* %69, align 4
  br label %78

70:                                               ; preds = %42
  %71 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %4, align 8
  %72 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (i32, i8*, ...) @dev_err(i32 %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %316

78:                                               ; preds = %63, %56, %53, %47
  %79 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %80 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %119

83:                                               ; preds = %78
  %84 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %4, align 8
  %85 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %86 = load i32, i32* @PMIC_GPIO_REG_LV_MV_DIG_OUT_SOURCE_CTL, align 4
  %87 = call i32 @pmic_gpio_read(%struct.pmic_gpio_state* %84, %struct.pmic_gpio_pad* %85, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %316

92:                                               ; preds = %83
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @PMIC_GPIO_LV_MV_OUTPUT_INVERT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %101 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @PMIC_GPIO_LV_MV_OUTPUT_SOURCE_SEL_MASK, align 4
  %104 = and i32 %102, %103
  %105 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %106 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %4, align 8
  %108 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %109 = load i32, i32* @PMIC_GPIO_REG_MODE_CTL, align 4
  %110 = call i32 @pmic_gpio_read(%struct.pmic_gpio_state* %107, %struct.pmic_gpio_pad* %108, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %92
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %3, align 4
  br label %316

115:                                              ; preds = %92
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @PMIC_GPIO_REG_LV_MV_MODE_DIR_MASK, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %9, align 4
  br label %150

119:                                              ; preds = %78
  %120 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %4, align 8
  %121 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %122 = load i32, i32* @PMIC_GPIO_REG_MODE_CTL, align 4
  %123 = call i32 @pmic_gpio_read(%struct.pmic_gpio_state* %120, %struct.pmic_gpio_pad* %121, i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %3, align 4
  br label %316

128:                                              ; preds = %119
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @PMIC_GPIO_REG_MODE_VALUE_SHIFT, align 4
  %131 = and i32 %129, %130
  %132 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %133 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @PMIC_GPIO_REG_MODE_DIR_SHIFT, align 4
  %136 = ashr i32 %134, %135
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* @PMIC_GPIO_REG_MODE_DIR_MASK, align 4
  %138 = load i32, i32* %9, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @PMIC_GPIO_REG_MODE_FUNCTION_SHIFT, align 4
  %142 = ashr i32 %140, %141
  %143 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %144 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @PMIC_GPIO_REG_MODE_FUNCTION_MASK, align 4
  %146 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %147 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %128, %115
  %151 = load i32, i32* %9, align 4
  switch i32 %151, label %178 [
    i32 136, label %152
    i32 134, label %157
    i32 135, label %162
    i32 137, label %167
  ]

152:                                              ; preds = %150
  %153 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %154 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %153, i32 0, i32 5
  store i32 1, i32* %154, align 4
  %155 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %156 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %155, i32 0, i32 6
  store i32 0, i32* %156, align 4
  br label %185

157:                                              ; preds = %150
  %158 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %159 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %158, i32 0, i32 5
  store i32 0, i32* %159, align 4
  %160 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %161 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %160, i32 0, i32 6
  store i32 1, i32* %161, align 4
  br label %185

162:                                              ; preds = %150
  %163 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %164 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %163, i32 0, i32 5
  store i32 1, i32* %164, align 4
  %165 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %166 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %165, i32 0, i32 6
  store i32 1, i32* %166, align 4
  br label %185

167:                                              ; preds = %150
  %168 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %169 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %167
  %173 = load i32, i32* @ENODEV, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %316

175:                                              ; preds = %167
  %176 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %177 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %176, i32 0, i32 7
  store i32 1, i32* %177, align 4
  br label %185

178:                                              ; preds = %150
  %179 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %4, align 8
  %180 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32, i8*, ...) @dev_err(i32 %181, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %183 = load i32, i32* @ENODEV, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %3, align 4
  br label %316

185:                                              ; preds = %175, %162, %157, %152
  %186 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %4, align 8
  %187 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %188 = load i32, i32* @PMIC_GPIO_REG_DIG_VIN_CTL, align 4
  %189 = call i32 @pmic_gpio_read(%struct.pmic_gpio_state* %186, %struct.pmic_gpio_pad* %187, i32 %188)
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %185
  %193 = load i32, i32* %8, align 4
  store i32 %193, i32* %3, align 4
  br label %316

194:                                              ; preds = %185
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @PMIC_GPIO_REG_VIN_SHIFT, align 4
  %197 = ashr i32 %195, %196
  %198 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %199 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %198, i32 0, i32 8
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* @PMIC_GPIO_REG_VIN_MASK, align 4
  %201 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %202 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %201, i32 0, i32 8
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, %200
  store i32 %204, i32* %202, align 4
  %205 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %4, align 8
  %206 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %207 = load i32, i32* @PMIC_GPIO_REG_DIG_PULL_CTL, align 4
  %208 = call i32 @pmic_gpio_read(%struct.pmic_gpio_state* %205, %struct.pmic_gpio_pad* %206, i32 %207)
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %8, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %194
  %212 = load i32, i32* %8, align 4
  store i32 %212, i32* %3, align 4
  br label %316

213:                                              ; preds = %194
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* @PMIC_GPIO_REG_PULL_SHIFT, align 4
  %216 = ashr i32 %214, %215
  %217 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %218 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %217, i32 0, i32 9
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* @PMIC_GPIO_REG_PULL_MASK, align 4
  %220 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %221 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %220, i32 0, i32 9
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, %219
  store i32 %223, i32* %221, align 4
  %224 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %4, align 8
  %225 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %226 = load i32, i32* @PMIC_GPIO_REG_DIG_IN_CTL, align 4
  %227 = call i32 @pmic_gpio_read(%struct.pmic_gpio_state* %224, %struct.pmic_gpio_pad* %225, i32 %226)
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* %8, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %213
  %231 = load i32, i32* %8, align 4
  store i32 %231, i32* %3, align 4
  br label %316

232:                                              ; preds = %213
  %233 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %234 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %249

237:                                              ; preds = %232
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @PMIC_GPIO_LV_MV_DIG_IN_DTEST_EN, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %237
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* @PMIC_GPIO_LV_MV_DIG_IN_DTEST_SEL_MASK, align 4
  %245 = and i32 %243, %244
  %246 = add nsw i32 %245, 1
  %247 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %248 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %247, i32 0, i32 10
  store i32 %246, i32* %248, align 4
  br label %263

249:                                              ; preds = %237, %232
  %250 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %251 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %249
  %255 = load i32, i32* %8, align 4
  %256 = call i32 @ffs(i32 %255)
  %257 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %258 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %257, i32 0, i32 10
  store i32 %256, i32* %258, align 4
  br label %262

259:                                              ; preds = %249
  %260 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %261 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %260, i32 0, i32 10
  store i32 0, i32* %261, align 4
  br label %262

262:                                              ; preds = %259, %254
  br label %263

263:                                              ; preds = %262, %242
  %264 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %4, align 8
  %265 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %266 = load i32, i32* @PMIC_GPIO_REG_DIG_OUT_CTL, align 4
  %267 = call i32 @pmic_gpio_read(%struct.pmic_gpio_state* %264, %struct.pmic_gpio_pad* %265, i32 %266)
  store i32 %267, i32* %8, align 4
  %268 = load i32, i32* %8, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %263
  %271 = load i32, i32* %8, align 4
  store i32 %271, i32* %3, align 4
  br label %316

272:                                              ; preds = %263
  %273 = load i32, i32* %8, align 4
  %274 = load i32, i32* @PMIC_GPIO_REG_OUT_STRENGTH_SHIFT, align 4
  %275 = ashr i32 %273, %274
  %276 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %277 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %276, i32 0, i32 11
  store i32 %275, i32* %277, align 4
  %278 = load i32, i32* @PMIC_GPIO_REG_OUT_STRENGTH_MASK, align 4
  %279 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %280 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %279, i32 0, i32 11
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, %278
  store i32 %282, i32* %280, align 4
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* @PMIC_GPIO_REG_OUT_TYPE_SHIFT, align 4
  %285 = ashr i32 %283, %284
  %286 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %287 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %286, i32 0, i32 12
  store i32 %285, i32* %287, align 4
  %288 = load i32, i32* @PMIC_GPIO_REG_OUT_TYPE_MASK, align 4
  %289 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %290 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %289, i32 0, i32 12
  %291 = load i32, i32* %290, align 4
  %292 = and i32 %291, %288
  store i32 %292, i32* %290, align 4
  %293 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %294 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %313

297:                                              ; preds = %272
  %298 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %4, align 8
  %299 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %300 = load i32, i32* @PMIC_GPIO_REG_LV_MV_ANA_PASS_THRU_SEL, align 4
  %301 = call i32 @pmic_gpio_read(%struct.pmic_gpio_state* %298, %struct.pmic_gpio_pad* %299, i32 %300)
  store i32 %301, i32* %8, align 4
  %302 = load i32, i32* %8, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %297
  %305 = load i32, i32* %8, align 4
  store i32 %305, i32* %3, align 4
  br label %316

306:                                              ; preds = %297
  %307 = load i32, i32* %8, align 4
  %308 = load i32, i32* @PMIC_GPIO_LV_MV_ANA_MUX_SEL_MASK, align 4
  %309 = and i32 %307, %308
  %310 = add nsw i32 %309, 1
  %311 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %312 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %311, i32 0, i32 13
  store i32 %310, i32* %312, align 4
  br label %313

313:                                              ; preds = %306, %272
  %314 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %315 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %314, i32 0, i32 14
  store i32 1, i32* %315, align 4
  store i32 0, i32* %3, align 4
  br label %316

316:                                              ; preds = %313, %304, %270, %230, %211, %192, %178, %172, %126, %113, %90, %70, %40, %22, %16
  %317 = load i32, i32* %3, align 4
  ret i32 %317
}

declare dso_local i32 @pmic_gpio_read(%struct.pmic_gpio_state*, %struct.pmic_gpio_pad*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
