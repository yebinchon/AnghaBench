; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_get_charging_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_get_charging_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb347_charger = type { i32 }

@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@STAT_C = common dso_local global i32 0, align 4
@STAT_C_CHARGER_ERROR = common dso_local global i32 0, align 4
@STAT_C_HOLDOFF_STAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@STAT_C_CHG_MASK = common dso_local global i32 0, align 4
@STAT_C_CHG_SHIFT = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@STAT_C_CHG_TERM = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb347_charger*)* @smb347_get_charging_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb347_get_charging_status(%struct.smb347_charger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb347_charger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smb347_charger* %0, %struct.smb347_charger** %3, align 8
  %7 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %8 = call i32 @smb347_is_ps_online(%struct.smb347_charger* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  store i32 %11, i32* %2, align 4
  br label %56

12:                                               ; preds = %1
  %13 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %14 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @STAT_C, align 4
  %17 = call i32 @regmap_read(i32 %15, i32 %16, i32* %6)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %56

22:                                               ; preds = %12
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @STAT_C_CHARGER_ERROR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @STAT_C_HOLDOFF_STAT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %22
  %33 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  store i32 %33, i32* %5, align 4
  br label %54

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @STAT_C_CHG_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @STAT_C_CHG_SHIFT, align 4
  %39 = lshr i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  store i32 %42, i32* %5, align 4
  br label %53

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @STAT_C_CHG_TERM, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  store i32 %49, i32* %5, align 4
  br label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %48
  br label %53

53:                                               ; preds = %52, %41
  br label %54

54:                                               ; preds = %53, %32
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %20, %10
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @smb347_is_ps_online(%struct.smb347_charger*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
