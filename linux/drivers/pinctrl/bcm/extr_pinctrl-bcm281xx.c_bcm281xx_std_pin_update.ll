; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm281xx.c_bcm281xx_std_pin_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm281xx.c_bcm281xx_std_pin_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.bcm281xx_pinctrl_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@STD = common dso_local global i32 0, align 4
@HYST = common dso_local global i32 0, align 4
@PULL_UP = common dso_local global i32 0, align 4
@PULL_DN = common dso_local global i32 0, align 4
@SLEW = common dso_local global i32 0, align 4
@INPUT_DIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [100 x i8] c"Invalid Drive Strength value (%d) for pin %s (%d). Valid values are (2..16) mA, even numbers only.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRV_STR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Unrecognized pin config %d for pin %s (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32, i32*, i32*)* @bcm281xx_std_pin_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm281xx_std_pin_update(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3, i32* %4, i32* %5) #0 {
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
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %19 = call %struct.bcm281xx_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %18)
  store %struct.bcm281xx_pinctrl_data* %19, %struct.bcm281xx_pinctrl_data** %14, align 8
  store i32 0, i32* %15, align 4
  br label %20

20:                                               ; preds = %198, %6
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %201

24:                                               ; preds = %20
  %25 = load i64*, i64** %10, align 8
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @pinconf_to_config_param(i64 %29)
  store i32 %30, i32* %16, align 4
  %31 = load i64*, i64** %10, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @pinconf_to_config_argument(i64 %35)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %16, align 4
  switch i32 %37, label %180 [
    i32 129, label %38
    i32 134, label %53
    i32 132, label %72
    i32 133, label %91
    i32 128, label %110
    i32 130, label %125
    i32 131, label %140
  ]

38:                                               ; preds = %24
  %39 = load i32, i32* %17, align 4
  %40 = icmp sge i32 %39, 1
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  store i32 %42, i32* %17, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* @STD, align 4
  %47 = load i32, i32* @HYST, align 4
  %48 = call i32 @BCM281XX_PIN_SHIFT(i32 %46, i32 %47)
  %49 = load i32, i32* @STD, align 4
  %50 = load i32, i32* @HYST, align 4
  %51 = call i32 @BCM281XX_PIN_MASK(i32 %49, i32 %50)
  %52 = call i32 @bcm281xx_pin_update(i32* %43, i32* %44, i32 %45, i32 %48, i32 %51)
  br label %197

53:                                               ; preds = %24
  %54 = load i32*, i32** %12, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* @STD, align 4
  %57 = load i32, i32* @PULL_UP, align 4
  %58 = call i32 @BCM281XX_PIN_SHIFT(i32 %56, i32 %57)
  %59 = load i32, i32* @STD, align 4
  %60 = load i32, i32* @PULL_UP, align 4
  %61 = call i32 @BCM281XX_PIN_MASK(i32 %59, i32 %60)
  %62 = call i32 @bcm281xx_pin_update(i32* %54, i32* %55, i32 0, i32 %58, i32 %61)
  %63 = load i32*, i32** %12, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* @STD, align 4
  %66 = load i32, i32* @PULL_DN, align 4
  %67 = call i32 @BCM281XX_PIN_SHIFT(i32 %65, i32 %66)
  %68 = load i32, i32* @STD, align 4
  %69 = load i32, i32* @PULL_DN, align 4
  %70 = call i32 @BCM281XX_PIN_MASK(i32 %68, i32 %69)
  %71 = call i32 @bcm281xx_pin_update(i32* %63, i32* %64, i32 0, i32 %67, i32 %70)
  br label %197

72:                                               ; preds = %24
  %73 = load i32*, i32** %12, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* @STD, align 4
  %76 = load i32, i32* @PULL_UP, align 4
  %77 = call i32 @BCM281XX_PIN_SHIFT(i32 %75, i32 %76)
  %78 = load i32, i32* @STD, align 4
  %79 = load i32, i32* @PULL_UP, align 4
  %80 = call i32 @BCM281XX_PIN_MASK(i32 %78, i32 %79)
  %81 = call i32 @bcm281xx_pin_update(i32* %73, i32* %74, i32 1, i32 %77, i32 %80)
  %82 = load i32*, i32** %12, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = load i32, i32* @STD, align 4
  %85 = load i32, i32* @PULL_DN, align 4
  %86 = call i32 @BCM281XX_PIN_SHIFT(i32 %84, i32 %85)
  %87 = load i32, i32* @STD, align 4
  %88 = load i32, i32* @PULL_DN, align 4
  %89 = call i32 @BCM281XX_PIN_MASK(i32 %87, i32 %88)
  %90 = call i32 @bcm281xx_pin_update(i32* %82, i32* %83, i32 0, i32 %86, i32 %89)
  br label %197

