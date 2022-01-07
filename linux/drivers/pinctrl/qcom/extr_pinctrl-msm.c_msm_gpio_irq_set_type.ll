; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.gpio_chip = type { i32 }
%struct.msm_pinctrl = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.msm_pingroup* }
%struct.msm_pingroup = type { i32, i32, i32, i32, i32, i32 }

@handle_level_irq = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @msm_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca %struct.msm_pinctrl*, align 8
  %7 = alloca %struct.msm_pingroup*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %11 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %10)
  store %struct.gpio_chip* %11, %struct.gpio_chip** %5, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %13 = call %struct.msm_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.msm_pinctrl* %13, %struct.msm_pinctrl** %6, align 8
  %14 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %15 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.msm_pingroup*, %struct.msm_pingroup** %17, align 8
  %19 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %20 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %18, i64 %21
  store %struct.msm_pingroup* %22, %struct.msm_pingroup** %7, align 8
  %23 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %24 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %23, i32 0, i32 0
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @raw_spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %28 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %42

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 132
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %36 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %39 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @set_bit(i64 %37, i32 %40)
  br label %50

42:                                               ; preds = %31, %2
  %43 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %44 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %47 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clear_bit(i64 %45, i32 %48)
  br label %50

50:                                               ; preds = %42, %34
  %51 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %52 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %53 = call i32 @msm_readl_intr_target(%struct.msm_pinctrl* %51, %struct.msm_pingroup* %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %55 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 7, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %62 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %65 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %63, %66
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %72 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %73 = call i32 @msm_writel_intr_target(i32 %70, %struct.msm_pinctrl* %71, %struct.msm_pingroup* %72)
  %74 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %75 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %76 = call i32 @msm_readl_intr_cfg(%struct.msm_pinctrl* %74, %struct.msm_pingroup* %75)
  store i32 %76, i32* %9, align 4
  %77 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %78 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @BIT(i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %84 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %151

87:                                               ; preds = %50
  %88 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %89 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 3, %90
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %96 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 1, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %9, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %4, align 4
  switch i32 %102, label %150 [
    i32 130, label %103
    i32 131, label %116
    i32 132, label %129
    i32 128, label %142
    i32 129, label %143
  ]

103:                                              ; preds = %87
  %104 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %105 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 1, %106
  %108 = load i32, i32* %9, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %9, align 4
  %110 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %111 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @BIT(i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %9, align 4
  br label %150

116:                                              ; preds = %87
  %117 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %118 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 2, %119
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  %123 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %124 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @BIT(i32 %125)
  %127 = load i32, i32* %9, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %9, align 4
  br label %150

129:                                              ; preds = %87
  %130 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %131 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 3, %132
  %134 = load i32, i32* %9, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %9, align 4
  %136 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %137 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @BIT(i32 %138)
  %140 = load i32, i32* %9, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %9, align 4
  br label %150

142:                                              ; preds = %87
  br label %150

143:                                              ; preds = %87
  %144 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %145 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @BIT(i32 %146)
  %148 = load i32, i32* %9, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %9, align 4
  br label %150

150:                                              ; preds = %87, %143, %142, %129, %116, %103
  br label %217

151:                                              ; preds = %50
  %152 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %153 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %214

156:                                              ; preds = %151
  %157 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %158 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = shl i32 1, %159
  %161 = xor i32 %160, -1
  %162 = load i32, i32* %9, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %9, align 4
  %164 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %165 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 1, %166
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %9, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %4, align 4
  switch i32 %171, label %213 [
    i32 130, label %172
    i32 131, label %185
    i32 132, label %192
    i32 128, label %205
    i32 129, label %206
  ]

172:                                              ; preds = %156
  %173 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %174 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @BIT(i32 %175)
  %177 = load i32, i32* %9, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %9, align 4
  %179 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %180 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @BIT(i32 %181)
  %183 = load i32, i32* %9, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %9, align 4
  br label %213

185:                                              ; preds = %156
  %186 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %187 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @BIT(i32 %188)
  %190 = load i32, i32* %9, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %9, align 4
  br label %213

192:                                              ; preds = %156
  %193 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %194 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @BIT(i32 %195)
  %197 = load i32, i32* %9, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %9, align 4
  %199 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %200 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @BIT(i32 %201)
  %203 = load i32, i32* %9, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %9, align 4
  br label %213

205:                                              ; preds = %156
  br label %213

206:                                              ; preds = %156
  %207 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %208 = getelementptr inbounds %struct.msm_pingroup, %struct.msm_pingroup* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @BIT(i32 %209)
  %211 = load i32, i32* %9, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %9, align 4
  br label %213

213:                                              ; preds = %156, %206, %205, %192, %185, %172
  br label %216

214:                                              ; preds = %151
  %215 = call i32 (...) @BUG()
  br label %216

216:                                              ; preds = %214, %213
  br label %217

217:                                              ; preds = %216, %150
  %218 = load i32, i32* %9, align 4
  %219 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %220 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %221 = call i32 @msm_writel_intr_cfg(i32 %218, %struct.msm_pinctrl* %219, %struct.msm_pingroup* %220)
  %222 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %223 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %226 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i64 @test_bit(i64 %224, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %217
  %231 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %232 = load %struct.msm_pingroup*, %struct.msm_pingroup** %7, align 8
  %233 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %234 = call i32 @msm_gpio_update_dual_edge_pos(%struct.msm_pinctrl* %231, %struct.msm_pingroup* %232, %struct.irq_data* %233)
  br label %235

235:                                              ; preds = %230, %217
  %236 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %237 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %236, i32 0, i32 0
  %238 = load i64, i64* %8, align 8
  %239 = call i32 @raw_spin_unlock_irqrestore(i32* %237, i64 %238)
  %240 = load i32, i32* %4, align 4
  %241 = and i32 %240, 129
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %235
  %244 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %245 = load i32, i32* @handle_level_irq, align 4
  %246 = call i32 @irq_set_handler_locked(%struct.irq_data* %244, i32 %245)
  br label %256

247:                                              ; preds = %235
  %248 = load i32, i32* %4, align 4
  %249 = and i32 %248, 131
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %247
  %252 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %253 = load i32, i32* @handle_edge_irq, align 4
  %254 = call i32 @irq_set_handler_locked(%struct.irq_data* %252, i32 %253)
  br label %255

255:                                              ; preds = %251, %247
  br label %256

256:                                              ; preds = %255, %243
  ret i32 0
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.msm_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @msm_readl_intr_target(%struct.msm_pinctrl*, %struct.msm_pingroup*) #1

declare dso_local i32 @msm_writel_intr_target(i32, %struct.msm_pinctrl*, %struct.msm_pingroup*) #1

declare dso_local i32 @msm_readl_intr_cfg(%struct.msm_pinctrl*, %struct.msm_pingroup*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @msm_writel_intr_cfg(i32, %struct.msm_pinctrl*, %struct.msm_pingroup*) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i32 @msm_gpio_update_dual_edge_pos(%struct.msm_pinctrl*, %struct.msm_pingroup*, %struct.irq_data*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
