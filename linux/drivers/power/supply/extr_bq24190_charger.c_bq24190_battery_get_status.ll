; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_battery_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_battery_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24190_dev_info = type { i32, i32 }
%union.power_supply_propval = type { i32 }

@BQ24190_REG_F_CHRG_FAULT_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_F_CHRG_FAULT_SHIFT = common dso_local global i32 0, align 4
@BQ24190_REG_SS = common dso_local global i32 0, align 4
@BQ24190_REG_SS_PG_STAT_MASK = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@BQ24190_REG_SS_CHRG_STAT_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_SS_CHRG_STAT_SHIFT = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq24190_dev_info*, %union.power_supply_propval*)* @bq24190_battery_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24190_battery_get_status(%struct.bq24190_dev_info* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bq24190_dev_info*, align 8
  %5 = alloca %union.power_supply_propval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bq24190_dev_info* %0, %struct.bq24190_dev_info** %4, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %5, align 8
  %10 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %4, align 8
  %11 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %4, align 8
  %14 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %4, align 8
  %17 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %16, i32 0, i32 1
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load i32, i32* @BQ24190_REG_F_CHRG_FAULT_MASK, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @BQ24190_REG_F_CHRG_FAULT_SHIFT, align 4
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %4, align 8
  %26 = load i32, i32* @BQ24190_REG_SS, align 4
  %27 = call i32 @bq24190_read(%struct.bq24190_dev_info* %25, i32 %26, i32* %6)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %69

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @BQ24190_REG_SS_PG_STAT_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37, %32
  %41 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  store i32 %41, i32* %8, align 4
  br label %60

42:                                               ; preds = %37
  %43 = load i32, i32* @BQ24190_REG_SS_CHRG_STAT_MASK, align 4
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @BQ24190_REG_SS_CHRG_STAT_SHIFT, align 4
  %47 = load i32, i32* %6, align 4
  %48 = ashr i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  switch i32 %49, label %56 [
    i32 0, label %50
    i32 1, label %52
    i32 2, label %52
    i32 3, label %54
  ]

50:                                               ; preds = %42
  %51 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  store i32 %51, i32* %8, align 4
  br label %59

52:                                               ; preds = %42, %42
  %53 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  store i32 %53, i32* %8, align 4
  br label %59

54:                                               ; preds = %42
  %55 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  store i32 %55, i32* %8, align 4
  br label %59

56:                                               ; preds = %42
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %56, %54, %52, %50
  br label %60

60:                                               ; preds = %59, %40
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %66 = bitcast %union.power_supply_propval* %65 to i32*
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %30
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bq24190_read(%struct.bq24190_dev_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
