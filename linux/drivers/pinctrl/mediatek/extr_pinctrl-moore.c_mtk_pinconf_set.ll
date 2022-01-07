; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-moore.c_mtk_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-moore.c_mtk_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.mtk_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32)*, i32, i32* }
%struct.mtk_pin_desc = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_SMT = common dso_local global i32 0, align 4
@MTK_DISABLE = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_DIR = common dso_local global i32 0, align 4
@MTK_OUTPUT = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_IES = common dso_local global i32 0, align 4
@MTK_ENABLE = common dso_local global i32 0, align 4
@MTK_INPUT = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_SR = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_DO = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_TDSEL = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_RDSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @mtk_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pinconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtk_pinctrl*, align 8
  %11 = alloca %struct.mtk_pin_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %19 = call %struct.mtk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %18)
  store %struct.mtk_pinctrl* %19, %struct.mtk_pinctrl** %10, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %21 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = bitcast i32* %27 to %struct.mtk_pin_desc*
  store %struct.mtk_pin_desc* %28, %struct.mtk_pin_desc** %11, align 8
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %300, %4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %303

33:                                               ; preds = %29
  %34 = load i64*, i64** %8, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @pinconf_to_config_param(i64 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i64*, i64** %8, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @pinconf_to_config_argument(i64 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %13, align 4
  switch i32 %46, label %296 [
    i32 136, label %47
    i32 134, label %72
    i32 135, label %97
    i32 129, label %122
    i32 132, label %141
    i32 128, label %164
    i32 130, label %174
    i32 131, label %193
    i32 133, label %222
    i32 137, label %248
    i32 138, label %248
    i32 139, label %266
    i32 140, label %266
  ]

47:                                               ; preds = %33
  %48 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %49 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*)** %51, align 8
  %53 = icmp ne i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*)* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %47
  %55 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %56 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*)** %58, align 8
  %60 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %61 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %62 = call i32 %59(%struct.mtk_pinctrl* %60, %struct.mtk_pin_desc* %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %5, align 4
  br label %306

67:                                               ; preds = %54
  br label %71

68:                                               ; preds = %47
  %69 = load i32, i32* @ENOTSUPP, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %306

71:                                               ; preds = %67
  br label %299

72:                                               ; preds = %33
  %73 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %74 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)** %76, align 8
  %78 = icmp ne i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)* %77, null
  br i1 %78, label %79, label %93

79:                                               ; preds = %72
  %80 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %81 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)** %83, align 8
  %85 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %86 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %87 = call i32 %84(%struct.mtk_pinctrl* %85, %struct.mtk_pin_desc* %86, i32 1)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = load i32, i32* %16, align 4
  store i32 %91, i32* %5, align 4
  br label %306

92:                                               ; preds = %79
  br label %96

93:                                               ; preds = %72
  %94 = load i32, i32* @ENOTSUPP, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %306

96:                                               ; preds = %92
  br label %299

97:                                               ; preds = %33
  %98 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %99 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)** %101, align 8
  %103 = icmp ne i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)* %102, null
  br i1 %103, label %104, label %118

104:                                              ; preds = %97
  %105 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %106 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)** %108, align 8
  %110 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %111 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %112 = call i32 %109(%struct.mtk_pinctrl* %110, %struct.mtk_pin_desc* %111, i32 0)
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %104
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %5, align 4
  br label %306

117:                                              ; preds = %104
  br label %121

118:                                              ; preds = %97
  %119 = load i32, i32* @ENOTSUPP, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %5, align 4
  br label %306

121:                                              ; preds = %117
  br label %299

122:                                              ; preds = %33
  %123 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %124 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %125 = load i32, i32* @PINCTRL_PIN_REG_SMT, align 4
  %126 = load i32, i32* @MTK_DISABLE, align 4
  %127 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %123, %struct.mtk_pin_desc* %124, i32 %125, i32 %126)
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %16, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %304

131:                                              ; preds = %122
  %132 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %133 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %134 = load i32, i32* @PINCTRL_PIN_REG_DIR, align 4
  %135 = load i32, i32* @MTK_OUTPUT, align 4
  %136 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %132, %struct.mtk_pin_desc* %133, i32 %134, i32 %135)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %304

140:                                              ; preds = %131
  br label %299

141:                                              ; preds = %33
  %142 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %143 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %142, i32 0, i32 0
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %141
  %149 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %150 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %151 = load i32, i32* @PINCTRL_PIN_REG_IES, align 4
  %152 = load i32, i32* @MTK_ENABLE, align 4
  %153 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %149, %struct.mtk_pin_desc* %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %148, %141
  %155 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %156 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %157 = load i32, i32* @PINCTRL_PIN_REG_DIR, align 4
  %158 = load i32, i32* @MTK_INPUT, align 4
  %159 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %155, %struct.mtk_pin_desc* %156, i32 %157, i32 %158)
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* %16, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  br label %304

163:                                              ; preds = %154
  br label %299

164:                                              ; preds = %33
  %165 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %166 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %167 = load i32, i32* @PINCTRL_PIN_REG_SR, align 4
  %168 = load i32, i32* %14, align 4
  %169 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %165, %struct.mtk_pin_desc* %166, i32 %167, i32 %168)
  store i32 %169, i32* %16, align 4
  %170 = load i32, i32* %16, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  br label %304

173:                                              ; preds = %164
  br label %299

174:                                              ; preds = %33
  %175 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %176 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %177 = load i32, i32* @PINCTRL_PIN_REG_DIR, align 4
  %178 = load i32, i32* @MTK_OUTPUT, align 4
  %179 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %175, %struct.mtk_pin_desc* %176, i32 %177, i32 %178)
  store i32 %179, i32* %16, align 4
  %180 = load i32, i32* %16, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %304

