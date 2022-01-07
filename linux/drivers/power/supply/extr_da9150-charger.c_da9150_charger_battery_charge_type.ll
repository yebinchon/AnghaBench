; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_battery_charge_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_battery_charge_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9150_charger = type { i32 }
%union.power_supply_propval = type { i32 }

@DA9150_STATUS_J = common dso_local global i32 0, align 4
@DA9150_CHG_STAT_MASK = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_FAST = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_TRICKLE = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9150_charger*, %union.power_supply_propval*)* @da9150_charger_battery_charge_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_charger_battery_charge_type(%struct.da9150_charger* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca %struct.da9150_charger*, align 8
  %4 = alloca %union.power_supply_propval*, align 8
  %5 = alloca i32, align 4
  store %struct.da9150_charger* %0, %struct.da9150_charger** %3, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %4, align 8
  %6 = load %struct.da9150_charger*, %struct.da9150_charger** %3, align 8
  %7 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @DA9150_STATUS_J, align 4
  %10 = call i32 @da9150_reg_read(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @DA9150_CHG_STAT_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %22 [
    i32 130, label %14
    i32 131, label %18
    i32 128, label %18
    i32 129, label %18
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_FAST, align 4
  %16 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %17 = bitcast %union.power_supply_propval* %16 to i32*
  store i32 %15, i32* %17, align 4
  br label %26

18:                                               ; preds = %2, %2, %2
  %19 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_TRICKLE, align 4
  %20 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %21 = bitcast %union.power_supply_propval* %20 to i32*
  store i32 %19, i32* %21, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_NONE, align 4
  %24 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %25 = bitcast %union.power_supply_propval* %24 to i32*
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %18, %14
  ret i32 0
}

declare dso_local i32 @da9150_reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
