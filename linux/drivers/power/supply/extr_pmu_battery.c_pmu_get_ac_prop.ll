; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pmu_battery.c_pmu_get_ac_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pmu_battery.c_pmu_get_ac_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }

@pmu_power_flags = common dso_local global i32 0, align 4
@PMU_PWR_AC_PRESENT = common dso_local global i32 0, align 4
@pmu_battery_count = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @pmu_get_ac_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_get_ac_prop(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %22 [
    i32 128, label %9
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @pmu_power_flags, align 4
  %11 = load i32, i32* @PMU_PWR_AC_PRESENT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @pmu_battery_count, align 4
  %16 = icmp eq i32 %15, 0
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i1 [ true, %9 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %21 = bitcast %union.power_supply_propval* %20 to i32*
  store i32 %19, i32* %21, align 4
  br label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %26

25:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
