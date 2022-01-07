; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_charger_get_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_charger_get_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24190_dev_info = type { i32, i32 }
%union.power_supply_propval = type { i32 }

@BQ24190_REG_F_NTC_FAULT_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_F_NTC_FAULT_SHIFT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_COLD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNKNOWN = common dso_local global i32 0, align 4
@BQ24190_REG_F_BAT_FAULT_MASK = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERVOLTAGE = common dso_local global i32 0, align 4
@BQ24190_REG_F_CHRG_FAULT_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_F_CHRG_FAULT_SHIFT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = common dso_local global i32 0, align 4
@BQ24190_REG_F_BOOST_FAULT_MASK = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq24190_dev_info*, %union.power_supply_propval*)* @bq24190_charger_get_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24190_charger_get_health(%struct.bq24190_dev_info* %0, %union.power_supply_propval* %1) #0 {
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
  %17 = load i32, i32* @BQ24190_REG_F_NTC_FAULT_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @BQ24190_REG_F_NTC_FAULT_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = and i32 %23, 7
  switch i32 %24, label %29 [
    i32 1, label %25
    i32 3, label %25
    i32 5, label %25
    i32 2, label %27
    i32 4, label %27
    i32 6, label %27
  ]

25:                                               ; preds = %20, %20, %20
  %26 = load i32, i32* @POWER_SUPPLY_HEALTH_COLD, align 4
  store i32 %26, i32* %6, align 4
  br label %31

27:                                               ; preds = %20, %20, %20
  %28 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  store i32 %28, i32* %6, align 4
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @POWER_SUPPLY_HEALTH_UNKNOWN, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %29, %27, %25
  br label %69

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @BQ24190_REG_F_BAT_FAULT_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERVOLTAGE, align 4
  store i32 %38, i32* %6, align 4
  br label %68

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @BQ24190_REG_F_CHRG_FAULT_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @BQ24190_REG_F_CHRG_FAULT_SHIFT, align 4
  %47 = ashr i32 %45, %46
  %48 = and i32 %47, 3
  switch i32 %48, label %55 [
    i32 1, label %49
    i32 2, label %51
    i32 3, label %53
  ]

49:                                               ; preds = %44
  %50 = load i32, i32* @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 4
  store i32 %50, i32* %6, align 4
  br label %56

51:                                               ; preds = %44
  %52 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  store i32 %52, i32* %6, align 4
  br label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE, align 4
  store i32 %54, i32* %6, align 4
  br label %56

55:                                               ; preds = %44
  store i32 -1, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %53, %51, %49
  br label %67

57:                                               ; preds = %39
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @BQ24190_REG_F_BOOST_FAULT_MASK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERVOLTAGE, align 4
  store i32 %63, i32* %6, align 4
  br label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %62
  br label %67

67:                                               ; preds = %66, %56
  br label %68

68:                                               ; preds = %67, %37
  br label %69

69:                                               ; preds = %68, %31
  %70 = load i32, i32* %6, align 4
  %71 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %72 = bitcast %union.power_supply_propval* %71 to i32*
  store i32 %70, i32* %72, align 4
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
