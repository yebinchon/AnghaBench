; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_cm_init_thermal_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_cm_init_thermal_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_manager = type { %struct.charger_desc*, %struct.TYPE_2__, i32 }
%struct.charger_desc = type { i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i64, i32* }
%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }

@POWER_SUPPLY_PROP_TEMP = common dso_local global i32 0, align 4
@CM_DEFAULT_CHARGE_TEMP_MAX = common dso_local global i64 0, align 8
@CM_DEFAULT_RECHARGE_TEMP_DIFF = common dso_local global i64 0, align 8
@POWER_SUPPLY_PROP_TEMP_AMBIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charger_manager*, %struct.power_supply*)* @cm_init_thermal_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_init_thermal_data(%struct.charger_manager* %0, %struct.power_supply* %1) #0 {
  %3 = alloca %struct.charger_manager*, align 8
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca %struct.charger_desc*, align 8
  %6 = alloca %union.power_supply_propval, align 4
  %7 = alloca i32, align 4
  store %struct.charger_manager* %0, %struct.charger_manager** %3, align 8
  store %struct.power_supply* %1, %struct.power_supply** %4, align 8
  %8 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %9 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %8, i32 0, i32 0
  %10 = load %struct.charger_desc*, %struct.charger_desc** %9, align 8
  store %struct.charger_desc* %10, %struct.charger_desc** %5, align 8
  %11 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %12 = load i32, i32* @POWER_SUPPLY_PROP_TEMP, align 4
  %13 = call i32 @power_supply_get_property(%struct.power_supply* %11, i32 %12, %union.power_supply_propval* %6)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @POWER_SUPPLY_PROP_TEMP, align 4
  %18 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %19 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %23 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  store i32 %17, i32* %26, align 4
  %27 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %28 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %33 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %32, i32 0, i32 0
  %34 = load %struct.charger_desc*, %struct.charger_desc** %33, align 8
  %35 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %16, %2
  %37 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %38 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %37, i32 0, i32 0
  %39 = load %struct.charger_desc*, %struct.charger_desc** %38, align 8
  %40 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %36
  %44 = load %struct.charger_desc*, %struct.charger_desc** %5, align 8
  %45 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* @CM_DEFAULT_CHARGE_TEMP_MAX, align 8
  %50 = load %struct.charger_desc*, %struct.charger_desc** %5, align 8
  %51 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.charger_desc*, %struct.charger_desc** %5, align 8
  %54 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load i64, i64* @CM_DEFAULT_RECHARGE_TEMP_DIFF, align 8
  %59 = load %struct.charger_desc*, %struct.charger_desc** %5, align 8
  %60 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %52
  br label %62

62:                                               ; preds = %61, %36
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @power_supply_get_property(%struct.power_supply*, i32, %union.power_supply_propval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
