; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l2_pmu.c_l2_cache_clear_event_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l2_pmu.c_l2_cache_clear_event_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cluster_pmu = type { i32, i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i64 }

@L2CYCLE_CTR_RAW_CODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cluster_pmu*, %struct.perf_event*)* @l2_cache_clear_event_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_cache_clear_event_idx(%struct.cluster_pmu* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.cluster_pmu*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i32, align 4
  store %struct.cluster_pmu* %0, %struct.cluster_pmu** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 0
  store %struct.hw_perf_event* %8, %struct.hw_perf_event** %5, align 8
  %9 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %10 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.cluster_pmu*, %struct.cluster_pmu** %3, align 8
  %14 = getelementptr inbounds %struct.cluster_pmu, %struct.cluster_pmu* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clear_bit(i32 %12, i32 %15)
  %17 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %18 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @L2CYCLE_CTR_RAW_CODE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %24 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @L2_EVT_GROUP(i64 %25)
  %27 = load %struct.cluster_pmu*, %struct.cluster_pmu** %3, align 8
  %28 = getelementptr inbounds %struct.cluster_pmu, %struct.cluster_pmu* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clear_bit(i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @L2_EVT_GROUP(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
