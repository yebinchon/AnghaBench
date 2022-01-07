; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_dsu_pmu.c_dsu_pmu_get_event_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_dsu_pmu.c_dsu_pmu_get_event_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsu_hw_events = type { i64* }
%struct.perf_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dsu_pmu = type { i32 }

@DSU_PMU_EVT_CYCLES = common dso_local global i64 0, align 8
@DSU_PMU_IDX_CYCLE_COUNTER = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsu_hw_events*, %struct.perf_event*)* @dsu_pmu_get_event_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsu_pmu_get_event_idx(%struct.dsu_hw_events* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsu_hw_events*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.dsu_pmu*, align 8
  %9 = alloca i64*, align 8
  store %struct.dsu_hw_events* %0, %struct.dsu_hw_events** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.dsu_pmu* @to_dsu_pmu(i32 %16)
  store %struct.dsu_pmu* %17, %struct.dsu_pmu** %8, align 8
  %18 = load %struct.dsu_hw_events*, %struct.dsu_hw_events** %4, align 8
  %19 = getelementptr inbounds %struct.dsu_hw_events, %struct.dsu_hw_events* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %9, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @DSU_PMU_EVT_CYCLES, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load i32, i32* @DSU_PMU_IDX_CYCLE_COUNTER, align 4
  %26 = load i64*, i64** %9, align 8
  %27 = call i64 @test_and_set_bit(i32 %25, i64* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %55

32:                                               ; preds = %24
  %33 = load i32, i32* @DSU_PMU_IDX_CYCLE_COUNTER, align 4
  store i32 %33, i32* %3, align 4
  br label %55

34:                                               ; preds = %2
  %35 = load i64*, i64** %9, align 8
  %36 = load %struct.dsu_pmu*, %struct.dsu_pmu** %8, align 8
  %37 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @find_first_zero_bit(i64* %35, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.dsu_pmu*, %struct.dsu_pmu** %8, align 8
  %42 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %55

48:                                               ; preds = %34
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.dsu_hw_events*, %struct.dsu_hw_events** %4, align 8
  %51 = getelementptr inbounds %struct.dsu_hw_events, %struct.dsu_hw_events* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = call i32 @set_bit(i32 %49, i64* %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %48, %45, %32, %29
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.dsu_pmu* @to_dsu_pmu(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i64*) #1

declare dso_local i32 @find_first_zero_bit(i64*, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
