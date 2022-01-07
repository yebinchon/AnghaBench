; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-gpio.c_pmic_gpio_config_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-gpio.c_pmic_gpio_config_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pmic_gpio_pad* }
%struct.pmic_gpio_pad = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.pmic_gpio_state = type { i32 }

@PMIC_GPIO_OUT_BUF_CMOS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PMIC_GPIO_OUT_BUF_OPEN_DRAIN_NMOS = common dso_local global i32 0, align 4
@PMIC_GPIO_OUT_BUF_OPEN_DRAIN_PMOS = common dso_local global i32 0, align 4
@PMIC_GPIO_PULL_DISABLE = common dso_local global i8* null, align 8
@PMIC_GPIO_PULL_UP_30 = common dso_local global i32 0, align 4
@PMIC_GPIO_PULL_DOWN = common dso_local global i32 0, align 4
@PMIC_GPIO_PULL_UP_1P5_30 = common dso_local global i32 0, align 4
@PMIC_GPIO_STRENGTH_LOW = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_VIN_SHIFT = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_DIG_VIN_CTL = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_PULL_SHIFT = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_DIG_PULL_CTL = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_OUT_TYPE_SHIFT = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_OUT_STRENGTH_SHIFT = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_DIG_OUT_CTL = common dso_local global i32 0, align 4
@PMIC_GPIO_LV_MV_DIG_IN_DTEST_EN = common dso_local global i32 0, align 4
@PMIC_GPIO_REG_DIG_IN_CTL = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @pmic_gpio_config_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_gpio_config_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pmic_gpio_state*, align 8
  %11 = alloca %struct.pmic_gpio_pad*, align 8
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
  %18 = call %struct.pmic_gpio_state* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %17)
  store %struct.pmic_gpio_state* %18, %struct.pmic_gpio_state** %10, align 8
  %19 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %20 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %27, align 8
  store %struct.pmic_gpio_pad* %28, %struct.pmic_gpio_pad** %11, align 8
  %29 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %30 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  store i32 0, i32* %15, align 4
  br label %31

31:                                               ; preds = %190, %4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %193

