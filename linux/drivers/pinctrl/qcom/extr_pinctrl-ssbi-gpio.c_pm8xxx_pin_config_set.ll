; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_pin_config_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_pin_config_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pm8xxx_gpio = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pm8xxx_pin_data* }
%struct.pm8xxx_pin_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PM8XXX_GPIO_BIAS_NP = common dso_local global i32 0, align 4
@PM8XXX_GPIO_BIAS_PD = common dso_local global i32 0, align 4
@PM8XXX_GPIO_BIAS_PU_1P5_30 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid pull-up strength\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PM8XXX_GPIO_MODE_INPUT = common dso_local global i32 0, align 4
@PM8XXX_GPIO_MODE_OUTPUT = common dso_local global i32 0, align 4
@PMIC_GPIO_STRENGTH_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid drive strength\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"unsupported config parameter: %x\0A\00", align 1
@PM8XXX_GPIO_MODE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @pm8xxx_pin_config_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_pin_config_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pm8xxx_gpio*, align 8
  %11 = alloca %struct.pm8xxx_pin_data*, align 8
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
  %18 = call %struct.pm8xxx_gpio* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %17)
  store %struct.pm8xxx_gpio* %18, %struct.pm8xxx_gpio** %10, align 8
  %19 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %10, align 8
  %20 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %26, align 8
  store %struct.pm8xxx_pin_data* %27, %struct.pm8xxx_pin_data** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %176, %4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %179

