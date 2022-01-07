; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_dsu_pmu.c_dsu_pmu_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_dsu_pmu.c_dsu_pmu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.dsu_pmu = type { i32 }

@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@DSU_PMU_IDX_CYCLE_COUNTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @dsu_pmu_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsu_pmu_start(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsu_pmu*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.dsu_pmu* @to_dsu_pmu(i32 %8)
  store %struct.dsu_pmu* %9, %struct.dsu_pmu** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @PERF_EF_RELOAD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  br label %25

25:                                               ; preds = %14, %2
  %26 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %27 = call i32 @dsu_pmu_set_event_period(%struct.perf_event* %26)
  %28 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DSU_PMU_IDX_CYCLE_COUNTER, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.dsu_pmu*, %struct.dsu_pmu** %5, align 8
  %36 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %37 = call i32 @dsu_pmu_set_event(%struct.dsu_pmu* %35, %struct.perf_event* %36)
  br label %38

38:                                               ; preds = %34, %25
  %39 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %40 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.dsu_pmu*, %struct.dsu_pmu** %5, align 8
  %43 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dsu_pmu_enable_counter(%struct.dsu_pmu* %42, i64 %46)
  ret void
}

declare dso_local %struct.dsu_pmu* @to_dsu_pmu(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dsu_pmu_set_event_period(%struct.perf_event*) #1

declare dso_local i32 @dsu_pmu_set_event(%struct.dsu_pmu*, %struct.perf_event*) #1

declare dso_local i32 @dsu_pmu_enable_counter(%struct.dsu_pmu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
