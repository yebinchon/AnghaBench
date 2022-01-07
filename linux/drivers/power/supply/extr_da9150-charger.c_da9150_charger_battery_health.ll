; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_battery_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_battery_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9150_charger = type { i32 }
%union.power_supply_propval = type { i32 }

@DA9150_STATUS_J = common dso_local global i32 0, align 4
@DA9150_CHG_TEMP_MASK = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_COLD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@DA9150_CHG_STAT_MASK = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_DEAD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9150_charger*, %union.power_supply_propval*)* @da9150_charger_battery_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_charger_battery_health(%struct.da9150_charger* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9150_charger*, align 8
  %5 = alloca %union.power_supply_propval*, align 8
  %6 = alloca i32, align 4
  store %struct.da9150_charger* %0, %struct.da9150_charger** %4, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %5, align 8
  %7 = load %struct.da9150_charger*, %struct.da9150_charger** %4, align 8
  %8 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DA9150_STATUS_J, align 4
  %11 = call i32 @da9150_reg_read(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @DA9150_CHG_TEMP_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %23 [
    i32 128, label %15
    i32 129, label %19
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @POWER_SUPPLY_HEALTH_COLD, align 4
  %17 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %18 = bitcast %union.power_supply_propval* %17 to i32*
  store i32 %16, i32* %18, align 4
  store i32 0, i32* %3, align 4
  br label %41

19:                                               ; preds = %2
  %20 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  %21 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %22 = bitcast %union.power_supply_propval* %21 to i32*
  store i32 %20, i32* %22, align 4
  store i32 0, i32* %3, align 4
  br label %41

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @DA9150_CHG_STAT_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %36 [
    i32 132, label %28
    i32 131, label %28
    i32 130, label %32
  ]

28:                                               ; preds = %24, %24
  %29 = load i32, i32* @POWER_SUPPLY_HEALTH_DEAD, align 4
  %30 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %31 = bitcast %union.power_supply_propval* %30 to i32*
  store i32 %29, i32* %31, align 4
  br label %40

32:                                               ; preds = %24
  %33 = load i32, i32* @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 4
  %34 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %35 = bitcast %union.power_supply_propval* %34 to i32*
  store i32 %33, i32* %35, align 4
  br label %40

36:                                               ; preds = %24
  %37 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %39 = bitcast %union.power_supply_propval* %38 to i32*
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %32, %28
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %19, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @da9150_reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
