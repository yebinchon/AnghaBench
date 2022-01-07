; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pmu_battery.c_pmu_bat_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pmu_battery.c_pmu_bat_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.pmu_battery_dev = type { %struct.pmu_battery_info* }
%struct.pmu_battery_info = type { i32, i32, i32, i32, i32, i32 }

@PMU_BATT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@pmu_power_flags = common dso_local global i32 0, align 4
@PMU_PWR_AC_PRESENT = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@PMU_BATT_PRESENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @pmu_bat_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_bat_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.pmu_battery_dev*, align 8
  %9 = alloca %struct.pmu_battery_info*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call %struct.pmu_battery_dev* @to_pmu_battery_dev(%struct.power_supply* %10)
  store %struct.pmu_battery_dev* %11, %struct.pmu_battery_dev** %8, align 8
  %12 = load %struct.pmu_battery_dev*, %struct.pmu_battery_dev** %8, align 8
  %13 = getelementptr inbounds %struct.pmu_battery_dev, %struct.pmu_battery_dev* %12, i32 0, i32 0
  %14 = load %struct.pmu_battery_info*, %struct.pmu_battery_info** %13, align 8
  store %struct.pmu_battery_info* %14, %struct.pmu_battery_info** %9, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %93 [
    i32 130, label %16
    i32 131, label %42
    i32 132, label %54
    i32 134, label %59
    i32 133, label %66
    i32 135, label %73
    i32 128, label %80
    i32 129, label %87
  ]

16:                                               ; preds = %3
  %17 = load %struct.pmu_battery_info*, %struct.pmu_battery_info** %9, align 8
  %18 = getelementptr inbounds %struct.pmu_battery_info, %struct.pmu_battery_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PMU_BATT_CHARGING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %25 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %26 = bitcast %union.power_supply_propval* %25 to i32*
  store i32 %24, i32* %26, align 4
  br label %41

27:                                               ; preds = %16
  %28 = load i32, i32* @pmu_power_flags, align 4
  %29 = load i32, i32* @PMU_PWR_AC_PRESENT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %34 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %35 = bitcast %union.power_supply_propval* %34 to i32*
  store i32 %33, i32* %35, align 4
  br label %40

36:                                               ; preds = %27
  %37 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %39 = bitcast %union.power_supply_propval* %38 to i32*
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %23
  br label %96

42:                                               ; preds = %3
  %43 = load %struct.pmu_battery_info*, %struct.pmu_battery_info** %9, align 8
  %44 = getelementptr inbounds %struct.pmu_battery_info, %struct.pmu_battery_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PMU_BATT_PRESENT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %53 = bitcast %union.power_supply_propval* %52 to i32*
  store i32 %51, i32* %53, align 4
  br label %96

54:                                               ; preds = %3
  %55 = load %struct.pmu_battery_info*, %struct.pmu_battery_info** %9, align 8
  %56 = call i32 @pmu_bat_get_model_name(%struct.pmu_battery_info* %55)
  %57 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %58 = bitcast %union.power_supply_propval* %57 to i32*
  store i32 %56, i32* %58, align 4
  br label %96

59:                                               ; preds = %3
  %60 = load %struct.pmu_battery_info*, %struct.pmu_battery_info** %9, align 8
  %61 = getelementptr inbounds %struct.pmu_battery_info, %struct.pmu_battery_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %62, 1000
  %64 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %65 = bitcast %union.power_supply_propval* %64 to i32*
  store i32 %63, i32* %65, align 4
  br label %96

66:                                               ; preds = %3
  %67 = load %struct.pmu_battery_info*, %struct.pmu_battery_info** %9, align 8
  %68 = getelementptr inbounds %struct.pmu_battery_info, %struct.pmu_battery_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 1000
  %71 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %72 = bitcast %union.power_supply_propval* %71 to i32*
  store i32 %70, i32* %72, align 4
  br label %96

73:                                               ; preds = %3
  %74 = load %struct.pmu_battery_info*, %struct.pmu_battery_info** %9, align 8
  %75 = getelementptr inbounds %struct.pmu_battery_info, %struct.pmu_battery_info* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %76, 1000
  %78 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %79 = bitcast %union.power_supply_propval* %78 to i32*
  store i32 %77, i32* %79, align 4
  br label %96

80:                                               ; preds = %3
  %81 = load %struct.pmu_battery_info*, %struct.pmu_battery_info** %9, align 8
  %82 = getelementptr inbounds %struct.pmu_battery_info, %struct.pmu_battery_info* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 1000
  %85 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %86 = bitcast %union.power_supply_propval* %85 to i32*
  store i32 %84, i32* %86, align 4
  br label %96

87:                                               ; preds = %3
  %88 = load %struct.pmu_battery_info*, %struct.pmu_battery_info** %9, align 8
  %89 = getelementptr inbounds %struct.pmu_battery_info, %struct.pmu_battery_info* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %92 = bitcast %union.power_supply_propval* %91 to i32*
  store i32 %90, i32* %92, align 4
  br label %96

93:                                               ; preds = %3
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %97

96:                                               ; preds = %87, %80, %73, %66, %59, %54, %42, %41
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.pmu_battery_dev* @to_pmu_battery_dev(%struct.power_supply*) #1

declare dso_local i32 @pmu_bat_get_model_name(%struct.pmu_battery_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
