; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_3__, %struct.hw_perf_event, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hw_perf_event = type { i32 }
%struct.arm_ccn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@CCN_IDX_PMU_CYCLE_COUNTER = common dso_local global i32 0, align 4
@CCN_TYPE_XP = common dso_local global i64 0, align 8
@CCN_DT_ACTIVE_DSM = common dso_local global i64 0, align 8
@CCN_DT_ACTIVE_DSM__DSM_ID__MASK = common dso_local global i32 0, align 4
@CCN_EVENT_WATCHPOINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @arm_ccn_pmu_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_ccn_pmu_event_config(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.arm_ccn*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.arm_ccn* @pmu_to_arm_ccn(i32 %10)
  store %struct.arm_ccn* %11, %struct.arm_ccn** %3, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 1
  store %struct.hw_perf_event* %13, %struct.hw_perf_event** %4, align 8
  %14 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %15 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CCN_IDX_PMU_CYCLE_COUNTER, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %121

20:                                               ; preds = %1
  %21 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %22 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @CCN_CONFIG_TYPE(i32 %24)
  %26 = load i64, i64* @CCN_TYPE_XP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %30 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CCN_CONFIG_XP(i32 %32)
  store i32 %33, i32* %5, align 4
  br label %41

34:                                               ; preds = %20
  %35 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %36 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CCN_CONFIG_NODE(i32 %38)
  %40 = call i32 @arm_ccn_node_to_xp(i32 %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %34, %28
  %42 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %43 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %47 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 4
  %50 = mul nsw i32 %49, 4
  store i32 %50, i32* %6, align 4
  %51 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %52 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CCN_DT_ACTIVE_DSM, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = call i32 @readl(i64 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @CCN_DT_ACTIVE_DSM__DSM_ID__MASK, align 4
  %62 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %63 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = srem i32 %64, 4
  %66 = call i32 @CCN_DT_ACTIVE_DSM__DSM_ID__SHIFT(i32 %65)
  %67 = shl i32 %61, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %73 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = srem i32 %74, 4
  %76 = call i32 @CCN_DT_ACTIVE_DSM__DSM_ID__SHIFT(i32 %75)
  %77 = shl i32 %71, %76
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %82 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CCN_DT_ACTIVE_DSM, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = call i32 @writel(i32 %80, i64 %89)
  %91 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %92 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @CCN_CONFIG_TYPE(i32 %94)
  %96 = load i64, i64* @CCN_TYPE_XP, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %41
  %99 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %100 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @CCN_CONFIG_EVENT(i32 %102)
  %104 = load i64, i64* @CCN_EVENT_WATCHPOINT, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %108 = call i32 @arm_ccn_pmu_xp_watchpoint_config(%struct.perf_event* %107)
  br label %112

109:                                              ; preds = %98
  %110 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %111 = call i32 @arm_ccn_pmu_xp_event_config(%struct.perf_event* %110)
  br label %112

112:                                              ; preds = %109, %106
  br label %116

113:                                              ; preds = %41
  %114 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %115 = call i32 @arm_ccn_pmu_node_event_config(%struct.perf_event* %114)
  br label %116

116:                                              ; preds = %113, %112
  %117 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %118 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = call i32 @spin_unlock(i32* %119)
  br label %121

121:                                              ; preds = %116, %19
  ret void
}

declare dso_local %struct.arm_ccn* @pmu_to_arm_ccn(i32) #1

declare dso_local i64 @CCN_CONFIG_TYPE(i32) #1

declare dso_local i32 @CCN_CONFIG_XP(i32) #1

declare dso_local i32 @arm_ccn_node_to_xp(i32) #1

declare dso_local i32 @CCN_CONFIG_NODE(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @CCN_DT_ACTIVE_DSM__DSM_ID__SHIFT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @CCN_CONFIG_EVENT(i32) #1

declare dso_local i32 @arm_ccn_pmu_xp_watchpoint_config(%struct.perf_event*) #1

declare dso_local i32 @arm_ccn_pmu_xp_event_config(%struct.perf_event*) #1

declare dso_local i32 @arm_ccn_pmu_node_event_config(%struct.perf_event*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
