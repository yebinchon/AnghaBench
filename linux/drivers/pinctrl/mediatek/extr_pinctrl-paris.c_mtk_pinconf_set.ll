; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-paris.c_mtk_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-paris.c_mtk_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.mtk_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)*, i32, i32* }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32, i32)* @mtk_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pinconf_set(%struct.pinctrl_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtk_pinctrl*, align 8
  %11 = alloca %struct.mtk_pin_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %16 = call %struct.mtk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %15)
  store %struct.mtk_pinctrl* %16, %struct.mtk_pinctrl** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %18 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 6
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = bitcast i32* %24 to %struct.mtk_pin_desc*
  store %struct.mtk_pin_desc* %25, %struct.mtk_pin_desc** %11, align 8
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %302 [
    i32 136, label %27
    i32 134, label %52
    i32 135, label %77
    i32 129, label %102
    i32 132, label %121
    i32 128, label %144
    i32 130, label %154
    i32 131, label %173
    i32 133, label %202
    i32 137, label %228
    i32 138, label %228
    i32 139, label %246
    i32 140, label %246
    i32 141, label %276
  ]

27:                                               ; preds = %4
  %28 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %29 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*)** %31, align 8
  %33 = icmp ne i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*)* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %36 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*)** %38, align 8
  %40 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %41 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %42 = call i32 %39(%struct.mtk_pinctrl* %40, %struct.mtk_pin_desc* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %308

47:                                               ; preds = %34
  br label %51

48:                                               ; preds = %27
  %49 = load i32, i32* @ENOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %308

51:                                               ; preds = %47
  br label %305

52:                                               ; preds = %4
  %53 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %54 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)** %56, align 8
  %58 = icmp ne i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)* %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %52
  %60 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %61 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)** %63, align 8
  %65 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %66 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %67 = call i32 %64(%struct.mtk_pinctrl* %65, %struct.mtk_pin_desc* %66, i32 1)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %5, align 4
  br label %308

72:                                               ; preds = %59
  br label %76

73:                                               ; preds = %52
  %74 = load i32, i32* @ENOTSUPP, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %308

76:                                               ; preds = %72
  br label %305

77:                                               ; preds = %4
  %78 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %79 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)** %81, align 8
  %83 = icmp ne i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)* %82, null
  br i1 %83, label %84, label %98

84:                                               ; preds = %77
  %85 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %86 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)** %88, align 8
  %90 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %91 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %92 = call i32 %89(%struct.mtk_pinctrl* %90, %struct.mtk_pin_desc* %91, i32 0)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %5, align 4
  br label %308

97:                                               ; preds = %84
  br label %101

98:                                               ; preds = %77
  %99 = load i32, i32* @ENOTSUPP, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %308

101:                                              ; preds = %97
  br label %305

102:                                              ; preds = %4
  %103 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %104 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %105 = load i32, i32* @PINCTRL_PIN_REG_SMT, align 4
  %106 = load i32, i32* @MTK_DISABLE, align 4
  %107 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %103, %struct.mtk_pin_desc* %104, i32 %105, i32 %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %306

111:                                              ; preds = %102
  %112 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %113 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %114 = load i32, i32* @PINCTRL_PIN_REG_DIR, align 4
  %115 = load i32, i32* @MTK_OUTPUT, align 4
  %116 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %112, %struct.mtk_pin_desc* %113, i32 %114, i32 %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %306

120:                                              ; preds = %111
  br label %305

121:                                              ; preds = %4
  %122 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %123 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %130 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %131 = load i32, i32* @PINCTRL_PIN_REG_IES, align 4
  %132 = load i32, i32* @MTK_ENABLE, align 4
  %133 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %129, %struct.mtk_pin_desc* %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %128, %121
  %135 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %136 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %137 = load i32, i32* @PINCTRL_PIN_REG_DIR, align 4
  %138 = load i32, i32* @MTK_INPUT, align 4
  %139 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %135, %struct.mtk_pin_desc* %136, i32 %137, i32 %138)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  br label %306

143:                                              ; preds = %134
  br label %305

144:                                              ; preds = %4
  %145 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %146 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %147 = load i32, i32* @PINCTRL_PIN_REG_SR, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %145, %struct.mtk_pin_desc* %146, i32 %147, i32 %148)
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  br label %306

153:                                              ; preds = %144
  br label %305

154:                                              ; preds = %4
  %155 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %156 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %157 = load i32, i32* @PINCTRL_PIN_REG_DIR, align 4
  %158 = load i32, i32* @MTK_OUTPUT, align 4
  %159 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %155, %struct.mtk_pin_desc* %156, i32 %157, i32 %158)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  br label %306

163:                                              ; preds = %154
  %164 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %165 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %166 = load i32, i32* @PINCTRL_PIN_REG_DO, align 4
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %164, %struct.mtk_pin_desc* %165, i32 %166, i32 %167)
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  br label %306

172:                                              ; preds = %163
  br label %305

173:                                              ; preds = %4
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 2, i32 1
  store i32 %177, i32* %9, align 4
  %178 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %179 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %180 = load i32, i32* @PINCTRL_PIN_REG_DIR, align 4
  %181 = load i32, i32* %9, align 4
  %182 = and i32 %181, 1
  %183 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %178, %struct.mtk_pin_desc* %179, i32 %180, i32 %182)
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %173
  br label %306

