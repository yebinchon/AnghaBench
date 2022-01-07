; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_battery_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_battery_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.bq24190_dev_info = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"warning: /sys/class/power_supply/bq24190-battery is deprecated\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"prop: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @bq24190_battery_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24190_battery_set_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
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
  %15 = call i32 @dev_warn(i32 %14, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %17 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %22 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pm_runtime_get_sync(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %52

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %39 [
    i32 129, label %31
    i32 128, label %35
  ]

31:                                               ; preds = %29
  %32 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %33 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %34 = call i32 @bq24190_battery_set_online(%struct.bq24190_dev_info* %32, %union.power_supply_propval* %33)
  store i32 %34, i32* %9, align 4
  br label %42

35:                                               ; preds = %29
  %36 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %37 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %38 = call i32 @bq24190_battery_set_temp_alert_max(%struct.bq24190_dev_info* %36, %union.power_supply_propval* %37)
  store i32 %38, i32* %9, align 4
  br label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %39, %35, %31
  %43 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %44 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pm_runtime_mark_last_busy(i32 %45)
  %47 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %8, align 8
  %48 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pm_runtime_put_autosuspend(i32 %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %42, %27
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.bq24190_dev_info* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @bq24190_battery_set_online(%struct.bq24190_dev_info*, %union.power_supply_propval*) #1

declare dso_local i32 @bq24190_battery_set_temp_alert_max(%struct.bq24190_dev_info*, %union.power_supply_propval*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
