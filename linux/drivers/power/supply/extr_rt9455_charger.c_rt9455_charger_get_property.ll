; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_charger_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_charger_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.rt9455_info = type { i32 }

@POWER_SUPPLY_SCOPE_SYSTEM = common dso_local global i32 0, align 4
@RT9455_MODEL_NAME = common dso_local global i32 0, align 4
@RT9455_MANUFACTURER = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @rt9455_charger_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt9455_charger_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.rt9455_info*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = call %struct.rt9455_info* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.rt9455_info* %10, %struct.rt9455_info** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %60 [
    i32 128, label %12
    i32 134, label %16
    i32 130, label %20
    i32 131, label %24
    i32 138, label %28
    i32 137, label %32
    i32 136, label %36
    i32 135, label %40
    i32 129, label %44
    i32 139, label %48
    i32 132, label %52
    i32 133, label %56
  ]

12:                                               ; preds = %3
  %13 = load %struct.rt9455_info*, %struct.rt9455_info** %8, align 8
  %14 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %15 = call i32 @rt9455_charger_get_status(%struct.rt9455_info* %13, %union.power_supply_propval* %14)
  store i32 %15, i32* %4, align 4
  br label %63

16:                                               ; preds = %3
  %17 = load %struct.rt9455_info*, %struct.rt9455_info** %8, align 8
  %18 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %19 = call i32 @rt9455_charger_get_health(%struct.rt9455_info* %17, %union.power_supply_propval* %18)
  store i32 %19, i32* %4, align 4
  br label %63

20:                                               ; preds = %3
  %21 = load %struct.rt9455_info*, %struct.rt9455_info** %8, align 8
  %22 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %23 = call i32 @rt9455_charger_get_battery_presence(%struct.rt9455_info* %21, %union.power_supply_propval* %22)
  store i32 %23, i32* %4, align 4
  br label %63

24:                                               ; preds = %3
  %25 = load %struct.rt9455_info*, %struct.rt9455_info** %8, align 8
  %26 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %27 = call i32 @rt9455_charger_get_online(%struct.rt9455_info* %25, %union.power_supply_propval* %26)
  store i32 %27, i32* %4, align 4
  br label %63

28:                                               ; preds = %3
  %29 = load %struct.rt9455_info*, %struct.rt9455_info** %8, align 8
  %30 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %31 = call i32 @rt9455_charger_get_current(%struct.rt9455_info* %29, %union.power_supply_propval* %30)
  store i32 %31, i32* %4, align 4
  br label %63

32:                                               ; preds = %3
  %33 = load %struct.rt9455_info*, %struct.rt9455_info** %8, align 8
  %34 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %35 = call i32 @rt9455_charger_get_current_max(%struct.rt9455_info* %33, %union.power_supply_propval* %34)
  store i32 %35, i32* %4, align 4
  br label %63

36:                                               ; preds = %3
  %37 = load %struct.rt9455_info*, %struct.rt9455_info** %8, align 8
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %39 = call i32 @rt9455_charger_get_voltage(%struct.rt9455_info* %37, %union.power_supply_propval* %38)
  store i32 %39, i32* %4, align 4
  br label %63

40:                                               ; preds = %3
  %41 = load %struct.rt9455_info*, %struct.rt9455_info** %8, align 8
  %42 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %43 = call i32 @rt9455_charger_get_voltage_max(%struct.rt9455_info* %41, %union.power_supply_propval* %42)
  store i32 %43, i32* %4, align 4
  br label %63

44:                                               ; preds = %3
  %45 = load i32, i32* @POWER_SUPPLY_SCOPE_SYSTEM, align 4
  %46 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %47 = bitcast %union.power_supply_propval* %46 to i32*
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %63

48:                                               ; preds = %3
  %49 = load %struct.rt9455_info*, %struct.rt9455_info** %8, align 8
  %50 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %51 = call i32 @rt9455_charger_get_term_current(%struct.rt9455_info* %49, %union.power_supply_propval* %50)
  store i32 %51, i32* %4, align 4
  br label %63

52:                                               ; preds = %3
  %53 = load i32, i32* @RT9455_MODEL_NAME, align 4
  %54 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %55 = bitcast %union.power_supply_propval* %54 to i32*
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %4, align 4
  br label %63

56:                                               ; preds = %3
  %57 = load i32, i32* @RT9455_MANUFACTURER, align 4
  %58 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %59 = bitcast %union.power_supply_propval* %58 to i32*
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %63

60:                                               ; preds = %3
  %61 = load i32, i32* @ENODATA, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16, %12
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.rt9455_info* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @rt9455_charger_get_status(%struct.rt9455_info*, %union.power_supply_propval*) #1

declare dso_local i32 @rt9455_charger_get_health(%struct.rt9455_info*, %union.power_supply_propval*) #1

declare dso_local i32 @rt9455_charger_get_battery_presence(%struct.rt9455_info*, %union.power_supply_propval*) #1

declare dso_local i32 @rt9455_charger_get_online(%struct.rt9455_info*, %union.power_supply_propval*) #1

declare dso_local i32 @rt9455_charger_get_current(%struct.rt9455_info*, %union.power_supply_propval*) #1

declare dso_local i32 @rt9455_charger_get_current_max(%struct.rt9455_info*, %union.power_supply_propval*) #1

declare dso_local i32 @rt9455_charger_get_voltage(%struct.rt9455_info*, %union.power_supply_propval*) #1

declare dso_local i32 @rt9455_charger_get_voltage_max(%struct.rt9455_info*, %union.power_supply_propval*) #1

declare dso_local i32 @rt9455_charger_get_term_current(%struct.rt9455_info*, %union.power_supply_propval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