35:                                               ; preds = %31
  %36 = load i64*, i64** %8, align 8
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @pinconf_to_config_param(i64 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i64*, i64** %8, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @pinconf_to_config_argument(i64 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  switch i32 %48, label %186 [
    i32 136, label %49
    i32 138, label %53
    i32 137, label %65
    i32 142, label %77
    i32 139, label %82
    i32 140, label %86
    i32 141, label %99
    i32 133, label %102
    i32 135, label %115
    i32 134, label %122
    i32 129, label %128
    i32 128, label %139
    i32 131, label %150
    i32 132, label %165
    i32 130, label %176
  ]

49:                                               ; preds = %35
  %50 = load i32, i32* @PMIC_GPIO_OUT_BUF_CMOS, align 4
  %51 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %52 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %189

53:                                               ; preds = %35
  %54 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %55 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %54, i32 0, i32 14
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %403

61:                                               ; preds = %53
  %62 = load i32, i32* @PMIC_GPIO_OUT_BUF_OPEN_DRAIN_NMOS, align 4
  %63 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %64 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %189

65:                                               ; preds = %35
  %66 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %67 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %66, i32 0, i32 14
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %403

73:                                               ; preds = %65
  %74 = load i32, i32* @PMIC_GPIO_OUT_BUF_OPEN_DRAIN_PMOS, align 4
  %75 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %76 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %189

77:                                               ; preds = %35
  %78 = load i8*, i8** @PMIC_GPIO_PULL_DISABLE, align 8
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %81 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %189

82:                                               ; preds = %35
  %83 = load i32, i32* @PMIC_GPIO_PULL_UP_30, align 4
  %84 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %85 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  br label %189

86:                                               ; preds = %35
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* @PMIC_GPIO_PULL_DOWN, align 4
  %91 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %92 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  br label %98

93:                                               ; preds = %86
  %94 = load i8*, i8** @PMIC_GPIO_PULL_DISABLE, align 8
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %97 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %93, %89
  br label %189

99:                                               ; preds = %35
  %100 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %101 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  br label %189

102:                                              ; preds = %35
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %105 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp uge i32 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %403

111:                                              ; preds = %102
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %114 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  br label %189

115:                                              ; preds = %35
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 1, i32 0
  %120 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %121 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  br label %189

122:                                              ; preds = %35
  %123 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %124 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %123, i32 0, i32 6
  store i32 1, i32* %124, align 8
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %127 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 4
  br label %189

128:                                              ; preds = %35
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* @PMIC_GPIO_PULL_UP_1P5_30, align 4
  %131 = icmp ugt i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  br label %403

135:                                              ; preds = %128
  %136 = load i32, i32* %13, align 4
  %137 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %138 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  br label %189

139:                                              ; preds = %35
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @PMIC_GPIO_STRENGTH_LOW, align 4
  %142 = icmp ugt i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %5, align 4
  br label %403

146:                                              ; preds = %139
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %149 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %148, i32 0, i32 8
  store i32 %147, i32* %149, align 8
  br label %189

150:                                              ; preds = %35
  %151 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %152 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %151, i32 0, i32 13
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i32, i32* %13, align 4
  %157 = icmp ugt i32 %156, 4
  br i1 %157, label %158, label %161

158:                                              ; preds = %155, %150
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %5, align 4
  br label %403

161:                                              ; preds = %155
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %164 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %163, i32 0, i32 9
  store i32 %162, i32* %164, align 4
  br label %189

165:                                              ; preds = %35
  %166 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %167 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %166, i32 0, i32 13
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %165
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %5, align 4
  br label %403

173:                                              ; preds = %165
  %174 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %175 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %174, i32 0, i32 10
  store i32 1, i32* %175, align 8
  br label %189

176:                                              ; preds = %35
  %177 = load i32, i32* %13, align 4
  %178 = icmp ugt i32 %177, 4
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %5, align 4
  br label %403

182:                                              ; preds = %176
  %183 = load i32, i32* %13, align 4
  %184 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %185 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %184, i32 0, i32 11
  store i32 %183, i32* %185, align 4
  br label %189

186:                                              ; preds = %35
  %187 = load i32, i32* @EINVAL, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %5, align 4
  br label %403

189:                                              ; preds = %182, %173, %161, %146, %135, %122, %115, %111, %99, %98, %82, %77, %73, %61, %49
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %15, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %15, align 4
  br label %31

193:                                              ; preds = %31
  %194 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %195 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @PMIC_GPIO_REG_VIN_SHIFT, align 4
  %198 = shl i32 %196, %197
  store i32 %198, i32* %14, align 4
  %199 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %10, align 8
  %200 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %201 = load i32, i32* @PMIC_GPIO_REG_DIG_VIN_CTL, align 4
  %202 = load i32, i32* %14, align 4
  %203 = call i32 @pmic_gpio_write(%struct.pmic_gpio_state* %199, %struct.pmic_gpio_pad* %200, i32 %201, i32 %202)
  store i32 %203, i32* %16, align 4
  %204 = load i32, i32* %16, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %193
  %207 = load i32, i32* %16, align 4
  store i32 %207, i32* %5, align 4
  br label %403

208:                                              ; preds = %193
  %209 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %210 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @PMIC_GPIO_REG_PULL_SHIFT, align 4
  %213 = shl i32 %211, %212
  store i32 %213, i32* %14, align 4
  %214 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %10, align 8
  %215 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %216 = load i32, i32* @PMIC_GPIO_REG_DIG_PULL_CTL, align 4
  %217 = load i32, i32* %14, align 4
  %218 = call i32 @pmic_gpio_write(%struct.pmic_gpio_state* %214, %struct.pmic_gpio_pad* %215, i32 %216, i32 %217)
  store i32 %218, i32* %16, align 4
  %219 = load i32, i32* %16, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %208
  %222 = load i32, i32* %16, align 4
  store i32 %222, i32* %5, align 4
  br label %403

223:                                              ; preds = %208
  %224 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %225 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @PMIC_GPIO_REG_OUT_TYPE_SHIFT, align 4
  %228 = shl i32 %226, %227
  store i32 %228, i32* %14, align 4
  %229 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %230 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %229, i32 0, i32 8
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @PMIC_GPIO_REG_OUT_STRENGTH_SHIFT, align 4
  %233 = shl i32 %231, %232
  %234 = load i32, i32* %14, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %14, align 4
  %236 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %10, align 8
  %237 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %238 = load i32, i32* @PMIC_GPIO_REG_DIG_OUT_CTL, align 4
  %239 = load i32, i32* %14, align 4
  %240 = call i32 @pmic_gpio_write(%struct.pmic_gpio_state* %236, %struct.pmic_gpio_pad* %237, i32 %238, i32 %239)
  store i32 %240, i32* %16, align 4
  %241 = load i32, i32* %16, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %223
  %244 = load i32, i32* %16, align 4
  store i32 %244, i32* %5, align 4
  br label %403

245:                                              ; preds = %223
  %246 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %247 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %246, i32 0, i32 11
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  store i32 0, i32* %14, align 4
  br label %271

251:                                              ; preds = %245
  %252 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %253 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %252, i32 0, i32 13
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %251
  %257 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %258 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %257, i32 0, i32 11
  %259 = load i32, i32* %258, align 4
  %260 = sub i32 %259, 1
  store i32 %260, i32* %14, align 4
  %261 = load i32, i32* @PMIC_GPIO_LV_MV_DIG_IN_DTEST_EN, align 4
  %262 = load i32, i32* %14, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %14, align 4
  br label %270

264:                                              ; preds = %251
  %265 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %266 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %265, i32 0, i32 11
  %267 = load i32, i32* %266, align 4
  %268 = sub i32 %267, 1
  %269 = call i32 @BIT(i32 %268)
  store i32 %269, i32* %14, align 4
  br label %270

270:                                              ; preds = %264, %256
  br label %271

271:                                              ; preds = %270, %250
  %272 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %10, align 8
  %273 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %274 = load i32, i32* @PMIC_GPIO_REG_DIG_IN_CTL, align 4
  %275 = load i32, i32* %14, align 4
  %276 = call i32 @pmic_gpio_write(%struct.pmic_gpio_state* %272, %struct.pmic_gpio_pad* %273, i32 %274, i32 %275)
  store i32 %276, i32* %16, align 4
  %277 = load i32, i32* %16, align 4
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %271
  %280 = load i32, i32* %16, align 4
  store i32 %280, i32* %5, align 4
  br label %403

281:                                              ; preds = %271
  %282 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %283 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %282, i32 0, i32 10
  %284 = load i32, i32* %283, align 8
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %281
  %287 = load i32, i32* @PMIC_GPIO_MODE_ANALOG_PASS_THRU, align 4
  store i32 %287, i32* %14, align 4
  br label %311

288:                                              ; preds = %281
  %289 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %290 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 8
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %300

293:                                              ; preds = %288
  %294 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %295 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %293
  %299 = load i32, i32* @PMIC_GPIO_MODE_DIGITAL_INPUT_OUTPUT, align 4
  store i32 %299, i32* %14, align 4
  br label %310

300:                                              ; preds = %293, %288
  %301 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %302 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 8
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %300
  %306 = load i32, i32* @PMIC_GPIO_MODE_DIGITAL_OUTPUT, align 4
  store i32 %306, i32* %14, align 4
  br label %309

307:                                              ; preds = %300
  %308 = load i32, i32* @PMIC_GPIO_MODE_DIGITAL_INPUT, align 4
  store i32 %308, i32* %14, align 4
  br label %309

309:                                              ; preds = %307, %305
  br label %310

310:                                              ; preds = %309, %298
  br label %311

311:                                              ; preds = %310, %286
  %312 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %313 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %312, i32 0, i32 13
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %363

316:                                              ; preds = %311
  %317 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %10, align 8
  %318 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %319 = load i32, i32* @PMIC_GPIO_REG_MODE_CTL, align 4
  %320 = load i32, i32* %14, align 4
  %321 = call i32 @pmic_gpio_write(%struct.pmic_gpio_state* %317, %struct.pmic_gpio_pad* %318, i32 %319, i32 %320)
  store i32 %321, i32* %16, align 4
  %322 = load i32, i32* %16, align 4
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %316
  %325 = load i32, i32* %16, align 4
  store i32 %325, i32* %5, align 4
  br label %403

326:                                              ; preds = %316
  %327 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %328 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %327, i32 0, i32 9
  %329 = load i32, i32* %328, align 4
  %330 = sub i32 %329, 1
  store i32 %330, i32* %14, align 4
  %331 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %10, align 8
  %332 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %333 = load i32, i32* @PMIC_GPIO_REG_LV_MV_ANA_PASS_THRU_SEL, align 4
  %334 = load i32, i32* %14, align 4
  %335 = call i32 @pmic_gpio_write(%struct.pmic_gpio_state* %331, %struct.pmic_gpio_pad* %332, i32 %333, i32 %334)
  store i32 %335, i32* %16, align 4
  %336 = load i32, i32* %16, align 4
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %326
  %339 = load i32, i32* %16, align 4
  store i32 %339, i32* %5, align 4
  br label %403

340:                                              ; preds = %326
  %341 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %342 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %341, i32 0, i32 7
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @PMIC_GPIO_LV_MV_OUTPUT_INVERT_SHIFT, align 4
  %345 = shl i32 %343, %344
  store i32 %345, i32* %14, align 4
  %346 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %347 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %346, i32 0, i32 12
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @PMIC_GPIO_LV_MV_OUTPUT_SOURCE_SEL_MASK, align 4
  %350 = and i32 %348, %349
  %351 = load i32, i32* %14, align 4
  %352 = or i32 %351, %350
  store i32 %352, i32* %14, align 4
  %353 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %10, align 8
  %354 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %355 = load i32, i32* @PMIC_GPIO_REG_LV_MV_DIG_OUT_SOURCE_CTL, align 4
  %356 = load i32, i32* %14, align 4
  %357 = call i32 @pmic_gpio_write(%struct.pmic_gpio_state* %353, %struct.pmic_gpio_pad* %354, i32 %355, i32 %356)
  store i32 %357, i32* %16, align 4
  %358 = load i32, i32* %16, align 4
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %340
  %361 = load i32, i32* %16, align 4
  store i32 %361, i32* %5, align 4
  br label %403

362:                                              ; preds = %340
  br label %391

363:                                              ; preds = %311
  %364 = load i32, i32* %14, align 4
  %365 = load i32, i32* @PMIC_GPIO_REG_MODE_DIR_SHIFT, align 4
  %366 = shl i32 %364, %365
  store i32 %366, i32* %14, align 4
  %367 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %368 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %367, i32 0, i32 12
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @PMIC_GPIO_REG_MODE_FUNCTION_SHIFT, align 4
  %371 = shl i32 %369, %370
  %372 = load i32, i32* %14, align 4
  %373 = or i32 %372, %371
  store i32 %373, i32* %14, align 4
  %374 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %375 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %374, i32 0, i32 7
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* @PMIC_GPIO_REG_MODE_VALUE_SHIFT, align 4
  %378 = and i32 %376, %377
  %379 = load i32, i32* %14, align 4
  %380 = or i32 %379, %378
  store i32 %380, i32* %14, align 4
  %381 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %10, align 8
  %382 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %383 = load i32, i32* @PMIC_GPIO_REG_MODE_CTL, align 4
  %384 = load i32, i32* %14, align 4
  %385 = call i32 @pmic_gpio_write(%struct.pmic_gpio_state* %381, %struct.pmic_gpio_pad* %382, i32 %383, i32 %384)
  store i32 %385, i32* %16, align 4
  %386 = load i32, i32* %16, align 4
  %387 = icmp slt i32 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %363
  %389 = load i32, i32* %16, align 4
  store i32 %389, i32* %5, align 4
  br label %403

390:                                              ; preds = %363
  br label %391

391:                                              ; preds = %390, %362
  %392 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %393 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = load i32, i32* @PMIC_GPIO_REG_MASTER_EN_SHIFT, align 4
  %396 = shl i32 %394, %395
  store i32 %396, i32* %14, align 4
  %397 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %10, align 8
  %398 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %11, align 8
  %399 = load i32, i32* @PMIC_GPIO_REG_EN_CTL, align 4
  %400 = load i32, i32* %14, align 4
  %401 = call i32 @pmic_gpio_write(%struct.pmic_gpio_state* %397, %struct.pmic_gpio_pad* %398, i32 %399, i32 %400)
  store i32 %401, i32* %16, align 4
  %402 = load i32, i32* %16, align 4
  store i32 %402, i32* %5, align 4
  br label %403

403:                                              ; preds = %391, %388, %360, %338, %324, %279, %243, %221, %206, %186, %179, %170, %158, %143, %132, %108, %70, %58
  %404 = load i32, i32* %5, align 4
  ret i32 %404
}

declare dso_local %struct.pmic_gpio_state* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @pmic_gpio_write(%struct.pmic_gpio_state*, %struct.pmic_gpio_pad*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