32:                                               ; preds = %28
  %33 = load i64*, i64** %8, align 8
  %34 = load i32, i32* %14, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @pinconf_to_config_param(i64 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i64*, i64** %8, align 8
  %40 = load i32, i32* %14, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @pinconf_to_config_argument(i64 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  switch i32 %45, label %167 [
    i32 138, label %46
    i32 136, label %58
    i32 128, label %70
    i32 135, label %85
    i32 137, label %99
    i32 132, label %105
    i32 131, label %114
    i32 130, label %130
    i32 129, label %137
    i32 133, label %155
    i32 134, label %161
  ]

46:                                               ; preds = %32
  %47 = load i32, i32* @PM8XXX_GPIO_BIAS_NP, align 4
  %48 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %49 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = call i32 @BIT(i32 2)
  %51 = load i32, i32* %15, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %15, align 4
  %53 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %54 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = call i32 @BIT(i32 3)
  %56 = load i32, i32* %15, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %15, align 4
  br label %175

58:                                               ; preds = %32
  %59 = load i32, i32* @PM8XXX_GPIO_BIAS_PD, align 4
  %60 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %61 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = call i32 @BIT(i32 2)
  %63 = load i32, i32* %15, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %15, align 4
  %65 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %66 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  %67 = call i32 @BIT(i32 3)
  %68 = load i32, i32* %15, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %15, align 4
  br label %175

70:                                               ; preds = %32
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @PM8XXX_GPIO_BIAS_PU_1P5_30, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %10, align 8
  %76 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i8*, ...) @dev_err(i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %288

81:                                               ; preds = %70
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %84 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %32, %81
  %86 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %87 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %90 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = call i32 @BIT(i32 2)
  %92 = load i32, i32* %15, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %15, align 4
  %94 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %95 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  %96 = call i32 @BIT(i32 3)
  %97 = load i32, i32* %15, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %15, align 4
  br label %175

99:                                               ; preds = %32
  %100 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %101 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %100, i32 0, i32 1
  store i32 1, i32* %101, align 4
  %102 = call i32 @BIT(i32 3)
  %103 = load i32, i32* %15, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %15, align 4
  br label %175

105:                                              ; preds = %32
  %106 = load i32, i32* @PM8XXX_GPIO_MODE_INPUT, align 4
  %107 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %108 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = call i32 @BIT(i32 0)
  %110 = call i32 @BIT(i32 1)
  %111 = or i32 %109, %110
  %112 = load i32, i32* %15, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %15, align 4
  br label %175

114:                                              ; preds = %32
  %115 = load i32, i32* @PM8XXX_GPIO_MODE_OUTPUT, align 4
  %116 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %117 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %124 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 4
  %125 = call i32 @BIT(i32 0)
  %126 = call i32 @BIT(i32 1)
  %127 = or i32 %125, %126
  %128 = load i32, i32* %15, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %15, align 4
  br label %175

130:                                              ; preds = %32
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %133 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 4
  %134 = call i32 @BIT(i32 0)
  %135 = load i32, i32* %15, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %15, align 4
  br label %175

137:                                              ; preds = %32
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* @PMIC_GPIO_STRENGTH_LOW, align 4
  %140 = icmp ugt i32 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %10, align 8
  %143 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i32, i8*, ...) @dev_err(i32 %144, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %5, align 4
  br label %288

148:                                              ; preds = %137
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %151 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %150, i32 0, i32 6
  store i32 %149, i32* %151, align 4
  %152 = call i32 @BIT(i32 3)
  %153 = load i32, i32* %15, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %15, align 4
  br label %175

155:                                              ; preds = %32
  %156 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %157 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %156, i32 0, i32 7
  store i32 0, i32* %157, align 4
  %158 = call i32 @BIT(i32 1)
  %159 = load i32, i32* %15, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %15, align 4
  br label %175

161:                                              ; preds = %32
  %162 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %163 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %162, i32 0, i32 7
  store i32 1, i32* %163, align 4
  %164 = call i32 @BIT(i32 1)
  %165 = load i32, i32* %15, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %15, align 4
  br label %175

167:                                              ; preds = %32
  %168 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %10, align 8
  %169 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %12, align 4
  %172 = call i32 (i32, i8*, ...) @dev_err(i32 %170, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %5, align 4
  br label %288

175:                                              ; preds = %161, %155, %148, %130, %114, %105, %99, %85, %58, %46
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %14, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %14, align 4
  br label %28

179:                                              ; preds = %28
  %180 = load i32, i32* %15, align 4
  %181 = call i32 @BIT(i32 0)
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %196

184:                                              ; preds = %179
  %185 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %186 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 1
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* @PM8XXX_GPIO_MODE_ENABLED, align 4
  %190 = load i32, i32* %16, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %16, align 4
  %192 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %10, align 8
  %193 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %194 = load i32, i32* %16, align 4
  %195 = call i32 @pm8xxx_write_bank(%struct.pm8xxx_gpio* %192, %struct.pm8xxx_pin_data* %193, i32 0, i32 %194)
  br label %196

196:                                              ; preds = %184, %179
  %197 = load i32, i32* %15, align 4
  %198 = call i32 @BIT(i32 1)
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %221

201:                                              ; preds = %196
  %202 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %203 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = shl i32 %204, 2
  store i32 %205, i32* %16, align 4
  %206 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %207 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %206, i32 0, i32 7
  %208 = load i32, i32* %207, align 4
  %209 = shl i32 %208, 1
  %210 = load i32, i32* %16, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %16, align 4
  %212 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %213 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %16, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %16, align 4
  %217 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %10, align 8
  %218 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %219 = load i32, i32* %16, align 4
  %220 = call i32 @pm8xxx_write_bank(%struct.pm8xxx_gpio* %217, %struct.pm8xxx_pin_data* %218, i32 1, i32 %219)
  br label %221

221:                                              ; preds = %201, %196
  %222 = load i32, i32* %15, align 4
  %223 = call i32 @BIT(i32 2)
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %221
  %227 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %228 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = shl i32 %229, 1
  store i32 %230, i32* %16, align 4
  %231 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %10, align 8
  %232 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %233 = load i32, i32* %16, align 4
  %234 = call i32 @pm8xxx_write_bank(%struct.pm8xxx_gpio* %231, %struct.pm8xxx_pin_data* %232, i32 2, i32 %233)
  br label %235

235:                                              ; preds = %226, %221
  %236 = load i32, i32* %15, align 4
  %237 = call i32 @BIT(i32 3)
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %254

240:                                              ; preds = %235
  %241 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %242 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = shl i32 %243, 2
  store i32 %244, i32* %16, align 4
  %245 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %246 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %16, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %16, align 4
  %250 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %10, align 8
  %251 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %252 = load i32, i32* %16, align 4
  %253 = call i32 @pm8xxx_write_bank(%struct.pm8xxx_gpio* %250, %struct.pm8xxx_pin_data* %251, i32 3, i32 %252)
  br label %254

254:                                              ; preds = %240, %235
  %255 = load i32, i32* %15, align 4
  %256 = call i32 @BIT(i32 4)
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %254
  %260 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %261 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %260, i32 0, i32 8
  %262 = load i32, i32* %261, align 4
  %263 = shl i32 %262, 1
  store i32 %263, i32* %16, align 4
  %264 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %10, align 8
  %265 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %266 = load i32, i32* %16, align 4
  %267 = call i32 @pm8xxx_write_bank(%struct.pm8xxx_gpio* %264, %struct.pm8xxx_pin_data* %265, i32 4, i32 %266)
  br label %268

268:                                              ; preds = %259, %254
  %269 = load i32, i32* %15, align 4
  %270 = call i32 @BIT(i32 5)
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %287

273:                                              ; preds = %268
  store i32 0, i32* %16, align 4
  %274 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %275 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %274, i32 0, i32 9
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %282, label %278

278:                                              ; preds = %273
  %279 = call i32 @BIT(i32 3)
  %280 = load i32, i32* %16, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %16, align 4
  br label %282

282:                                              ; preds = %278, %273
  %283 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %10, align 8
  %284 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %11, align 8
  %285 = load i32, i32* %16, align 4
  %286 = call i32 @pm8xxx_write_bank(%struct.pm8xxx_gpio* %283, %struct.pm8xxx_pin_data* %284, i32 5, i32 %285)
  br label %287

287:                                              ; preds = %282, %268
  store i32 0, i32* %5, align 4
  br label %288

288:                                              ; preds = %287, %167, %141, %74
  %289 = load i32, i32* %5, align 4
  ret i32 %289
}

declare dso_local %struct.pm8xxx_gpio* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @pm8xxx_write_bank(%struct.pm8xxx_gpio*, %struct.pm8xxx_pin_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
