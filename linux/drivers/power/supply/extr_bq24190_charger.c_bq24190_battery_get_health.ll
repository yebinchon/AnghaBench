; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_battery_get_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_battery_get_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24190_dev_info = type { i32, i32 }
%union.power_supply_propval = type { i32 }

@BQ24190_REG_F_BAT_FAULT_MASK = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERVOLTAGE = common dso_local global i32 0, align 4
@BQ24190_REG_F_NTC_FAULT_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_F_NTC_FAULT_SHIFT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_COLD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq24190_dev_info*, %union.power_supply_propval*)* @bq24190_battery_get_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24190_battery_get_health(%struct.bq24190_dev_info* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca %struct.bq24190_dev_info*, align 8
  %4 = alloca %union.power_supply_propval*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bq24190_dev_info* %0, %struct.bq24190_dev_info** %3, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %4, align 8
  %7 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %8 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %11 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %14 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %13, i32 0, i32 1
  %15 = call i32 @mutex_unlock(i32* %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @BQ24190_REG_F_BAT_FAULT_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERVOLTAGE, align 4
  store i32 %21, i32* %6, align 4
  br label %39

22:                                               ; preds = %2
  %23 = load i32, i32* @BQ24190_REG_F_NTC_FAULT_MASK, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @BQ24190_REG_F_NTC_FAULT_SHIFT, align 4
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %36 [
    i32 0, label %30
    i32 1, label %32
    i32 3, label %32
    i32 5, label %32
    i32 2, label %34
    i32 4, label %34
    i32 6, label %34
  ]

30:                                               ; preds = %22
  %31 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  store i32 %31, i32* %6, align 4
  br label %38

32:                                               ; preds = %22, %22, %22
  %33 = load i32, i32* @POWER_SUPPLY_HEALTH_COLD, align 4
  store i32 %33, i32* %6, align 4
  br label %38

34:                                               ; preds = %22, %22, %22
  %35 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  store i32 %35, i32* %6, align 4
  br label %38

36:                                               ; preds = %22
  %37 = load i32, i32* @POWER_SUPPLY_HEALTH_UNKNOWN, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %34, %32, %30
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i32, i32* %6, align 4
  %41 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %42 = bitcast %union.power_supply_propval* %41 to i32*
  store i32 %40, i32* %42, align 4
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
