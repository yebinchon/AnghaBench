; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9030_battery.c_da9030_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9030_battery.c_da9030_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.da9030_charger = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @da9030_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9030_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.da9030_charger*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %8 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %9 = call %struct.da9030_charger* @power_supply_get_drvdata(%struct.power_supply* %8)
  store %struct.da9030_charger* %9, %struct.da9030_charger** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %69 [
    i32 132, label %11
    i32 134, label %15
    i32 131, label %19
    i32 130, label %27
    i32 129, label %35
    i32 128, label %43
    i32 135, label %52
    i32 133, label %61
  ]

11:                                               ; preds = %3
  %12 = load %struct.da9030_charger*, %struct.da9030_charger** %7, align 8
  %13 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %14 = call i32 @da9030_battery_check_status(%struct.da9030_charger* %12, %union.power_supply_propval* %13)
  br label %70

15:                                               ; preds = %3
  %16 = load %struct.da9030_charger*, %struct.da9030_charger** %7, align 8
  %17 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %18 = call i32 @da9030_battery_check_health(%struct.da9030_charger* %16, %union.power_supply_propval* %17)
  br label %70

19:                                               ; preds = %3
  %20 = load %struct.da9030_charger*, %struct.da9030_charger** %7, align 8
  %21 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %26 = bitcast %union.power_supply_propval* %25 to i32*
  store i32 %24, i32* %26, align 4
  br label %70

27:                                               ; preds = %3
  %28 = load %struct.da9030_charger*, %struct.da9030_charger** %7, align 8
  %29 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %34 = bitcast %union.power_supply_propval* %33 to i32*
  store i32 %32, i32* %34, align 4
  br label %70

35:                                               ; preds = %3
  %36 = load %struct.da9030_charger*, %struct.da9030_charger** %7, align 8
  %37 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %42 = bitcast %union.power_supply_propval* %41 to i32*
  store i32 %40, i32* %42, align 4
  br label %70

43:                                               ; preds = %3
  %44 = load %struct.da9030_charger*, %struct.da9030_charger** %7, align 8
  %45 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @da9030_reg_to_mV(i32 %47)
  %49 = mul nsw i32 %48, 1000
  %50 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %51 = bitcast %union.power_supply_propval* %50 to i32*
  store i32 %49, i32* %51, align 4
  br label %70

52:                                               ; preds = %3
  %53 = load %struct.da9030_charger*, %struct.da9030_charger** %7, align 8
  %54 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @da9030_reg_to_mA(i32 %56)
  %58 = mul nsw i32 %57, 1000
  %59 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %60 = bitcast %union.power_supply_propval* %59 to i32*
  store i32 %58, i32* %60, align 4
  br label %70

61:                                               ; preds = %3
  %62 = load %struct.da9030_charger*, %struct.da9030_charger** %7, align 8
  %63 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %68 = bitcast %union.power_supply_propval* %67 to i32*
  store i32 %66, i32* %68, align 4
  br label %70

69:                                               ; preds = %3
  br label %70

70:                                               ; preds = %69, %61, %52, %43, %35, %27, %19, %15, %11
  ret i32 0
}

declare dso_local %struct.da9030_charger* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @da9030_battery_check_status(%struct.da9030_charger*, %union.power_supply_propval*) #1

declare dso_local i32 @da9030_battery_check_health(%struct.da9030_charger*, %union.power_supply_propval*) #1

declare dso_local i32 @da9030_reg_to_mV(i32) #1

declare dso_local i32 @da9030_reg_to_mA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
