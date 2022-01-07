; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_z2_battery.c_z2_batt_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_z2_battery.c_z2_batt_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z2_charger = type { i32, i32, %struct.TYPE_4__*, %struct.z2_battery_info* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.z2_battery_info = type { i64 }

@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s: %i -> %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z2_charger*)* @z2_batt_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z2_batt_update(%struct.z2_charger* %0) #0 {
  %2 = alloca %struct.z2_charger*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.z2_battery_info*, align 8
  store %struct.z2_charger* %0, %struct.z2_charger** %2, align 8
  %5 = load %struct.z2_charger*, %struct.z2_charger** %2, align 8
  %6 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.z2_charger*, %struct.z2_charger** %2, align 8
  %9 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %8, i32 0, i32 3
  %10 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  store %struct.z2_battery_info* %10, %struct.z2_battery_info** %4, align 8
  %11 = load %struct.z2_charger*, %struct.z2_charger** %2, align 8
  %12 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.z2_battery_info*, %struct.z2_battery_info** %4, align 8
  %15 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load %struct.z2_battery_info*, %struct.z2_battery_info** %4, align 8
  %20 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @gpio_get_value(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  br label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  br label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load %struct.z2_charger*, %struct.z2_charger** %2, align 8
  %35 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.z2_charger*, %struct.z2_charger** %2, align 8
  %38 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %32
  %42 = load %struct.z2_charger*, %struct.z2_charger** %2, align 8
  %43 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.z2_charger*, %struct.z2_charger** %2, align 8
  %51 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i32 %52)
  %54 = load %struct.z2_charger*, %struct.z2_charger** %2, align 8
  %55 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i32 @power_supply_changed(%struct.TYPE_4__* %56)
  br label %58

58:                                               ; preds = %41, %32
  %59 = load %struct.z2_charger*, %struct.z2_charger** %2, align 8
  %60 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @gpio_get_value(i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @power_supply_changed(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
