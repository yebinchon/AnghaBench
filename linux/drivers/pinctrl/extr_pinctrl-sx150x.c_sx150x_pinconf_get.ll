; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-sx150x.c_sx150x_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-sx150x.c_sx150x_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.sx150x_pinctrl = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@SX150X_789 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @sx150x_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx150x_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.sx150x_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %14 = call %struct.sx150x_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.sx150x_pinctrl* %14, %struct.sx150x_pinctrl** %8, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @pinconf_to_config_param(i64 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @sx150x_pin_is_oscio(%struct.sx150x_pinctrl* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %69

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %65 [
    i32 129, label %24
    i32 128, label %24
  ]

24:                                               ; preds = %22, %22
  %25 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %8, align 8
  %26 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %8, align 8
  %29 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @regmap_read(i32 %27, i32 %34, i32* %12)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %231

40:                                               ; preds = %24
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 129
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* %12, align 4
  %45 = and i32 %44, 31
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  store i32 %48, i32* %11, align 4
  br label %64

49:                                               ; preds = %40
  %50 = load i32, i32* %12, align 4
  %51 = and i32 %50, 31
  %52 = icmp eq i32 %51, 31
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %11, align 4
  br label %63

54:                                               ; preds = %49
  %55 = load i32, i32* %12, align 4
  %56 = and i32 %55, 31
  %57 = icmp eq i32 %56, 16
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %11, align 4
  br label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %231

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %53
  br label %64

64:                                               ; preds = %63, %43
  br label %68

65:                                               ; preds = %22
  %66 = load i32, i32* @ENOTSUPP, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %231

68:                                               ; preds = %64
  br label %226

69:                                               ; preds = %3
  %70 = load i32, i32* %9, align 4
  switch i32 %70, label %222 [
    i32 132, label %71
    i32 131, label %96
    i32 130, label %121
    i32 129, label %159
    i32 128, label %196
  ]

71:                                               ; preds = %69
  %72 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %8, align 8
  %73 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %8, align 8
  %76 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @regmap_read(i32 %74, i32 %79, i32* %12)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @BIT(i32 %81)
  %83 = load i32, i32* %12, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %71
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %4, align 4
  br label %231

89:                                               ; preds = %71
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %231

95:                                               ; preds = %89
  store i32 1, i32* %11, align 4
  br label %225

96:                                               ; preds = %69
  %97 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %8, align 8
  %98 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %8, align 8
  %101 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @regmap_read(i32 %99, i32 %104, i32* %12)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @BIT(i32 %106)
  %108 = load i32, i32* %12, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %96
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %4, align 4
  br label %231

114:                                              ; preds = %96
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %231

120:                                              ; preds = %114
  store i32 1, i32* %11, align 4
  br label %225

121:                                              ; preds = %69
  %122 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %8, align 8
  %123 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %122, i32 0, i32 1
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @SX150X_789, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load i32, i32* @ENOTSUPP, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %231

132:                                              ; preds = %121
  %133 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %8, align 8
  %134 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %8, align 8
  %137 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %136, i32 0, i32 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @regmap_read(i32 %135, i32 %142, i32* %12)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @BIT(i32 %144)
  %146 = load i32, i32* %12, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %132
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %4, align 4
  br label %231

152:                                              ; preds = %132
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %231

158:                                              ; preds = %152
  store i32 1, i32* %11, align 4
  br label %225

159:                                              ; preds = %69
  %160 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %8, align 8
  %161 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %160, i32 0, i32 1
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @SX150X_789, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  store i32 1, i32* %11, align 4
  br label %195

168:                                              ; preds = %159
  %169 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %8, align 8
  %170 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %8, align 8
  %173 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %172, i32 0, i32 1
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @regmap_read(i32 %171, i32 %178, i32* %12)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @BIT(i32 %180)
  %182 = load i32, i32* %12, align 4
  %183 = and i32 %182, %181
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %168
  %187 = load i32, i32* %10, align 4
  store i32 %187, i32* %4, align 4
  br label %231

188:                                              ; preds = %168
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %4, align 4
  br label %231

194:                                              ; preds = %188
  store i32 1, i32* %11, align 4
  br label %195

195:                                              ; preds = %194, %167
  br label %225

196:                                              ; preds = %69
  %197 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %8, align 8
  %198 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %197, i32 0, i32 0
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @sx150x_gpio_get_direction(i32* %198, i32 %199)
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %10, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %196
  %204 = load i32, i32* %10, align 4
  store i32 %204, i32* %4, align 4
  br label %231

205:                                              ; preds = %196
  %206 = load i32, i32* %10, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %4, align 4
  br label %231

211:                                              ; preds = %205
  %212 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %8, align 8
  %213 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %212, i32 0, i32 0
  %214 = load i32, i32* %6, align 4
  %215 = call i32 @sx150x_gpio_get(i32* %213, i32 %214)
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %10, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %211
  %219 = load i32, i32* %10, align 4
  store i32 %219, i32* %4, align 4
  br label %231

220:                                              ; preds = %211
  %221 = load i32, i32* %10, align 4
  store i32 %221, i32* %11, align 4
  br label %225

222:                                              ; preds = %69
  %223 = load i32, i32* @ENOTSUPP, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %4, align 4
  br label %231

225:                                              ; preds = %220, %195, %158, %120, %95
  br label %226

226:                                              ; preds = %225, %68
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* %11, align 4
  %229 = call i64 @pinconf_to_config_packed(i32 %227, i32 %228)
  %230 = load i64*, i64** %7, align 8
  store i64 %229, i64* %230, align 8
  store i32 0, i32* %4, align 4
  br label %231

231:                                              ; preds = %226, %222, %218, %208, %203, %191, %186, %155, %150, %129, %117, %112, %92, %87, %65, %59, %38
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local %struct.sx150x_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i64 @sx150x_pin_is_oscio(%struct.sx150x_pinctrl*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @sx150x_gpio_get_direction(i32*, i32) #1

declare dso_local i32 @sx150x_gpio_get(i32*, i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
