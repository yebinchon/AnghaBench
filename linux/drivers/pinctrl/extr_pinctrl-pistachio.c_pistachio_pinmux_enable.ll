; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pistachio.c_pistachio_pinmux_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pistachio.c_pistachio_pinmux_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pistachio_pinctrl = type { i32, i32, %struct.pistachio_function*, %struct.pistachio_pin_group* }
%struct.pistachio_function = type { i32*, i32, i64, i32, i32 }
%struct.pistachio_pin_group = type { i64, i32*, i32, i32, i64 }
%struct.pinctrl_gpio_range = type { i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Cannot mux pin %u to function %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @pistachio_pinmux_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pistachio_pinmux_enable(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pistachio_pinctrl*, align 8
  %9 = alloca %struct.pistachio_pin_group*, align 8
  %10 = alloca %struct.pistachio_function*, align 8
  %11 = alloca %struct.pinctrl_gpio_range*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = call %struct.pistachio_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.pistachio_pinctrl* %15, %struct.pistachio_pinctrl** %8, align 8
  %16 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %8, align 8
  %17 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %16, i32 0, i32 3
  %18 = load %struct.pistachio_pin_group*, %struct.pistachio_pin_group** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.pistachio_pin_group, %struct.pistachio_pin_group* %18, i64 %20
  store %struct.pistachio_pin_group* %21, %struct.pistachio_pin_group** %9, align 8
  %22 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %8, align 8
  %23 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %22, i32 0, i32 2
  %24 = load %struct.pistachio_function*, %struct.pistachio_function** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pistachio_function, %struct.pistachio_function* %24, i64 %26
  store %struct.pistachio_function* %27, %struct.pistachio_function** %10, align 8
  %28 = load %struct.pistachio_pin_group*, %struct.pistachio_pin_group** %9, align 8
  %29 = getelementptr inbounds %struct.pistachio_pin_group, %struct.pistachio_pin_group* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %168

32:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.pistachio_pin_group*, %struct.pistachio_pin_group** %9, align 8
  %36 = getelementptr inbounds %struct.pistachio_pin_group, %struct.pistachio_pin_group* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @ARRAY_SIZE(i32* %37)
  %39 = icmp ult i32 %34, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load %struct.pistachio_pin_group*, %struct.pistachio_pin_group** %9, align 8
  %42 = getelementptr inbounds %struct.pistachio_pin_group, %struct.pistachio_pin_group* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %55

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %12, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %33

55:                                               ; preds = %50, %33
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.pistachio_pin_group*, %struct.pistachio_pin_group** %9, align 8
  %58 = getelementptr inbounds %struct.pistachio_pin_group, %struct.pistachio_pin_group* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @ARRAY_SIZE(i32* %59)
  %61 = icmp eq i32 %56, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %8, align 8
  %64 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %192

71:                                               ; preds = %55
  %72 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %8, align 8
  %73 = load %struct.pistachio_pin_group*, %struct.pistachio_pin_group** %9, align 8
  %74 = getelementptr inbounds %struct.pistachio_pin_group, %struct.pistachio_pin_group* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @pctl_readl(%struct.pistachio_pinctrl* %72, i64 %75)
  store i32 %76, i32* %13, align 4
  %77 = load %struct.pistachio_pin_group*, %struct.pistachio_pin_group** %9, align 8
  %78 = getelementptr inbounds %struct.pistachio_pin_group, %struct.pistachio_pin_group* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.pistachio_pin_group*, %struct.pistachio_pin_group** %9, align 8
  %81 = getelementptr inbounds %struct.pistachio_pin_group, %struct.pistachio_pin_group* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %79, %82
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %13, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.pistachio_pin_group*, %struct.pistachio_pin_group** %9, align 8
  %89 = getelementptr inbounds %struct.pistachio_pin_group, %struct.pistachio_pin_group* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %87, %90
  %92 = load i32, i32* %13, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %13, align 4
  %94 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %8, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.pistachio_pin_group*, %struct.pistachio_pin_group** %9, align 8
  %97 = getelementptr inbounds %struct.pistachio_pin_group, %struct.pistachio_pin_group* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @pctl_writel(%struct.pistachio_pinctrl* %94, i32 %95, i64 %98)
  %100 = load %struct.pistachio_function*, %struct.pistachio_function** %10, align 8
  %101 = getelementptr inbounds %struct.pistachio_function, %struct.pistachio_function* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %167

104:                                              ; preds = %71
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %123, %104
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.pistachio_function*, %struct.pistachio_function** %10, align 8
  %108 = getelementptr inbounds %struct.pistachio_function, %struct.pistachio_function* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp ult i32 %106, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %105
  %112 = load %struct.pistachio_function*, %struct.pistachio_function** %10, align 8
  %113 = getelementptr inbounds %struct.pistachio_function, %struct.pistachio_function* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %126

122:                                              ; preds = %111
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %12, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %12, align 4
  br label %105

126:                                              ; preds = %121, %105
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.pistachio_function*, %struct.pistachio_function** %10, align 8
  %129 = getelementptr inbounds %struct.pistachio_function, %struct.pistachio_function* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %127, %130
  %132 = zext i1 %131 to i32
  %133 = call i64 @WARN_ON(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %4, align 4
  br label %192

138:                                              ; preds = %126
  %139 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %8, align 8
  %140 = load %struct.pistachio_function*, %struct.pistachio_function** %10, align 8
  %141 = getelementptr inbounds %struct.pistachio_function, %struct.pistachio_function* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @pctl_readl(%struct.pistachio_pinctrl* %139, i64 %142)
  store i32 %143, i32* %13, align 4
  %144 = load %struct.pistachio_function*, %struct.pistachio_function** %10, align 8
  %145 = getelementptr inbounds %struct.pistachio_function, %struct.pistachio_function* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.pistachio_function*, %struct.pistachio_function** %10, align 8
  %148 = getelementptr inbounds %struct.pistachio_function, %struct.pistachio_function* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %146, %149
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %13, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %13, align 4
  %154 = load i32, i32* %12, align 4
  %155 = load %struct.pistachio_function*, %struct.pistachio_function** %10, align 8
  %156 = getelementptr inbounds %struct.pistachio_function, %struct.pistachio_function* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %154, %157
  %159 = load i32, i32* %13, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %13, align 4
  %161 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %8, align 8
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.pistachio_function*, %struct.pistachio_function** %10, align 8
  %164 = getelementptr inbounds %struct.pistachio_function, %struct.pistachio_function* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @pctl_writel(%struct.pistachio_pinctrl* %161, i32 %162, i64 %165)
  br label %167

167:                                              ; preds = %138, %71
  br label %168

168:                                              ; preds = %167, %3
  %169 = load %struct.pistachio_pinctrl*, %struct.pistachio_pinctrl** %8, align 8
  %170 = getelementptr inbounds %struct.pistachio_pinctrl, %struct.pistachio_pinctrl* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.pistachio_pin_group*, %struct.pistachio_pin_group** %9, align 8
  %173 = getelementptr inbounds %struct.pistachio_pin_group, %struct.pistachio_pin_group* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = call %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin(i32 %171, i64 %174)
  store %struct.pinctrl_gpio_range* %175, %struct.pinctrl_gpio_range** %11, align 8
  %176 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %11, align 8
  %177 = icmp ne %struct.pinctrl_gpio_range* %176, null
  br i1 %177, label %178, label %191

178:                                              ; preds = %168
  %179 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %11, align 8
  %180 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @gpiochip_get_data(i32 %181)
  %183 = load %struct.pistachio_pin_group*, %struct.pistachio_pin_group** %9, align 8
  %184 = getelementptr inbounds %struct.pistachio_pin_group, %struct.pistachio_pin_group* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %11, align 8
  %187 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = sub nsw i64 %185, %188
  %190 = call i32 @gpio_disable(i32 %182, i64 %189)
  br label %191

191:                                              ; preds = %178, %168
  store i32 0, i32* %4, align 4
  br label %192

192:                                              ; preds = %191, %135, %62
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local %struct.pistachio_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @pctl_readl(%struct.pistachio_pinctrl*, i64) #1

declare dso_local i32 @pctl_writel(%struct.pistachio_pinctrl*, i32, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.pinctrl_gpio_range* @pinctrl_find_gpio_range_from_pin(i32, i64) #1

declare dso_local i32 @gpio_disable(i32, i64) #1

declare dso_local i32 @gpiochip_get_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
