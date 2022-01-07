; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm97xx_battery.c_wm97xx_bat_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm97xx_battery.c_wm97xx_bat_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wm97xx_batt_pdata = type { i64 }

@bat_status = common dso_local global i32 0, align 4
@work_lock = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s: %i -> %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.power_supply*)* @wm97xx_bat_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm97xx_bat_update(%struct.power_supply* %0) #0 {
  %2 = alloca %struct.power_supply*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm97xx_batt_pdata*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %2, align 8
  %5 = load i32, i32* @bat_status, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %7 = call %struct.wm97xx_batt_pdata* @power_supply_get_drvdata(%struct.power_supply* %6)
  store %struct.wm97xx_batt_pdata* %7, %struct.wm97xx_batt_pdata** %4, align 8
  %8 = call i32 @mutex_lock(i32* @work_lock)
  %9 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %4, align 8
  %10 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %4, align 8
  %15 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @gpio_get_value(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  br label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  br label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* @bat_status, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @bat_status, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %34 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @bat_status, align 4
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %42 = call i32 @power_supply_changed(%struct.power_supply* %41)
  br label %43

43:                                               ; preds = %32, %27
  %44 = call i32 @mutex_unlock(i32* @work_lock)
  ret void
}

declare dso_local %struct.wm97xx_batt_pdata* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @gpio_get_value(i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @power_supply_changed(%struct.power_supply*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
