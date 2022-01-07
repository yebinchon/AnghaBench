; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c___bcm2835_gpio_irq_set_type_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c___bcm2835_gpio_irq_set_type_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_pinctrl = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_pinctrl*, i32, i32)* @__bcm2835_gpio_irq_set_type_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bcm2835_gpio_irq_set_type_enabled(%struct.bcm2835_pinctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm2835_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bcm2835_pinctrl* %0, %struct.bcm2835_pinctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %239 [
    i32 128, label %9
    i32 131, label %31
    i32 132, label %83
    i32 133, label %135
    i32 130, label %214
    i32 129, label %214
  ]

9:                                                ; preds = %3
  %10 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %11 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %9
  %20 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %20, i32 %21, i32 0)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %25 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %23, i32* %29, align 4
  br label %30

30:                                               ; preds = %19, %9
  br label %242

31:                                               ; preds = %3
  %32 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %33 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 133
  br i1 %39, label %40, label %57

40:                                               ; preds = %31
  %41 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %42 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 132, i32* %46, align 4
  %47 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %47, i32 %48, i32 0)
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %52 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  br label %82

57:                                               ; preds = %31
  %58 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %59 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %57
  %68 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %68, i32 %69, i32 0)
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %73 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  %78 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %78, i32 %79, i32 1)
  br label %81

81:                                               ; preds = %67, %57
  br label %82

82:                                               ; preds = %81, %40
  br label %242

83:                                               ; preds = %3
  %84 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %85 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 133
  br i1 %91, label %92, label %109

92:                                               ; preds = %83
  %93 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %94 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 131, i32* %98, align 4
  %99 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %99, i32 %100, i32 0)
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %104 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  br label %134

109:                                              ; preds = %83
  %110 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %111 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %109
  %120 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %120, i32 %121, i32 0)
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %125 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %123, i32* %129, align 4
  %130 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %130, i32 %131, i32 1)
  br label %133

133:                                              ; preds = %119, %109
  br label %134

134:                                              ; preds = %133, %92
  br label %242

135:                                              ; preds = %3
  %136 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %137 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 131
  br i1 %143, label %144, label %161

144:                                              ; preds = %135
  %145 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %146 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 132, i32* %150, align 4
  %151 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %151, i32 %152, i32 1)
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %156 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 %154, i32* %160, align 4
  br label %213

161:                                              ; preds = %135
  %162 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %163 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 132
  br i1 %169, label %170, label %187

170:                                              ; preds = %161
  %171 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %172 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 131, i32* %176, align 4
  %177 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %177, i32 %178, i32 1)
  %180 = load i32, i32* %7, align 4
  %181 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %182 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %180, i32* %186, align 4
  br label %212

187:                                              ; preds = %161
  %188 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %189 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %211

197:                                              ; preds = %187
  %198 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %198, i32 %199, i32 0)
  %201 = load i32, i32* %7, align 4
  %202 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %203 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  store i32 %201, i32* %207, align 4
  %208 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %209 = load i32, i32* %6, align 4
  %210 = call i32 @bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %208, i32 %209, i32 1)
  br label %211

211:                                              ; preds = %197, %187
  br label %212

212:                                              ; preds = %211, %170
  br label %213

213:                                              ; preds = %212, %144
  br label %242

214:                                              ; preds = %3, %3
  %215 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %216 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %7, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %238

224:                                              ; preds = %214
  %225 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %226 = load i32, i32* %6, align 4
  %227 = call i32 @bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %225, i32 %226, i32 0)
  %228 = load i32, i32* %7, align 4
  %229 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %230 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %6, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32 %228, i32* %234, align 4
  %235 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %5, align 8
  %236 = load i32, i32* %6, align 4
  %237 = call i32 @bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %235, i32 %236, i32 1)
  br label %238

238:                                              ; preds = %224, %214
  br label %242

239:                                              ; preds = %3
  %240 = load i32, i32* @EINVAL, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %4, align 4
  br label %243

242:                                              ; preds = %238, %213, %134, %82, %30
  store i32 0, i32* %4, align 4
  br label %243

243:                                              ; preds = %242, %239
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local i32 @bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