183:                                              ; preds = %174
  %184 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %185 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %186 = load i32, i32* @PINCTRL_PIN_REG_DO, align 4
  %187 = load i32, i32* %14, align 4
  %188 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %184, %struct.mtk_pin_desc* %185, i32 %186, i32 %187)
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* %16, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  br label %304

192:                                              ; preds = %183
  br label %299

193:                                              ; preds = %33
  %194 = load i32, i32* %14, align 4
  %195 = icmp ne i32 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i32 2, i32 1
  store i32 %197, i32* %14, align 4
  %198 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %199 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %200 = load i32, i32* @PINCTRL_PIN_REG_DIR, align 4
  %201 = load i32, i32* %14, align 4
  %202 = and i32 %201, 1
  %203 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %198, %struct.mtk_pin_desc* %199, i32 %200, i32 %202)
  store i32 %203, i32* %16, align 4
  %204 = load i32, i32* %16, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %193
  br label %304

207:                                              ; preds = %193
  %208 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %209 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %210 = load i32, i32* @PINCTRL_PIN_REG_SMT, align 4
  %211 = load i32, i32* %14, align 4
  %212 = and i32 %211, 2
  %213 = icmp ne i32 %212, 0
  %214 = xor i1 %213, true
  %215 = xor i1 %214, true
  %216 = zext i1 %215 to i32
  %217 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %208, %struct.mtk_pin_desc* %209, i32 %210, i32 %216)
  store i32 %217, i32* %16, align 4
  %218 = load i32, i32* %16, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %207
  br label %304

221:                                              ; preds = %207
  br label %299

222:                                              ; preds = %33
  %223 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %224 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %223, i32 0, i32 0
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 2
  %227 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)** %226, align 8
  %228 = icmp ne i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)* %227, null
  br i1 %228, label %229, label %244

229:                                              ; preds = %222
  %230 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %231 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %230, i32 0, i32 0
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 2
  %234 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)** %233, align 8
  %235 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %236 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %237 = load i32, i32* %14, align 4
  %238 = call i32 %234(%struct.mtk_pinctrl* %235, %struct.mtk_pin_desc* %236, i32 %237)
  store i32 %238, i32* %16, align 4
  %239 = load i32, i32* %16, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %229
  %242 = load i32, i32* %16, align 4
  store i32 %242, i32* %5, align 4
  br label %306

243:                                              ; preds = %229
  br label %247

244:                                              ; preds = %222
  %245 = load i32, i32* @ENOTSUPP, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %16, align 4
  br label %247

247:                                              ; preds = %244, %243
  br label %299

248:                                              ; preds = %33, %33
  %249 = load i32, i32* %13, align 4
  %250 = icmp eq i32 %249, 137
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = load i32, i32* @PINCTRL_PIN_REG_TDSEL, align 4
  br label %255

253:                                              ; preds = %248
  %254 = load i32, i32* @PINCTRL_PIN_REG_RDSEL, align 4
  br label %255

255:                                              ; preds = %253, %251
  %256 = phi i32 [ %252, %251 ], [ %254, %253 ]
  store i32 %256, i32* %12, align 4
  %257 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %258 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %259 = load i32, i32* %12, align 4
  %260 = load i32, i32* %14, align 4
  %261 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %257, %struct.mtk_pin_desc* %258, i32 %259, i32 %260)
  store i32 %261, i32* %16, align 4
  %262 = load i32, i32* %16, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %255
  br label %304

265:                                              ; preds = %255
  br label %299

266:                                              ; preds = %33, %33
  %267 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %268 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %267, i32 0, i32 0
  %269 = load %struct.TYPE_2__*, %struct.TYPE_2__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 3
  %271 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32)** %270, align 8
  %272 = icmp ne i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32)* %271, null
  br i1 %272, label %273, label %292

273:                                              ; preds = %266
  %274 = load i32, i32* %13, align 4
  %275 = icmp eq i32 %274, 139
  %276 = zext i1 %275 to i32
  store i32 %276, i32* %17, align 4
  %277 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %278 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %277, i32 0, i32 0
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 3
  %281 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32)** %280, align 8
  %282 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %283 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %284 = load i32, i32* %17, align 4
  %285 = load i32, i32* %14, align 4
  %286 = call i32 %281(%struct.mtk_pinctrl* %282, %struct.mtk_pin_desc* %283, i32 %284, i32 %285)
  store i32 %286, i32* %16, align 4
  %287 = load i32, i32* %16, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %273
  %290 = load i32, i32* %16, align 4
  store i32 %290, i32* %5, align 4
  br label %306

291:                                              ; preds = %273
  br label %295

292:                                              ; preds = %266
  %293 = load i32, i32* @ENOTSUPP, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %5, align 4
  br label %306

295:                                              ; preds = %291
  br label %299

296:                                              ; preds = %33
  %297 = load i32, i32* @ENOTSUPP, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %16, align 4
  br label %299

299:                                              ; preds = %296, %295, %265, %247, %221, %192, %173, %163, %140, %121, %96, %71
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %15, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %15, align 4
  br label %29

303:                                              ; preds = %29
  br label %304

304:                                              ; preds = %303, %264, %220, %206, %191, %182, %172, %162, %139, %130
  %305 = load i32, i32* %16, align 4
  store i32 %305, i32* %5, align 4
  br label %306

306:                                              ; preds = %304, %292, %289, %241, %118, %115, %93, %90, %68, %65
  %307 = load i32, i32* %5, align 4
  ret i32 %307
}

declare dso_local %struct.mtk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @mtk_hw_set_value(%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
