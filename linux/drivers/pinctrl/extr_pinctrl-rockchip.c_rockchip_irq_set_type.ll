; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { i64, %struct.rockchip_pin_bank* }
%struct.rockchip_pin_bank = type { i32, i32, i32, i64 }

@RK_FUNC_GPIO = common dso_local global i32 0, align 4
@GPIO_SWPORT_DDR = common dso_local global i64 0, align 8
@handle_edge_irq = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@GPIO_INTTYPE_LEVEL = common dso_local global i64 0, align 8
@GPIO_INT_POLARITY = common dso_local global i64 0, align 8
@GPIO_EXT_PORT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @rockchip_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_chip_generic*, align 8
  %7 = alloca %struct.rockchip_pin_bank*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %15 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %14)
  store %struct.irq_chip_generic* %15, %struct.irq_chip_generic** %6, align 8
  %16 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %17 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %16, i32 0, i32 1
  %18 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %17, align 8
  store %struct.rockchip_pin_bank* %18, %struct.rockchip_pin_bank** %7, align 8
  %19 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %20 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BIT(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %24 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %25 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RK_FUNC_GPIO, align 4
  %28 = call i32 @rockchip_set_mux(%struct.rockchip_pin_bank* %23, i32 %26, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %3, align 4
  br label %217

33:                                               ; preds = %2
  %34 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %35 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clk_enable(i32 %36)
  %38 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %39 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %38, i32 0, i32 2
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @raw_spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %43 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @GPIO_SWPORT_DDR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readl_relaxed(i64 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %54 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @GPIO_SWPORT_DDR, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel_relaxed(i32 %52, i64 %57)
  %59 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %60 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %59, i32 0, i32 2
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @raw_spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, 132
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %33
  %67 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %68 = load i32, i32* @handle_edge_irq, align 4
  %69 = call i32 @irq_set_handler_locked(%struct.irq_data* %67, i32 %68)
  br label %74

70:                                               ; preds = %33
  %71 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %72 = load i32, i32* @handle_level_irq, align 4
  %73 = call i32 @irq_set_handler_locked(%struct.irq_data* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %66
  %75 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %76 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %75, i32 0, i32 2
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @raw_spin_lock_irqsave(i32* %76, i64 %77)
  %79 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %80 = call i32 @irq_gc_lock(%struct.irq_chip_generic* %79)
  %81 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %82 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @GPIO_INTTYPE_LEVEL, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @readl_relaxed(i64 %85)
  store i32 %86, i32* %10, align 4
  %87 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %88 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @GPIO_INT_POLARITY, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @readl_relaxed(i64 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %5, align 4
  switch i32 %93, label %179 [
    i32 132, label %94
    i32 130, label %123
    i32 131, label %136
    i32 129, label %150
    i32 128, label %164
  ]

94:                                               ; preds = %74
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %97 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %10, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %10, align 4
  %103 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %104 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @GPIO_EXT_PORT, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @readl(i64 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %8, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %94
  %114 = load i32, i32* %8, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %9, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %9, align 4
  br label %122

118:                                              ; preds = %94
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %118, %113
  br label %192

123:                                              ; preds = %74
  %124 = load i32, i32* %8, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %127 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %9, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %9, align 4
  br label %192

136:                                              ; preds = %74
  %137 = load i32, i32* %8, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %140 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %10, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %8, align 4
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %9, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %9, align 4
  br label %192

150:                                              ; preds = %74
  %151 = load i32, i32* %8, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %154 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, %152
  store i32 %156, i32* %154, align 8
  %157 = load i32, i32* %8, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %10, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %9, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %9, align 4
  br label %192

164:                                              ; preds = %74
  %165 = load i32, i32* %8, align 4
  %166 = xor i32 %165, -1
  %167 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %168 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = and i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load i32, i32* %8, align 4
  %172 = xor i32 %171, -1
  %173 = load i32, i32* %10, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %8, align 4
  %176 = xor i32 %175, -1
  %177 = load i32, i32* %9, align 4
  %178 = and i32 %177, %176
  store i32 %178, i32* %9, align 4
  br label %192

179:                                              ; preds = %74
  %180 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %181 = call i32 @irq_gc_unlock(%struct.irq_chip_generic* %180)
  %182 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %183 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %182, i32 0, i32 2
  %184 = load i64, i64* %12, align 8
  %185 = call i32 @raw_spin_unlock_irqrestore(i32* %183, i64 %184)
  %186 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %187 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @clk_disable(i32 %188)
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %3, align 4
  br label %217

192:                                              ; preds = %164, %150, %136, %123, %122
  %193 = load i32, i32* %10, align 4
  %194 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %195 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @GPIO_INTTYPE_LEVEL, align 8
  %198 = add nsw i64 %196, %197
  %199 = call i32 @writel_relaxed(i32 %193, i64 %198)
  %200 = load i32, i32* %9, align 4
  %201 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %202 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @GPIO_INT_POLARITY, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i32 @writel_relaxed(i32 %200, i64 %205)
  %207 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %208 = call i32 @irq_gc_unlock(%struct.irq_chip_generic* %207)
  %209 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %210 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %209, i32 0, i32 2
  %211 = load i64, i64* %12, align 8
  %212 = call i32 @raw_spin_unlock_irqrestore(i32* %210, i64 %211)
  %213 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %7, align 8
  %214 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @clk_disable(i32 %215)
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %192, %179, %31
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rockchip_set_mux(%struct.rockchip_pin_bank*, i32, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

declare dso_local i32 @irq_gc_lock(%struct.irq_chip_generic*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @irq_gc_unlock(%struct.irq_chip_generic*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
