; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-xway.c_xway_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-xway.c_xway_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.ltq_pinmux_info = type { i32* }

@PORT3 = common dso_local global i32 0, align 4
@GPIO3_OD = common dso_local global i32 0, align 4
@GPIO3_PUDEN = common dso_local global i32 0, align 4
@GPIO3_PUDSEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid config param %04x\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @xway_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xway_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ltq_pinmux_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.ltq_pinmux_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.ltq_pinmux_info* %13, %struct.ltq_pinmux_info** %8, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @LTQ_PINCONF_UNPACK_PARAM(i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @PORT(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %113 [
    i32 130, label %20
    i32 128, label %45
    i32 129, label %98
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @PORT3, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @GPIO3_OD, align 4
  store i32 %25, i32* %11, align 4
  br label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @GPIO_OD(i32 %27)
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %26, %24
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %8, align 8
  %32 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @PORT_PIN(i32 %37)
  %39 = call i32 @gpio_getbit(i32 %35, i32 %36, i32 %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @LTQ_PINCONF_PACK(i32 %30, i32 %42)
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  br label %121

45:                                               ; preds = %3
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @PORT3, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @GPIO3_PUDEN, align 4
  store i32 %50, i32* %11, align 4
  br label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @GPIO_PUDEN(i32 %52)
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %51, %49
  %55 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %8, align 8
  %56 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @PORT_PIN(i32 %61)
  %63 = call i32 @gpio_getbit(i32 %59, i32 %60, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @LTQ_PINCONF_PACK(i32 %66, i32 0)
  %68 = load i64*, i64** %7, align 8
  store i64 %67, i64* %68, align 8
  br label %121

69:                                               ; preds = %54
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @PORT3, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @GPIO3_PUDSEL, align 4
  store i32 %74, i32* %11, align 4
  br label %78

75:                                               ; preds = %69
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @GPIO_PUDSEL(i32 %76)
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %75, %73
  %79 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %8, align 8
  %80 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @PORT_PIN(i32 %85)
  %87 = call i32 @gpio_getbit(i32 %83, i32 %84, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %9, align 4
  %91 = call i64 @LTQ_PINCONF_PACK(i32 %90, i32 2)
  %92 = load i64*, i64** %7, align 8
  store i64 %91, i64* %92, align 8
  br label %97

93:                                               ; preds = %78
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @LTQ_PINCONF_PACK(i32 %94, i32 1)
  %96 = load i64*, i64** %7, align 8
  store i64 %95, i64* %96, align 8
  br label %97

97:                                               ; preds = %93, %89
  br label %121

98:                                               ; preds = %3
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @GPIO_DIR(i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %8, align 8
  %103 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @PORT_PIN(i32 %108)
  %110 = call i32 @gpio_getbit(i32 %106, i32 %107, i32 %109)
  %111 = call i64 @LTQ_PINCONF_PACK(i32 %101, i32 %110)
  %112 = load i64*, i64** %7, align 8
  store i64 %111, i64* %112, align 8
  br label %121

113:                                              ; preds = %3
  %114 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %115 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @ENOTSUPP, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %122

121:                                              ; preds = %98, %97, %65, %29
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %121, %113
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.ltq_pinmux_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @LTQ_PINCONF_UNPACK_PARAM(i64) #1

declare dso_local i32 @PORT(i32) #1

declare dso_local i32 @GPIO_OD(i32) #1

declare dso_local i64 @LTQ_PINCONF_PACK(i32, i32) #1

declare dso_local i32 @gpio_getbit(i32, i32, i32) #1

declare dso_local i32 @PORT_PIN(i32) #1

declare dso_local i32 @GPIO_PUDEN(i32) #1

declare dso_local i32 @GPIO_PUDSEL(i32) #1

declare dso_local i32 @GPIO_DIR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
