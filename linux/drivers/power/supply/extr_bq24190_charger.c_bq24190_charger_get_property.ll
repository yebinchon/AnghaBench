; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_charger_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_charger_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.bq24190_dev_info = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"prop: %d\0A\00", align 1
@POWER_SUPPLY_SCOPE_SYSTEM = common dso_local global i32 0, align 4
@BQ24190_MANUFACTURER = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @bq24190_charger_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24190_charger_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.bq24190_dev_info*, align 8
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call %struct.bq24190_dev_info* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.bq24190_dev_info* %11, %struct.bq24190_dev_info** %8, align 8
  %12 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %13 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %18 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pm_runtime_get_sync(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %102

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %89 [
    i32 141, label %27
    i32 136, label %31
    i32 132, label %35
    i32 129, label %39
    i32 128, label %43
    i32 131, label %47
    i32 142, label %51
    i32 140, label %55
    i32 139, label %59
    i32 138, label %63
    i32 137, label %67
    i32 135, label %71
    i32 130, label %75
    i32 133, label %79
    i32 134, label %85
  ]

27:                                               ; preds = %25
  %28 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %29 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %30 = call i32 @bq24190_charger_get_charge_type(%struct.bq24190_dev_info* %28, %union.power_supply_propval* %29)
  store i32 %30, i32* %9, align 4
  br label %92

31:                                               ; preds = %25
  %32 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %33 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %34 = call i32 @bq24190_charger_get_health(%struct.bq24190_dev_info* %32, %union.power_supply_propval* %33)
  store i32 %34, i32* %9, align 4
  br label %92

35:                                               ; preds = %25
  %36 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %37 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %38 = call i32 @bq24190_charger_get_online(%struct.bq24190_dev_info* %36, %union.power_supply_propval* %37)
  store i32 %38, i32* %9, align 4
  br label %92

39:                                               ; preds = %25
  %40 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %41 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %42 = call i32 @bq24190_charger_get_status(%struct.bq24190_dev_info* %40, %union.power_supply_propval* %41)
  store i32 %42, i32* %9, align 4
  br label %92

43:                                               ; preds = %25
  %44 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %45 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %46 = call i32 @bq24190_charger_get_temp_alert_max(%struct.bq24190_dev_info* %44, %union.power_supply_propval* %45)
  store i32 %46, i32* %9, align 4
  br label %92

47:                                               ; preds = %25
  %48 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %49 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %50 = call i32 @bq24190_charger_get_precharge(%struct.bq24190_dev_info* %48, %union.power_supply_propval* %49)
  store i32 %50, i32* %9, align 4
  br label %92

51:                                               ; preds = %25
  %52 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %53 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %54 = call i32 @bq24190_charger_get_charge_term(%struct.bq24190_dev_info* %52, %union.power_supply_propval* %53)
  store i32 %54, i32* %9, align 4
  br label %92

55:                                               ; preds = %25
  %56 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %57 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %58 = call i32 @bq24190_charger_get_current(%struct.bq24190_dev_info* %56, %union.power_supply_propval* %57)
  store i32 %58, i32* %9, align 4
  br label %92

59:                                               ; preds = %25
  %60 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %61 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %62 = call i32 @bq24190_charger_get_current_max(%struct.bq24190_dev_info* %60, %union.power_supply_propval* %61)
  store i32 %62, i32* %9, align 4
  br label %92

63:                                               ; preds = %25
  %64 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %65 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %66 = call i32 @bq24190_charger_get_voltage(%struct.bq24190_dev_info* %64, %union.power_supply_propval* %65)
  store i32 %66, i32* %9, align 4
  br label %92

67:                                               ; preds = %25
  %68 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %69 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %70 = call i32 @bq24190_charger_get_voltage_max(%struct.bq24190_dev_info* %68, %union.power_supply_propval* %69)
  store i32 %70, i32* %9, align 4
  br label %92

71:                                               ; preds = %25
  %72 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %73 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %74 = call i32 @bq24190_charger_get_iinlimit(%struct.bq24190_dev_info* %72, %union.power_supply_propval* %73)
  store i32 %74, i32* %9, align 4
  br label %92

75:                                               ; preds = %25
  %76 = load i32, i32* @POWER_SUPPLY_SCOPE_SYSTEM, align 4
  %77 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %78 = bitcast %union.power_supply_propval* %77 to i32*
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %9, align 4
  br label %92

79:                                               ; preds = %25
  %80 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %81 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %84 = bitcast %union.power_supply_propval* %83 to i32*
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %9, align 4
  br label %92

85:                                               ; preds = %25
  %86 = load i32, i32* @BQ24190_MANUFACTURER, align 4
  %87 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %88 = bitcast %union.power_supply_propval* %87 to i32*
  store i32 %86, i32* %88, align 4
  store i32 0, i32* %9, align 4
  br label %92

89:                                               ; preds = %25
  %90 = load i32, i32* @ENODATA, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %89, %85, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27
  %93 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %94 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @pm_runtime_mark_last_busy(i32 %95)
  %97 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %98 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @pm_runtime_put_autosuspend(i32 %99)
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %92, %23
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.bq24190_dev_info* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @bq24190_charger_get_charge_type(%struct.bq24190_dev_info*, %union.power_supply_propval*) #1

declare dso_local i32 @bq24190_charger_get_health(%struct.bq24190_dev_info*, %union.power_supply_propval*) #1

declare dso_local i32 @bq24190_charger_get_online(%struct.bq24190_dev_info*, %union.power_supply_propval*) #1

declare dso_local i32 @bq24190_charger_get_status(%struct.bq24190_dev_info*, %union.power_supply_propval*) #1

declare dso_local i32 @bq24190_charger_get_temp_alert_max(%struct.bq24190_dev_info*, %union.power_supply_propval*) #1

declare dso_local i32 @bq24190_charger_get_precharge(%struct.bq24190_dev_info*, %union.power_supply_propval*) #1

declare dso_local i32 @bq24190_charger_get_charge_term(%struct.bq24190_dev_info*, %union.power_supply_propval*) #1

declare dso_local i32 @bq24190_charger_get_current(%struct.bq24190_dev_info*, %union.power_supply_propval*) #1

declare dso_local i32 @bq24190_charger_get_current_max(%struct.bq24190_dev_info*, %union.power_supply_propval*) #1

declare dso_local i32 @bq24190_charger_get_voltage(%struct.bq24190_dev_info*, %union.power_supply_propval*) #1

declare dso_local i32 @bq24190_charger_get_voltage_max(%struct.bq24190_dev_info*, %union.power_supply_propval*) #1

declare dso_local i32 @bq24190_charger_get_iinlimit(%struct.bq24190_dev_info*, %union.power_supply_propval*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
