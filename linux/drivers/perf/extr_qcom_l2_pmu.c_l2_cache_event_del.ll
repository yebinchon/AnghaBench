; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l2_pmu.c_l2_cache_event_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l2_pmu.c_l2_cache_event_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }
%struct.cluster_pmu = type { i32** }

@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @l2_cache_event_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_cache_event_del(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca %struct.cluster_pmu*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 2
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %5, align 8
  %10 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %11 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @to_l2cache_pmu(i32 %15)
  %17 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.cluster_pmu* @get_cluster_pmu(i32 %16, i32 %19)
  store %struct.cluster_pmu* %20, %struct.cluster_pmu** %6, align 8
  %21 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PERF_EF_UPDATE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @l2_cache_event_stop(%struct.perf_event* %21, i32 %24)
  %26 = load %struct.cluster_pmu*, %struct.cluster_pmu** %6, align 8
  %27 = getelementptr inbounds %struct.cluster_pmu, %struct.cluster_pmu* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  store i32* null, i32** %31, align 8
  %32 = load %struct.cluster_pmu*, %struct.cluster_pmu** %6, align 8
  %33 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %34 = call i32 @l2_cache_clear_event_idx(%struct.cluster_pmu* %32, %struct.perf_event* %33)
  %35 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %36 = call i32 @perf_event_update_userpage(%struct.perf_event* %35)
  ret void
}

declare dso_local %struct.cluster_pmu* @get_cluster_pmu(i32, i32) #1

declare dso_local i32 @to_l2cache_pmu(i32) #1

declare dso_local i32 @l2_cache_event_stop(%struct.perf_event*, i32) #1

declare dso_local i32 @l2_cache_clear_event_idx(%struct.cluster_pmu*, %struct.perf_event*) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
