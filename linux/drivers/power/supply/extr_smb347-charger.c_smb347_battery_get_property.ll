; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.smb347_charger = type { %struct.smb347_charger_platform_data* }
%struct.smb347_charger_platform_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@ENODATA = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_TRICKLE = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_FAST = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @smb347_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb347_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.smb347_charger*, align 8
  %9 = alloca %struct.smb347_charger_platform_data*, align 8
  %10 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %11 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %12 = call %struct.smb347_charger* @power_supply_get_drvdata(%struct.power_supply* %11)
  store %struct.smb347_charger* %12, %struct.smb347_charger** %8, align 8
  %13 = load %struct.smb347_charger*, %struct.smb347_charger** %8, align 8
  %14 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %13, i32 0, i32 0
  %15 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %14, align 8
  store %struct.smb347_charger_platform_data* %15, %struct.smb347_charger_platform_data** %9, align 8
  %16 = load %struct.smb347_charger*, %struct.smb347_charger** %8, align 8
  %17 = call i32 @smb347_update_ps_status(%struct.smb347_charger* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %97

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %93 [
    i32 131, label %24
    i32 133, label %35
    i32 130, label %58
    i32 128, label %65
    i32 129, label %72
    i32 134, label %79
    i32 132, label %86
  ]

24:                                               ; preds = %22
  %25 = load %struct.smb347_charger*, %struct.smb347_charger** %8, align 8
  %26 = call i32 @smb347_get_charging_status(%struct.smb347_charger* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %97

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %34 = bitcast %union.power_supply_propval* %33 to i32*
  store i32 %32, i32* %34, align 4
  br label %96

35:                                               ; preds = %22
  %36 = load %struct.smb347_charger*, %struct.smb347_charger** %8, align 8
  %37 = call i32 @smb347_is_ps_online(%struct.smb347_charger* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @ENODATA, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %97

42:                                               ; preds = %35
  %43 = load %struct.smb347_charger*, %struct.smb347_charger** %8, align 8
  %44 = call i32 @smb347_charging_status(%struct.smb347_charger* %43)
  switch i32 %44, label %53 [
    i32 1, label %45
    i32 2, label %49
  ]

45:                                               ; preds = %42
  %46 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_TRICKLE, align 4
  %47 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %48 = bitcast %union.power_supply_propval* %47 to i32*
  store i32 %46, i32* %48, align 4
  br label %57

49:                                               ; preds = %42
  %50 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_FAST, align 4
  %51 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %52 = bitcast %union.power_supply_propval* %51 to i32*
  store i32 %50, i32* %52, align 4
  br label %57

53:                                               ; preds = %42
  %54 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_NONE, align 4
  %55 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %56 = bitcast %union.power_supply_propval* %55 to i32*
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %49, %45
  br label %96

58:                                               ; preds = %22
  %59 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %9, align 8
  %60 = getelementptr inbounds %struct.smb347_charger_platform_data, %struct.smb347_charger_platform_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %64 = bitcast %union.power_supply_propval* %63 to i32*
  store i32 %62, i32* %64, align 4
  br label %96

65:                                               ; preds = %22
  %66 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %9, align 8
  %67 = getelementptr inbounds %struct.smb347_charger_platform_data, %struct.smb347_charger_platform_data* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %71 = bitcast %union.power_supply_propval* %70 to i32*
  store i32 %69, i32* %71, align 4
  br label %96

72:                                               ; preds = %22
  %73 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %9, align 8
  %74 = getelementptr inbounds %struct.smb347_charger_platform_data, %struct.smb347_charger_platform_data* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %78 = bitcast %union.power_supply_propval* %77 to i32*
  store i32 %76, i32* %78, align 4
  br label %96

79:                                               ; preds = %22
  %80 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %9, align 8
  %81 = getelementptr inbounds %struct.smb347_charger_platform_data, %struct.smb347_charger_platform_data* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %85 = bitcast %union.power_supply_propval* %84 to i32*
  store i32 %83, i32* %85, align 4
  br label %96

86:                                               ; preds = %22
  %87 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %9, align 8
  %88 = getelementptr inbounds %struct.smb347_charger_platform_data, %struct.smb347_charger_platform_data* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %92 = bitcast %union.power_supply_propval* %91 to i32*
  store i32 %90, i32* %92, align 4
  br label %96

93:                                               ; preds = %22
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %97

96:                                               ; preds = %86, %79, %72, %65, %58, %57, %31
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %93, %39, %29, %20
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.smb347_charger* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @smb347_update_ps_status(%struct.smb347_charger*) #1

declare dso_local i32 @smb347_get_charging_status(%struct.smb347_charger*) #1

declare dso_local i32 @smb347_is_ps_online(%struct.smb347_charger*) #1

declare dso_local i32 @smb347_charging_status(%struct.smb347_charger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
