; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc2731_charger.c_sc2731_charger_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc2731_charger.c_sc2731_charger_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc2731_charger_info = type { i32, i64, i32, i32 }
%struct.power_supply_battery_info = type { i32, i32 }

@SC2731_MODULE_EN1 = common dso_local global i64 0, align 8
@SC2731_CHARGE_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"no battery information is supplied\0A\00", align 1
@SC2731_CHG_CFG2 = common dso_local global i64 0, align 8
@SC2731_TERMINATION_CUR_MASK = common dso_local global i32 0, align 4
@SC2731_CHG_CFG0 = common dso_local global i64 0, align 8
@SC2731_TERMINATION_VOL_MASK = common dso_local global i32 0, align 4
@SC2731_TERMINATION_VOL_CAL_MASK = common dso_local global i32 0, align 4
@SC2731_TERMINATION_VOL_SHIFT = common dso_local global i32 0, align 4
@SC2731_TERMINATION_VOL_CAL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc2731_charger_info*)* @sc2731_charger_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc2731_charger_hw_init(%struct.sc2731_charger_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc2731_charger_info*, align 8
  %4 = alloca %struct.power_supply_battery_info, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sc2731_charger_info* %0, %struct.sc2731_charger_info** %3, align 8
  %10 = bitcast %struct.power_supply_battery_info* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %3, align 8
  %12 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i64, i64* @SC2731_MODULE_EN1, align 8
  %15 = load i32, i32* @SC2731_CHARGE_EN, align 4
  %16 = load i32, i32* @SC2731_CHARGE_EN, align 4
  %17 = call i32 @regmap_update_bits(i32 %13, i64 %14, i32 %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %2, align 4
  br label %117

22:                                               ; preds = %1
  %23 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %3, align 8
  %24 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @power_supply_get_battery_info(i32 %25, %struct.power_supply_battery_info* %4)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %3, align 8
  %31 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_warn(i32 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %71

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 1000
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp sle i32 %38, 90
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %51

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = icmp sge i32 %42, 265
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 7, i32* %7, align 4
  br label %50

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %46, 90
  %48 = sdiv i32 %47, 25
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %45, %44
  br label %51

51:                                               ; preds = %50, %40
  %52 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %4, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %53, 1000
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %55, 4500
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 4500, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %51
  %59 = load i32, i32* %6, align 4
  %60 = icmp sgt i32 %59, 4200
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %62, 4200
  %64 = sdiv i32 %63, 100
  store i32 %64, i32* %8, align 4
  br label %66

65:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %61
  %67 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %3, align 8
  %68 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @power_supply_put_battery_info(i32 %69, %struct.power_supply_battery_info* %4)
  br label %71

71:                                               ; preds = %66, %29
  %72 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %3, align 8
  %73 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %3, align 8
  %76 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SC2731_CHG_CFG2, align 8
  %79 = add nsw i64 %77, %78
  %80 = load i32, i32* @SC2731_TERMINATION_CUR_MASK, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @regmap_update_bits(i32 %74, i64 %79, i32 %80, i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  br label %109

86:                                               ; preds = %71
  %87 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %3, align 8
  %88 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %3, align 8
  %91 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SC2731_CHG_CFG0, align 8
  %94 = add nsw i64 %92, %93
  %95 = load i32, i32* @SC2731_TERMINATION_VOL_MASK, align 4
  %96 = load i32, i32* @SC2731_TERMINATION_VOL_CAL_MASK, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @SC2731_TERMINATION_VOL_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = load i32, i32* @SC2731_TERMINATION_VOL_CAL_SHIFT, align 4
  %102 = shl i32 6, %101
  %103 = or i32 %100, %102
  %104 = call i32 @regmap_update_bits(i32 %89, i64 %94, i32 %97, i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %86
  br label %109

108:                                              ; preds = %86
  store i32 0, i32* %2, align 4
  br label %117

109:                                              ; preds = %107, %85
  %110 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %3, align 8
  %111 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* @SC2731_MODULE_EN1, align 8
  %114 = load i32, i32* @SC2731_CHARGE_EN, align 4
  %115 = call i32 @regmap_update_bits(i32 %112, i64 %113, i32 %114, i32 0)
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %109, %108, %20
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #2

declare dso_local i32 @power_supply_get_battery_info(i32, %struct.power_supply_battery_info*) #2

declare dso_local i32 @dev_warn(i32, i8*) #2

declare dso_local i32 @power_supply_put_battery_info(i32, %struct.power_supply_battery_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
