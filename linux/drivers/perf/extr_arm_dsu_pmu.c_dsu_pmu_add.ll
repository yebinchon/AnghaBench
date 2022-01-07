; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_dsu_pmu.c_dsu_pmu_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_dsu_pmu.c_dsu_pmu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i32, i32 }
%struct.dsu_pmu = type { i32, %struct.dsu_hw_events }
%struct.dsu_hw_events = type { %struct.perf_event** }

@ENOENT = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @dsu_pmu_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsu_pmu_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsu_pmu*, align 8
  %7 = alloca %struct.dsu_hw_events*, align 8
  %8 = alloca %struct.hw_perf_event*, align 8
  %9 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.dsu_pmu* @to_dsu_pmu(i32 %12)
  store %struct.dsu_pmu* %13, %struct.dsu_pmu** %6, align 8
  %14 = load %struct.dsu_pmu*, %struct.dsu_pmu** %6, align 8
  %15 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %14, i32 0, i32 1
  store %struct.dsu_hw_events* %15, %struct.dsu_hw_events** %7, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  store %struct.hw_perf_event* %17, %struct.hw_perf_event** %8, align 8
  %18 = call i32 (...) @smp_processor_id()
  %19 = load %struct.dsu_pmu*, %struct.dsu_pmu** %6, align 8
  %20 = getelementptr inbounds %struct.dsu_pmu, %struct.dsu_pmu* %19, i32 0, i32 0
  %21 = call i32 @cpumask_test_cpu(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON_ONCE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %65

30:                                               ; preds = %2
  %31 = load %struct.dsu_hw_events*, %struct.dsu_hw_events** %7, align 8
  %32 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %33 = call i32 @dsu_pmu_get_event_idx(%struct.dsu_hw_events* %31, %struct.perf_event* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %65

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %41 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %43 = load %struct.dsu_hw_events*, %struct.dsu_hw_events** %7, align 8
  %44 = getelementptr inbounds %struct.dsu_hw_events, %struct.dsu_hw_events* %43, i32 0, i32 0
  %45 = load %struct.perf_event**, %struct.perf_event*** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %45, i64 %47
  store %struct.perf_event* %42, %struct.perf_event** %48, align 8
  %49 = load i32, i32* @PERF_HES_STOPPED, align 4
  %50 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %53 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @PERF_EF_START, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %38
  %59 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %60 = load i32, i32* @PERF_EF_RELOAD, align 4
  %61 = call i32 @dsu_pmu_start(%struct.perf_event* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %38
  %63 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %64 = call i32 @perf_event_update_userpage(%struct.perf_event* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %36, %27
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.dsu_pmu* @to_dsu_pmu(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @dsu_pmu_get_event_idx(%struct.dsu_hw_events*, %struct.perf_event*) #1

declare dso_local i32 @dsu_pmu_start(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
