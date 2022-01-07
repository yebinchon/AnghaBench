; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_get_battery_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_get_battery_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8788_charger = type { i32 }
%union.power_supply_propval = type { i32 }

@LP8788_CHG_STATUS = common dso_local global i32 0, align 4
@LP8788_CHG_STATE_M = common dso_local global i32 0, align 4
@LP8788_CHG_STATE_S = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp8788_charger*, %union.power_supply_propval*)* @lp8788_get_battery_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_get_battery_status(%struct.lp8788_charger* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lp8788_charger*, align 8
  %5 = alloca %union.power_supply_propval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lp8788_charger* %0, %struct.lp8788_charger** %4, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %5, align 8
  %9 = load %struct.lp8788_charger*, %struct.lp8788_charger** %4, align 8
  %10 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @LP8788_CHG_STATUS, align 4
  %13 = call i32 @lp8788_read_byte(i32 %11, i32 %12, i32* %7)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @LP8788_CHG_STATE_M, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @LP8788_CHG_STATE_S, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %37 [
    i32 129, label %25
    i32 128, label %29
    i32 133, label %29
    i32 132, label %29
    i32 131, label %29
    i32 130, label %33
  ]

25:                                               ; preds = %18
  %26 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %27 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %28 = bitcast %union.power_supply_propval* %27 to i32*
  store i32 %26, i32* %28, align 4
  br label %41

29:                                               ; preds = %18, %18, %18, %18
  %30 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %31 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %32 = bitcast %union.power_supply_propval* %31 to i32*
  store i32 %30, i32* %32, align 4
  br label %41

33:                                               ; preds = %18
  %34 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %35 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %36 = bitcast %union.power_supply_propval* %35 to i32*
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %18
  %38 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %39 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %40 = bitcast %union.power_supply_propval* %39 to i32*
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %33, %29, %25
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @lp8788_read_byte(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
