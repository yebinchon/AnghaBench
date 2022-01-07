; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-axp209.c_axp20x_build_funcs_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-axp209.c_axp20x_build_funcs_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.axp20x_pctl = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i32, i32*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"gpio_out\00", align 1
@AXP20X_FUNC_GPIO_OUT = common dso_local global i64 0, align 8
@AXP20X_MUX_GPIO_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"gpio_in\00", align 1
@AXP20X_FUNC_GPIO_IN = common dso_local global i64 0, align 8
@AXP20X_MUX_GPIO_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ldo\00", align 1
@AXP20X_FUNC_LDO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@AXP20X_FUNC_ADC = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axp20x_build_funcs_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_build_funcs_groups(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.axp20x_pctl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call %struct.axp20x_pctl* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.axp20x_pctl* %10, %struct.axp20x_pctl** %4, align 8
  %11 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %12 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %17 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i64, i64* @AXP20X_FUNC_GPIO_OUT, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = load i32, i32* @AXP20X_MUX_GPIO_OUT, align 4
  %23 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %24 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load i64, i64* @AXP20X_FUNC_GPIO_OUT, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  store i32 %22, i32* %28, align 8
  %29 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %30 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i64, i64* @AXP20X_FUNC_GPIO_IN, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  %35 = load i32, i32* @AXP20X_MUX_GPIO_IN, align 4
  %36 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %37 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i64, i64* @AXP20X_FUNC_GPIO_IN, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  store i32 %35, i32* %41, align 8
  %42 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %43 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i64, i64* @AXP20X_FUNC_LDO, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %47, align 8
  %48 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %49 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i64, i64* @AXP20X_FUNC_ADC, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %53, align 8
  %54 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %55 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %60 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i64, i64* @AXP20X_FUNC_ADC, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  store i32 %58, i32* %64, align 8
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %134, %1
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @AXP20X_FUNC_GPIO_IN, align 8
  %69 = icmp ule i64 %67, %68
  br i1 %69, label %70, label %137

70:                                               ; preds = %65
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %73 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 %71, i32* %78, align 8
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i32* @devm_kcalloc(i32* %80, i32 %81, i32 8, i32 %82)
  %84 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %85 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  store i32* %83, i32** %90, align 8
  %91 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %92 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %70
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %186

103:                                              ; preds = %70
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %130, %103
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %133

108:                                              ; preds = %104
  %109 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %110 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %120 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %119, i32 0, i32 1
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %118, i32* %129, align 4
  br label %130

130:                                              ; preds = %108
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %104

133:                                              ; preds = %104
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %5, align 4
  br label %65

137:                                              ; preds = %65
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %141 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %147 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %146, i32 0, i32 1
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = load i64, i64* @AXP20X_FUNC_LDO, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i64 %149
  %151 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %152 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %151, i32 0, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = call i32 @axp20x_funcs_groups_from_mask(i32* %139, i32 %144, i32 %145, %struct.TYPE_5__* %150, %struct.TYPE_6__* %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %137
  %160 = load i32, i32* %6, align 4
  store i32 %160, i32* %2, align 4
  br label %186

161:                                              ; preds = %137
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %165 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %164, i32 0, i32 0
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %171 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %170, i32 0, i32 1
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = load i64, i64* @AXP20X_FUNC_ADC, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i64 %173
  %175 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %4, align 8
  %176 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %175, i32 0, i32 0
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = call i32 @axp20x_funcs_groups_from_mask(i32* %163, i32 %168, i32 %169, %struct.TYPE_5__* %174, %struct.TYPE_6__* %179)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %161
  %184 = load i32, i32* %6, align 4
  store i32 %184, i32* %2, align 4
  br label %186

185:                                              ; preds = %161
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %185, %183, %159, %100
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local %struct.axp20x_pctl* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @axp20x_funcs_groups_from_mask(i32*, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
