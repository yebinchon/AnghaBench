; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-sx150x.c_sx150x_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-sx150x.c_sx150x_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.sx150x_pinctrl = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@SX150X_789 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @sx150x_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx150x_pinconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sx150x_pinctrl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %16 = call %struct.sx150x_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %15)
  store %struct.sx150x_pinctrl* %16, %struct.sx150x_pinctrl** %10, align 8
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %213, %4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %216

21:                                               ; preds = %17
  %22 = load i64*, i64** %8, align 8
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @pinconf_to_config_param(i64 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i64*, i64** %8, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @pinconf_to_config_argument(i64 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @sx150x_pin_is_oscio(%struct.sx150x_pinctrl* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %21
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %43 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %42, i32 0, i32 0
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @sx150x_gpio_direction_output(i32* %43, i32 %44, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %5, align 4
  br label %217

51:                                               ; preds = %41
  br label %213

52:                                               ; preds = %38
  %53 = load i32, i32* @ENOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %217

55:                                               ; preds = %21
  %56 = load i32, i32* %11, align 4
  switch i32 %56, label %209 [
    i32 132, label %57
    i32 134, label %57
    i32 131, label %90
    i32 133, label %109
    i32 130, label %128
    i32 129, label %165
    i32 128, label %198
  ]

57:                                               ; preds = %55, %55
  %58 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %59 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %62 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @BIT(i32 %66)
  %68 = call i32 @regmap_write_bits(i32 %60, i32 %65, i32 %67, i32 0)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %5, align 4
  br label %217

73:                                               ; preds = %57
  %74 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %75 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %78 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @BIT(i32 %82)
  %84 = call i32 @regmap_write_bits(i32 %76, i32 %81, i32 %83, i32 0)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %73
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %5, align 4
  br label %217

89:                                               ; preds = %73
  br label %212

90:                                               ; preds = %55
  %91 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %92 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %95 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @BIT(i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @BIT(i32 %101)
  %103 = call i32 @regmap_write_bits(i32 %93, i32 %98, i32 %100, i32 %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %90
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %5, align 4
  br label %217

108:                                              ; preds = %90
  br label %212

109:                                              ; preds = %55
  %110 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %111 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %114 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %113, i32 0, i32 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @BIT(i32 %118)
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @BIT(i32 %120)
  %122 = call i32 @regmap_write_bits(i32 %112, i32 %117, i32 %119, i32 %121)
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %109
  %126 = load i32, i32* %14, align 4
  store i32 %126, i32* %5, align 4
  br label %217

127:                                              ; preds = %109
  br label %212

128:                                              ; preds = %55
  %129 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %130 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %129, i32 0, i32 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @SX150X_789, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %141, label %136

136:                                              ; preds = %128
  %137 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i64 @sx150x_pin_is_oscio(%struct.sx150x_pinctrl* %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136, %128
  %142 = load i32, i32* @ENOTSUPP, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %5, align 4
  br label %217

144:                                              ; preds = %136
  %145 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %146 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %149 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %148, i32 0, i32 1
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @BIT(i32 %155)
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @BIT(i32 %157)
  %159 = call i32 @regmap_write_bits(i32 %147, i32 %154, i32 %156, i32 %158)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %144
  %163 = load i32, i32* %14, align 4
  store i32 %163, i32* %5, align 4
  br label %217

164:                                              ; preds = %144
  br label %212

165:                                              ; preds = %55
  %166 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %167 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %166, i32 0, i32 1
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @SX150X_789, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %178, label %173

173:                                              ; preds = %165
  %174 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %175 = load i32, i32* %7, align 4
  %176 = call i64 @sx150x_pin_is_oscio(%struct.sx150x_pinctrl* %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173, %165
  store i32 0, i32* %5, align 4
  br label %217

179:                                              ; preds = %173
  %180 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %181 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %184 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %183, i32 0, i32 1
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @BIT(i32 %190)
  %192 = call i32 @regmap_write_bits(i32 %182, i32 %189, i32 %191, i32 0)
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %14, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %179
  %196 = load i32, i32* %14, align 4
  store i32 %196, i32* %5, align 4
  br label %217

197:                                              ; preds = %179
  br label %212

198:                                              ; preds = %55
  %199 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %10, align 8
  %200 = getelementptr inbounds %struct.sx150x_pinctrl, %struct.sx150x_pinctrl* %199, i32 0, i32 0
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @sx150x_gpio_direction_output(i32* %200, i32 %201, i32 %202)
  store i32 %203, i32* %14, align 4
  %204 = load i32, i32* %14, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %198
  %207 = load i32, i32* %14, align 4
  store i32 %207, i32* %5, align 4
  br label %217

208:                                              ; preds = %198
  br label %212

209:                                              ; preds = %55
  %210 = load i32, i32* @ENOTSUPP, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %5, align 4
  br label %217

212:                                              ; preds = %208, %197, %164, %127, %108, %89
  br label %213

213:                                              ; preds = %212, %51
  %214 = load i32, i32* %13, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %13, align 4
  br label %17

216:                                              ; preds = %17
  store i32 0, i32* %5, align 4
  br label %217

217:                                              ; preds = %216, %209, %206, %195, %178, %162, %141, %125, %106, %87, %71, %52, %49
  %218 = load i32, i32* %5, align 4
  ret i32 %218
}

declare dso_local %struct.sx150x_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i64 @sx150x_pin_is_oscio(%struct.sx150x_pinctrl*, i32) #1

declare dso_local i32 @sx150x_gpio_direction_output(i32*, i32, i32) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
