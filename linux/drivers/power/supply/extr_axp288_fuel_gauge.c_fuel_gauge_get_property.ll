; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_fuel_gauge.c_fuel_gauge_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_fuel_gauge.c_fuel_gauge_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.axp288_fg_info = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AXP20X_PWR_OP_MODE = common dso_local global i32 0, align 4
@CHRG_STAT_BAT_PRESENT = common dso_local global i32 0, align 4
@AXP20X_FG_RES = common dso_local global i32 0, align 4
@FG_REP_CAP_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"capacity measurement not valid\0A\00", align 1
@FG_REP_CAP_VAL_MASK = common dso_local global i32 0, align 4
@AXP288_FG_LOW_CAP_REG = common dso_local global i32 0, align 4
@POWER_SUPPLY_TECHNOLOGY_LION = common dso_local global i32 0, align 4
@AXP288_FG_CC_MTR1_REG = common dso_local global i32 0, align 4
@FG_DES_CAP_RES_LSB = common dso_local global i32 0, align 4
@AXP288_FG_DES_CAP1_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @fuel_gauge_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuel_gauge_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.axp288_fg_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %11 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %12 = call %struct.axp288_fg_info* @power_supply_get_drvdata(%struct.power_supply* %11)
  store %struct.axp288_fg_info* %12, %struct.axp288_fg_info** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %8, align 8
  %14 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %158 [
    i32 132, label %17
    i32 134, label %25
    i32 129, label %30
    i32 128, label %42
    i32 135, label %54
    i32 133, label %65
    i32 139, label %84
    i32 138, label %108
    i32 131, label %120
    i32 136, label %124
    i32 137, label %137
    i32 130, label %150
  ]

17:                                               ; preds = %3
  %18 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %8, align 8
  %19 = call i32 @fuel_gauge_get_status(%struct.axp288_fg_info* %18)
  %20 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %8, align 8
  %21 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %24 = bitcast %union.power_supply_propval* %23 to i32*
  store i32 %22, i32* %24, align 4
  br label %164

25:                                               ; preds = %3
  %26 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %8, align 8
  %27 = call i32 @fuel_gauge_battery_health(%struct.axp288_fg_info* %26)
  %28 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %29 = bitcast %union.power_supply_propval* %28 to i32*
  store i32 %27, i32* %29, align 4
  br label %164

30:                                               ; preds = %3
  %31 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %8, align 8
  %32 = call i32 @fuel_gauge_get_vbatt(%struct.axp288_fg_info* %31, i32* %10)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %168

