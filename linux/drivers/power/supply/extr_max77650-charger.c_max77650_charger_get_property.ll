; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77650-charger.c_max77650_charger_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77650-charger.c_max77650_charger_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i8* }
%struct.max77650_charger_data = type { i32 }

@MAX77650_REG_STAT_CHG_B = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i8* null, align 8
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i8* null, align 8
@POWER_SUPPLY_STATUS_FULL = common dso_local global i8* null, align 8
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i8* null, align 8
@POWER_SUPPLY_CHARGE_TYPE_NONE = common dso_local global i8* null, align 8
@POWER_SUPPLY_CHARGE_TYPE_FAST = common dso_local global i8* null, align 8
@POWER_SUPPLY_CHARGE_TYPE_TRICKLE = common dso_local global i8* null, align 8
@POWER_SUPPLY_CHARGE_TYPE_UNKNOWN = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @max77650_charger_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77650_charger_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.max77650_charger_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %11 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %12 = call %struct.max77650_charger_data* @power_supply_get_drvdata(%struct.power_supply* %11)
  store %struct.max77650_charger_data* %12, %struct.max77650_charger_data** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %101 [
    i32 128, label %14
    i32 129, label %52
    i32 130, label %67
  ]

14:                                               ; preds = %3
  %15 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %8, align 8
  %16 = getelementptr inbounds %struct.max77650_charger_data, %struct.max77650_charger_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MAX77650_REG_STAT_CHG_B, align 4
  %19 = call i32 @regmap_read(i32 %17, i32 %18, i32* %10)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %105

24:                                               ; preds = %14
  %25 = load i32, i32* %10, align 4
  %26 = call i8* @MAX77650_CHARGER_CHG_CHARGING(i32 %25)
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i8*, i8** @POWER_SUPPLY_STATUS_CHARGING, align 8
  %30 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %31 = bitcast %union.power_supply_propval* %30 to i8**
  store i8* %29, i8** %31, align 8
  br label %104

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @MAX77650_CHG_DETAILS_BITS(i32 %33)
  switch i32 %34, label %47 [
    i32 141, label %35
    i32 131, label %35
    i32 132, label %35
    i32 133, label %35
    i32 134, label %39
    i32 140, label %39
    i32 139, label %39
    i32 136, label %39
    i32 135, label %39
    i32 138, label %39
    i32 137, label %39
    i32 142, label %43
  ]

35:                                               ; preds = %32, %32, %32, %32
  %36 = load i8*, i8** @POWER_SUPPLY_STATUS_NOT_CHARGING, align 8
  %37 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %38 = bitcast %union.power_supply_propval* %37 to i8**
  store i8* %36, i8** %38, align 8
  br label %51

39:                                               ; preds = %32, %32, %32, %32, %32, %32, %32
  %40 = load i8*, i8** @POWER_SUPPLY_STATUS_CHARGING, align 8
  %41 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %42 = bitcast %union.power_supply_propval* %41 to i8**
  store i8* %40, i8** %42, align 8
  br label %51

43:                                               ; preds = %32
  %44 = load i8*, i8** @POWER_SUPPLY_STATUS_FULL, align 8
  %45 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %46 = bitcast %union.power_supply_propval* %45 to i8**
  store i8* %44, i8** %46, align 8
  br label %51

47:                                               ; preds = %32
  %48 = load i8*, i8** @POWER_SUPPLY_STATUS_UNKNOWN, align 8
  %49 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %50 = bitcast %union.power_supply_propval* %49 to i8**
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %47, %43, %39, %35
  br label %104

52:                                               ; preds = %3
  %53 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %8, align 8
  %54 = getelementptr inbounds %struct.max77650_charger_data, %struct.max77650_charger_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MAX77650_REG_STAT_CHG_B, align 4
  %57 = call i32 @regmap_read(i32 %55, i32 %56, i32* %10)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %105

62:                                               ; preds = %52
  %63 = load i32, i32* %10, align 4
  %64 = call i8* @MAX77650_CHARGER_CHG_CHARGING(i32 %63)
  %65 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %66 = bitcast %union.power_supply_propval* %65 to i8**
  store i8* %64, i8** %66, align 8
  br label %104

67:                                               ; preds = %3
  %68 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %8, align 8
  %69 = getelementptr inbounds %struct.max77650_charger_data, %struct.max77650_charger_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MAX77650_REG_STAT_CHG_B, align 4
  %72 = call i32 @regmap_read(i32 %70, i32 %71, i32* %10)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %4, align 4
  br label %105

77:                                               ; preds = %67
  %78 = load i32, i32* %10, align 4
  %79 = call i8* @MAX77650_CHARGER_CHG_CHARGING(i32 %78)
  %80 = icmp ne i8* %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** @POWER_SUPPLY_CHARGE_TYPE_NONE, align 8
  %83 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %84 = bitcast %union.power_supply_propval* %83 to i8**
  store i8* %82, i8** %84, align 8
  br label %104

85:                                               ; preds = %77
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @MAX77650_CHG_DETAILS_BITS(i32 %86)
  switch i32 %87, label %96 [
    i32 134, label %88
    i32 140, label %88
    i32 139, label %88
    i32 136, label %88
    i32 135, label %88
    i32 138, label %92
    i32 137, label %92
  ]

88:                                               ; preds = %85, %85, %85, %85, %85
  %89 = load i8*, i8** @POWER_SUPPLY_CHARGE_TYPE_FAST, align 8
  %90 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %91 = bitcast %union.power_supply_propval* %90 to i8**
  store i8* %89, i8** %91, align 8
  br label %100

92:                                               ; preds = %85, %85
  %93 = load i8*, i8** @POWER_SUPPLY_CHARGE_TYPE_TRICKLE, align 8
  %94 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %95 = bitcast %union.power_supply_propval* %94 to i8**
  store i8* %93, i8** %95, align 8
  br label %100

96:                                               ; preds = %85
  %97 = load i8*, i8** @POWER_SUPPLY_CHARGE_TYPE_UNKNOWN, align 8
  %98 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %99 = bitcast %union.power_supply_propval* %98 to i8**
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %96, %92, %88
  br label %104

101:                                              ; preds = %3
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %105

104:                                              ; preds = %100, %81, %62, %51, %28
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %101, %75, %60, %22
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.max77650_charger_data* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i8* @MAX77650_CHARGER_CHG_CHARGING(i32) #1

declare dso_local i32 @MAX77650_CHG_DETAILS_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
