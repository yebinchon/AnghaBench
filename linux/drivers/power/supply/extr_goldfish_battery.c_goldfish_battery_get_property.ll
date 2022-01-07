; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_goldfish_battery.c_goldfish_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_goldfish_battery.c_goldfish_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i8* }
%struct.goldfish_battery_data = type { i32 }

@BATTERY_STATUS = common dso_local global i32 0, align 4
@BATTERY_HEALTH = common dso_local global i32 0, align 4
@BATTERY_PRESENT = common dso_local global i32 0, align 4
@POWER_SUPPLY_TECHNOLOGY_LION = common dso_local global i8* null, align 8
@BATTERY_CAPACITY = common dso_local global i32 0, align 4
@BATTERY_VOLTAGE = common dso_local global i32 0, align 4
@BATTERY_TEMP = common dso_local global i32 0, align 4
@BATTERY_CHARGE_COUNTER = common dso_local global i32 0, align 4
@BATTERY_CURRENT_NOW = common dso_local global i32 0, align 4
@BATTERY_CURRENT_AVG = common dso_local global i32 0, align 4
@BATTERY_CHARGE_FULL_UAH = common dso_local global i32 0, align 4
@BATTERY_CYCLE_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @goldfish_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goldfish_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.goldfish_battery_data*, align 8
  %8 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = call %struct.goldfish_battery_data* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.goldfish_battery_data* %10, %struct.goldfish_battery_data** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %82 [
    i32 131, label %12
    i32 133, label %18
    i32 132, label %24
    i32 130, label %30
    i32 139, label %34
    i32 128, label %40
    i32 129, label %46
    i32 138, label %52
    i32 135, label %58
    i32 136, label %64
    i32 137, label %70
    i32 134, label %76
  ]

12:                                               ; preds = %3
  %13 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %7, align 8
  %14 = load i32, i32* @BATTERY_STATUS, align 4
  %15 = call i8* @GOLDFISH_BATTERY_READ(%struct.goldfish_battery_data* %13, i32 %14)
  %16 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %17 = bitcast %union.power_supply_propval* %16 to i8**
  store i8* %15, i8** %17, align 8
  br label %85

18:                                               ; preds = %3
  %19 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %7, align 8
  %20 = load i32, i32* @BATTERY_HEALTH, align 4
  %21 = call i8* @GOLDFISH_BATTERY_READ(%struct.goldfish_battery_data* %19, i32 %20)
  %22 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %23 = bitcast %union.power_supply_propval* %22 to i8**
  store i8* %21, i8** %23, align 8
  br label %85

24:                                               ; preds = %3
  %25 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %7, align 8
  %26 = load i32, i32* @BATTERY_PRESENT, align 4
  %27 = call i8* @GOLDFISH_BATTERY_READ(%struct.goldfish_battery_data* %25, i32 %26)
  %28 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %29 = bitcast %union.power_supply_propval* %28 to i8**
  store i8* %27, i8** %29, align 8
  br label %85

30:                                               ; preds = %3
  %31 = load i8*, i8** @POWER_SUPPLY_TECHNOLOGY_LION, align 8
  %32 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %33 = bitcast %union.power_supply_propval* %32 to i8**
  store i8* %31, i8** %33, align 8
  br label %85

34:                                               ; preds = %3
  %35 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %7, align 8
  %36 = load i32, i32* @BATTERY_CAPACITY, align 4
  %37 = call i8* @GOLDFISH_BATTERY_READ(%struct.goldfish_battery_data* %35, i32 %36)
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %39 = bitcast %union.power_supply_propval* %38 to i8**
  store i8* %37, i8** %39, align 8
  br label %85

40:                                               ; preds = %3
  %41 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %7, align 8
  %42 = load i32, i32* @BATTERY_VOLTAGE, align 4
  %43 = call i8* @GOLDFISH_BATTERY_READ(%struct.goldfish_battery_data* %41, i32 %42)
  %44 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %45 = bitcast %union.power_supply_propval* %44 to i8**
  store i8* %43, i8** %45, align 8
  br label %85

46:                                               ; preds = %3
  %47 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %7, align 8
  %48 = load i32, i32* @BATTERY_TEMP, align 4
  %49 = call i8* @GOLDFISH_BATTERY_READ(%struct.goldfish_battery_data* %47, i32 %48)
  %50 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %51 = bitcast %union.power_supply_propval* %50 to i8**
  store i8* %49, i8** %51, align 8
  br label %85

52:                                               ; preds = %3
  %53 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %7, align 8
  %54 = load i32, i32* @BATTERY_CHARGE_COUNTER, align 4
  %55 = call i8* @GOLDFISH_BATTERY_READ(%struct.goldfish_battery_data* %53, i32 %54)
  %56 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %57 = bitcast %union.power_supply_propval* %56 to i8**
  store i8* %55, i8** %57, align 8
  br label %85

58:                                               ; preds = %3
  %59 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %7, align 8
  %60 = load i32, i32* @BATTERY_CURRENT_NOW, align 4
  %61 = call i8* @GOLDFISH_BATTERY_READ(%struct.goldfish_battery_data* %59, i32 %60)
  %62 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %63 = bitcast %union.power_supply_propval* %62 to i8**
  store i8* %61, i8** %63, align 8
  br label %85

64:                                               ; preds = %3
  %65 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %7, align 8
  %66 = load i32, i32* @BATTERY_CURRENT_AVG, align 4
  %67 = call i8* @GOLDFISH_BATTERY_READ(%struct.goldfish_battery_data* %65, i32 %66)
  %68 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %69 = bitcast %union.power_supply_propval* %68 to i8**
  store i8* %67, i8** %69, align 8
  br label %85

70:                                               ; preds = %3
  %71 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %7, align 8
  %72 = load i32, i32* @BATTERY_CHARGE_FULL_UAH, align 4
  %73 = call i8* @GOLDFISH_BATTERY_READ(%struct.goldfish_battery_data* %71, i32 %72)
  %74 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %75 = bitcast %union.power_supply_propval* %74 to i8**
  store i8* %73, i8** %75, align 8
  br label %85

76:                                               ; preds = %3
  %77 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %7, align 8
  %78 = load i32, i32* @BATTERY_CYCLE_COUNT, align 4
  %79 = call i8* @GOLDFISH_BATTERY_READ(%struct.goldfish_battery_data* %77, i32 %78)
  %80 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %81 = bitcast %union.power_supply_propval* %80 to i8**
  store i8* %79, i8** %81, align 8
  br label %85

82:                                               ; preds = %3
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %82, %76, %70, %64, %58, %52, %46, %40, %34, %30, %24, %18, %12
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local %struct.goldfish_battery_data* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i8* @GOLDFISH_BATTERY_READ(%struct.goldfish_battery_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
