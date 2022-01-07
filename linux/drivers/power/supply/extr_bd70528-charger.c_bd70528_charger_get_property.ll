; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bd70528-charger.c_bd70528_charger_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bd70528-charger.c_bd70528_charger_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.bd70528_psy = type { i32 }

@bd70528_charger_model = common dso_local global i32 0, align 4
@bd70528_charger_manufacturer = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @bd70528_charger_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_charger_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.bd70528_psy*, align 8
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call %struct.bd70528_psy* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.bd70528_psy* %11, %struct.bd70528_psy** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %66 [
    i32 128, label %13
    i32 136, label %18
    i32 134, label %23
    i32 129, label %28
    i32 133, label %33
    i32 135, label %43
    i32 130, label %53
    i32 131, label %58
    i32 132, label %62
  ]

13:                                               ; preds = %3
  %14 = load %struct.bd70528_psy*, %struct.bd70528_psy** %8, align 8
  %15 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %16 = bitcast %union.power_supply_propval* %15 to i32*
  %17 = call i32 @bd70528_get_charger_status(%struct.bd70528_psy* %14, i32* %16)
  store i32 %17, i32* %4, align 4
  br label %70

18:                                               ; preds = %3
  %19 = load %struct.bd70528_psy*, %struct.bd70528_psy** %8, align 8
  %20 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %21 = bitcast %union.power_supply_propval* %20 to i32*
  %22 = call i32 @bd70528_get_charge_type(%struct.bd70528_psy* %19, i32* %21)
  store i32 %22, i32* %4, align 4
  br label %70

23:                                               ; preds = %3
  %24 = load %struct.bd70528_psy*, %struct.bd70528_psy** %8, align 8
  %25 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %26 = bitcast %union.power_supply_propval* %25 to i32*
  %27 = call i32 @bd70528_get_battery_health(%struct.bd70528_psy* %24, i32* %26)
  store i32 %27, i32* %4, align 4
  br label %70

28:                                               ; preds = %3
  %29 = load %struct.bd70528_psy*, %struct.bd70528_psy** %8, align 8
  %30 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %31 = bitcast %union.power_supply_propval* %30 to i32*
  %32 = call i32 @bd70528_get_present(%struct.bd70528_psy* %29, i32* %31)
  store i32 %32, i32* %4, align 4
  br label %70

33:                                               ; preds = %3
  %34 = load %struct.bd70528_psy*, %struct.bd70528_psy** %8, align 8
  %35 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %36 = bitcast %union.power_supply_propval* %35 to i32*
  %37 = call i32 @get_current_limit(%struct.bd70528_psy* %34, i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %39 = bitcast %union.power_supply_propval* %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 1000
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %70

43:                                               ; preds = %3
  %44 = load %struct.bd70528_psy*, %struct.bd70528_psy** %8, align 8
  %45 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %46 = bitcast %union.power_supply_propval* %45 to i32*
  %47 = call i32 @get_charge_current(%struct.bd70528_psy* %44, i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %49 = bitcast %union.power_supply_propval* %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %50, 1000
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %70

53:                                               ; preds = %3
  %54 = load %struct.bd70528_psy*, %struct.bd70528_psy** %8, align 8
  %55 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %56 = bitcast %union.power_supply_propval* %55 to i32*
  %57 = call i32 @bd70528_get_online(%struct.bd70528_psy* %54, i32* %56)
  store i32 %57, i32* %4, align 4
  br label %70

58:                                               ; preds = %3
  %59 = load i32, i32* @bd70528_charger_model, align 4
  %60 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %61 = bitcast %union.power_supply_propval* %60 to i32*
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %4, align 4
  br label %70

62:                                               ; preds = %3
  %63 = load i32, i32* @bd70528_charger_manufacturer, align 4
  %64 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %65 = bitcast %union.power_supply_propval* %64 to i32*
  store i32 %63, i32* %65, align 4
  store i32 0, i32* %4, align 4
  br label %70

66:                                               ; preds = %3
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %67, %62, %58, %53, %43, %33, %28, %23, %18, %13
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.bd70528_psy* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @bd70528_get_charger_status(%struct.bd70528_psy*, i32*) #1

declare dso_local i32 @bd70528_get_charge_type(%struct.bd70528_psy*, i32*) #1

declare dso_local i32 @bd70528_get_battery_health(%struct.bd70528_psy*, i32*) #1

declare dso_local i32 @bd70528_get_present(%struct.bd70528_psy*, i32*) #1

declare dso_local i32 @get_current_limit(%struct.bd70528_psy*, i32*) #1

declare dso_local i32 @get_charge_current(%struct.bd70528_psy*, i32*) #1

declare dso_local i32 @bd70528_get_online(%struct.bd70528_psy*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
