; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-charger.c_sbs_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-charger.c_sbs_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.sbs_info = type { i32 }

@SBS_CHARGER_STATUS_BATTERY_PRESENT = common dso_local global i32 0, align 4
@SBS_CHARGER_STATUS_AC_PRESENT = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@SBS_CHARGER_STATUS_CHARGE_INHIBITED = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@SBS_CHARGER_STATUS_RES_COLD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_COLD = common dso_local global i32 0, align 4
@SBS_CHARGER_STATUS_RES_HOT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @sbs_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbs_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.sbs_info*, align 8
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call %struct.sbs_info* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.sbs_info* %11, %struct.sbs_info** %8, align 8
  %12 = load %struct.sbs_info*, %struct.sbs_info** %8, align 8
  %13 = getelementptr inbounds %struct.sbs_info, %struct.sbs_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %91 [
    i32 129, label %16
    i32 130, label %26
    i32 128, label %36
    i32 131, label %68
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @SBS_CHARGER_STATUS_BATTERY_PRESENT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %25 = bitcast %union.power_supply_propval* %24 to i32*
  store i32 %23, i32* %25, align 4
  br label %94

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @SBS_CHARGER_STATUS_AC_PRESENT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %35 = bitcast %union.power_supply_propval* %34 to i32*
  store i32 %33, i32* %35, align 4
  br label %94

36:                                               ; preds = %3
  %37 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %39 = bitcast %union.power_supply_propval* %38 to i32*
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @SBS_CHARGER_STATUS_BATTERY_PRESENT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %46 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %47 = bitcast %union.power_supply_propval* %46 to i32*
  store i32 %45, i32* %47, align 4
  br label %67

48:                                               ; preds = %36
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @SBS_CHARGER_STATUS_AC_PRESENT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @SBS_CHARGER_STATUS_CHARGE_INHIBITED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %60 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %61 = bitcast %union.power_supply_propval* %60 to i32*
  store i32 %59, i32* %61, align 4
  br label %66

62:                                               ; preds = %53, %48
  %63 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %64 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %65 = bitcast %union.power_supply_propval* %64 to i32*
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %44
  br label %94

68:                                               ; preds = %3
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @SBS_CHARGER_STATUS_RES_COLD, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @POWER_SUPPLY_HEALTH_COLD, align 4
  %75 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %76 = bitcast %union.power_supply_propval* %75 to i32*
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %68
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @SBS_CHARGER_STATUS_RES_HOT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  %84 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %85 = bitcast %union.power_supply_propval* %84 to i32*
  store i32 %83, i32* %85, align 4
  br label %90

86:                                               ; preds = %77
  %87 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %88 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %89 = bitcast %union.power_supply_propval* %88 to i32*
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %82
  br label %94

91:                                               ; preds = %3
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %95

94:                                               ; preds = %90, %67, %26, %16
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %91
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.sbs_info* @power_supply_get_drvdata(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
