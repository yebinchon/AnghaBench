; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_act8945a_charger.c_act8945a_get_battery_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_act8945a_charger.c_act8945a_get_battery_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@ACT8945A_APCH_STATUS = common dso_local global i32 0, align 4
@ACT8945A_APCH_CFG = common dso_local global i32 0, align 4
@ACT8945A_APCH_STATE = common dso_local global i32 0, align 4
@APCH_STATE_CSTATE = common dso_local global i32 0, align 4
@APCH_STATE_CSTATE_SHIFT = common dso_local global i32 0, align 4
@APCH_CFG_SUSCHG = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNKNOWN = common dso_local global i32 0, align 4
@APCH_STATUS_INDAT = common dso_local global i32 0, align 4
@APCH_STATUS_TEMPDAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@APCH_STATUS_TIMRDAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERVOLTAGE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32*)* @act8945a_get_battery_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act8945a_get_battery_health(%struct.regmap* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.regmap*, %struct.regmap** %4, align 8
  %11 = load i32, i32* @ACT8945A_APCH_STATUS, align 4
  %12 = call i32 @regmap_read(%struct.regmap* %10, i32 %11, i32* %7)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %85

17:                                               ; preds = %2
  %18 = load %struct.regmap*, %struct.regmap** %4, align 8
  %19 = load i32, i32* @ACT8945A_APCH_CFG, align 4
  %20 = call i32 @regmap_read(%struct.regmap* %18, i32 %19, i32* %9)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %85

25:                                               ; preds = %17
  %26 = load %struct.regmap*, %struct.regmap** %4, align 8
  %27 = load i32, i32* @ACT8945A_APCH_STATE, align 4
  %28 = call i32 @regmap_read(%struct.regmap* %26, i32 %27, i32* %8)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %85

33:                                               ; preds = %25
  %34 = load i32, i32* @APCH_STATE_CSTATE, align 4
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @APCH_STATE_CSTATE_SHIFT, align 4
  %38 = load i32, i32* %8, align 4
  %39 = lshr i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %81 [
    i32 131, label %41
    i32 128, label %80
    i32 129, label %80
    i32 130, label %80
  ]

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @APCH_CFG_SUSCHG, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @POWER_SUPPLY_HEALTH_UNKNOWN, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  br label %79

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @APCH_STATUS_INDAT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @APCH_STATUS_TEMPDAT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %74

62:                                               ; preds = %54
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @APCH_STATUS_TIMRDAT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE, align 4
  %69 = load i32*, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  br label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERVOLTAGE, align 4
  %72 = load i32*, i32** %5, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %73, %59
  br label %78

75:                                               ; preds = %49
  %76 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %74
  br label %79

79:                                               ; preds = %78, %46
  br label %84

80:                                               ; preds = %33, %33, %33
  br label %81

81:                                               ; preds = %33, %80
  %82 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %83 = load i32*, i32** %5, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %79
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %31, %23, %15
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
