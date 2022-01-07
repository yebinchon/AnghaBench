; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm831x_backup.c_wm831x_backup_get_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm831x_backup.c_wm831x_backup_get_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.wm831x_backup = type { %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_BACKUP_CHARGER_CONTROL = common dso_local global i32 0, align 4
@WM831X_BKUP_CHG_STS = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@WM831X_AUX_BKUP_BATT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @wm831x_backup_get_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_backup_get_prop(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.wm831x_backup*, align 8
  %9 = alloca %struct.wm831x*, align 8
  %10 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %11 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %12 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.wm831x_backup* @dev_get_drvdata(i32 %14)
  store %struct.wm831x_backup* %15, %struct.wm831x_backup** %8, align 8
  %16 = load %struct.wm831x_backup*, %struct.wm831x_backup** %8, align 8
  %17 = getelementptr inbounds %struct.wm831x_backup, %struct.wm831x_backup* %16, i32 0, i32 0
  %18 = load %struct.wm831x*, %struct.wm831x** %17, align 8
  store %struct.wm831x* %18, %struct.wm831x** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.wm831x*, %struct.wm831x** %9, align 8
  %20 = load i32, i32* @WM831X_BACKUP_CHARGER_CONTROL, align 4
  %21 = call i32 @wm831x_reg_read(%struct.wm831x* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %64

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %59 [
    i32 129, label %28
    i32 128, label %42
    i32 130, label %47
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @WM831X_BKUP_CHG_STS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %35 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %36 = bitcast %union.power_supply_propval* %35 to i32*
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %28
  %38 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %39 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %40 = bitcast %union.power_supply_propval* %39 to i32*
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %33
  br label %62

42:                                               ; preds = %26
  %43 = load %struct.wm831x*, %struct.wm831x** %9, align 8
  %44 = load i32, i32* @WM831X_AUX_BKUP_BATT, align 4
  %45 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %46 = call i32 @wm831x_backup_read_voltage(%struct.wm831x* %43, i32 %44, %union.power_supply_propval* %45)
  store i32 %46, i32* %10, align 4
  br label %62

47:                                               ; preds = %26
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @WM831X_BKUP_CHG_STS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %54 = bitcast %union.power_supply_propval* %53 to i32*
  store i32 1, i32* %54, align 4
  br label %58

55:                                               ; preds = %47
  %56 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %57 = bitcast %union.power_supply_propval* %56 to i32*
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  br label %62

59:                                               ; preds = %26
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %59, %58, %42, %41
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %24
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.wm831x_backup* @dev_get_drvdata(i32) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @wm831x_backup_read_voltage(%struct.wm831x*, i32, %union.power_supply_propval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
