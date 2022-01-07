; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_bank = type { i32, i32, %struct.TYPE_2__*, i32, %struct.rockchip_pinctrl* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rockchip_pinctrl = type { %struct.regmap*, %struct.regmap*, i32 }
%struct.regmap = type { i32 }

@IOMUX_GPIO_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"setting mux of GPIO%d-%d to %d\0A\00", align 1
@IOMUX_SOURCE_PMU = common dso_local global i32 0, align 4
@IOMUX_WIDTH_4BIT = common dso_local global i32 0, align 4
@IOMUX_WIDTH_3BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pin_bank*, i32, i32)* @rockchip_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_set_mux(%struct.rockchip_pin_bank* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rockchip_pin_bank*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rockchip_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.regmap*, align 8
  store %struct.rockchip_pin_bank* %0, %struct.rockchip_pin_bank** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %22 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %23 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %22, i32 0, i32 4
  %24 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %23, align 8
  store %struct.rockchip_pinctrl* %24, %struct.rockchip_pinctrl** %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sdiv i32 %25, 8
  store i32 %26, i32* %9, align 4
  %27 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @rockchip_verify_mux(%struct.rockchip_pin_bank* %27, i32 %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %4, align 4
  br label %202

35:                                               ; preds = %3
  %36 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %37 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IOMUX_GPIO_ONLY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %202

48:                                               ; preds = %35
  %49 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %50 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %53 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i32 %56)
  %58 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %59 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IOMUX_SOURCE_PMU, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %48
  %70 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %71 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %70, i32 0, i32 1
  %72 = load %struct.regmap*, %struct.regmap** %71, align 8
  br label %77

73:                                               ; preds = %48
  %74 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %75 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %74, i32 0, i32 0
  %76 = load %struct.regmap*, %struct.regmap** %75, align 8
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi %struct.regmap* [ %72, %69 ], [ %76, %73 ]
  store %struct.regmap* %78, %struct.regmap** %10, align 8
  %79 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %80 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %14, align 4
  %87 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %88 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @IOMUX_WIDTH_4BIT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %77
  %100 = load i32, i32* %6, align 4
  %101 = srem i32 %100, 8
  %102 = icmp sge i32 %101, 4
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 4
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %103, %99
  %107 = load i32, i32* %6, align 4
  %108 = srem i32 %107, 4
  %109 = mul nsw i32 %108, 4
  store i32 %109, i32* %15, align 4
  store i32 15, i32* %13, align 4
  br label %132

110:                                              ; preds = %77
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @IOMUX_WIDTH_3BIT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %110
  %116 = load i32, i32* %6, align 4
  %117 = srem i32 %116, 8
  %118 = icmp sge i32 %117, 5
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 4
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %119, %115
  %123 = load i32, i32* %6, align 4
  %124 = srem i32 %123, 8
  %125 = srem i32 %124, 5
  %126 = mul nsw i32 %125, 3
  store i32 %126, i32* %15, align 4
  store i32 7, i32* %13, align 4
  br label %131

127:                                              ; preds = %110
  %128 = load i32, i32* %6, align 4
  %129 = srem i32 %128, 8
  %130 = mul nsw i32 %129, 2
  store i32 %130, i32* %15, align 4
  store i32 3, i32* %13, align 4
  br label %131

131:                                              ; preds = %127, %122
  br label %132

132:                                              ; preds = %131, %106
  %133 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %134 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @BIT(i32 %136)
  %138 = and i32 %135, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %132
  %141 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @rockchip_get_recalced_mux(%struct.rockchip_pin_bank* %141, i32 %142, i32* %11, i32* %15, i32* %13)
  br label %144

144:                                              ; preds = %140, %132
  %145 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %146 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @BIT(i32 %148)
  %150 = and i32 %147, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %180

152:                                              ; preds = %144
  %153 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i64 @rockchip_get_mux_route(%struct.rockchip_pin_bank* %153, i32 %154, i32 %155, i32* %18, i32* %19, i32* %20)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %152
  %159 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %159, %struct.regmap** %21, align 8
  %160 = load i32, i32* %18, align 4
  switch i32 %160, label %169 [
    i32 128, label %161
    i32 129, label %165
  ]

161:                                              ; preds = %158
  %162 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %163 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %162, i32 0, i32 1
  %164 = load %struct.regmap*, %struct.regmap** %163, align 8
  store %struct.regmap* %164, %struct.regmap** %21, align 8
  br label %169

165:                                              ; preds = %158
  %166 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %167 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %166, i32 0, i32 0
  %168 = load %struct.regmap*, %struct.regmap** %167, align 8
  store %struct.regmap* %168, %struct.regmap** %21, align 8
  br label %169

169:                                              ; preds = %158, %165, %161
  %170 = load %struct.regmap*, %struct.regmap** %21, align 8
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %20, align 4
  %173 = call i32 @regmap_write(%struct.regmap* %170, i32 %171, i32 %172)
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = load i32, i32* %12, align 4
  store i32 %177, i32* %4, align 4
  br label %202

178:                                              ; preds = %169
  br label %179

179:                                              ; preds = %178, %152
  br label %180

180:                                              ; preds = %179, %144
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %182, 16
  %184 = shl i32 %181, %183
  store i32 %184, i32* %16, align 4
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* %16, align 4
  %187 = ashr i32 %186, 16
  %188 = or i32 %185, %187
  store i32 %188, i32* %17, align 4
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* %13, align 4
  %191 = and i32 %189, %190
  %192 = load i32, i32* %15, align 4
  %193 = shl i32 %191, %192
  %194 = load i32, i32* %16, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %16, align 4
  %196 = load %struct.regmap*, %struct.regmap** %10, align 8
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* %16, align 4
  %200 = call i32 @regmap_update_bits(%struct.regmap* %196, i32 %197, i32 %198, i32 %199)
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %12, align 4
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %180, %176, %47, %33
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @rockchip_verify_mux(%struct.rockchip_pin_bank*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rockchip_get_recalced_mux(%struct.rockchip_pin_bank*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @rockchip_get_mux_route(%struct.rockchip_pin_bank*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
