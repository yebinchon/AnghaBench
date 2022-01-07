; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm281xx.c_bcm281xx_i2c_pin_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm281xx.c_bcm281xx_i2c_pin_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.bcm281xx_pinctrl_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@bcm281xx_pullup_map = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [106 x i8] c"Invalid pull-up value (%d) for pin %s (%d). Valid values are 568, 720, 831, 1080, 1200, 1800, 2700 Ohms.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C = common dso_local global i32 0, align 4
@PULL_UP_STR = common dso_local global i32 0, align 4
@SLEW = common dso_local global i32 0, align 4
@INPUT_DIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Unrecognized pin config %d for pin %s (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32, i32*, i32*)* @bcm281xx_i2c_pin_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm281xx_i2c_pin_update(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pinctrl_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.bcm281xx_pinctrl_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %20 = call %struct.bcm281xx_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %19)
  store %struct.bcm281xx_pinctrl_data* %20, %struct.bcm281xx_pinctrl_data** %14, align 8
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %150, %6
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %153

25:                                               ; preds = %21
  %26 = load i64*, i64** %10, align 8
  %27 = load i32, i32* %15, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @pinconf_to_config_param(i64 %30)
  store i32 %31, i32* %17, align 4
  %32 = load i64*, i64** %10, align 8
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @pinconf_to_config_argument(i64 %36)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %17, align 4
  switch i32 %38, label %132 [
    i32 130, label %39
    i32 131, label %92
    i32 128, label %102
    i32 129, label %117
  ]

39:                                               ; preds = %25
  store i32 0, i32* %16, align 4
  br label %40

40:                                               ; preds = %55, %39
  %41 = load i32, i32* %16, align 4
  %42 = load i32*, i32** @bcm281xx_pullup_map, align 8
  %43 = call i32 @ARRAY_SIZE(i32* %42)
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load i32*, i32** @bcm281xx_pullup_map, align 8
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %18, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %58

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %16, align 4
  br label %40

58:                                               ; preds = %53, %40
  %59 = load i32, i32* %16, align 4
  %60 = load i32*, i32** @bcm281xx_pullup_map, align 8
  %61 = call i32 @ARRAY_SIZE(i32* %60)
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %58
  %64 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %65 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load %struct.bcm281xx_pinctrl_data*, %struct.bcm281xx_pinctrl_data** %14, align 8
  %69 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, %struct.bcm281xx_pinctrl_data* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %75, i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %154

80:                                               ; preds = %58
  %81 = load i32*, i32** %12, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %83, 1
  %85 = load i32, i32* @I2C, align 4
  %86 = load i32, i32* @PULL_UP_STR, align 4
  %87 = call i32 @BCM281XX_PIN_SHIFT(i32 %85, i32 %86)
  %88 = load i32, i32* @I2C, align 4
  %89 = load i32, i32* @PULL_UP_STR, align 4
  %90 = call i32 @BCM281XX_PIN_MASK(i32 %88, i32 %89)
  %91 = call i32 @bcm281xx_pin_update(i32* %81, i32* %82, i32 %84, i32 %87, i32 %90)
  br label %149

92:                                               ; preds = %25
  %93 = load i32*, i32** %12, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = load i32, i32* @I2C, align 4
  %96 = load i32, i32* @PULL_UP_STR, align 4
  %97 = call i32 @BCM281XX_PIN_SHIFT(i32 %95, i32 %96)
  %98 = load i32, i32* @I2C, align 4
  %99 = load i32, i32* @PULL_UP_STR, align 4
  %100 = call i32 @BCM281XX_PIN_MASK(i32 %98, i32 %99)
  %101 = call i32 @bcm281xx_pin_update(i32* %93, i32* %94, i32 0, i32 %97, i32 %100)
  br label %149

102:                                              ; preds = %25
  %103 = load i32, i32* %18, align 4
  %104 = icmp sge i32 %103, 1
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 1, i32 0
  store i32 %106, i32* %18, align 4
  %107 = load i32*, i32** %12, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* @I2C, align 4
  %111 = load i32, i32* @SLEW, align 4
  %112 = call i32 @BCM281XX_PIN_SHIFT(i32 %110, i32 %111)
  %113 = load i32, i32* @I2C, align 4
  %114 = load i32, i32* @SLEW, align 4
  %115 = call i32 @BCM281XX_PIN_MASK(i32 %113, i32 %114)
  %116 = call i32 @bcm281xx_pin_update(i32* %107, i32* %108, i32 %109, i32 %112, i32 %115)
  br label %149

117:                                              ; preds = %25
  %118 = load i32, i32* %18, align 4
  %119 = icmp sge i32 %118, 1
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 0, i32 1
  store i32 %121, i32* %18, align 4
  %122 = load i32*, i32** %12, align 8
  %123 = load i32*, i32** %13, align 8
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* @I2C, align 4
  %126 = load i32, i32* @INPUT_DIS, align 4
  %127 = call i32 @BCM281XX_PIN_SHIFT(i32 %125, i32 %126)
  %128 = load i32, i32* @I2C, align 4
  %129 = load i32, i32* @INPUT_DIS, align 4
  %130 = call i32 @BCM281XX_PIN_MASK(i32 %128, i32 %129)
  %131 = call i32 @bcm281xx_pin_update(i32* %122, i32* %123, i32 %124, i32 %127, i32 %130)
  br label %149

132:                                              ; preds = %25
  %133 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %134 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load %struct.bcm281xx_pinctrl_data*, %struct.bcm281xx_pinctrl_data** %14, align 8
  %138 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, %struct.bcm281xx_pinctrl_data* %137, i32 0, i32 0
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @dev_err(i32 %135, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %136, i32 %144, i32 %145)
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %7, align 4
  br label %154

149:                                              ; preds = %117, %102, %92, %80
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %15, align 4
  br label %21

153:                                              ; preds = %21
  store i32 0, i32* %7, align 4
  br label %154

154:                                              ; preds = %153, %132, %63
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

declare dso_local %struct.bcm281xx_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @bcm281xx_pin_update(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @BCM281XX_PIN_SHIFT(i32, i32) #1

declare dso_local i32 @BCM281XX_PIN_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
