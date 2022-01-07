; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_madc_battery.c_twl4030_madc_bat_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_madc_battery.c_twl4030_madc_bat_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.twl4030_madc_battery = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_TECHNOLOGY_LION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @twl4030_madc_bat_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_madc_bat_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.twl4030_madc_battery*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %12 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %13 = call %struct.twl4030_madc_battery* @power_supply_get_drvdata(%struct.power_supply* %12)
  store %struct.twl4030_madc_battery* %13, %struct.twl4030_madc_battery** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %113 [
    i32 132, label %15
    i32 128, label %39
    i32 131, label %45
    i32 134, label %49
    i32 133, label %54
    i32 135, label %57
    i32 137, label %72
    i32 136, label %79
    i32 130, label %87
    i32 129, label %92
  ]

15:                                               ; preds = %3
  %16 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %8, align 8
  %17 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %8, align 8
  %18 = call i32 @twl4030_madc_bat_get_voltage(%struct.twl4030_madc_battery* %17)
  %19 = call i32 @twl4030_madc_bat_voltscale(%struct.twl4030_madc_battery* %16, i32 %18)
  %20 = icmp sgt i32 %19, 95
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %23 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %24 = bitcast %union.power_supply_propval* %23 to i32*
  store i32 %22, i32* %24, align 4
  br label %38

25:                                               ; preds = %15
  %26 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %8, align 8
  %27 = call i32 @twl4030_madc_bat_get_charging_status(%struct.twl4030_madc_battery* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %31 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %32 = bitcast %union.power_supply_propval* %31 to i32*
  store i32 %30, i32* %32, align 4
  br label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %35 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %36 = bitcast %union.power_supply_propval* %35 to i32*
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37, %21
  br label %116

39:                                               ; preds = %3
  %40 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %8, align 8
  %41 = call i32 @twl4030_madc_bat_get_voltage(%struct.twl4030_madc_battery* %40)
  %42 = mul nsw i32 %41, 1000
  %43 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %44 = bitcast %union.power_supply_propval* %43 to i32*
  store i32 %42, i32* %44, align 4
  br label %116

45:                                               ; preds = %3
  %46 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_LION, align 4
  %47 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %48 = bitcast %union.power_supply_propval* %47 to i32*
  store i32 %46, i32* %48, align 4
  br label %116

49:                                               ; preds = %3
  %50 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %8, align 8
  %51 = call i32 @twl4030_madc_bat_get_current(%struct.twl4030_madc_battery* %50)
  %52 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %53 = bitcast %union.power_supply_propval* %52 to i32*
  store i32 %51, i32* %53, align 4
  br label %116

54:                                               ; preds = %3
  %55 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %56 = bitcast %union.power_supply_propval* %55 to i32*
  store i32 1, i32* %56, align 4
  br label %116

57:                                               ; preds = %3
  %58 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %8, align 8
  %59 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %8, align 8
  %60 = call i32 @twl4030_madc_bat_get_voltage(%struct.twl4030_madc_battery* %59)
  %61 = call i32 @twl4030_madc_bat_voltscale(%struct.twl4030_madc_battery* %58, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %8, align 8
  %64 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %62, %67
  %69 = sdiv i32 %68, 100
  %70 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %71 = bitcast %union.power_supply_propval* %70 to i32*
  store i32 %69, i32* %71, align 4
  br label %116

72:                                               ; preds = %3
  %73 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %8, align 8
  %74 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %8, align 8
  %75 = call i32 @twl4030_madc_bat_get_voltage(%struct.twl4030_madc_battery* %74)
  %76 = call i32 @twl4030_madc_bat_voltscale(%struct.twl4030_madc_battery* %73, i32 %75)
  %77 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %78 = bitcast %union.power_supply_propval* %77 to i32*
  store i32 %76, i32* %78, align 4
  br label %116

79:                                               ; preds = %3
  %80 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %8, align 8
  %81 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %86 = bitcast %union.power_supply_propval* %85 to i32*
  store i32 %84, i32* %86, align 4
  br label %116

87:                                               ; preds = %3
  %88 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %8, align 8
  %89 = call i32 @twl4030_madc_bat_get_temp(%struct.twl4030_madc_battery* %88)
  %90 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %91 = bitcast %union.power_supply_propval* %90 to i32*
  store i32 %89, i32* %91, align 4
  br label %116

92:                                               ; preds = %3
  %93 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %8, align 8
  %94 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %8, align 8
  %95 = call i32 @twl4030_madc_bat_get_voltage(%struct.twl4030_madc_battery* %94)
  %96 = call i32 @twl4030_madc_bat_voltscale(%struct.twl4030_madc_battery* %93, i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %8, align 8
  %99 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sdiv i32 %102, 1000
  %104 = mul nsw i32 %97, %103
  %105 = sdiv i32 %104, 100
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = mul nsw i64 3600, %107
  %109 = sdiv i64 %108, 400
  %110 = trunc i64 %109 to i32
  %111 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %112 = bitcast %union.power_supply_propval* %111 to i32*
  store i32 %110, i32* %112, align 4
  br label %116

113:                                              ; preds = %3
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %117

116:                                              ; preds = %92, %87, %79, %72, %57, %54, %49, %45, %39, %38
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %113
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.twl4030_madc_battery* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @twl4030_madc_bat_voltscale(%struct.twl4030_madc_battery*, i32) #1

declare dso_local i32 @twl4030_madc_bat_get_voltage(%struct.twl4030_madc_battery*) #1

declare dso_local i32 @twl4030_madc_bat_get_charging_status(%struct.twl4030_madc_battery*) #1

declare dso_local i32 @twl4030_madc_bat_get_current(%struct.twl4030_madc_battery*) #1

declare dso_local i32 @twl4030_madc_bat_get_temp(%struct.twl4030_madc_battery*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
