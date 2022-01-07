; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l2_pmu.c_l2_cache_event_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l2_pmu.c_l2_cache_event_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i64, i32 }

@l2_cycle_ctr_idx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @l2_cache_event_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_cache_event_update(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.hw_perf_event*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 1
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %3, align 8
  %10 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %19, %1
  %14 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %15 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %14, i32 0, i32 1
  %16 = call i64 @local64_read(i32* %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @cluster_pmu_counter_get_value(i64 %17)
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %13
  %20 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %21 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %20, i32 0, i32 1
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @local64_cmpxchg(i32* %21, i64 %22, i64 %23)
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %13, label %27

27:                                               ; preds = %19
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = sub nsw i64 %28, %29
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @l2_cycle_ctr_idx, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i64, i64* %4, align 8
  %36 = and i64 %35, 4294967295
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %34, %27
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %40 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %39, i32 0, i32 0
  %41 = call i32 @local64_add(i64 %38, i32* %40)
  ret void
}

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i64 @cluster_pmu_counter_get_value(i64) #1

declare dso_local i64 @local64_cmpxchg(i32*, i64, i64) #1

declare dso_local i32 @local64_add(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