36:                                               ; preds = %30
  %37 = load i32, i32* %10, align 4
  %38 = call i8* @PROP_VOLT(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %41 = bitcast %union.power_supply_propval* %40 to i32*
  store i32 %39, i32* %41, align 4
  br label %164

42:                                               ; preds = %3
  %43 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %8, align 8
  %44 = call i32 @fuel_gauge_get_vocv(%struct.axp288_fg_info* %43, i32* %10)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %168

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  %50 = call i8* @PROP_VOLT(i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %53 = bitcast %union.power_supply_propval* %52 to i32*
  store i32 %51, i32* %53, align 4
  br label %164

54:                                               ; preds = %3
  %55 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %8, align 8
  %56 = call i32 @fuel_gauge_get_current(%struct.axp288_fg_info* %55, i32* %10)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %168

60:                                               ; preds = %54
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @PROP_CURR(i32 %61)
  %63 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %64 = bitcast %union.power_supply_propval* %63 to i32*
  store i32 %62, i32* %64, align 4
  br label %164

65:                                               ; preds = %3
  %66 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %8, align 8
  %67 = load i32, i32* @AXP20X_PWR_OP_MODE, align 4
  %68 = call i32 @fuel_gauge_reg_readb(%struct.axp288_fg_info* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %168

72:                                               ; preds = %65
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @CHRG_STAT_BAT_PRESENT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %79 = bitcast %union.power_supply_propval* %78 to i32*
  store i32 1, i32* %79, align 4
  br label %83

80:                                               ; preds = %72
  %81 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %82 = bitcast %union.power_supply_propval* %81 to i32*
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %77
  br label %164

84:                                               ; preds = %3
  %85 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %8, align 8
  %86 = load i32, i32* @AXP20X_FG_RES, align 4
  %87 = call i32 @fuel_gauge_reg_readb(%struct.axp288_fg_info* %85, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %168

91:                                               ; preds = %84
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @FG_REP_CAP_VALID, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %8, align 8
  %98 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %97, i32 0, i32 3
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %96, %91
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @FG_REP_CAP_VAL_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %107 = bitcast %union.power_supply_propval* %106 to i32*
  store i32 %105, i32* %107, align 4
  br label %164

108:                                              ; preds = %3
  %109 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %8, align 8
  %110 = load i32, i32* @AXP288_FG_LOW_CAP_REG, align 4
  %111 = call i32 @fuel_gauge_reg_readb(%struct.axp288_fg_info* %109, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %168

115:                                              ; preds = %108
  %116 = load i32, i32* %9, align 4
  %117 = and i32 %116, 15
  %118 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %119 = bitcast %union.power_supply_propval* %118 to i32*
  store i32 %117, i32* %119, align 4
  br label %164

120:                                              ; preds = %3
  %121 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_LION, align 4
  %122 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %123 = bitcast %union.power_supply_propval* %122 to i32*
  store i32 %121, i32* %123, align 4
  br label %164

124:                                              ; preds = %3
  %125 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %8, align 8
  %126 = load i32, i32* @AXP288_FG_CC_MTR1_REG, align 4
  %127 = call i32 @fuel_gauge_read_15bit_word(%struct.axp288_fg_info* %125, i32 %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %168

131:                                              ; preds = %124
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @FG_DES_CAP_RES_LSB, align 4
  %134 = mul nsw i32 %132, %133
  %135 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %136 = bitcast %union.power_supply_propval* %135 to i32*
  store i32 %134, i32* %136, align 4
  br label %164

137:                                              ; preds = %3
  %138 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %8, align 8
  %139 = load i32, i32* @AXP288_FG_DES_CAP1_REG, align 4
  %140 = call i32 @fuel_gauge_read_15bit_word(%struct.axp288_fg_info* %138, i32 %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %168

144:                                              ; preds = %137
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @FG_DES_CAP_RES_LSB, align 4
  %147 = mul nsw i32 %145, %146
  %148 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %149 = bitcast %union.power_supply_propval* %148 to i32*
  store i32 %147, i32* %149, align 4
  br label %164

150:                                              ; preds = %3
  %151 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %8, align 8
  %152 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i8* @PROP_VOLT(i32 %153)
  %155 = ptrtoint i8* %154 to i32
  %156 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %157 = bitcast %union.power_supply_propval* %156 to i32*
  store i32 %155, i32* %157, align 4
  br label %164

158:                                              ; preds = %3
  %159 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %8, align 8
  %160 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %159, i32 0, i32 2
  %161 = call i32 @mutex_unlock(i32* %160)
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %4, align 4
  br label %173

164:                                              ; preds = %150, %144, %131, %120, %115, %102, %83, %60, %48, %36, %25, %17
  %165 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %8, align 8
  %166 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %165, i32 0, i32 2
  %167 = call i32 @mutex_unlock(i32* %166)
  store i32 0, i32* %4, align 4
  br label %173

168:                                              ; preds = %143, %130, %114, %90, %71, %59, %47, %35
  %169 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %8, align 8
  %170 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %169, i32 0, i32 2
  %171 = call i32 @mutex_unlock(i32* %170)
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %168, %164, %158
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local %struct.axp288_fg_info* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fuel_gauge_get_status(%struct.axp288_fg_info*) #1

declare dso_local i32 @fuel_gauge_battery_health(%struct.axp288_fg_info*) #1

declare dso_local i32 @fuel_gauge_get_vbatt(%struct.axp288_fg_info*, i32*) #1

declare dso_local i8* @PROP_VOLT(i32) #1

declare dso_local i32 @fuel_gauge_get_vocv(%struct.axp288_fg_info*, i32*) #1

declare dso_local i32 @fuel_gauge_get_current(%struct.axp288_fg_info*, i32*) #1

declare dso_local i32 @PROP_CURR(i32) #1

declare dso_local i32 @fuel_gauge_reg_readb(%struct.axp288_fg_info*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @fuel_gauge_read_15bit_word(%struct.axp288_fg_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
