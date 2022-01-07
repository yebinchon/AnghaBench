; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_event_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_event_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_5__, %struct.hw_perf_event, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.hw_perf_event = type { i64, i64 }
%struct.arm_ccn = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32*, %struct.arm_ccn_component* }
%struct.arm_ccn_component = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@CCN_IDX_PMU_CYCLE_COUNTER = common dso_local global i64 0, align 8
@CCN_TYPE_XP = common dso_local global i64 0, align 8
@CCN_EVENT_WATCHPOINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @arm_ccn_pmu_event_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_ccn_pmu_event_release(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.arm_ccn*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca %struct.arm_ccn_component*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.arm_ccn* @pmu_to_arm_ccn(i32 %8)
  store %struct.arm_ccn* %9, %struct.arm_ccn** %3, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 1
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %4, align 8
  %12 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CCN_IDX_PMU_CYCLE_COUNTER, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i64, i64* @CCN_IDX_PMU_CYCLE_COUNTER, align 8
  %19 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %20 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @clear_bit(i64 %18, i32 %22)
  br label %76

24:                                               ; preds = %1
  %25 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %26 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %30 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %33, align 8
  store %struct.arm_ccn_component* %34, %struct.arm_ccn_component** %5, align 8
  %35 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %36 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @CCN_CONFIG_TYPE(i32 %38)
  %40 = load i64, i64* @CCN_TYPE_XP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %24
  %43 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @CCN_CONFIG_EVENT(i32 %46)
  %48 = load i64, i64* @CCN_EVENT_WATCHPOINT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %52 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %5, align 8
  %55 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @clear_bit(i64 %53, i32 %57)
  br label %67

59:                                               ; preds = %42, %24
  %60 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %61 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %5, align 8
  %64 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @clear_bit(i64 %62, i32 %65)
  br label %67

67:                                               ; preds = %59, %50
  %68 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %69 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %72 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @clear_bit(i64 %70, i32 %74)
  br label %76

76:                                               ; preds = %67, %17
  %77 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %78 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %82 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store %struct.arm_ccn_component* null, %struct.arm_ccn_component** %85, align 8
  %86 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %87 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %91 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  ret void
}

declare dso_local %struct.arm_ccn* @pmu_to_arm_ccn(i32) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i64 @CCN_CONFIG_TYPE(i32) #1

declare dso_local i64 @CCN_CONFIG_EVENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