91:                                               ; preds = %24
  %92 = load i32*, i32** %12, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = load i32, i32* @STD, align 4
  %95 = load i32, i32* @PULL_UP, align 4
  %96 = call i32 @BCM281XX_PIN_SHIFT(i32 %94, i32 %95)
  %97 = load i32, i32* @STD, align 4
  %98 = load i32, i32* @PULL_UP, align 4
  %99 = call i32 @BCM281XX_PIN_MASK(i32 %97, i32 %98)
  %100 = call i32 @bcm281xx_pin_update(i32* %92, i32* %93, i32 0, i32 %96, i32 %99)
  %101 = load i32*, i32** %12, align 8
  %102 = load i32*, i32** %13, align 8
  %103 = load i32, i32* @STD, align 4
  %104 = load i32, i32* @PULL_DN, align 4
  %105 = call i32 @BCM281XX_PIN_SHIFT(i32 %103, i32 %104)
  %106 = load i32, i32* @STD, align 4
  %107 = load i32, i32* @PULL_DN, align 4
  %108 = call i32 @BCM281XX_PIN_MASK(i32 %106, i32 %107)
  %109 = call i32 @bcm281xx_pin_update(i32* %101, i32* %102, i32 1, i32 %105, i32 %108)
  br label %197

110:                                              ; preds = %24
  %111 = load i32, i32* %17, align 4
  %112 = icmp sge i32 %111, 1
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 1, i32 0
  store i32 %114, i32* %17, align 4
  %115 = load i32*, i32** %12, align 8
  %116 = load i32*, i32** %13, align 8
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* @STD, align 4
  %119 = load i32, i32* @SLEW, align 4
  %120 = call i32 @BCM281XX_PIN_SHIFT(i32 %118, i32 %119)
  %121 = load i32, i32* @STD, align 4
  %122 = load i32, i32* @SLEW, align 4
  %123 = call i32 @BCM281XX_PIN_MASK(i32 %121, i32 %122)
  %124 = call i32 @bcm281xx_pin_update(i32* %115, i32* %116, i32 %117, i32 %120, i32 %123)
  br label %197

125:                                              ; preds = %24
  %126 = load i32, i32* %17, align 4
  %127 = icmp sge i32 %126, 1
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 0, i32 1
  store i32 %129, i32* %17, align 4
  %130 = load i32*, i32** %12, align 8
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* @STD, align 4
  %134 = load i32, i32* @INPUT_DIS, align 4
  %135 = call i32 @BCM281XX_PIN_SHIFT(i32 %133, i32 %134)
  %136 = load i32, i32* @STD, align 4
  %137 = load i32, i32* @INPUT_DIS, align 4
  %138 = call i32 @BCM281XX_PIN_MASK(i32 %136, i32 %137)
  %139 = call i32 @bcm281xx_pin_update(i32* %130, i32* %131, i32 %132, i32 %135, i32 %138)
  br label %197

140:                                              ; preds = %24
  %141 = load i32, i32* %17, align 4
  %142 = icmp slt i32 %141, 2
  br i1 %142, label %150, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %17, align 4
  %145 = icmp sgt i32 %144, 16
  br i1 %145, label %150, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %17, align 4
  %148 = srem i32 %147, 2
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %167

150:                                              ; preds = %146, %143, %140
  %151 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %152 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %17, align 4
  %155 = load %struct.bcm281xx_pinctrl_data*, %struct.bcm281xx_pinctrl_data** %14, align 8
  %156 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, %struct.bcm281xx_pinctrl_data* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @dev_err(i32 %153, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), i32 %154, i32 %162, i32 %163)
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %7, align 4
  br label %202

167:                                              ; preds = %146
  %168 = load i32*, i32** %12, align 8
  %169 = load i32*, i32** %13, align 8
  %170 = load i32, i32* %17, align 4
  %171 = sdiv i32 %170, 2
  %172 = sub nsw i32 %171, 1
  %173 = load i32, i32* @STD, align 4
  %174 = load i32, i32* @DRV_STR, align 4
  %175 = call i32 @BCM281XX_PIN_SHIFT(i32 %173, i32 %174)
  %176 = load i32, i32* @STD, align 4
  %177 = load i32, i32* @DRV_STR, align 4
  %178 = call i32 @BCM281XX_PIN_MASK(i32 %176, i32 %177)
  %179 = call i32 @bcm281xx_pin_update(i32* %168, i32* %169, i32 %172, i32 %175, i32 %178)
  br label %197

180:                                              ; preds = %24
  %181 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %182 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %16, align 4
  %185 = load %struct.bcm281xx_pinctrl_data*, %struct.bcm281xx_pinctrl_data** %14, align 8
  %186 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, %struct.bcm281xx_pinctrl_data* %185, i32 0, i32 0
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %9, align 4
  %194 = call i32 @dev_err(i32 %183, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %184, i32 %192, i32 %193)
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %7, align 4
  br label %202

197:                                              ; preds = %167, %125, %110, %91, %72, %53, %38
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %15, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %15, align 4
  br label %20

201:                                              ; preds = %20
  store i32 0, i32* %7, align 4
  br label %202

202:                                              ; preds = %201, %180, %150
  %203 = load i32, i32* %7, align 4
  ret i32 %203
}

declare dso_local %struct.bcm281xx_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @bcm281xx_pin_update(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @BCM281XX_PIN_SHIFT(i32, i32) #1

declare dso_local i32 @BCM281XX_PIN_MASK(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
