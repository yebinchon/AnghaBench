; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_get_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_get_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_bank = type { i32, %struct.TYPE_2__*, %struct.rockchip_pinctrl* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rockchip_pinctrl = type { %struct.regmap*, %struct.regmap*, i32 }
%struct.regmap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IOMUX_UNROUTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"pin %d is unrouted\0A\00", align 1
@IOMUX_GPIO_ONLY = common dso_local global i32 0, align 4
@RK_FUNC_GPIO = common dso_local global i32 0, align 4
@IOMUX_SOURCE_PMU = common dso_local global i32 0, align 4
@IOMUX_WIDTH_4BIT = common dso_local global i32 0, align 4
@IOMUX_WIDTH_3BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pin_bank*, i32)* @rockchip_get_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_get_mux(%struct.rockchip_pin_bank* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rockchip_pin_bank*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rockchip_pinctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rockchip_pin_bank* %0, %struct.rockchip_pin_bank** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %4, align 8
  %16 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %15, i32 0, i32 2
  %17 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %16, align 8
  store %struct.rockchip_pinctrl* %17, %struct.rockchip_pinctrl** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sdiv i32 %18, 8
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %160

25:                                               ; preds = %2
  %26 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %4, align 8
  %27 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IOMUX_UNROUTED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %25
  %38 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %6, align 8
  %39 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %160

45:                                               ; preds = %25
  %46 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %4, align 8
  %47 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IOMUX_GPIO_ONLY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i32, i32* @RK_FUNC_GPIO, align 4
  store i32 %58, i32* %3, align 4
  br label %160

59:                                               ; preds = %45
  %60 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %4, align 8
  %61 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IOMUX_SOURCE_PMU, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %59
  %72 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %6, align 8
  %73 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %72, i32 0, i32 1
  %74 = load %struct.regmap*, %struct.regmap** %73, align 8
  br label %79

75:                                               ; preds = %59
  %76 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %6, align 8
  %77 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %76, i32 0, i32 0
  %78 = load %struct.regmap*, %struct.regmap** %77, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi %struct.regmap* [ %74, %71 ], [ %78, %75 ]
  store %struct.regmap* %80, %struct.regmap** %8, align 8
  %81 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %4, align 8
  %82 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %13, align 4
  %89 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %4, align 8
  %90 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @IOMUX_WIDTH_4BIT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %79
  %102 = load i32, i32* %5, align 4
  %103 = srem i32 %102, 8
  %104 = icmp sge i32 %103, 4
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 4
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %105, %101
  %109 = load i32, i32* %5, align 4
  %110 = srem i32 %109, 4
  %111 = mul nsw i32 %110, 4
  store i32 %111, i32* %14, align 4
  store i32 15, i32* %12, align 4
  br label %134

112:                                              ; preds = %79
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @IOMUX_WIDTH_3BIT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %112
  %118 = load i32, i32* %5, align 4
  %119 = srem i32 %118, 8
  %120 = icmp sge i32 %119, 5
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 4
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %121, %117
  %125 = load i32, i32* %5, align 4
  %126 = srem i32 %125, 8
  %127 = srem i32 %126, 5
  %128 = mul nsw i32 %127, 3
  store i32 %128, i32* %14, align 4
  store i32 7, i32* %12, align 4
  br label %133

129:                                              ; preds = %112
  %130 = load i32, i32* %5, align 4
  %131 = srem i32 %130, 8
  %132 = mul nsw i32 %131, 2
  store i32 %132, i32* %14, align 4
  store i32 3, i32* %12, align 4
  br label %133

133:                                              ; preds = %129, %124
  br label %134

134:                                              ; preds = %133, %108
  %135 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %4, align 8
  %136 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @BIT(i32 %138)
  %140 = and i32 %137, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %4, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @rockchip_get_recalced_mux(%struct.rockchip_pin_bank* %143, i32 %144, i32* %10, i32* %14, i32* %12)
  br label %146

146:                                              ; preds = %142, %134
  %147 = load %struct.regmap*, %struct.regmap** %8, align 8
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @regmap_read(%struct.regmap* %147, i32 %148, i32* %9)
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %3, align 4
  br label %160

154:                                              ; preds = %146
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %14, align 4
  %157 = lshr i32 %155, %156
  %158 = load i32, i32* %12, align 4
  %159 = and i32 %157, %158
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %154, %152, %57, %37, %22
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rockchip_get_recalced_mux(%struct.rockchip_pin_bank*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
