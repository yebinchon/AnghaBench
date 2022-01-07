; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_battery_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_battery_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9150_charger = type { i32 }
%union.power_supply_propval = type { i32 }

@DA9150_STATUS_H = common dso_local global i32 0, align 4
@DA9150_VBUS_STAT_MASK = common dso_local global i32 0, align 4
@DA9150_VBUS_STAT_OFF = common dso_local global i32 0, align 4
@DA9150_VBUS_STAT_WAIT = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@DA9150_STATUS_J = common dso_local global i32 0, align 4
@DA9150_CHG_STAT_MASK = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9150_charger*, %union.power_supply_propval*)* @da9150_charger_battery_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_charger_battery_status(%struct.da9150_charger* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9150_charger*, align 8
  %5 = alloca %union.power_supply_propval*, align 8
  %6 = alloca i32, align 4
  store %struct.da9150_charger* %0, %struct.da9150_charger** %4, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %5, align 8
  %7 = load %struct.da9150_charger*, %struct.da9150_charger** %4, align 8
  %8 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DA9150_STATUS_H, align 4
  %11 = call i32 @da9150_reg_read(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @DA9150_VBUS_STAT_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @DA9150_VBUS_STAT_OFF, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DA9150_VBUS_STAT_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @DA9150_VBUS_STAT_WAIT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17, %2
  %24 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %25 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %26 = bitcast %union.power_supply_propval* %25 to i32*
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %53

27:                                               ; preds = %17
  %28 = load %struct.da9150_charger*, %struct.da9150_charger** %4, align 8
  %29 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DA9150_STATUS_J, align 4
  %32 = call i32 @da9150_reg_read(i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @DA9150_CHG_STAT_MASK, align 4
  %35 = and i32 %33, %34
  switch i32 %35, label %48 [
    i32 137, label %36
    i32 131, label %36
    i32 135, label %36
    i32 134, label %36
    i32 132, label %40
    i32 130, label %40
    i32 129, label %40
    i32 128, label %40
    i32 136, label %40
    i32 133, label %44
  ]

36:                                               ; preds = %27, %27, %27, %27
  %37 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %39 = bitcast %union.power_supply_propval* %38 to i32*
  store i32 %37, i32* %39, align 4
  br label %52

40:                                               ; preds = %27, %27, %27, %27, %27
  %41 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %42 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %43 = bitcast %union.power_supply_propval* %42 to i32*
  store i32 %41, i32* %43, align 4
  br label %52

44:                                               ; preds = %27
  %45 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %46 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %47 = bitcast %union.power_supply_propval* %46 to i32*
  store i32 %45, i32* %47, align 4
  br label %52

48:                                               ; preds = %27
  %49 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %50 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %51 = bitcast %union.power_supply_propval* %50 to i32*
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %44, %40, %36
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %23
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @da9150_reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
