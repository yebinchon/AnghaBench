; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_olpc_battery.c_olpc_bat_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_olpc_battery.c_olpc_bat_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.olpc_battery_data = type { i64 }
%union.power_supply_propval = type { i8* }

@BAT_STAT_CHARGING = common dso_local global i32 0, align 4
@BAT_STAT_TRICKLE = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i8* null, align 8
@BAT_STAT_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i8* null, align 8
@BAT_STAT_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i8* null, align 8
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i8* null, align 8
@BAT_STAT_AC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.olpc_battery_data*, %union.power_supply_propval*, i32)* @olpc_bat_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @olpc_bat_get_status(%struct.olpc_battery_data* %0, %union.power_supply_propval* %1, i32 %2) #0 {
  %4 = alloca %struct.olpc_battery_data*, align 8
  %5 = alloca %union.power_supply_propval*, align 8
  %6 = alloca i32, align 4
  store %struct.olpc_battery_data* %0, %struct.olpc_battery_data** %4, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.olpc_battery_data*, %struct.olpc_battery_data** %4, align 8
  %8 = getelementptr inbounds %struct.olpc_battery_data, %struct.olpc_battery_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @BAT_STAT_CHARGING, align 4
  %14 = load i32, i32* @BAT_STAT_TRICKLE, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i8*, i8** @POWER_SUPPLY_STATUS_CHARGING, align 8
  %20 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %21 = bitcast %union.power_supply_propval* %20 to i8**
  store i8* %19, i8** %21, align 8
  br label %46

22:                                               ; preds = %11
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @BAT_STAT_DISCHARGING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i8*, i8** @POWER_SUPPLY_STATUS_DISCHARGING, align 8
  %29 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %30 = bitcast %union.power_supply_propval* %29 to i8**
  store i8* %28, i8** %30, align 8
  br label %45

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @BAT_STAT_FULL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i8*, i8** @POWER_SUPPLY_STATUS_FULL, align 8
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %39 = bitcast %union.power_supply_propval* %38 to i8**
  store i8* %37, i8** %39, align 8
  br label %44

40:                                               ; preds = %31
  %41 = load i8*, i8** @POWER_SUPPLY_STATUS_NOT_CHARGING, align 8
  %42 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %43 = bitcast %union.power_supply_propval* %42 to i8**
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %27
  br label %46

46:                                               ; preds = %45, %18
  br label %71

47:                                               ; preds = %3
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @BAT_STAT_AC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** @POWER_SUPPLY_STATUS_DISCHARGING, align 8
  %54 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %55 = bitcast %union.power_supply_propval* %54 to i8**
  store i8* %53, i8** %55, align 8
  br label %70

56:                                               ; preds = %47
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @BAT_STAT_FULL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i8*, i8** @POWER_SUPPLY_STATUS_FULL, align 8
  %63 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %64 = bitcast %union.power_supply_propval* %63 to i8**
  store i8* %62, i8** %64, align 8
  br label %69

65:                                               ; preds = %56
  %66 = load i8*, i8** @POWER_SUPPLY_STATUS_CHARGING, align 8
  %67 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %68 = bitcast %union.power_supply_propval* %67 to i8**
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %52
  br label %71

71:                                               ; preds = %70, %46
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
