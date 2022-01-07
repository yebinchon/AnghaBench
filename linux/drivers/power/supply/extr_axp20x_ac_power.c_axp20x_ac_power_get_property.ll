; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_ac_power.c_axp20x_ac_power_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_ac_power.c_axp20x_ac_power_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.axp20x_ac_power = type { i32, i32, i32 }

@AXP20X_PWR_INPUT_STATUS = common dso_local global i32 0, align 4
@AXP20X_PWR_STATUS_ACIN_PRESENT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNKNOWN = common dso_local global i32 0, align 4
@AXP20X_PWR_STATUS_ACIN_AVAIL = common dso_local global i32 0, align 4
@AXP813_ACIN_PATH_CTRL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @axp20x_ac_power_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_ac_power_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.axp20x_ac_power*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %11 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %12 = call %struct.axp20x_ac_power* @power_supply_get_drvdata(%struct.power_supply* %11)
  store %struct.axp20x_ac_power* %12, %struct.axp20x_ac_power** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %147 [
    i32 133, label %14
    i32 130, label %37
    i32 131, label %57
    i32 128, label %77
    i32 134, label %93
    i32 129, label %109
    i32 132, label %124
  ]

14:                                               ; preds = %3
  %15 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %8, align 8
  %16 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AXP20X_PWR_INPUT_STATUS, align 4
  %19 = call i32 @regmap_read(i32 %17, i32 %18, i32* %10)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %150

24:                                               ; preds = %14
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @AXP20X_PWR_STATUS_ACIN_PRESENT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %31 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %32 = bitcast %union.power_supply_propval* %31 to i32*
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %4, align 4
  br label %150

33:                                               ; preds = %24
  %34 = load i32, i32* @POWER_SUPPLY_HEALTH_UNKNOWN, align 4
  %35 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %36 = bitcast %union.power_supply_propval* %35 to i32*
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %150

37:                                               ; preds = %3
  %38 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %8, align 8
  %39 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AXP20X_PWR_INPUT_STATUS, align 4
  %42 = call i32 @regmap_read(i32 %40, i32 %41, i32* %10)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %150

47:                                               ; preds = %37
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @AXP20X_PWR_STATUS_ACIN_PRESENT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %56 = bitcast %union.power_supply_propval* %55 to i32*
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %4, align 4
  br label %150

57:                                               ; preds = %3
  %58 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %8, align 8
  %59 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AXP20X_PWR_INPUT_STATUS, align 4
  %62 = call i32 @regmap_read(i32 %60, i32 %61, i32* %10)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %150

67:                                               ; preds = %57
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @AXP20X_PWR_STATUS_ACIN_AVAIL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %76 = bitcast %union.power_supply_propval* %75 to i32*
  store i32 %74, i32* %76, align 4
  store i32 0, i32* %4, align 4
  br label %150

77:                                               ; preds = %3
  %78 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %8, align 8
  %79 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %82 = bitcast %union.power_supply_propval* %81 to i32*
  %83 = call i32 @iio_read_channel_processed(i32 %80, i32* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %4, align 4
  br label %150

88:                                               ; preds = %77
  %89 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %90 = bitcast %union.power_supply_propval* %89 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %91, 1000
  store i32 %92, i32* %90, align 4
  store i32 0, i32* %4, align 4
  br label %150

93:                                               ; preds = %3
  %94 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %8, align 8
  %95 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %98 = bitcast %union.power_supply_propval* %97 to i32*
  %99 = call i32 @iio_read_channel_processed(i32 %96, i32* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %4, align 4
  br label %150

104:                                              ; preds = %93
  %105 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %106 = bitcast %union.power_supply_propval* %105 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %107, 1000
  store i32 %108, i32* %106, align 4
  store i32 0, i32* %4, align 4
  br label %150

109:                                              ; preds = %3
  %110 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %8, align 8
  %111 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @AXP813_ACIN_PATH_CTRL, align 4
  %114 = call i32 @regmap_read(i32 %112, i32 %113, i32* %10)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %4, align 4
  br label %150

119:                                              ; preds = %109
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @AXP813_VHOLD_REG_TO_UV(i32 %120)
  %122 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %123 = bitcast %union.power_supply_propval* %122 to i32*
  store i32 %121, i32* %123, align 4
  store i32 0, i32* %4, align 4
  br label %150

124:                                              ; preds = %3
  %125 = load %struct.axp20x_ac_power*, %struct.axp20x_ac_power** %8, align 8
  %126 = getelementptr inbounds %struct.axp20x_ac_power, %struct.axp20x_ac_power* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @AXP813_ACIN_PATH_CTRL, align 4
  %129 = call i32 @regmap_read(i32 %127, i32 %128, i32* %10)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %4, align 4
  br label %150

134:                                              ; preds = %124
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @AXP813_CURR_LIMIT_REG_TO_UA(i32 %135)
  %137 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %138 = bitcast %union.power_supply_propval* %137 to i32*
  store i32 %136, i32* %138, align 4
  %139 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %140 = bitcast %union.power_supply_propval* %139 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = icmp sgt i32 %141, 4000000
  br i1 %142, label %143, label %146

143:                                              ; preds = %134
  %144 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %145 = bitcast %union.power_supply_propval* %144 to i32*
  store i32 4000000, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %134
  store i32 0, i32* %4, align 4
  br label %150

147:                                              ; preds = %3
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %147, %146, %132, %119, %117, %104, %102, %88, %86, %67, %65, %47, %45, %33, %29, %22
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local %struct.axp20x_ac_power* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @iio_read_channel_processed(i32, i32*) #1

declare dso_local i32 @AXP813_VHOLD_REG_TO_UV(i32) #1

declare dso_local i32 @AXP813_CURR_LIMIT_REG_TO_UA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
