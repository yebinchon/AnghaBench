; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-moore.c_mtk_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-moore.c_mtk_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.mtk_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32*)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32*)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*)*, i32* }
%struct.mtk_pin_desc = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_SR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_DIR = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_SMT = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_TDSEL = common dso_local global i32 0, align 4
@PINCTRL_PIN_REG_RDSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @mtk_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.mtk_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mtk_pin_desc*, align 8
  %16 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %17 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %18 = call %struct.mtk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %17)
  store %struct.mtk_pinctrl* %18, %struct.mtk_pinctrl** %8, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @pinconf_to_config_param(i64 %20)
  store i32 %21, i32* %9, align 4
  store i32 1, i32* %14, align 4
  %22 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %23 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = bitcast i32* %29 to %struct.mtk_pin_desc*
  store %struct.mtk_pin_desc* %30, %struct.mtk_pin_desc** %15, align 8
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %249 [
    i32 135, label %32
    i32 133, label %57
    i32 134, label %82
    i32 128, label %107
    i32 131, label %123
    i32 129, label %123
    i32 130, label %148
    i32 132, label %176
    i32 136, label %201
    i32 137, label %201
    i32 138, label %220
    i32 139, label %220
  ]

32:                                               ; preds = %3
  %33 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %34 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32*)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32*)** %36, align 8
  %38 = icmp ne i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32*)* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %41 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32*)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32*)** %43, align 8
  %45 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %46 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %15, align 8
  %47 = call i32 %44(%struct.mtk_pinctrl* %45, %struct.mtk_pin_desc* %46, i32* %14)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %4, align 4
  br label %257

52:                                               ; preds = %39
  br label %56

53:                                               ; preds = %32
  %54 = load i32, i32* @ENOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %257

56:                                               ; preds = %52
  br label %252

57:                                               ; preds = %3
  %58 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %59 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*)** %61, align 8
  %63 = icmp ne i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*)* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %66 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*)** %68, align 8
  %70 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %71 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %15, align 8
  %72 = call i32 %69(%struct.mtk_pinctrl* %70, %struct.mtk_pin_desc* %71, i32 1, i32* %14)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %4, align 4
  br label %257

77:                                               ; preds = %64
  br label %81

78:                                               ; preds = %57
  %79 = load i32, i32* @ENOTSUPP, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %257

81:                                               ; preds = %77
  br label %252

82:                                               ; preds = %3
  %83 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %84 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*)** %86, align 8
  %88 = icmp ne i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*)* %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %82
  %90 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %91 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*)** %93, align 8
  %95 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %96 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %15, align 8
  %97 = call i32 %94(%struct.mtk_pinctrl* %95, %struct.mtk_pin_desc* %96, i32 0, i32* %14)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %89
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %4, align 4
  br label %257

102:                                              ; preds = %89
  br label %106

103:                                              ; preds = %82
  %104 = load i32, i32* @ENOTSUPP, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %257

106:                                              ; preds = %102
  br label %252

107:                                              ; preds = %3
  %108 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %109 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %15, align 8
  %110 = load i32, i32* @PINCTRL_PIN_REG_SR, align 4
  %111 = call i32 @mtk_hw_get_value(%struct.mtk_pinctrl* %108, %struct.mtk_pin_desc* %109, i32 %110, i32* %10)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %4, align 4
  br label %257

116:                                              ; preds = %107
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %257

122:                                              ; preds = %116
  br label %252

123:                                              ; preds = %3, %3
  %124 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %125 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %15, align 8
  %126 = load i32, i32* @PINCTRL_PIN_REG_DIR, align 4
  %127 = call i32 @mtk_hw_get_value(%struct.mtk_pinctrl* %124, %struct.mtk_pin_desc* %125, i32 %126, i32* %10)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %4, align 4
  br label %257

132:                                              ; preds = %123
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32, i32* %9, align 4
  %137 = icmp eq i32 %136, 131
  br i1 %137, label %144, label %138

138:                                              ; preds = %135, %132
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %9, align 4
  %143 = icmp eq i32 %142, 129
  br i1 %143, label %144, label %147

144:                                              ; preds = %141, %135
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %257

147:                                              ; preds = %141, %138
  br label %252

148:                                              ; preds = %3
  %149 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %150 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %15, align 8
  %151 = load i32, i32* @PINCTRL_PIN_REG_DIR, align 4
  %152 = call i32 @mtk_hw_get_value(%struct.mtk_pinctrl* %149, %struct.mtk_pin_desc* %150, i32 %151, i32* %10)
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %4, align 4
  br label %257

