; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_get_battery_capacity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_get_battery_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8788_charger = type { %struct.lp8788_charger_platform_data*, %struct.lp8788* }
%struct.lp8788_charger_platform_data = type { i32 }
%struct.lp8788 = type { i32 }
%union.power_supply_propval = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LP8788_CHG_STATUS = common dso_local global i32 0, align 4
@LP8788_CHG_STATE_M = common dso_local global i32 0, align 4
@LP8788_CHG_STATE_S = common dso_local global i32 0, align 4
@LP8788_MAINTENANCE = common dso_local global i32 0, align 4
@LP8788_MAX_BATT_CAPACITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp8788_charger*, %union.power_supply_propval*)* @lp8788_get_battery_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_get_battery_capacity(%struct.lp8788_charger* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lp8788_charger*, align 8
  %5 = alloca %union.power_supply_propval*, align 8
  %6 = alloca %struct.lp8788*, align 8
  %7 = alloca %struct.lp8788_charger_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lp8788_charger* %0, %struct.lp8788_charger** %4, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %5, align 8
  %13 = load %struct.lp8788_charger*, %struct.lp8788_charger** %4, align 8
  %14 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %13, i32 0, i32 1
  %15 = load %struct.lp8788*, %struct.lp8788** %14, align 8
  store %struct.lp8788* %15, %struct.lp8788** %6, align 8
  %16 = load %struct.lp8788_charger*, %struct.lp8788_charger** %4, align 8
  %17 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %16, i32 0, i32 0
  %18 = load %struct.lp8788_charger_platform_data*, %struct.lp8788_charger_platform_data** %17, align 8
  store %struct.lp8788_charger_platform_data* %18, %struct.lp8788_charger_platform_data** %7, align 8
  %19 = load %struct.lp8788_charger_platform_data*, %struct.lp8788_charger_platform_data** %7, align 8
  %20 = icmp ne %struct.lp8788_charger_platform_data* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %77

24:                                               ; preds = %2
  %25 = load %struct.lp8788_charger_platform_data*, %struct.lp8788_charger_platform_data** %7, align 8
  %26 = getelementptr inbounds %struct.lp8788_charger_platform_data, %struct.lp8788_charger_platform_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %77

33:                                               ; preds = %24
  %34 = load %struct.lp8788*, %struct.lp8788** %6, align 8
  %35 = load i32, i32* @LP8788_CHG_STATUS, align 4
  %36 = call i32 @lp8788_read_byte(%struct.lp8788* %34, i32 %35, i32* %11)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %3, align 4
  br label %77

41:                                               ; preds = %33
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @LP8788_CHG_STATE_M, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @LP8788_CHG_STATE_S, align 4
  %46 = ashr i32 %44, %45
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @LP8788_MAINTENANCE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i32, i32* @LP8788_MAX_BATT_CAPACITY, align 4
  %52 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %53 = bitcast %union.power_supply_propval* %52 to i32*
  store i32 %51, i32* %53, align 4
  br label %76

54:                                               ; preds = %41
  %55 = load %struct.lp8788_charger*, %struct.lp8788_charger** %4, align 8
  %56 = call i32 @lp8788_get_vbatt_adc(%struct.lp8788_charger* %55, i32* %9)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %3, align 4
  br label %77

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @LP8788_MAX_BATT_CAPACITY, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = udiv i32 %64, %65
  %67 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %68 = bitcast %union.power_supply_propval* %67 to i32*
  store i32 %66, i32* %68, align 4
  %69 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %70 = bitcast %union.power_supply_propval* %69 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @LP8788_MAX_BATT_CAPACITY, align 4
  %73 = call i32 @min(i32 %71, i32 %72)
  %74 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %75 = bitcast %union.power_supply_propval* %74 to i32*
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %61, %50
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %59, %39, %30, %21
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @lp8788_read_byte(%struct.lp8788*, i32, i32*) #1

declare dso_local i32 @lp8788_get_vbatt_adc(%struct.lp8788_charger*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
