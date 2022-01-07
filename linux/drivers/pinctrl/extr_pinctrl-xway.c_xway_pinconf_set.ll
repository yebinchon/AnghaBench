; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-xway.c_xway_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-xway.c_xway_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.ltq_pinmux_info = type { i32* }

@PORT3 = common dso_local global i32 0, align 4
@GPIO3_OD = common dso_local global i32 0, align 4
@GPIO3_PUDEN = common dso_local global i32 0, align 4
@GPIO3_PUDSEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid pull value %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid config param %04x\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @xway_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xway_pinconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ltq_pinmux_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %17 = call %struct.ltq_pinmux_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.ltq_pinmux_info* %17, %struct.ltq_pinmux_info** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @PORT(i32 %18)
  store i32 %19, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %20

20:                                               ; preds = %180, %4
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %183

24:                                               ; preds = %20
  %25 = load i64*, i64** %8, align 8
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @LTQ_PINCONF_UNPACK_PARAM(i64 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i64*, i64** %8, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @LTQ_PINCONF_UNPACK_ARG(i64 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  switch i32 %37, label %171 [
    i32 130, label %38
    i32 128, label %71
    i32 129, label %145
  ]

38:                                               ; preds = %24
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @PORT3, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @GPIO3_OD, align 4
  store i32 %43, i32* %14, align 4
  br label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @GPIO_OD(i32 %45)
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %44, %42
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %10, align 8
  %52 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @PORT_PIN(i32 %57)
  %59 = call i32 @gpio_setbit(i32 %55, i32 %56, i32 %58)
  br label %70

60:                                               ; preds = %47
  %61 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %10, align 8
  %62 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @PORT_PIN(i32 %67)
  %69 = call i32 @gpio_clearbit(i32 %65, i32 %66, i32 %68)
  br label %70

70:                                               ; preds = %60, %50
  br label %179

71:                                               ; preds = %24
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @PORT3, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @GPIO3_PUDEN, align 4
  store i32 %76, i32* %14, align 4
  br label %80

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @GPIO_PUDEN(i32 %78)
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %77, %75
  %81 = load i32, i32* %12, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %10, align 8
  %85 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @PORT_PIN(i32 %90)
  %92 = call i32 @gpio_clearbit(i32 %88, i32 %89, i32 %91)
  br label %179

93:                                               ; preds = %80
  %94 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %10, align 8
  %95 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @PORT_PIN(i32 %100)
  %102 = call i32 @gpio_setbit(i32 %98, i32 %99, i32 %101)
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* @PORT3, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %93
  %107 = load i32, i32* @GPIO3_PUDSEL, align 4
  store i32 %107, i32* %14, align 4
  br label %111

108:                                              ; preds = %93
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @GPIO_PUDSEL(i32 %109)
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %108, %106
  %112 = load i32, i32* %12, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %10, align 8
  %116 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @PORT_PIN(i32 %121)
  %123 = call i32 @gpio_clearbit(i32 %119, i32 %120, i32 %122)
  br label %144

124:                                              ; preds = %111
  %125 = load i32, i32* %12, align 4
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %137

127:                                              ; preds = %124
  %128 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %10, align 8
  %129 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @PORT_PIN(i32 %134)
  %136 = call i32 @gpio_setbit(i32 %132, i32 %133, i32 %135)
  br label %143

137:                                              ; preds = %124
  %138 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %139 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @dev_err(i32 %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %137, %127
  br label %144

144:                                              ; preds = %143, %114
  br label %179

145:                                              ; preds = %24
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @GPIO_DIR(i32 %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %10, align 8
  %152 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @PORT_PIN(i32 %157)
  %159 = call i32 @gpio_clearbit(i32 %155, i32 %156, i32 %158)
  br label %170

160:                                              ; preds = %145
  %161 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %10, align 8
  %162 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @PORT_PIN(i32 %167)
  %169 = call i32 @gpio_setbit(i32 %165, i32 %166, i32 %168)
  br label %170

170:                                              ; preds = %160, %150
  br label %179

171:                                              ; preds = %24
  %172 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %173 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @dev_err(i32 %174, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* @ENOTSUPP, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %5, align 4
  br label %184

179:                                              ; preds = %170, %144, %83, %70
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %15, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %15, align 4
  br label %20

183:                                              ; preds = %20
  store i32 0, i32* %5, align 4
  br label %184

184:                                              ; preds = %183, %171
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local %struct.ltq_pinmux_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @PORT(i32) #1

declare dso_local i32 @LTQ_PINCONF_UNPACK_PARAM(i64) #1

declare dso_local i32 @LTQ_PINCONF_UNPACK_ARG(i64) #1

declare dso_local i32 @GPIO_OD(i32) #1

declare dso_local i32 @gpio_setbit(i32, i32, i32) #1

declare dso_local i32 @PORT_PIN(i32) #1

declare dso_local i32 @gpio_clearbit(i32, i32, i32) #1

declare dso_local i32 @GPIO_PUDEN(i32) #1

declare dso_local i32 @GPIO_PUDSEL(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @GPIO_DIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
