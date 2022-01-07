; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8727_charger.c_lp8727_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8727_charger.c_lp8727_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.lp8727_chg = type { i32, %struct.lp8727_platform_data* }
%struct.lp8727_platform_data = type { i32 (...)*, i32 (...)*, i32 (...)*, i32 (...)* }

@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@LP8727_STATUS1 = common dso_local global i32 0, align 4
@LP8727_CHGSTAT = common dso_local global i32 0, align 4
@LP8727_STAT_EOC = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@LP8727_STATUS2 = common dso_local global i32 0, align 4
@LP8727_TEMP_STAT = common dso_local global i32 0, align 4
@LP8727_TEMP_SHIFT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @lp8727_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8727_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.lp8727_chg*, align 8
  %9 = alloca %struct.lp8727_platform_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %12 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %13 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.lp8727_chg* @dev_get_drvdata(i32 %15)
  store %struct.lp8727_chg* %16, %struct.lp8727_chg** %8, align 8
  %17 = load %struct.lp8727_chg*, %struct.lp8727_chg** %8, align 8
  %18 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %17, i32 0, i32 1
  %19 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %18, align 8
  store %struct.lp8727_platform_data* %19, %struct.lp8727_platform_data** %9, align 8
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %149 [
    i32 130, label %21
    i32 132, label %53
    i32 131, label %73
    i32 128, label %92
    i32 133, label %111
    i32 129, label %130
  ]

21:                                               ; preds = %3
  %22 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %23 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.lp8727_chg*, %struct.lp8727_chg** %8, align 8
  %28 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @lp8727_is_charger_attached(i32 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %34 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %35 = bitcast %union.power_supply_propval* %34 to i32*
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %4, align 4
  br label %151

36:                                               ; preds = %21
  %37 = load %struct.lp8727_chg*, %struct.lp8727_chg** %8, align 8
  %38 = load i32, i32* @LP8727_STATUS1, align 4
  %39 = call i32 @lp8727_read_byte(%struct.lp8727_chg* %37, i32 %38, i32* %11)
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @LP8727_CHGSTAT, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @LP8727_STAT_EOC, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  br label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %52 = bitcast %union.power_supply_propval* %51 to i32*
  store i32 %50, i32* %52, align 4
  br label %150

53:                                               ; preds = %3
  %54 = load %struct.lp8727_chg*, %struct.lp8727_chg** %8, align 8
  %55 = load i32, i32* @LP8727_STATUS2, align 4
  %56 = call i32 @lp8727_read_byte(%struct.lp8727_chg* %54, i32 %55, i32* %11)
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @LP8727_TEMP_STAT, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @LP8727_TEMP_SHIFT, align 4
  %61 = ashr i32 %59, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @lp8727_is_high_temperature(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  br label %69

67:                                               ; preds = %53
  %68 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %72 = bitcast %union.power_supply_propval* %71 to i32*
  store i32 %70, i32* %72, align 4
  br label %150

73:                                               ; preds = %3
  %74 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %9, align 8
  %75 = icmp ne %struct.lp8727_platform_data* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %151

79:                                               ; preds = %73
  %80 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %9, align 8
  %81 = getelementptr inbounds %struct.lp8727_platform_data, %struct.lp8727_platform_data* %80, i32 0, i32 3
  %82 = load i32 (...)*, i32 (...)** %81, align 8
  %83 = icmp ne i32 (...)* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %9, align 8
  %86 = getelementptr inbounds %struct.lp8727_platform_data, %struct.lp8727_platform_data* %85, i32 0, i32 3
  %87 = load i32 (...)*, i32 (...)** %86, align 8
  %88 = call i32 (...) %87()
  %89 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %90 = bitcast %union.power_supply_propval* %89 to i32*
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %84, %79
  br label %150

92:                                               ; preds = %3
  %93 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %9, align 8
  %94 = icmp ne %struct.lp8727_platform_data* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %151

98:                                               ; preds = %92
  %99 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %9, align 8
  %100 = getelementptr inbounds %struct.lp8727_platform_data, %struct.lp8727_platform_data* %99, i32 0, i32 2
  %101 = load i32 (...)*, i32 (...)** %100, align 8
  %102 = icmp ne i32 (...)* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %9, align 8
  %105 = getelementptr inbounds %struct.lp8727_platform_data, %struct.lp8727_platform_data* %104, i32 0, i32 2
  %106 = load i32 (...)*, i32 (...)** %105, align 8
  %107 = call i32 (...) %106()
  %108 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %109 = bitcast %union.power_supply_propval* %108 to i32*
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %103, %98
  br label %150

111:                                              ; preds = %3
  %112 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %9, align 8
  %113 = icmp ne %struct.lp8727_platform_data* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %151

117:                                              ; preds = %111
  %118 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %9, align 8
  %119 = getelementptr inbounds %struct.lp8727_platform_data, %struct.lp8727_platform_data* %118, i32 0, i32 1
  %120 = load i32 (...)*, i32 (...)** %119, align 8
  %121 = icmp ne i32 (...)* %120, null
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %9, align 8
  %124 = getelementptr inbounds %struct.lp8727_platform_data, %struct.lp8727_platform_data* %123, i32 0, i32 1
  %125 = load i32 (...)*, i32 (...)** %124, align 8
  %126 = call i32 (...) %125()
  %127 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %128 = bitcast %union.power_supply_propval* %127 to i32*
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %122, %117
  br label %150

130:                                              ; preds = %3
  %131 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %9, align 8
  %132 = icmp ne %struct.lp8727_platform_data* %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %151

136:                                              ; preds = %130
  %137 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %9, align 8
  %138 = getelementptr inbounds %struct.lp8727_platform_data, %struct.lp8727_platform_data* %137, i32 0, i32 0
  %139 = load i32 (...)*, i32 (...)** %138, align 8
  %140 = icmp ne i32 (...)* %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %9, align 8
  %143 = getelementptr inbounds %struct.lp8727_platform_data, %struct.lp8727_platform_data* %142, i32 0, i32 0
  %144 = load i32 (...)*, i32 (...)** %143, align 8
  %145 = call i32 (...) %144()
  %146 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %147 = bitcast %union.power_supply_propval* %146 to i32*
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %141, %136
  br label %150

149:                                              ; preds = %3
  br label %150

150:                                              ; preds = %149, %148, %129, %110, %91, %69, %49
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %150, %133, %114, %95, %76, %32
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local %struct.lp8727_chg* @dev_get_drvdata(i32) #1

declare dso_local i32 @lp8727_is_charger_attached(i32, i32) #1

declare dso_local i32 @lp8727_read_byte(%struct.lp8727_chg*, i32, i32*) #1

declare dso_local i32 @lp8727_is_high_temperature(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