187:                                              ; preds = %173
  %188 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %189 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %190 = load i32, i32* @PINCTRL_PIN_REG_SMT, align 4
  %191 = load i32, i32* %9, align 4
  %192 = and i32 %191, 2
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %188, %struct.mtk_pin_desc* %189, i32 %190, i32 %196)
  store i32 %197, i32* %12, align 4
  %198 = load i32, i32* %12, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %187
  br label %306

201:                                              ; preds = %187
  br label %305

202:                                              ; preds = %4
  %203 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %204 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %203, i32 0, i32 0
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 2
  %207 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)** %206, align 8
  %208 = icmp ne i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)* %207, null
  br i1 %208, label %209, label %224

209:                                              ; preds = %202
  %210 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %211 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %210, i32 0, i32 0
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 2
  %214 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)** %213, align 8
  %215 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %216 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %217 = load i32, i32* %9, align 4
  %218 = call i32 %214(%struct.mtk_pinctrl* %215, %struct.mtk_pin_desc* %216, i32 %217)
  store i32 %218, i32* %12, align 4
  %219 = load i32, i32* %12, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %209
  %222 = load i32, i32* %12, align 4
  store i32 %222, i32* %5, align 4
  br label %308

223:                                              ; preds = %209
  br label %227

224:                                              ; preds = %202
  %225 = load i32, i32* @ENOTSUPP, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %5, align 4
  br label %308

227:                                              ; preds = %223
  br label %305

228:                                              ; preds = %4, %4
  %229 = load i32, i32* %8, align 4
  %230 = icmp eq i32 %229, 137
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = load i32, i32* @PINCTRL_PIN_REG_TDSEL, align 4
  br label %235

233:                                              ; preds = %228
  %234 = load i32, i32* @PINCTRL_PIN_REG_RDSEL, align 4
  br label %235

235:                                              ; preds = %233, %231
  %236 = phi i32 [ %232, %231 ], [ %234, %233 ]
  store i32 %236, i32* %13, align 4
  %237 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %238 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* %9, align 4
  %241 = call i32 @mtk_hw_set_value(%struct.mtk_pinctrl* %237, %struct.mtk_pin_desc* %238, i32 %239, i32 %240)
  store i32 %241, i32* %12, align 4
  %242 = load i32, i32* %12, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %235
  br label %306

245:                                              ; preds = %235
  br label %305

246:                                              ; preds = %4, %4
  %247 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %248 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %247, i32 0, i32 0
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 3
  %251 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32)** %250, align 8
  %252 = icmp ne i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32)* %251, null
  br i1 %252, label %253, label %272

253:                                              ; preds = %246
  %254 = load i32, i32* %8, align 4
  %255 = icmp eq i32 %254, 139
  %256 = zext i1 %255 to i32
  store i32 %256, i32* %14, align 4
  %257 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %258 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %257, i32 0, i32 0
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 3
  %261 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32)** %260, align 8
  %262 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %263 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %264 = load i32, i32* %14, align 4
  %265 = load i32, i32* %9, align 4
  %266 = call i32 %261(%struct.mtk_pinctrl* %262, %struct.mtk_pin_desc* %263, i32 %264, i32 %265)
  store i32 %266, i32* %12, align 4
  %267 = load i32, i32* %12, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %253
  %270 = load i32, i32* %12, align 4
  store i32 %270, i32* %5, align 4
  br label %308

271:                                              ; preds = %253
  br label %275

272:                                              ; preds = %246
  %273 = load i32, i32* @ENOTSUPP, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %5, align 4
  br label %308

275:                                              ; preds = %271
  br label %305

276:                                              ; preds = %4
  %277 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %278 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %277, i32 0, i32 0
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 4
  %281 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)** %280, align 8
  %282 = icmp ne i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)* %281, null
  br i1 %282, label %283, label %298

283:                                              ; preds = %276
  %284 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %285 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %284, i32 0, i32 0
  %286 = load %struct.TYPE_2__*, %struct.TYPE_2__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 4
  %288 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32)** %287, align 8
  %289 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %10, align 8
  %290 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %11, align 8
  %291 = load i32, i32* %9, align 4
  %292 = call i32 %288(%struct.mtk_pinctrl* %289, %struct.mtk_pin_desc* %290, i32 %291)
  store i32 %292, i32* %12, align 4
  %293 = load i32, i32* %12, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %283
  %296 = load i32, i32* %12, align 4
  store i32 %296, i32* %5, align 4
  br label %308

297:                                              ; preds = %283
  br label %301

298:                                              ; preds = %276
  %299 = load i32, i32* @ENOTSUPP, align 4
  %300 = sub nsw i32 0, %299
  store i32 %300, i32* %5, align 4
  br label %308

301:                                              ; preds = %297
  br label %305

302:                                              ; preds = %4
  %303 = load i32, i32* @ENOTSUPP, align 4
  %304 = sub nsw i32 0, %303
  store i32 %304, i32* %12, align 4
  br label %305

305:                                              ; preds = %302, %301, %275, %245, %227, %201, %172, %153, %143, %120, %101, %76, %51
  br label %306

306:                                              ; preds = %305, %244, %200, %186, %171, %162, %152, %142, %119, %110
  %307 = load i32, i32* %12, align 4
  store i32 %307, i32* %5, align 4
  br label %308

308:                                              ; preds = %306, %298, %295, %272, %269, %224, %221, %98, %95, %73, %70, %48, %45
  %309 = load i32, i32* %5, align 4
  ret i32 %309
}

declare dso_local %struct.mtk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @mtk_hw_set_value(%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
