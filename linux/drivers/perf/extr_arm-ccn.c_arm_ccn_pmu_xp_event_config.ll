; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_xp_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_xp_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_6__, %struct.hw_perf_event, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.hw_perf_event = type { i64, i32, i32 }
%struct.arm_ccn = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.arm_ccn_component* }
%struct.arm_ccn_component = type { i64 }

@CCN_XP_PMU_EVENT_SEL = common dso_local global i64 0, align 8
@CCN_XP_PMU_EVENT_SEL__ID__MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @arm_ccn_pmu_xp_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_ccn_pmu_xp_event_config(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.arm_ccn*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca %struct.arm_ccn_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.arm_ccn* @pmu_to_arm_ccn(i32 %10)
  store %struct.arm_ccn* %11, %struct.arm_ccn** %3, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 1
  store %struct.hw_perf_event* %13, %struct.hw_perf_event** %4, align 8
  %14 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %15 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %22, align 8
  store %struct.arm_ccn_component* %23, %struct.arm_ccn_component** %5, align 8
  %24 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %25 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @CCN_XP_DT_CONFIG__DT_CFG__XP_PMU_EVENT(i32 %26)
  %28 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %29 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %31 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @CCN_CONFIG_VC(i32 %33)
  %35 = shl i32 %34, 4
  %36 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %37 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @CCN_CONFIG_BUS(i32 %39)
  %41 = shl i32 %40, 3
  %42 = or i32 %35, %41
  %43 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @CCN_CONFIG_EVENT(i32 %46)
  %48 = shl i32 %47, 0
  %49 = or i32 %42, %48
  store i32 %49, i32* %7, align 4
  %50 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %5, align 8
  %51 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CCN_XP_PMU_EVENT_SEL, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readl(i64 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @CCN_XP_PMU_EVENT_SEL__ID__MASK, align 4
  %57 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %58 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @CCN_XP_PMU_EVENT_SEL__ID__SHIFT(i32 %59)
  %61 = shl i32 %56, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %67 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @CCN_XP_PMU_EVENT_SEL__ID__SHIFT(i32 %68)
  %70 = shl i32 %65, %69
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %5, align 8
  %75 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CCN_XP_PMU_EVENT_SEL, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  ret void
}

declare dso_local %struct.arm_ccn* @pmu_to_arm_ccn(i32) #1

declare dso_local i32 @CCN_XP_DT_CONFIG__DT_CFG__XP_PMU_EVENT(i32) #1

declare dso_local i32 @CCN_CONFIG_VC(i32) #1

declare dso_local i32 @CCN_CONFIG_BUS(i32) #1

declare dso_local i32 @CCN_CONFIG_EVENT(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @CCN_XP_PMU_EVENT_SEL__ID__SHIFT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