157:                                              ; preds = %148
  %158 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %159 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %15, align 8
  %160 = load i32, i32* @PINCTRL_PIN_REG_SMT, align 4
  %161 = call i32 @mtk_hw_get_value(%struct.mtk_pinctrl* %158, %struct.mtk_pin_desc* %159, i32 %160, i32* %11)
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %4, align 4
  br label %257

166:                                              ; preds = %157
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %169, %166
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %4, align 4
  br label %257

175:                                              ; preds = %169
  br label %252

176:                                              ; preds = %3
  %177 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %178 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %177, i32 0, i32 0
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 2
  %181 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32*)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32*)** %180, align 8
  %182 = icmp ne i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32*)* %181, null
  br i1 %182, label %183, label %197

183:                                              ; preds = %176
  %184 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %185 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %184, i32 0, i32 0
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 2
  %188 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32*)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32*)** %187, align 8
  %189 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %190 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %15, align 8
  %191 = call i32 %188(%struct.mtk_pinctrl* %189, %struct.mtk_pin_desc* %190, i32* %14)
  store i32 %191, i32* %12, align 4
  %192 = load i32, i32* %12, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %183
  %195 = load i32, i32* %12, align 4
  store i32 %195, i32* %4, align 4
  br label %257

196:                                              ; preds = %183
  br label %200

197:                                              ; preds = %176
  %198 = load i32, i32* @ENOTSUPP, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %12, align 4
  br label %200

200:                                              ; preds = %197, %196
  br label %252

201:                                              ; preds = %3, %3
  %202 = load i32, i32* %9, align 4
  %203 = icmp eq i32 %202, 136
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = load i32, i32* @PINCTRL_PIN_REG_TDSEL, align 4
  br label %208

206:                                              ; preds = %201
  %207 = load i32, i32* @PINCTRL_PIN_REG_RDSEL, align 4
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  store i32 %209, i32* %13, align 4
  %210 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %211 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %15, align 8
  %212 = load i32, i32* %13, align 4
  %213 = call i32 @mtk_hw_get_value(%struct.mtk_pinctrl* %210, %struct.mtk_pin_desc* %211, i32 %212, i32* %10)
  store i32 %213, i32* %12, align 4
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %208
  %217 = load i32, i32* %12, align 4
  store i32 %217, i32* %4, align 4
  br label %257

218:                                              ; preds = %208
  %219 = load i32, i32* %10, align 4
  store i32 %219, i32* %14, align 4
  br label %252

220:                                              ; preds = %3, %3
  %221 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %222 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %221, i32 0, i32 0
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 3
  %225 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*)** %224, align 8
  %226 = icmp ne i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*)* %225, null
  br i1 %226, label %227, label %245

227:                                              ; preds = %220
  %228 = load i32, i32* %9, align 4
  %229 = icmp eq i32 %228, 138
  %230 = zext i1 %229 to i32
  store i32 %230, i32* %16, align 4
  %231 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %232 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %231, i32 0, i32 0
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 3
  %235 = load i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*)*, i32 (%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*)** %234, align 8
  %236 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %8, align 8
  %237 = load %struct.mtk_pin_desc*, %struct.mtk_pin_desc** %15, align 8
  %238 = load i32, i32* %16, align 4
  %239 = call i32 %235(%struct.mtk_pinctrl* %236, %struct.mtk_pin_desc* %237, i32 %238, i32* %14)
  store i32 %239, i32* %12, align 4
  %240 = load i32, i32* %12, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %227
  %243 = load i32, i32* %12, align 4
  store i32 %243, i32* %4, align 4
  br label %257

244:                                              ; preds = %227
  br label %248

245:                                              ; preds = %220
  %246 = load i32, i32* @ENOTSUPP, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %4, align 4
  br label %257

248:                                              ; preds = %244
  br label %252

249:                                              ; preds = %3
  %250 = load i32, i32* @ENOTSUPP, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %4, align 4
  br label %257

252:                                              ; preds = %248, %218, %200, %175, %147, %122, %106, %81, %56
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* %14, align 4
  %255 = call i64 @pinconf_to_config_packed(i32 %253, i32 %254)
  %256 = load i64*, i64** %7, align 8
  store i64 %255, i64* %256, align 8
  store i32 0, i32* %4, align 4
  br label %257

257:                                              ; preds = %252, %249, %245, %242, %216, %194, %172, %164, %155, %144, %130, %119, %114, %103, %100, %78, %75, %53, %50
  %258 = load i32, i32* %4, align 4
  ret i32 %258
}

declare dso_local %struct.mtk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @mtk_hw_get_value(%struct.mtk_pinctrl*, %struct.mtk_pin_desc*, i32, i32*) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
